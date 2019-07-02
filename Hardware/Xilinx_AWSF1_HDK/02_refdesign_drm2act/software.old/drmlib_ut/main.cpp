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
#include <vector>

#include <fpga_pci.h>
#include <fpga_mgmt.h>

using namespace std;

// Accelize DRMLib
#include <mutex>
#include "accelize/drm.h"
using namespace Accelize::DRMLib;
std::mutex gMutex;

// drm_1activator  fix coin     agfi-03a53ce29061cfc22
// drm_2activators v0.3         agfi-0ab88ef9e724e0a22
// drm_2activators v0.4         agfi-0846c9811a8d0a929

// Unit Test Defines
#define DRM_BASE_ADDRESS        0x10000
#define USER_IP_1_BASE_ADDRESS  0x20000
#define USER_IP_0_BASE_ADDRESS  0x00000

#define DRM_PAGE_REG_OFFSET     0x00000
#define DRM_STATUS_REG_OFFSET   0x00040
#define DRM_VERSION_REG_OFFSET  0x00068

#define METERING_TYPE 0
#define NODELOCK_TYPE 1
#define METERING_CONFFILE_FILE std::string("conf_metering.json")
#define NODELOCK_CONFFILE_FILE std::string("conf_nodelock.json")

#define EXIT_PAUSE  1
#define EXIT_STOP   2

#define DEVL_ENV 0
#define PROD_ENV 1
#define PROD_DIR_PATH std::string("../common/prod/")
#define DEVL_DIR_PATH std::string("../common/dev/")

uint32_t gNbBoards    = 1;
uint32_t gSessiontype = METERING_TYPE;
uint32_t gExitMode    = EXIT_STOP;
uint32_t gEnv         = PROD_ENV;
uint32_t gNbCoins     = 10;


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
int32_t my_write_drm(pci_bar_handle_t pci_bar_handle, uint32_t  addr, uint32_t value)
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
 * getNbActivatorInDesign
 */
uint32_t getNbActivatorInDesign(pci_bar_handle_t pci_bar_handle)
{
    uint32_t reg=0, nbAct=0;
    my_write_drm(pci_bar_handle, DRM_BASE_ADDRESS+DRM_PAGE_REG_OFFSET, 0);
    my_read_drm(pci_bar_handle, DRM_BASE_ADDRESS+DRM_STATUS_REG_OFFSET, &reg);
    nbAct = (reg&0xFFFFF800)>>11;
    std::cout << __FUNCTION__ << ": Detected " << nbAct << " activator(s)" << std::endl;
    //return nbAct;
    return 1; // TODO
}

/*
 * generateCoins
 */
int32_t generateCoins(pci_bar_handle_t pci_bar_handle, uint32_t coins)
{
    uint32_t reg=0;
    int32_t  ret=0;
    std::cout << __FUNCTION__ << ": Generating " << coins << " coin(s) ..." << std::endl;
    for(uint32_t i=0; i<coins; i++)
        ret += my_read_drm(pci_bar_handle, USER_IP_0_BASE_ADDRESS, &reg); // generate 1 coins
    
    return ret;
}


/*
 * testActivation
 */
int32_t testActivation(pci_bar_handle_t pci_bar_handle)
{
    uint32_t reg=0;
    uint32_t act_code_rdy=0;
    uint32_t activated=0;
    uint32_t nb_act = getNbActivatorInDesign(pci_bar_handle);

    /* Activator 0 */
    my_read_drm(pci_bar_handle, USER_IP_0_BASE_ADDRESS, &reg);
    act_code_rdy = (reg&0x02)>>1;
    activated = (reg&0x01);
    if(act_code_rdy!=1 || activated!=1) {
        printf("%s: ERROR: Activator 0: Val=0x%x => Idx=%d act_code_rdy=%d, activated=%d\n", __FUNCTION__, reg, (reg&0xFC)>>2, (reg&0x02)>>1, (reg&0x01));
        return 1;
    }
    printf("%s: SUCCESS: Activator 0: Val=0x%x => Idx=%d act_code_rdy=%d, activated=%d\n", __FUNCTION__, reg, (reg&0xFC)>>2, (reg&0x02)>>1, (reg&0x01));

    /* Activator 1 */
    if(nb_act>1) {
        my_read_drm(pci_bar_handle, USER_IP_1_BASE_ADDRESS, &reg);
        act_code_rdy = (reg&0x02)>>1;
        activated = (reg&0x01);
        if(act_code_rdy!=1 || activated!=1) {
            printf("%s: ERROR: Activator 1: Val=0x%x => Idx=%d act_code_rdy=%d, activated=%d\n", __FUNCTION__, reg, (reg&0xFC)>>2, (reg&0x02)>>1, (reg&0x01));
            return 1;
        }
        printf("%s: SUCCESS: Activator 1: Val=0x%x => act_code_rdy=%d, activated=%d\n", __FUNCTION__, reg, (reg&0x02)>>1, (reg&0x01));
    }

    return 0;
}

