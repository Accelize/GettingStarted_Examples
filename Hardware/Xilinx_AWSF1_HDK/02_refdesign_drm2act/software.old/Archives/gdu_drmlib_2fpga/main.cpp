// Amazon FPGA Hardware Development Kit
//
// Copyright 2016 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Amazon Software License (the "License"). You may not use
// this file except in compliance with the License. A copy of the License is
// located at
//
//    http://aws.amazon.com/asl/
//
// or in the "license" file accompanying this file. This file is distributed on
// an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, express or
// implied. See the License for the specific language governing permissions and
// limitations under the License.
#include <iostream>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdarg.h>
#include <assert.h>
#include <string.h>
#include <unistd.h>

#include <fpga_pci.h>
#include <fpga_mgmt.h>

using namespace std;

// Accelize DRMLib
#include <mutex>
#include "accelize/drm.h"
using namespace Accelize::DRMLib;
MeteringSessionManager *gMSM, *gMSM0, *gMSM1;
std::mutex gMutex;

/*
 * pci_vendor_id and pci_device_id values below are Amazon's and avaliable to use for a given FPGA slot. 
 * Users may replace these with their own if allocated to them by PCI SIG
 */
static uint16_t pci_vendor_id = 0x1D0F; /* Amazon PCI Vendor ID */
static uint16_t pci_device_id = 0xF000; /* PCI Device ID preassigned by Amazon for F1 applications */

/*
 * DRMLib Read Callback Function
 */
int32_t my_read_drm(pci_bar_handle_t pci_bar_handle, uint32_t  addr, uint32_t * value)
{
	gMutex.lock();
    if(fpga_pci_peek(pci_bar_handle, addr, value)) {
        printf("%s: Unable to read from the fpga !", __FUNCTION__);
        gMutex.unlock();
        return 1;
    }
    gMutex.unlock();
    return 0;
}

/*
 * DRMLib Write Callback Function
 */
int32_t my_write_drm(pci_bar_handle_t pci_bar_handle, uint32_t  addr, uint32_t value)
{
	gMutex.lock();
    if(fpga_pci_poke(pci_bar_handle, addr, value)) {
        printf("%s: Unable to write to the fpga !", __FUNCTION__);
        gMutex.unlock();
        return 1;
    }
    gMutex.unlock();
    return 0;
}


/*
 * check if the corresponding AFI for hello_world is loaded
 */
int check_afi_ready(int slot_id) 
{
    int ret=0;
    struct fpga_mgmt_image_info info = {0};

    /* get local image description, contains status, vendor id, and device id. */
    if(fpga_mgmt_describe_local_image(slot_id, &info,0)) {
        printf("%s: Unable to get AFI information from slot %d. Are you running as root?\n", __FUNCTION__, slot_id);
        return 1;  
    }

    /* check to see if the slot is ready */
    if (info.status != FPGA_STATUS_LOADED) {
        printf("%s: AFI in Slot %d is not in READY state !", __FUNCTION__, slot_id);
        return 1;
    }

    printf("%s: AFI PCI  Vendor ID: 0x%x, Device ID 0x%x\n", 
        __FUNCTION__,
        info.spec.map[FPGA_APP_PF].vendor_id,
        info.spec.map[FPGA_APP_PF].device_id);

    /* confirm that the AFI that we expect is in fact loaded */
    if (info.spec.map[FPGA_APP_PF].vendor_id != pci_vendor_id ||
        info.spec.map[FPGA_APP_PF].device_id != pci_device_id) {
        printf("%s: AFI does not show expected PCI vendor id and device ID. If the AFI "
                "was just loaded, it might need a rescan. Rescanning now.\n", __FUNCTION__);

        if(fpga_pci_rescan_slot_app_pfs(slot_id)) {
            printf("%s: Unable to update PF for slot %d",__FUNCTION__, slot_id);
            return 1;
        }
        
        /* get local image description, contains status, vendor id, and device id. */
        if(fpga_mgmt_describe_local_image(slot_id, &info,0)) {
            printf("%s: Unable to get AFI information from slot %d",__FUNCTION__, slot_id);
            return 1;
        }

        printf("%s: AFI PCI  Vendor ID: 0x%x, Device ID 0x%x\n",
            __FUNCTION__,
            info.spec.map[FPGA_APP_PF].vendor_id,
            info.spec.map[FPGA_APP_PF].device_id);

        /* confirm that the AFI that we expect is in fact loaded after rescan */
        if (info.spec.map[FPGA_APP_PF].vendor_id != pci_vendor_id ||
            info.spec.map[FPGA_APP_PF].device_id != pci_device_id) {
            ret = 1;
            printf("%s: The PCI vendor id and device of the loaded AFI are not "
                "the expected values.",__FUNCTION__);
        }
    }

   return ret;
 }


