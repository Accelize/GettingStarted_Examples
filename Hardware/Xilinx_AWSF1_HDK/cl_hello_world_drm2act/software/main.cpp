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
#include <getopt.h>
#include <mutex>
#include <vector>

#include <fpga_pci.h>
#include <fpga_mgmt.h>

using namespace std;

// Accelize DRMLib
#include "accelize/drm.h"
using namespace Accelize::DRM;

std::mutex gMutex;

#define DRM_BASE_ADDRESS        0x10000
#define USER_IP_1_BASE_ADDRESS  0x20000
#define USER_IP_0_BASE_ADDRESS  0x00000

/*
 * pci_vendor_id and pci_device_id values below are Amazon's and avaliable to use for a given FPGA slot. 
 * Users may replace these with their own if allocated to them by PCI SIG
 */
static uint16_t pci_vendor_id = 0x1D0F; /* Amazon PCI Vendor ID */
static uint16_t pci_device_id = 0xF000; /* PCI Device ID preassigned by Amazon for F1 applications */

/*
 * DRMLib Read Callback Function
 */
int32_t drm_read_callback(pci_bar_handle_t pci_bar_handle, uint32_t  addr, uint32_t * value)
{
    gMutex.lock();
    if(fpga_pci_peek(pci_bar_handle, addr, value)) {
        std::cout << __FUNCTION__ << ": Unable to read from the fpga ! " << std::endl;
        gMutex.unlock();
        return 1;
    }
    gMutex.unlock();
    return 0;
}

/*
 * DRMLib Write Callback Function
 */
int32_t drm_write_callback(pci_bar_handle_t pci_bar_handle, uint32_t  addr, uint32_t value)
{
    gMutex.lock();
    if(fpga_pci_poke(pci_bar_handle, addr, value)) {
        std::cout << __FUNCTION__ << ": Unable to write to the fpga ! " << std::endl;
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
 
 /*
 * testActivation
 */
int32_t testActivation(pci_bar_handle_t pci_bar_handle)
{
    uint32_t reg=0;
    uint32_t activated=0;

    /* Activator 0 */
    drm_read_callback(pci_bar_handle, USER_IP_0_BASE_ADDRESS, &reg);
    activated = (reg&0x01);
    if(activated!=1) {
        printf("%s: ERROR: Activator 0: activated=%d\n", __FUNCTION__, (reg&0x01));
        return 1;
    }
    printf("%s: SUCCESS: Activator 0: activated=%d\n", __FUNCTION__, (reg&0x01));
    
    /* Activator 1 */
    drm_read_callback(pci_bar_handle, USER_IP_1_BASE_ADDRESS, &reg);
    activated = (reg&0x01);
    if(activated!=1) {
        printf("%s: ERROR: Activator 1: activated=%d\n", __FUNCTION__, (reg&0x01));
        return 1;
    }
    printf("%s: SUCCESS: Activator 1: activated=%d\n", __FUNCTION__, (reg&0x01));

    return 0;
}
 
 /*
 * Entry point
 */
int main(int argc, char **argv) 
{    
    int ret=0;
    
    /* Initialize the fpga_mgmt library */
    if(fpga_mgmt_init()) {
        std::cerr << "Unable to initialize the fpga_mgmt library" << std::endl;
        return 1;
    }
    
    /* Initialize the fpga_pci library so we could have access to FPGA PCIe from this applications */
    if(fpga_pci_init()) {
        std::cerr << "Unable to initialize the fpga_pci library" << std::endl;
        return 1;
    }

    /* Check that FPGA board is loaded */
    if(check_afi_ready(0)) {
        std::cerr << "AFI not ready for slot 0 " << std::endl;
        return 1;
    }    
    
    /* Unit Test */
    int pf_id = FPGA_APP_PF; 
    int bar_id = APP_PF_BAR0;   
    pci_bar_handle_t handle;
    
    if(fpga_pci_attach(0, pf_id, bar_id, 0, &handle)) {
        std::cerr << __FUNCTION__ << ": Unable to attach to the AFI on slot id 0" << std::endl;
        return 1;
    }
    else
        std::cout << __FUNCTION__ << ": Successfully attached PCIe handler on slot id 0" << std::endl;

 //ACCELIZE DRMLIB CODE AREA START      
    DrmManager *pDrmManag = new DrmManager(
        std::string("conf.json"),
        std::string("cred.json"),
        [&]( uint32_t  offset, uint32_t * value) {      /*Read DRM register*/
            return  drm_read_callback(handle, DRM_BASE_ADDRESS+offset, value);
        },
        [&]( uint32_t  offset, uint32_t value) {        /*Write DRM register*/
            return drm_write_callback(handle, DRM_BASE_ADDRESS+offset, value);
        },
        [&]( const  std::string & err_msg) {
           std::cerr  << err_msg << std::endl;
        }
    );
    std::cout << "[DRMLIB] Start Session .." << std::endl;
    try {                                                                                          
        pDrmManag->activate();                                                                     
    } catch( const Exception& e ) {                                                                
        cerr << "DRM error: " << e.what() << endl;                                                 
    }
//ACCELIZE DRMLIB CODE AREA STOP

    sleep(2);
    ret = testActivation(handle);
   
//ACCELIZE DRMLIB CODE AREA START
    std::cout << "[DRMLIB] Stop Session .." << std::endl;
    try {                                                                                          
        pDrmManag->deactivate();                                                                     
    } catch( const Exception& e ) {                                                                
        cerr << "DRM error: " << e.what() << endl;                                                 
    }

//ACCELIZE DRMLIB CODE AREA STOP      

    if(ret) {
        std::cout << "Unit tests failed !" << std::endl;
        return ret;
    }
    
    std::cout << "Unit tests completed successfully !" << std::endl;
    return 0;
}
