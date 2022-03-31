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
#include <CL/opencl.h>

#define OCL_CHECK(error,call)                                       \
    call;                                                           \
    if (error != CL_SUCCESS) {                                      \
      printf("%s:%d Error calling " #call ", error code is: %d\n",  \
              __FILE__,__LINE__, error);                            \
      exit(EXIT_FAILURE);                                           \
    } 

#define DATA_SIZE 4
#define INCR_VALUE 1

#define DRM_BASE_ADDRESS        (0x1810000 + 0x4000)
#define USER_IP_0_BASE_ADDRESS  (0x1810000)

#include <vector>
#include <CL/cl2.hpp>
#include <iostream>
#include <fstream>
#include <CL/cl_ext_xilinx.h>
#include <xclhal2.h>
#include <cstdio>
#include <cstdlib>
#include <unistd.h>
#include <vector>
using namespace std;

// Accelize DRMLib
#include "accelize/drm.h"
using namespace Accelize::DRM;

xclDeviceHandle boardHandler;

/**
 * read_binary_file
 */
char* read_binary_file(const std::string &xclbin_file_name, unsigned &nb) 
{
    std::cout << "INFO: Reading " << xclbin_file_name << std::endl;

    if(access(xclbin_file_name.c_str(), R_OK) != 0) {
        printf("ERROR: %s xclbin not available please build\n", xclbin_file_name.c_str());
        exit(EXIT_FAILURE);
    }
    //Loading XCL Bin into char buffer 
    std::cout << "Loading: '" << xclbin_file_name.c_str() << "'\n";
    std::ifstream bin_file(xclbin_file_name.c_str(), std::ifstream::binary);
    bin_file.seekg (0, bin_file.end);
    nb = bin_file.tellg();
    bin_file.seekg (0, bin_file.beg);
    char *buf = new char [nb];
    bin_file.read(buf, nb);
    std::cout << "INFO: Reading " << xclbin_file_name  << " done!" << std::endl;
    return buf;
}

/*
 * DRMLib Read Callback Function
 */
int32_t drm_read_callback(uint32_t addr, uint32_t *value)
{   
    int ret = (int)xclRead(boardHandler, XCL_ADDR_KERNEL_CTRL, DRM_BASE_ADDRESS+addr, value, 4);
    if(ret <= 0) {
        std::cout << __FUNCTION__ << ": Unable to read from the fpga ! ret = " << ret << std::endl;
        return 1;
    }
    return 0;
}

/*
 * DRMLib Write Callback Function
 */
int32_t drm_write_callback(uint32_t addr, uint32_t value)
{
    int ret = (int)xclWrite(boardHandler, XCL_ADDR_KERNEL_CTRL, DRM_BASE_ADDRESS+addr, &value, 4);
    if(ret <= 0) {
        std::cout << __FUNCTION__ << ": Unable to write to the fpga ! ret=" << ret << std::endl;
        return 1;
    }
    return 0;
}

/**
 * testActivation
 */
int32_t testActivation()
{
    uint32_t reg=0, mb1=0, mb2=0, mb3=0;
    uint32_t activated=0;
    
    /* Test Mailboxes*/
    reg=0xABCD;
    xclWrite(boardHandler, XCL_ADDR_KERNEL_CTRL, USER_IP_0_BASE_ADDRESS+0x04, &reg, 4);
    reg=0xFFFF;
    xclWrite(boardHandler, XCL_ADDR_KERNEL_CTRL, USER_IP_0_BASE_ADDRESS+0x08, &reg, 4);
    reg=0x1010;
    xclWrite(boardHandler, XCL_ADDR_KERNEL_CTRL, USER_IP_0_BASE_ADDRESS+0x0C, &reg, 4);
        
    xclRead(boardHandler, XCL_ADDR_KERNEL_CTRL, USER_IP_0_BASE_ADDRESS+0x04, &mb1, 4);
    xclRead(boardHandler, XCL_ADDR_KERNEL_CTRL, USER_IP_0_BASE_ADDRESS+0x08, &mb2, 4);
    xclRead(boardHandler, XCL_ADDR_KERNEL_CTRL, USER_IP_0_BASE_ADDRESS+0x0C, &mb3, 4);
        
    if(mb1!=0xABCD || mb2!=0xFFFF || mb3!=0x1010) {
        printf("%s: ERROR: Mailbox issue mb1=0x%x mb2=0x%X mb3=0x%X\n", __FUNCTION__, mb1, mb2, mb3);
        return 1;
    }    

    /* Activator 0 */
    xclRead(boardHandler, XCL_ADDR_KERNEL_CTRL, USER_IP_0_BASE_ADDRESS+0x00, &reg, 4);
    activated = (reg&0x01);
    if(activated!=1) {
        printf("%s: ERROR: Activator 0: activated=%d\n", __FUNCTION__, activated);
        return 2;
    }

    printf("%s: SUCCESS: All tests completed successfully\n", __FUNCTION__);
    return 0;
}

/**
 * Entry point
 */
int main(int argc, char** argv)
{
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
        return EXIT_FAILURE;
    }

    std::string binaryFile = argv[1];

    //Allocate Memory in Host Memory
    size_t vector_size_bytes = sizeof(int) * DATA_SIZE;

   int source_input     [DATA_SIZE];
   int source_hw_results[DATA_SIZE];
   int source_sw_results[DATA_SIZE];

    // Create the test data and Software Result 
    for(int i = 0 ; i < DATA_SIZE ; i++){
        source_input[i] = i;
        source_sw_results[i] = i + INCR_VALUE;
        source_hw_results[i] = 0;
    }

