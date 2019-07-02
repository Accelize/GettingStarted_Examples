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
#include <thread>

#include <fpga_pci.h>
#include <fpga_mgmt.h>

using namespace std;

// Accelize DRMLib
#include <mutex>
#include "accelize/drm.h"
using namespace Accelize::DRMLib;
std::mutex gMutex;

// drm_1activator  coin_gen_on_status_read     agfi-03a53ce29061cfc22
// drm_1activator  no_coins_gen_read_status    agfi-0c1847c2b22791bb4
// agfi-0d9ba76c72939e3c1
// agfi-0ece6adbb4cd1056d
//#define AGFI_STR	std::string("agfi-03a53ce29061cfc22") // metNRF

// drm_refdesign:ip_activator
//agfi-0ece6adbb4cd1056d 
#define AGFI_STR	std::string("agfi-0c35f2c467fcbf7f7") 


// Terminal Colors
#define RESET   	"\033[0m"
#define BOLDBLACK   "\033[1m\033[30m"      /* Bold Black */
#define BOLDRED     "\033[1m\033[31m"      /* Bold Red */
#define BOLDGREEN   "\033[1m\033[32m"      /* Bold Green */
#define BOLDWHITE   "\033[1m\033[37m"      /* Bold White */

// Unit Test Defines
#define DRM_BASE_ADDRESS        0x10000
#define USER_IP_BASE_ADDRESS  	0x00000

#define DRM_PAGE_REG_OFFSET     0x00000
#define DRM_STATUS_REG_OFFSET   0x00040
#define DRM_VERSION_REG_OFFSET  0x00068

#define UNKNOWN_MODE 			0
#define NODELOCKED_MODE 		1
#define FLOATING_MODE 			2
#define METERED_MODE 			3

#define NODELOCKED_CONF_PATH std::string("conf/nodelocked/")
#define NODELOCKED_PROV_CONF_PATH std::string("conf/nodelocked_prov/")
#define FLOATING_CONF_PATH std::string("conf/floating/")
#define METERED_CONF_PATH std::string("conf/metered/")

MeteringSessionManager* gMSM;
std::string gConfFilePath("");
std::string gCredFilePath("");
uint32_t gLicenseMode = UNKNOWN_MODE;
int32_t gSlotId = -1;
//uint32_t gNbUsageUnits = 1000;
bool gProvisioning=false;
bool gExit = false;

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
 * sanity_check
 */
int sanity_check(void) 
{
    int ret=0;
    struct fpga_mgmt_image_info info = {0};

    /* get local image description, contains status, vendor id, and device id. */
    if(fpga_mgmt_describe_local_image(gSlotId, &info,0)) {
        printf("%s: Unable to get AFI information from slot %d. Are you running as root?", __FUNCTION__, gSlotId);
        return 1;  
    }

    /* check to see if the slot is ready */
    if (info.status != FPGA_STATUS_LOADED) {
        printf("%s: AFI in Slot %d is not in READY state !", __FUNCTION__, gSlotId);
        return 1;
    }

   return ret;
 }


/*
 * generateUsageUnits
 */
//int32_t generateUsageUnits(pci_bar_handle_t pci_bar_handle, uint32_t units)
//{
//    uint32_t reg=0;
//    int32_t  ret=0;
//    std::cout << __FUNCTION__ << ": Generating " << units << " usage unit(s) ..." << std::endl;
//    for(uint32_t i=0; i<units; i++)
//        ret += my_read_drm(pci_bar_handle, USER_IP_BASE_ADDRESS+4, &reg); // generate 1 unit
//    
//    return ret;
//}


/**
 * display_ip_status_thread
 */
void display_ip_status_thread(pci_bar_handle_t pci_bar_handle)
{
    uint32_t reg=0;
    while(!gExit) {	
        my_read_drm(pci_bar_handle, USER_IP_BASE_ADDRESS, &reg);
        if(reg&0x01)
            std::cout << "\t IP Activation Status = " << BOLDGREEN << "ACTIVATED" << RESET << std::endl;
        else
            std::cout << "\t IP Activation Status = " << BOLDRED << " LOCKED" << RESET << std::endl;
        sleep(2);
    }
}


/*
 * show_usage
 */
 void show_usage(char* argv[])
 {
    std::cerr << "Usage: " << argv[0] << std::endl;
    std::cerr << "" << std::endl;
    std::cerr << "\t-s,--slot_id         FPGA board slot id (default=0)" << std::endl;
    std::cerr << "\t-n,--nodelocked      Nodelocked licensing mode" << std::endl;
    std::cerr << "\t-f,--floating        Floating licensing mode" << std::endl;
    std::cerr << "\t-m,--metered         Metered licensing mode" << std::endl;
    //std::cerr << "\t-p,--provisioning    Enable license provisioning (default=disabled)" << std::endl;
    //std::cerr << "\t-u,--units         Number of usage units to generate (min=1, default=1000)" << std::endl;
    std::cerr << "\t-v,--verbose         Enable verbose mode (default=disable)" << std::endl;
    std::cerr << ""  << std::endl;
    
 }
 
 
/**
 *  Parse Command Line Arguments
 */
