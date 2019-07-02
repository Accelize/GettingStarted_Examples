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
MeteringSessionManager* gMSM;
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
        printf("%s: Unable to get AFI information from slot %d. Are you running as root?", __FUNCTION__, slot_id);
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

/*
 *
 */
int drm_dump(uint32_t base_addr, int slot_id, int pf_id, int bar_id)
{
  int ret=0;
  uint32_t value=0;
  /* pci_bar_handle_t is a handler for an address space exposed by one PCI BAR on one of the PCI PFs of the FPGA */
  pci_bar_handle_t pci_bar_handle = PCI_BAR_HANDLE_INIT;

  if(fpga_pci_attach(slot_id, pf_id, bar_id, 0, &pci_bar_handle)) {
    printf("%s: Unable to attach to the AFI on slot id %d", __FUNCTION__, slot_id);
    return 1;
  }

  for(uint32_t addr=0; addr<=128; addr+=4) {
    my_read_drm(pci_bar_handle, base_addr+addr, &value);
    printf("%s: addr= 0x%x register: 0x%x\n", __FUNCTION__, (base_addr+addr), value);
  }

  return ret;
}


/*
 *
 */
int metering_test(uint32_t drm_base_addr, int slot_id, int pf_id, int bar_id)
{
  int ret=0;
  uint32_t reg=0;
  /* pci_bar_handle_t is a handler for an address space exposed by one PCI BAR on one of the PCI PFs of the FPGA */
  pci_bar_handle_t pci_bar_handle = PCI_BAR_HANDLE_INIT;

  if(fpga_pci_attach(slot_id, pf_id, bar_id, 0, &pci_bar_handle)) {
    printf("%s: Unable to attach to the AFI on slot id %d", __FUNCTION__, slot_id);
    return 1;
  }

  gMSM = new MeteringSessionManager(
       "./conf.json",
       "./cred.json",
        [&]( uint32_t  offset, uint32_t * value) { /*Read DRM register*/
            return  my_read_drm(pci_bar_handle, drm_base_addr+offset, value);
        },
        [&]( uint32_t  offset, uint32_t value) { /*Write DRM register*/
            return my_write_drm(pci_bar_handle, drm_base_addr+offset, value);
        },
        [&]( const  std::string & err_msg) {
           std::cerr  << err_msg << std::endl;
        }
    );

   gMSM->auto_start_session();
   printf("%s: Session started\n", __FUNCTION__);
 
   int c=0;
   while(c != 'q') {
       printf("%s: Press any key to continue ('h' or '?' for help)	\n", __FUNCTION__);
       c=getchar();
       
       if(c=='h' || c=='?') {
		  printf("Usage: \n");
		  printf(" 'd': dump drm page 0,\n");
		  printf(" 'a': dump activator status, \n");
		  printf(" 'p': pause session,   		\n");
		  printf(" 'r': auto_start session, 	\n");
		  printf(" 's': stop session, 	\n");
		  printf(" 'q': stop session and exit	\n");
          printf(" 'n': install nodelock license\n");
	   }
	   
       if(c=='d') {  
            my_write_drm(pci_bar_handle, 0, 0); // Select page 0
            for(uint32_t addr=0x40; addr<=0x70; addr+=4) {
                my_read_drm(pci_bar_handle, drm_base_addr+addr, &reg);
                printf("%s: addr= 0x%x register: 0x%x\n", __FUNCTION__, (drm_base_addr+addr), reg);
            }

        }
        
        if(c=='a') {
			my_read_drm(pci_bar_handle, 0, &reg);
			printf("%s: Val=0x%x => act_code_rdy=%d, activated=%d\n", __FUNCTION__, reg, (reg&0x02)>>1, (reg&0x01));
		}
		
		if(c=='s')
            gMSM->stop_session();
        
        if(c=='p')
            gMSM->pause_session();
            
        if(c=='r')
            gMSM->auto_start_session();
            
        if(c=='q')
            gMSM->stop_session();

        //if(c=='n') {
        //    NodeLockManager gNLM = NodeLockManager(
        //            "./conf.json",
        //            "./cred.json",
        //            [&]( uint32_t  offset, uint32_t * value) { /*Read DRM register*/
        //                return  my_read_drm(pci_bar_handle, drm_base_addr+offset, value);
        //            },
        //            [&]( uint32_t  offset, uint32_t value) { /*Write DRM register*/
        //                return my_write_drm(pci_bar_handle, drm_base_addr+offset, value);
        //            }
        //    );
        //    gNLM.activate();
        //    //DRMLib_RETRY(gNLM.activate(), retry_flag);
        //}
    }
    printf("%s: Application exited, press any key to continue\n", __FUNCTION__);
    c=getchar();
    delete gMSM;
    return ret;
}

