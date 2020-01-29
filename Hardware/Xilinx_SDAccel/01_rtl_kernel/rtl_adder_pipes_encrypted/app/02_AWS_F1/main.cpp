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
#define DATA_SIZE 4096
#define INCR_VALUE 10
#define DRM_BASE_ADDRESS 0x0000000

#include "xcl2.hpp"
#include <vector>
#include <xclhal2.h>

using namespace std;

// Accelize DRMLib
#include "accelize/drm.h"
using namespace Accelize::DRM;

xclDeviceHandle boardHandler;

using std::vector;

/*
 * DRMLib Read Callback Function
 */
int32_t drm_read_callback(uint32_t addr, uint32_t *value)
{  
    if(xclLockDevice(boardHandler)) {
        std::cout << "[ERROR] xclLock failed ..." << std::endl;
        return 1;
    }
    int ret = (int)xclRead(boardHandler, XCL_ADDR_KERNEL_CTRL, DRM_BASE_ADDRESS+addr, value, 4);
    if(ret <= 0) {
        std::cout << __FUNCTION__ << ": Unable to read from the fpga ! ret = " << ret << std::endl;
        return 1;
    }
    if(xclUnlockDevice(boardHandler)) {
        std::cout << "[ERROR] xclUnlock failed ..." << std::endl;
        return -1;
    }
    return 0;
}

/*
 * DRMLib Write Callback Function
 */
int32_t drm_write_callback(uint32_t addr, uint32_t value)
{
    if(xclLockDevice(boardHandler)) {
        std::cout << "[ERROR] xclLock failed ..." << std::endl;
        return 1;
    }
    int ret = (int)xclWrite(boardHandler, XCL_ADDR_KERNEL_CTRL, DRM_BASE_ADDRESS+addr, &value, 4);
    if(ret <= 0) {
        std::cout << __FUNCTION__ << ": Unable to write to the fpga ! ret=" << ret << std::endl;
        return 1;
    }
    if(xclUnlockDevice(boardHandler)) {
        std::cout << "[ERROR] xclUnlock failed ..." << std::endl;
        return -1;
    }
    return 0;
}


/**
 * Entry point
 */
int main(int argc, char** argv)
{
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
    
    // The get_xil_devices will return vector of Xilinx Devices
    std::cout << "Starting xcl::get_xil_devices " << std::endl;
    std::vector<cl::Device> devices = xcl::get_xil_devices();
    cl::Device device = devices[0];
    
    //Creating Context and Command Queue for selected Device 
    OCL_CHECK(err, cl::Context context(device, NULL, NULL, NULL, &err));
    OCL_CHECK(err, cl::CommandQueue q(context, device,
            CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE | CL_QUEUE_PROFILING_ENABLE, &err));
    OCL_CHECK(err, std::string device_name = device.getInfo<CL_DEVICE_NAME>(&err));
    std::cout << "Found Device=" << device_name.c_str() << std::endl;

    // import_binary() command will find the OpenCL binary file created using the 
    // xocc compiler load into OpenCL Binary and return as Binaries
    // OpenCL and it can contain many functions which can be executed on the
    // device.
    std::string binaryFile = xcl::find_binary_file(device_name,"rtl_adder_pipes_drm_aws");
    std::cout << "binaryFile = " << binaryFile << std::endl;
    cl::Program::Binaries bins = xcl::import_binary_file(binaryFile);
    devices.resize(1);
    OCL_CHECK(err, cl::Program program(context, devices, bins, NULL, &err));
    
    // Init xclhal2 library
    if(xclProbe() < 1) {
        std::cout << "[ERROR] xclProbe failed ..." << std::endl;
        return -1;
    }
    boardHandler = xclOpen(0, "xclhal2_logfile.log", XCL_ERROR);
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
//ACCELIZE DRMLIB CODE AREA STOP

    //Create Kernels
    OCL_CHECK(err, cl::Kernel krnl_adder_stage(program,"krnl_adder_stage_rtl", &err));
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
    OCL_CHECK(err, err = krnl_adder_stage.setArg(0,inc));
    OCL_CHECK(err, err = krnl_adder_stage.setArg(1,size));
    OCL_CHECK(err, err = krnl_output_stage.setArg(0,buffer_output));
    OCL_CHECK(err, err = krnl_output_stage.setArg(1,size));

    //Copy input data to device global memory
    cl::Event write_event;
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_input},0/* 0 means from host*/,NULL,&write_event));

    //Launch the Kernel
    std::vector<cl::Event> eventVec;
    eventVec.push_back(write_event);
    OCL_CHECK(err, err = q.enqueueTask(krnl_input_stage, &eventVec));
    OCL_CHECK(err, err = q.enqueueTask(krnl_adder_stage, &eventVec));
    OCL_CHECK(err, err = q.enqueueTask(krnl_output_stage, &eventVec));

    //wait for all kernels to finish their operations
    OCL_CHECK(err, err = q.finish());

    //Copy Result from Device Global Memory to Host Local Memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_output},CL_MIGRATE_MEM_OBJECT_HOST));
    OCL_CHECK(err, err = q.finish());

//OPENCL HOST CODE AREA END

//ACCELIZE DRMLIB CODE AREA START
    std::cout << "[DRMLIB] Stop Session .." << std::endl;
    try {                                                                                          
        pDrmManag->deactivate();                                                                     
    } catch( const Exception& e ) {                                                                
        cerr << "DRM error: " << e.what() << endl;                                                 
    }
//ACCELIZE DRMLIB CODE AREA STOP

    // Release xclhal2 board handler
    xclClose(boardHandler);
    
    // Compare the results of the Device to the simulation
    int match = 0;
    for (int i = 0 ; i < DATA_SIZE ; i++){
        if (source_hw_results[i] != source_sw_results[i]){
            std::cout << "Error: Result mismatch" << std::endl;
            std::cout << "i = " << i << " CPU result = " << source_sw_results[i]
                << " Device result = " << source_hw_results[i] << std::endl;
            match = 1;
            //break;
        }
    }

    std::cout << "TEST " << (match ? "FAILED" : "PASSED") << std::endl; 
    return (match ? EXIT_FAILURE :  EXIT_SUCCESS);
}

