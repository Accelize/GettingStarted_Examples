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
#define DRM_BASE_ADDRESS 0x0030000

#include "xcl2.hpp"
#include <xclhal2.h>
#include <stdio.h>

// Accelize DRMLib
#include "accelize/drmc.h"

xclDeviceHandle boardHandler;

/*
 * DRMLib Read Callback Function
 */
int read_register( uint32_t offset, uint32_t* value, void* user_p )
{  
    if(xclLockDevice(boardHandler)) {
        std::cout << "[ERROR] xclLock failed ..." << std::endl;
        return 1;
    }
    int ret = (int)xclRead(boardHandler, XCL_ADDR_KERNEL_CTRL, DRM_BASE_ADDRESS+offset, value, 4);
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
int write_register( uint32_t offset, uint32_t value, void* user_p )
{
    if(xclLockDevice(boardHandler)) {
        std::cout << "[ERROR] xclLock failed ..." << std::endl;
        return 1;
    }
    int ret = (int)xclWrite(boardHandler, XCL_ADDR_KERNEL_CTRL, DRM_BASE_ADDRESS+offset, &value, 4);
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

/*
 * DRMLib Error Callback Function
 */
void asynch_error( const char* err_msg, void* user_p ) {
    fprintf( stderr, "%s", err_msg );
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
    auto vector_size_bytes = sizeof(int) * DATA_SIZE;

    std::vector<int, aligned_allocator<int>> source_input(DATA_SIZE);
    std::vector<int, aligned_allocator<int>> source_hw_results(DATA_SIZE);
    std::vector<int, aligned_allocator<int>> source_sw_results(DATA_SIZE);

    // Create the test data and Software Result
    for (int i = 0; i < DATA_SIZE; i++) {
        source_input[i] = i;
        source_sw_results[i] = i + INCR_VALUE;
        source_hw_results[i] = 0;
    }

//OPENCL HOST CODE AREA START
    cl_int err;
    cl::CommandQueue q;
    cl::Context context;
    cl::Program program;
    
    // The get_xil_devices will return vector of Xilinx Devices
    std::cout << "Starting xcl::get_xil_devices " << std::endl;
    auto devices = xcl::get_xil_devices();

    // read_binary_file() is a utility API which will load the binaryFile
    // and will return the pointer to file buffer.
    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    int valid_device = 0;
    for (unsigned int i = 0; i < devices.size(); i++) {
        auto device = devices[i];
        // Creating Context and Command Queue for selected Device
        OCL_CHECK(err, context = cl::Context({device}, NULL, NULL, NULL, &err));
        OCL_CHECK(err,
                  q = cl::CommandQueue(context,
                           device,
                           CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE |
                               CL_QUEUE_PROFILING_ENABLE,
                           &err));

        std::cout << "Trying to program device[" << i
                  << "]: " << device.getInfo<CL_DEVICE_NAME>() << std::endl;
                  program = cl::Program(context, {device}, bins, NULL, &err);
        if (err != CL_SUCCESS) {
            std::cout << "Failed to program device[" << i
                      << "] with xclbin file!\n";
        } else {
            std::cout << "Device[" << i << "]: program successful!\n";
            valid_device++;
            break; // we break because we found a valid device
        }
    }
    if (valid_device == 0) {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }

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
    DrmManager *drm_manager = NULL;
    int ctx = 0;
    if ( DrmManager_alloc(
        &drm_manager,
        "./conf.json",
        "./cred.json",
        read_register,
        write_register,
        asynch_error,
        &ctx ) ) {
      fprintf( stderr, "%s", drm_manager->error_message );
    }

    std::cout << "[DRMLIB] Start Session .." << std::endl;
    if ( DrmManager_activate( drm_manager, false ) )
        fprintf( stderr, "%s", drm_manager->error_message );
//ACCELIZE DRMLIB CODE AREA STOP

    //Create Kernels
    OCL_CHECK(err, cl::Kernel krnl_adder_stage(program,"krnl_adder_stage_rtl", &err));
    OCL_CHECK(err, cl::Kernel krnl_input_stage(program,"krnl_input_stage_rtl", &err));
    OCL_CHECK(err, cl::Kernel krnl_output_stage(program,"krnl_output_stage_rtl", &err));
    
    //Allocate Buffer in Global Memory
    OCL_CHECK(err, cl::Buffer buffer_input (context,CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, 
            vector_size_bytes,source_input.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_output(context,CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, 
            vector_size_bytes,source_hw_results.data(), &err));

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
    if ( DrmManager_deactivate( drm_manager, false ) )
        fprintf( stderr, "%s", drm_manager->error_message );
    if ( DrmManager_free( &drm_manager ) )
        fprintf( stderr, "%s", drm_manager->error_message );
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
            break;
        }
    }

    std::cout << "TEST " << (match ? "FAILED" : "PASSED") << std::endl; 
    return (match ? EXIT_FAILURE :  EXIT_SUCCESS);
}