int32_t testActivation(pci_bar_handle_t pci_bar_handle, std::string label)
{
	uint32_t reg=0;
	my_read_drm(pci_bar_handle, 0, &reg);
	if(reg != 3) {
		printf ("%s : Read activation status ERROR reg=0x%X\n", label.c_str(), reg);
		return 1;
	}
	printf("%s :  Val=0x%x => act_code_rdy=%d, activated=%d\n", label.c_str(), reg, (reg&0x02)>>1, (reg&0x01));
	return 0;
}


/*
 *
 */
int unit_test(uint32_t drm_base_addr, int pf_id, int bar_id, int mode)
{
	int ret=0;
	pci_bar_handle_t pci_bar_handle_0 = PCI_BAR_HANDLE_INIT;
	pci_bar_handle_t pci_bar_handle_1 = PCI_BAR_HANDLE_INIT;

	if(fpga_pci_attach(0, pf_id, bar_id, 0, &pci_bar_handle_0)) {
		printf("%s: Unable to attach to the AFI on slot id %d", __FUNCTION__, 0);
		return 1;
	}
	if(fpga_pci_attach(1, pf_id, bar_id, 0, &pci_bar_handle_1)) {
		printf("%s: Unable to attach to the AFI on slot id %d", __FUNCTION__, 1);
		return 1;
	}

	try {

		gMSM0 = new MeteringSessionManager(
		   "../common/conf.json",
		   "../common/cred.json",
			[&]( uint32_t  offset, uint32_t * value) { /*Read DRM register*/
				return  my_read_drm(pci_bar_handle_0, drm_base_addr+offset, value);
			},
			[&]( uint32_t  offset, uint32_t value) { /*Write DRM register*/
				return my_write_drm(pci_bar_handle_0, drm_base_addr+offset, value);
			},
			[&]( const  std::string & err_msg) {
			   std::cerr  << err_msg << std::endl;
			}
		);
		gMSM1 = new MeteringSessionManager(
		   "../common/conf.json",
		   "../common/cred.json",
			[&]( uint32_t  offset, uint32_t * value) { /*Read DRM register*/
				return  my_read_drm(pci_bar_handle_1, drm_base_addr+offset, value);
			},
			[&]( uint32_t  offset, uint32_t value) { /*Write DRM register*/
				return my_write_drm(pci_bar_handle_1, drm_base_addr+offset, value);
			},
			[&]( const  std::string & err_msg) {
			   std::cerr  << err_msg << std::endl;
			}
		);

		gMSM0->auto_start_session();
		gMSM1->auto_start_session();
		printf("%s: Sessions started\n", __FUNCTION__);


		sleep(10);

		if(testActivation(pci_bar_handle_0, std::string("Slot0")))
			return 1;
		if(testActivation(pci_bar_handle_1, std::string("Slot1")))
			return -1;

		// Keep reading until reaching 10 coins :
		for(unsigned int i=0; i<9; i++) {
			testActivation(pci_bar_handle_0, std::string("Slot0"));
			testActivation(pci_bar_handle_1, std::string("Slot1"));
		}
	 

		if(mode == 2) {
			gMSM0->stop_session();
			gMSM1->stop_session();
			printf("%s: Sessions stopped\n", __FUNCTION__);
		}
		else {
			gMSM0->pause_session();
			gMSM1->pause_session();
			printf("%s: Sessions paused\n", __FUNCTION__);
		}

	} catch (const std::exception& e) { // reference to the base of a polymorphic object
     	std::cout << e.what(); // information from length_error printed
		return 1;
	}

	delete gMSM0;
	delete gMSM1;
	return ret;
}

/*
 * Entry point
 */
int main(int argc, char **argv) 
{    
	int mode = 2; //2: ends with stop(), else ends with pause()
    uint32_t base_addr = 0x10000;

    if(argc == 2) 
      sscanf(argv[1], "%x", &mode);
    
    printf("BASE ADDRESS = 0x%X\n", base_addr);
    printf("MODE         = 0x%X\n", mode);

    /* initialize the fpga_pci library so we could have access to FPGA PCIe from this applications */
    if(fpga_pci_init()) {
        printf("Unable to initialize the fpga_pci library");
        return 1;
    }
    if(check_afi_ready(0)) {
        printf("AFI not ready for slot 0");
        return 1;
    }
    if(check_afi_ready(1)) {
        printf("AFI not ready for slot 1");
        return 1;
    }
    
	/* Unit Tests */
	if(unit_test(base_addr, FPGA_APP_PF, APP_PF_BAR0, mode)) {
        printf("Unit tests failed");
        return 1;
    }
    return 0;
}

