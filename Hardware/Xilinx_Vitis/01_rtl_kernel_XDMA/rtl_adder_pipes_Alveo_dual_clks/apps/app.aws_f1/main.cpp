/**********
Copyright (c) 2018, Xilinx, Inc.
All rights reserved.
Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:
1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.
3. Neither the name of the copyright holder nor the names of its contributors
may be used to endorse or promote products derived from this software
without specific prior written permission.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**********/

/*******************************************************************************
Description: SDx Vector Addition using Blocking Pipes Operation
*******************************************************************************/

#define CL_HPP_CL_1_2_DEFAULT_BUILD
#define CL_HPP_TARGET_OPENCL_VERSION 120
#define CL_HPP_MINIMUM_OPENCL_VERSION 120
#define CL_HPP_ENABLE_PROGRAM_CONSTRUCTION_FROM_ARRAY_COMPATIBILITY 1
#define CL_USE_DEPRECATED_OPENCL_1_2_APIS

#define DATA_SIZE 4096
#define INCR_VALUE 10

#include <vector>
#include <iostream>
#include <cstdio>
#include <cstdlib>

#include <CL/cl2.hpp>
#include <experimental/xrt_device.h>
#include <experimental/xrt_bo.h>
#include <experimental/xrt_kernel.h>
#include <experimental/xrt_xclbin.h>
using namespace std;

// Accelize DRMLib
#include "accelize/drm.h"
using namespace Accelize::DRM;

xclDeviceHandle boardHandler;
xrt::uuid xclbinId;

/**
 * Entry point
 */
int main(int argc, char** argv)
{
    if (argc != 3) {
        std::cout << "Usage: " << argv[0] << " <path_to_xclbin>" << " <increment_value>"  << std::endl;
        return EXIT_FAILURE;
    }
    
    int inc = atoi(argv[2]);
    int size = DATA_SIZE;

    //Allocate Memory in Host Memory
    size_t vector_size_bytes = sizeof(int) * size;

   int source_input     [size];
   int source_hw_results[size];
   int source_sw_results[size];

    // Create the test data and Software Result 
    for(int i = 0 ; i < size ; i++){
        source_input[i] = i;
        source_sw_results[i] = i + INCR_VALUE;
        source_hw_results[i] = 0;
    }

//XRT HOST CODE AREA START
    
    //Get platform/device information
    std::vector<cl::Platform> platforms;    
    cl::Platform::get(&platforms);
    cl::Platform platform = platforms[0];
    
    std::vector<cl::Device> devices;
    platform.getDevices(CL_DEVICE_TYPE_ACCELERATOR, &devices);
    uint32_t device_id=0;    
    
    // Accelize Choose device if multiple available - START
    if(devices.size() > 1){
	std::cout << "Found " << devices.size() << " Boards" << std::endl;
	for(uint32_t i=0; i<devices.size(); i++) {
	    std::string device_name = devices[i].getInfo<CL_DEVICE_NAME>();
	    std::cout << "\t[" << i << "] " <<  device_name << std::endl;
	}
	std::cout << "Please select the targeted board:" << std::endl;
	std::cin >> device_id;
    }
    // Accelize Choose device if multiple available - END

    // Program selected device
    xrt::xclbin bin(argv[1]);
    xrt::device device(device_id);
    xclbinId = device.load_xclbin(bin);

    // Create Kernels
    xrt::kernel krnl_adder_stage(device,xclbinId,"krnl_adder_stage_rtl");
    xrt::kernel krnl_input_stage(device,xclbinId,"krnl_input_stage_rtl");
    xrt::kernel krnl_output_stage(device,xclbinId,"krnl_output_stage_rtl");

//ACCELIZE DRMLIB CODE AREA START      
    
    // Create ip drm_controller (Particular Kernel for register access)
    xrt::kernel krnl_drm_ctrl(device,xclbinId,"kernel_drm_controller",true);
    
    // Create drm manager
    DrmManager *pDrmManag = new DrmManager(
        std::string("conf.json"),
        std::string("cred.json"),
        [&]( uint32_t  offset, uint32_t * value) {      /*Read DRM register*/
            *value = krnl_drm_ctrl.read_register(offset);
            return  0;
        },
        [&]( uint32_t  offset, uint32_t value) {        /*Write DRM register*/
            krnl_drm_ctrl.write_register(offset, value);
            return 0;
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
    
    //Allocate Buffer in Global Memory   
    xrt::bo buffer_input(device,vector_size_bytes, krnl_input_stage.group_id(0));
    xrt::bo buffer_output(device,vector_size_bytes, krnl_output_stage.group_id(0));  

    //Copy input data to device global memory
    buffer_input.write(source_input);
    buffer_input.sync(XCL_BO_SYNC_BO_TO_DEVICE);

    //Launch the Kernel with their arguments
    xrt::run input_run 	= krnl_input_stage(buffer_input,size);
    xrt::run adder_run 	= krnl_adder_stage(inc,size);
    xrt::run output_run = krnl_output_stage(buffer_output,size);

    //wait for all kernels to finish their operations
    input_run	.wait();
    adder_run	.wait();
    output_run	.wait();
    
    //Copy Result from Device Global Memory to Host Local Memory
    buffer_output.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
    buffer_output.read(source_hw_results);

//XRT HOST CODE AREA END

//ACCELIZE DRMLIB CODE AREA START
    std::cout << "[DRMLIB] Stop Session .." << std::endl;
    try {                                                                                          
        pDrmManag->deactivate();                                                                     
    } catch( const Exception& e ) {                                                                
        cerr << "DRM error: " << e.what() << endl;                                                 
    }
//ACCELIZE DRMLIB CODE AREA STOP
    
    // Compare the results of the Device to the simulation
    int match = 0;
    std::cout<< "Nb data processed: "<< size << std::endl;
    for (int i = 0 ; i < size ; i++){
        if (source_hw_results[i] != source_sw_results[i]){
            std::cout << "Error: Result mismatch" << std::endl;
            std::cout << "i = " << i << " CPU result = " << source_sw_results[i]
                << " Device result = 0x" << std::hex << source_hw_results[i] <<  std::dec << std::endl;
            match = 1;
        }
    }

    std::cout << "TEST " << (match ? "FAILED" : "PASSED") << std::endl; 
    return (match ? EXIT_FAILURE :  EXIT_SUCCESS);
}
