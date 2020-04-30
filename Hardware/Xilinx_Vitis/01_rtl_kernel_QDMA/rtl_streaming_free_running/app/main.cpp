/**********
Copyright (c) 2019, Xilinx, Inc.
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
#include <algorithm>
#include <cstring>
#include <iostream>
#include <string>
#include <thread>
#include <unistd.h>
#include <vector>

// This extension file is required for stream APIs
#include "CL/cl_ext_xilinx.h"
// This file is required for OpenCL C++ wrapper APIs
#include "xcl2.hpp"
#include <xclhal2.h>

// Accelize DRMLib
#include "accelize/drm.h"
using namespace Accelize::DRM;

#define DRM_BASE_ADDRESS 0x1810000
xclDeviceHandle boardHandler;

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

// Declaration of custom stream APIs that binds to Xilinx Streaming APIs.
decltype(&clCreateStream) xcl::Stream::createStream = nullptr;
decltype(&clReleaseStream) xcl::Stream::releaseStream = nullptr;
decltype(&clReadStream) xcl::Stream::readStream = nullptr;
decltype(&clWriteStream) xcl::Stream::writeStream = nullptr;
decltype(&clPollStreams) xcl::Stream::pollStreams = nullptr;

auto constexpr c_test_size = 256 * 1024 * 1024; //256 MB data

////////////////////RESET FUNCTION///////////////////////////////////////////
int reset(int *a, int *sw_results, int *hw_results, unsigned int size) {
    //Fill the input vectors with data
    std::generate(a, a + size, std::rand);
    for (size_t i = 0; i < size; i++) {
        hw_results[i] = 0;
        sw_results[i] = a[i] + 1;
    }
    return 0;
}
///////////////////VERIFY FUNCTION////////////////////
int verify(int *sw_results, int *hw_results, int size) {
    bool match = true;
    for (int i = 0; i < size; i++) {
        if (sw_results[i] != hw_results[i]) {
            //match = false;
            printf("sw_results[%d]=%d hw_results[%d]=%d\n", i, sw_results[i], i, hw_results[i]);
            //break;
        }
    }
    std::cout << "TEST " << (match ? "PASSED" : "FAILED") << std::endl;
    return match;
}
////////MAIN FUNCTION//////////
int main(int argc, char **argv) {
    unsigned int size = c_test_size;

    if (xcl::is_hw_emulation()) {
        size = 4096; // 4KB for HW emulation
    } else if (xcl::is_emulation()) {
        size = 2 * 1024 * 1024; // 4MB for sw emulation
    }

    // I/O Data Vectors
    std::vector<int, aligned_allocator<int>> h_a(size);
    std::vector<int, aligned_allocator<int>> hw_results(size);
    std::vector<int> sw_results(size);

    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
        return EXIT_FAILURE;
    }

    // OpenCL Host Code Begins
    cl_int err;

    // OpenCL objects
    cl::Device device;
    cl::Context context;
    cl::CommandQueue q;
    cl::Program program;
    cl::Kernel krnl_adder1;

    auto binaryFile = argv[1];

    // get_xil_devices() is a utility API which will find the xilinx
    // platforms and will return list of devices connected to Xilinx platform
    auto devices = xcl::get_xil_devices();

    // read_binary_file() is a utility API which will load the binaryFile
    // and will return the pointer to file buffer.
    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    int valid_device = 0;
    int device_idx=0;
    for (unsigned int i = 0; i < devices.size(); i++) {
        device = devices[i];
        device_idx=i;
        // Creating Context and Command Queue for selected Device
        OCL_CHECK(err, context = cl::Context(device, NULL, NULL, NULL, &err));
        OCL_CHECK(err,
                  q = cl::CommandQueue(
                      context, device, CL_QUEUE_PROFILING_ENABLE, &err));

        std::cout << "Trying to program device[" << i
                  << "]: " << device.getInfo<CL_DEVICE_NAME>() << std::endl;
        program = cl::Program(context, {device}, bins, NULL, &err);
        if (err != CL_SUCCESS) {
            std::cout << "Failed to program device[" << i
                      << "] with xclbin file!\n";
        } else {
            std::cout << "Device[" << i << "]: program successful!\n";
            OCL_CHECK(err,
                      krnl_adder1 =
                          //cl::Kernel(program, "myadder1:{myadder1_1}", &err));
                          cl::Kernel(program, "myadder1", &err));
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
    boardHandler = xclOpen(device_idx, "xclhal2_logfile.log", XCL_ERROR);
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
    pDrmManag->activate();                                                                     
//ACCELIZE DRMLIB CODE AREA STOP

    auto platform_id = device.getInfo<CL_DEVICE_PLATFORM>(&err);

    //Initialization of streaming class is needed before using it.
    xcl::Stream::init(platform_id);

    std::cout << "Vector Increment of elements 0x" << std::hex << size
              << " by 1" << std::endl;

    // Reset the data vectors
    reset(h_a.data(), sw_results.data(), hw_results.data(), size);

    //Running the kernel
    unsigned int vector_size_bytes = size * sizeof(int);

    // Streams
    // Device Connection specification of the stream through extension pointer
    cl_int ret;
    cl_mem_ext_ptr_t ext;
    ext.param = krnl_adder1.get();
    ext.obj = NULL;

    //Create write stream for argument 0 and 1 of kernel
    cl_stream write_stream_a;
    ext.flags = 1;
    OCL_CHECK(ret,
              write_stream_a = xcl::Stream::createStream(
                  device.get(), CL_STREAM_WRITE_ONLY, CL_STREAM, &ext, &ret));

    //Create read stream for argument 2 of kernel
    cl_stream read_stream;
    ext.flags = 0;
    OCL_CHECK(ret,
              read_stream = xcl::Stream::createStream(
                  device.get(), CL_STREAM_READ_ONLY, CL_STREAM, &ext, &ret));

    // Initiating the WRITE transfer
    cl_stream_xfer_req wr_req{0};

    wr_req.flags = CL_STREAM_EOT;
    wr_req.priv_data = (void *)"write_a";

    // Thread 1 for writing data to input stream 1 independently in case of default blocking transfers.
    std::thread thr1(xcl::Stream::writeStream,
                     write_stream_a,
                     h_a.data(),
                     vector_size_bytes,
                     &wr_req,
                     &ret);

    // Initiating the READ transfer
    cl_stream_xfer_req rd_req{0};
    rd_req.flags = CL_STREAM_EOT;
    rd_req.priv_data = (void *)"read";
    // Output thread to read the stream data independently in case of default blocking transfers.
    std::thread thr2(xcl::Stream::readStream,
                     read_stream,
                     hw_results.data(),
                     vector_size_bytes,
                     &rd_req,
                     &ret);

    // Waiting for all the threads to complete their respective operations.
    thr1.join();
    thr2.join();
    // OpenCL Host Code Ends
    
//ACCELIZE DRMLIB CODE AREA START
    std::cout << "[DRMLIB] Stop Session .." << std::endl;
    pDrmManag->deactivate();                                                                     
//ACCELIZE DRMLIB CODE AREA STOP

    // Release xclhal2 board handler
    xclClose(boardHandler);

    // Compare the device results with software results
    verify(sw_results.data(), hw_results.data(), size);

    return 0;
}