/*
 *
 */
int rw_test(uint32_t drm_base_addr, int slot_id, int pf_id, int bar_id)
{
  int ret=0;
  uint32_t reg=0;
  /* pci_bar_handle_t is a handler for an address space exposed by one PCI BAR on one of the PCI PFs of the FPGA */
  pci_bar_handle_t pci_bar_handle = PCI_BAR_HANDLE_INIT;

  if(fpga_pci_attach(slot_id, pf_id, bar_id, 0, &pci_bar_handle)) {
    printf("%s: Unable to attach to the AFI on slot id %d", __FUNCTION__, slot_id);
    return 1;
  }
 
   int c=0;
   while(c != 'q') {
       printf("%s: Press any key to continue ('h' or '?' for help)	\n", __FUNCTION__);
       c=getchar();
       getchar();
       
       if(c=='h' || c=='?') {
		  printf("Usage: \n");
		  printf(" 'd': dump drm page 0,\n");
		  printf(" 'a': dump activator status, \n");
		  printf(" 'b': change base address \n");
	   }
	   
	   if(c=='b') {  
			printf("ENTER NEW BASE ADDRESS (prev = 0x%X)\n", drm_base_addr);
			char buf[512];
			fgets(buf, 512, stdin);
		    sscanf(buf, "%x", &drm_base_addr);
			printf("BASE ADDRESS = 0x%X\n", drm_base_addr);
		}
	   
       if(c=='d') {  
            my_write_drm(pci_bar_handle, 0, 0); // Select page 0
            for(uint32_t addr=0x40; addr<=0x70; addr+=4) {
                my_read_drm(pci_bar_handle, drm_base_addr+addr, &reg);
                printf("%s: addr= 0x%x register: 0x%x\n", __FUNCTION__, (drm_base_addr+addr), reg);
            }
        }
        
        if(c=='t') {  
			uint32_t reg1=0, reg2=0;
            my_read_drm(pci_bar_handle, drm_base_addr+0x40, &reg1);
            my_read_drm(pci_bar_handle, drm_base_addr+0x44, &reg2);
            printf("%s: addr= 0x%x register: 0x%x\n", __FUNCTION__, (drm_base_addr+0x40), reg1);
            printf("%s: addr= 0x%x register: 0x%x\n", __FUNCTION__, (drm_base_addr+0x44), reg2);
        }
        
        if(c=='a') {
			uint32_t reg1=0, reg2=0, reg3=0, reg4=0;
			my_read_drm(pci_bar_handle, 0, &reg1);
			my_read_drm(pci_bar_handle, 4, &reg2);
			my_read_drm(pci_bar_handle, 8, &reg3);
			my_read_drm(pci_bar_handle, 12, &reg4);
			printf("%s: Val=0x%x => act_code_rdy=%d, activated=%d\n", __FUNCTION__, reg1, (reg1&0x02)>>1, (reg1&0x01));
			printf("%s: Addr=0x04, Val=0x%x\n", __FUNCTION__, reg2);		
			printf("%s: Addr=0x08, Val=0x%x\n", __FUNCTION__, reg3);
			printf("%s: Addr=0x0C, Val=0x%x\n", __FUNCTION__, reg4);
		}
		
		if(c=='w') {
			my_write_drm(pci_bar_handle, 4, 0x1234ABCD);
		}
		
		if(c=='x') {
			my_write_drm(pci_bar_handle, 8, 0xB16B00B5);
		}
		
		if(c=='c') {
			my_write_drm(pci_bar_handle, 12, 0xACCE717E);
		}
    }
    printf("%s: Application exited, press any key to continue\n", __FUNCTION__);
    c=getchar();
    return ret;
}