int parse_cmdline_arguments(int argc, char*argv[])
{
    const char* const short_opts = "s:nmfpc:vh?";
    const option long_opts[] = {
            {"slot_id", required_argument, nullptr, 's'},
            {"nodelocked", no_argument, nullptr, 'n'},
            {"floating", no_argument, nullptr, 'f'},
            {"metered", no_argument, nullptr, 'm'},
            //{"units", required_argument, nullptr, 'u'},
            {"provisioning", no_argument, nullptr, 'p'},
            {"verbose", no_argument, nullptr, 'v'},
            {"help", no_argument, nullptr, 'h'},
            {nullptr, no_argument, nullptr, 0}
    };    
    
    while(true) {
        const auto opt = getopt_long(argc, argv, short_opts, long_opts, nullptr);
        if (-1 == opt)
            break;
            
        switch(opt) {
            case 'n':
                gLicenseMode  = NODELOCKED_MODE;
                gConfFilePath = NODELOCKED_CONF_PATH + std::string("conf.json");
                gCredFilePath = NODELOCKED_CONF_PATH + std::string("cred.json");
                break;
            case 'f':
                gLicenseMode  = FLOATING_MODE;
                gConfFilePath = FLOATING_CONF_PATH + std::string("conf.json");
                gCredFilePath = FLOATING_CONF_PATH + std::string("cred.json");
                break;
            case 'm':
                gLicenseMode  = METERED_MODE;
                gConfFilePath = METERED_CONF_PATH + std::string("conf.json");
                gCredFilePath = METERED_CONF_PATH + std::string("cred.json");
                break;
            case 's':
                gSlotId = std::stoi(optarg);
                break;
            //case 'u':
            //    gNbUsageUnits = std::stoi(optarg);
            //    break;
            case 'p':
                gProvisioning = true;
                break;            
            case 'v':
                setenv("ACCELIZE_DRMLIB_VERBOSE", "5", 1);
                break;
            case 'h':
            case '?':
            case ' ':
            default:
                show_usage(argv);
                return 1;
                break;
        }
    } 
    
    if(gSlotId == -1) {
		std::cout << "ERROR: A FPGA slot ID must be configured" << std::endl;
		show_usage(argv);
		return 1;
	}
	
	if(gLicenseMode == UNKNOWN_MODE) {
		show_usage(argv);
		std::cout << "ERROR: A licensing mode must be selected" << std::endl;
		return 1;
	}
	
	if(gLicenseMode == NODELOCKED_MODE && gProvisioning) {
		gConfFilePath = NODELOCKED_PROV_CONF_PATH + std::string("conf.json");
        gCredFilePath = NODELOCKED_PROV_CONF_PATH + std::string("cred.json");
	}
    
    return 0;
}


/*
 * wait_keyb_input
 */
void wait_keyb_input(std::string txt) 
{
    std::cout << "\n\n" << BOLDWHITE << txt <<  RESET << std::endl;
    getchar();
}

/*
 * Program_FPGA
 */
void progFPGA(uint32_t slotID)
{
	std::string cmd = std::string("sudo fpga-load-local-image -S ") + std::to_string(slotID)+ std::string(" -I ") + AGFI_STR + std::string(" > /dev/null");
	system(cmd.c_str());
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
    std::cout << "License Mode       = " << gLicenseMode     << std::endl;
    std::cout << "Slot ID            = " << gSlotId     << std::endl;
    //std::cout << "Usage unit(s)            = " << gNbUsageUnits     << std::endl;
    std::cout << "Configuration file = " << gConfFilePath << std::endl;
        
    /* Program FPGA from selected slot */
    progFPGA(gSlotId);
        
    /* Sanity check */
    if(sanity_check())
        return 1;
    
    /* Initialize FPGA Communication */
    fpga_pci_init();
    pci_bar_handle_t pci_bar_handle = PCI_BAR_HANDLE_INIT;
    fpga_pci_attach(gSlotId, FPGA_APP_PF, APP_PF_BAR0, 0, &pci_bar_handle);
    
    /* Start display thread */
    std::thread tIpStatus(display_ip_status_thread, pci_bar_handle);
    
    /* Initialize Licensing Session */
    if( gLicenseMode == NODELOCKED_MODE)
		wait_keyb_input(std::string("Press any key to load local license ..."));
	else
		wait_keyb_input(std::string("Press any key to start licensing session ..."));
	
	gMSM = new MeteringSessionManager(
		gConfFilePath.c_str(),
		gCredFilePath.c_str(),
		[&]( uint32_t  offset, uint32_t * value) { /*Read DRM register*/
			return  my_read_drm(pci_bar_handle, DRM_BASE_ADDRESS+offset, value);
		},
		[&]( uint32_t  offset, uint32_t value) { /*Write DRM register*/
			return my_write_drm(pci_bar_handle, DRM_BASE_ADDRESS+offset, value);
		},
		[&]( const  std::string & err_msg) {
		   std::cerr  << err_msg << std::endl;
		}
	);
	
	/* Start Licensing Session */
	//if( gLicenseMode == FLOATING_MODE) {
		while(true) {
			try {
				gMSM->auto_start_session();
				break;			
			}
			catch (const std::exception& e) {
				 //std::cout << e.what() << std::endl;
				 if( gLicenseMode == FLOATING_MODE) {
					std::cout << "[INFO] No floating license seat available..." << std::endl;;
					sleep(2);
				 }
				 if( gLicenseMode == NODELOCKED_MODE) {
					std::cout << "[INFO] No local license found ..." << std::endl;;
					return 1;
				 }
					
			}
		}
	//}
	//else
	//	gMSM->auto_start_session();
	
	if( gLicenseMode != NODELOCKED_MODE)
		printf("%s: Session started\n", __FUNCTION__);

	/* Generate Usage units */
	//wait_keyb_input(std::string("Press any key to generate ") + std::to_string(gNbUsageUnits) + std::string(" usage unit(s) ..."));
	//generateUsageUnits(pci_bar_handle, gNbUsageUnits);
	
	/* Stop Licensing Session */
	wait_keyb_input(std::string("Press any key to exit ..."));
	gMSM->stop_session();
	if( gLicenseMode != NODELOCKED_MODE)
		printf("%s: Session stopped\n", __FUNCTION__);
        
    /* Exit display thread */
    gExit=true;
    tIpStatus.join();

    delete gMSM;
    return 0;
}