/*
 * testDrmRegsAccess
 */
int32_t testDrmRegsAccess(pci_bar_handle_t pci_bar_handle)
{
    uint32_t reg=0;
    my_write_drm(pci_bar_handle, DRM_BASE_ADDRESS+DRM_PAGE_REG_OFFSET, 0);
    my_read_drm(pci_bar_handle, DRM_BASE_ADDRESS+DRM_VERSION_REG_OFFSET, &reg);
    printf("%s: Status = : 0x%08x\n", __FUNCTION__, reg);
    if(reg==0x0badc0de || reg==0xdec0de1c) 
        return 1;
    return 0;
}


/*
 * Unit tests
 */
int unit_test(uint32_t nb_fpga_boards, uint32_t exit_mode, uint32_t session_type, uint32_t gNbCoins, std::string zConfFilePath)
{
    int ret = 0;
    int pf_id = FPGA_APP_PF; 
    int bar_id = APP_PF_BAR0;   

    std::vector<pci_bar_handle_t> vPcieBarHandleArray(nb_fpga_boards);
    std::vector<MeteringSessionManager*> pMsmArray(nb_fpga_boards);

    try {

        /* Get PCIe bar handler for each board */
        for(uint32_t i=0; i<nb_fpga_boards; i++) {
            if(fpga_pci_attach(i, pf_id, bar_id, 0, &vPcieBarHandleArray[i])) {
                std::cerr << __FUNCTION__ << ": Unable to attach to the AFI on slot id " << i << std::endl;
                return 1;
            }
            else
                std::cout << __FUNCTION__ << ": Successfully attached PCIe handler on slot id " << i << std::endl;
        }

        /* Check that DRM Controller is reachable */
        for(uint32_t i=0; i<nb_fpga_boards; i++) {
            if(testDrmRegsAccess(vPcieBarHandleArray[i])) {
                std::cerr << __FUNCTION__ << ": ERROR: DRM Controller of board " << i << " is unreachable" << std::endl;
                return 1;
            }
        }
        
        /* Start one MeteringSessionManager per board */
        for(uint32_t i=0; i<nb_fpga_boards; i++) {
            std::cout << __FUNCTION__ << ": Starting MSM " << i << " with configuration " << zConfFilePath << std::endl;
            pMsmArray[i] = new MeteringSessionManager(
               zConfFilePath.c_str(),
               "../common/cred.json",
                [=]( uint32_t  offset, uint32_t * value) { /*Read DRM register*/
                    return  my_read_drm(vPcieBarHandleArray[i], (DRM_BASE_ADDRESS+offset), value);
                },
                [=]( uint32_t  offset, uint32_t value) { /*Write DRM register*/
                    return my_write_drm(vPcieBarHandleArray[i], (DRM_BASE_ADDRESS+offset), value);
                },
                []( const  std::string & err_msg) {
                   std::cerr  << err_msg << std::endl;
                }
            );
            std::cout << __FUNCTION__ << ": Successfully started MSM " << i << std::endl;
            
            pMsmArray[i]->auto_start_session();
            std::cout << __FUNCTION__ << ": Session " << i << " started" << std::endl;
        }
        sleep(2);
        
        
        /* Test activators status */
        for(uint32_t i=0; i<nb_fpga_boards; i++) {
            if(testActivation(vPcieBarHandleArray[i])) {
                ret=1;
                goto end;
            }
        }
        gNbCoins--;
        std::cout << __FUNCTION__ << ": Successfully Activated IPs !" << std::endl;
        
        /* Keep reading until reaching gNbCoins coins */
        for(uint32_t i=0; i<nb_fpga_boards; i++) {
            if(generateCoins(vPcieBarHandleArray[i], gNbCoins)) {
                ret=1;
                goto end;
            }
        }
        
        for(uint32_t i=0; i<nb_fpga_boards; i++) {
            if(exit_mode==2) {
                pMsmArray[i]->stop_session();
                std::cout << __FUNCTION__ << ": Session " << i << " stopped" << std::endl;
            }
            else {
                pMsmArray[i]->pause_session();
                std::cout << __FUNCTION__ << ": Session " << i << " paused" << std::endl;
            }
        }
    } catch (const std::exception& e) {
        std::cout << e.what();
        ret=1;
        goto end;
    }

end:
    for(uint32_t i=0; i<nb_fpga_boards; i++)
        delete pMsmArray[i];
    return ret;
}