int32_t testActivation(pci_bar_handle_t pci_bar_handle)
{
	uint32_t reg=0;
	my_read_drm(pci_bar_handle, 0, &reg);
	if(reg != 3) {
		printf ("Read activation status ERROR reg=0x%X\n", reg);
		return 1;
	}
	printf("Val=0x%x => act_code_rdy=%d, activated=%d\n", reg, (reg&0x02)>>1, (reg&0x01));
	return 0;
}

/*
 * Unit Test
 */
int unit_test(uint32_t drm_base_addr, int slot_id, int pf_id, int bar_id, int mode)
{
	uint32_t reg=0;
	pci_bar_handle_t pci_bar_handle = PCI_BAR_HANDLE_INIT;

	if(fpga_pci_attach(slot_id, pf_id, bar_id, 0, &pci_bar_handle)) {
	printf("%s: Unable to attach to the AFI on slot id %d", __FUNCTION__, slot_id);
	return 1;
	}

	try {

		gMSM = new MeteringSessionManager(
		   "../common/conf.json",
		   "../common/cred.json",
			[&]( uint32_t  offset, uint32_t * value) { /*Read DRM register*/
				return  my_read_drm(pci_bar_handle, drm_base_addr+offset, value);
			},
			[&]( uint32_t  offset, uint32_t value) { /*Write DRM register*/
				return my_write_drm(pci_bar_handle, drm_base_addr+offset, value);
			},
			[&]( const  std::string & err_msg) {
			   std::cerr  << err_msg << std::endl;
			}
		);

		gMSM->auto_start_session();
		printf("%s: Session started\n", __FUNCTION__);

		sleep(10);

		// Read activation status
		my_read_drm(pci_bar_handle, 0, &reg);
		if(reg != 3) {
			printf ("Read activation status ERROR reg=0x%X\n", reg);
			return 1;
		}
		printf("%s: Val=0x%x => act_code_rdy=%d, activated=%d\n", __FUNCTION__, reg, (reg&0x02)>>1, (reg&0x01));
	 

		// Keep reading until reaching 10 coins :
		for(unsigned int i=0; i<9; i++)
			testActivation(pci_bar_handle);

		if(mode == 2) {
			gMSM->stop_session();
			printf("%s: Session stopped\n", __FUNCTION__);
		}
		else {
			gMSM->pause_session();
			printf("%s: Session paused\n", __FUNCTION__);
		}

	} catch (const std::exception& e) { // reference to the base of a polymorphic object
     	std::cout << e.what(); // information from length_error printed
		return 1;
	}

	printf("%s: Unit test finished successfully\n", __FUNCTION__);
	delete gMSM;
	return 0;
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
        printf("AFI not ready");
        return 1;
    }
    
    /* Dump DRM Registers */    
    /*printf("===== Dump DRM Registers =====\n");
    if(drm_dump(base_addr, slot_id, FPGA_APP_PF, APP_PF_BAR0)) {
        printf("Dump DRM Registers failed");
        return 1;
    }*/

    /* Metering Test */
    /*printf("===== Metering test =====\n");
    if(metering_test(base_addr, slot_id, FPGA_APP_PF, APP_PF_BAR0)) {
        printf("Metering test failed");
        return 1;
    }*/
    
    /* R/W Test */
    /*printf("===== Metering test =====\n");
    if(rw_test(base_addr, slot_id, FPGA_APP_PF, APP_PF_BAR0)) {
        printf("Metering test failed");
        return 1;
    }*/

    /* Unit Tests */
	if(unit_test(base_addr, 0, FPGA_APP_PF, APP_PF_BAR0, mode)) {
        printf("Unit tests failed");
        return 1;
    }
    return 0;
}