//OPENCL HOST CODE AREA START
    cl_int err;
    unsigned fileBufSize;
    
    //Get platform/device information
    std::vector<cl::Platform> platforms;    
    err = cl::Platform::get(&platforms);
    cl::Platform platform = platforms[0];
    
    std::vector<cl::Device> devices;
    err = platform.getDevices(CL_DEVICE_TYPE_ACCELERATOR, &devices);
    
    // Accelize
	// Choose device if multiple available
    cl::Device device = devices[0];
    uint32_t device_id=0;    
    if(devices.size() > 1){
		std::cout << "Found " << devices.size() << " Boards" << std::endl;
		for(uint32_t i=0; i<devices.size(); i++) {
			device = devices[i];
			std::string device_name = device.getInfo<CL_DEVICE_NAME>();
			std::cout << "\t[" << i << "] " <<  device_name << std::endl;
		}
		std::cout << "Please select the targeted board:" << std::endl;
		std::cin >> device_id;
	}
	device = devices[device_id];
	std::vector<cl::Device> chosen_device;
	chosen_device.push_back(device);
	std::cout << "Selected board: " << device_id << std::endl;

    OCL_CHECK(err, cl::Context context(device, NULL, NULL, NULL, &err));
    OCL_CHECK(err, cl::CommandQueue q(context, device,
            CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE | CL_QUEUE_PROFILING_ENABLE, &err));
    std::string device_name = device.getInfo<CL_DEVICE_NAME>(); 

    char* fileBuf = read_binary_file(binaryFile, fileBufSize);
    cl::Program::Binaries bins{{fileBuf, fileBufSize}};
    devices.resize(1);
    OCL_CHECK(err, cl::Program program(context, chosen_device, bins, NULL, &err));
    
    // Init xclhal2 library
    if(xclProbe() < 1) {
        std::cout << "[ERROR] xclProbe failed ..." << std::endl;
        return -1;
    }
    boardHandler = xclOpen(device_id, "xclhal2_logfile.log", XCL_ERROR);
    if(boardHandler == NULL) {
        std::cout << "[ERROR] xclOpen failed ..." << std::endl;
        return -1;
    }
        
//ACCELIZE DRMLIB CODE AREA START      
    DrmManager *pDrmManag = new DrmManager(
        std::string("conf.json"),
        std::string("cred.json"),
        [&]( uint32_t  offset, uint32_t * value) {      /*Read DRM register*/
            return  drm_read_callback(offset, value);
        },
        [&]( uint32_t  offset, uint32_t value) {        /*Write DRM register*/
            return drm_write_callback(offset, value);
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
    
    std::cout << "[DRMLIB] Test Activator .." << std::endl;
    if(testActivation()) {
        std::cout << "Unit tests failed !" << std::endl;
    }
    else
		std::cout << "Unit tests completed successfully !" << std::endl;
    std::cout << "[DRMLIB] End Test Activator .." << std::endl;

//ACCELIZE DRMLIB CODE AREA STOP
    //Create Kernels
    OCL_CHECK(err, cl::Kernel krnl_input_stage(program,"krnl_input_stage_rtl", &err));
    OCL_CHECK(err, cl::Kernel krnl_output_stage(program,"krnl_output_stage_rtl", &err));
    
    //Allocate Buffer in Global Memory
    OCL_CHECK(err, cl::Buffer buffer_input (context,CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, 
            vector_size_bytes,source_input, &err));
    OCL_CHECK(err, cl::Buffer buffer_output(context,CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, 
            vector_size_bytes,source_hw_results, &err));

    int inc = INCR_VALUE;
    int size = DATA_SIZE;
    //Set the Kernel Arguments
    OCL_CHECK(err, err = krnl_input_stage.setArg(0,buffer_input));
    OCL_CHECK(err, err = krnl_input_stage.setArg(1,size));
    OCL_CHECK(err, err = krnl_output_stage.setArg(0,buffer_output));
    OCL_CHECK(err, err = krnl_output_stage.setArg(1,size));

    //Copy input data to device global memory
    cl::Event write_event;
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_input},0/* 0 means from host*/,NULL,&write_event));
	
    //Launch the Kernel
    std::vector<cl::Event> eventVec;
    eventVec.push_back(write_event);
    OCL_CHECK(err, err = q.enqueueTask(krnl_input_stage, &eventVec));
    OCL_CHECK(err, err = q.enqueueTask(krnl_output_stage, &eventVec));

    //wait for all kernels to finish their operations
    OCL_CHECK(err, err = q.finish());

    //Copy Result from Device Global Memory to Host Local Memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_output},CL_MIGRATE_MEM_OBJECT_HOST));
    OCL_CHECK(err, err = q.finish());
//OPENCL HOST CODE AREA END

//ACCELIZE DRMLIB CODE AREA START
    std::cout << "[DRMLIB] Stop Session .." << std::endl;
    pDrmManag->deactivate();

//ACCELIZE DRMLIB CODE AREA STOP

    // Release xclhal2 board handler
    xclClose(boardHandler);
    
    // Compare the results of the Device to the simulation
    int match = 0;
    for (int i = 0 ; i < DATA_SIZE ; i++){
        if (source_hw_results[i] != source_sw_results[i]){
            std::cout << "Error: Result mismatch" << std::endl;
            std::cout << "i = " << i << " CPU result = " << source_sw_results[i]
                << " Device result = 0x" << std::hex << source_hw_results[i] <<  std::dec << std::endl;
            match = 1;
            //break;
        }
    }

    delete[] fileBuf;

    std::cout << "TEST " << (match ? "FAILED" : "PASSED") << std::endl; 
    return (match ? EXIT_FAILURE :  EXIT_SUCCESS);
}