/*
 * Usage
 */
 void show_usage(char* argv[])
 {
    std::cerr << "Usage: " << argv[0] << std::endl;
    std::cerr << "" << std::endl;
    std::cerr << "\t-n,--nb_boards      The number fpga board loaded in the system (default=1)" << std::endl;
    std::cerr << "\t-t,--session_type   Session type (0: metering (default), 1: nodelock" << std::endl;
    std::cerr << "\t-m,--exit_mode      Session exit mode (1: pause session, 2: stop session (default)" << std::endl;
    std::cerr << "\t-e,--env            dev or prod (0: dev, 1: prod (default)" << std::endl;
    std::cerr << "\t-c,--coin           Number of coins to generate (min=1)" << std::endl;
    std::cerr << "\t-i,--inf            Input File" << std::endl;
    std::cerr << "\t-o,--outf           Output File" << std::endl;
    std::cerr << ""  << std::endl;
    
 }
 
 
 /**
 *  Parse Command Line Arguments
 */
int parse_cmdline_arguments(int argc, char*argv[])
{
    const char* const short_opts = "n:t:m:e:c:i:o:h?";
    const option long_opts[] = {
            {"nb_boards", required_argument, nullptr, 'n'},
            {"session_type", required_argument, nullptr, 't'},
            {"exit_mode", required_argument, nullptr, 'm'},
            {"env", required_argument, nullptr, 'e'},
            {"coin", required_argument, nullptr, 'c'},
            {"help", no_argument, nullptr, 'h'},
            {nullptr, no_argument, nullptr, 0}
    };
    
    while(true) {
        const auto opt = getopt_long(argc, argv, short_opts, long_opts, nullptr);
        if (-1 == opt)
            break;
            
        switch(opt) {
            case 'n':
                gNbBoards = std::stoi(optarg);
                break;
            case 't':
                gSessiontype = std::stoi(optarg);
                break;
            case 'm':
                gExitMode = std::stoi(optarg);
                break;
            case 'e':
                gEnv = std::stoi(optarg);
                break;
            case 'c':
                gNbCoins = std::stoi(optarg);
                break;
            case 'i':
            case 'o':
                // TODO
                break;
            case 'h':
            case '?':
            default:
                show_usage(argv);
                return 1;
                break;
        }
    }  

    return 0;
}
 
/*
 * Entry point
 */
int main(int argc, char **argv) 
{    
    /* Retrieve input arguments */
    if(parse_cmdline_arguments(argc, argv))
        return 1;
    
    /* Display running parameters */
    std::cout << "nbBoards    = " << gNbBoards    << std::endl;
    std::cout << "sessiontype = " << gSessiontype << std::endl;
    std::cout << "exitMode    = " << gExitMode    << std::endl;
    std::cout << "env         = " << gEnv         << std::endl;
    std::cout << "coin(s)     = " << gNbCoins     << std::endl;
    
    
    /* Initialize the fpga_pci library so we could have access to FPGA PCIe from this applications */
    if(fpga_pci_init()) {
        std::cerr << "Unable to initialize the fpga_pci library" << std::endl;
        return 1;
    }
    
    std::string zConfFilePath = (gEnv==PROD_ENV?PROD_DIR_PATH:DEVL_DIR_PATH) 
                    + (gSessiontype==METERING_TYPE?METERING_CONFFILE_FILE:NODELOCK_CONFFILE_FILE);
    
    /* Check that FPGA boards are loaded */
    for(uint32_t i=0; i<gNbBoards ; i++)
        if(check_afi_ready(i)) {
            std::cerr << "AFI not ready for slot " << i << std::endl;
            return 1;
        }
    
    /* Unit Tests */
    std::cout << "Starting Unit tests ..." << std::endl;
    if(unit_test(gNbBoards, gExitMode, gSessiontype, gNbCoins, zConfFilePath)) {
        std::cerr << ": Unit tests failed" << std::endl;
        return 1;
    }
    
    std::cout << "Unit tests completed successfully !" << std::endl;
    
    return 0;
}

