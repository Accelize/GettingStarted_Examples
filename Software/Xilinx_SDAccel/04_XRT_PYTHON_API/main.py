#!/usr/bin/env python
# -*- coding: utf-8 -*-

# pylint: disable=C0301
"""
    Accelize Getting Started Example Designs
    Python binding
    
    ********************************************************************
    * Description: SDx Vector Addition using Blocking Pipes Operation  *
    ********************************************************************
"""
import sys
import argparse
import time
import ctypes
import pyopencl as cl
import numpy as np

# Accelize DRM Library
from accelize_drm import DrmManager

sys.path.append('xrt_python_binding/.')
from xrt_binding import *

DRM_BASE_ADDRESS=0x1C00000
DATA_SIZE=4096
INCR_VALUE=10


def drm_read_callback(addr, reg):
    """DRM Library Register Read Callback Function"""
    readSize = xclRead(boardHandler, 
        xclAddressSpace.XCL_ADDR_KERNEL_CTRL, 
        DRM_BASE_ADDRESS+addr, reg, 4)
    if readSize <= 0:
        print(f"drm_read_callback: Unable to read \
                from the fpga ! readSize={readSize}")
        return 1
    return 0
    
    
def drm_write_callback(addr, reg):
    """DRM Library Register Write Callback Function"""
    value = reg.to_bytes(4, byteorder="little")
    pvalue = (ctypes.c_char * len(value)).from_buffer_copy(value)
    writtenSize = xclWrite(boardHandler, 
        xclAddressSpace.XCL_ADDR_KERNEL_CTRL, 
        DRM_BASE_ADDRESS+addr, pvalue, 4)
    if writtenSize <= 0:
        print(f"drm_write_callback: Unable to read \
                from the fpga ! writtenSize={writtenSize}")
        return 1
    return 0
    
    
def rtl_adder_run(xclbinpath):
    global boardHandler
        
    source_input      = np.arange(DATA_SIZE, dtype=np.uint32)
    source_sw_results = np.arange(INCR_VALUE, DATA_SIZE + INCR_VALUE, 
                            dtype=np.uint32)
    source_hw_results = np.zeros(DATA_SIZE, np.uint32)
 
    ##OPENCL HOST CODE AREA START

    # Get platform/device information
    clPlatform = cl.get_platforms()[0]
    clDevices = clPlatform.get_devices()
    clDevice = clDevices[0]
    
    ctx = cl.Context(devices=clDevices)
    
    with open(xclbinpath, "rb") as binary_file:
        binary = binary_file.read()
    
    prg = cl.Program(ctx, clDevices, [binary])
    
    # Init xclhal2 library
    if xclProbe()<1:
        print("[ERROR] xclProbe failed ...")
        raise        
    boardHandler = xclOpen(0, ctypes.c_char_p(b"xrt_logfile.log"), 
                        xclVerbosityLevel.XCL_INFO)

    ##ACCELIZE DRMLIB CODE AREA START 
    drm_manager = DrmManager(
        # Configuration files paths
        "./conf.json" ,
        "./cred.json" ,
        # Read/write register functions callbacks
        drm_read_callback,
        drm_write_callback,
    )
    drm_manager.activate()
    print(f"[DRMLIB] Session ID: {drm_manager.get('session_id')}")
    time.sleep(2)
    ##ACCELIZE DRMLIB CODE AREA STOP
    qprops = cl.command_queue_properties.OUT_OF_ORDER_EXEC_MODE_ENABLE|\
             cl.command_queue_properties.PROFILING_ENABLE
    with cl.CommandQueue(context=ctx, device=clDevice, 
            properties=qprops) as q:
        
        # Create Kernels
        krnl_adder_stage  = cl.Kernel(prg, "krnl_adder_stage_rtl")
        krnl_input_stage  = cl.Kernel(prg, "krnl_input_stage_rtl")
        krnl_output_stage = cl.Kernel(prg, "krnl_output_stage_rtl")
        
        # Create Buffer
        buffer_input  = cl.Buffer(ctx, 
                cl.mem_flags.USE_HOST_PTR|cl.mem_flags.READ_ONLY, 
                size=0, hostbuf=source_input)
        buffer_output = cl.Buffer(ctx, 
                cl.mem_flags.USE_HOST_PTR|cl.mem_flags.READ_ONLY, 
                size=0, hostbuf=source_hw_results)
               
        # Set the Kernel Arguments
        npSize = np.int32(DATA_SIZE)
        npIncr = np.int32(INCR_VALUE)
        krnl_input_stage.set_args(buffer_input, npSize)
        krnl_adder_stage.set_args(npIncr, npSize)
        krnl_output_stage.set_args(buffer_output, npSize)
        
        # Copy input data to device global memory
        cl.enqueue_migrate_mem_objects(q, [buffer_input], flags=0)
        
        # Launch the Kernel
        cl.enqueue_nd_range_kernel(q, krnl_input_stage, [1], [1])
        cl.enqueue_nd_range_kernel(q, krnl_adder_stage, [1], [1])
        cl.enqueue_nd_range_kernel(q, krnl_output_stage,[1], [1])

    # Copy Result from Device Global Memory to Host Local Memory
    cl.enqueue_migrate_mem_objects(q, [buffer_output], 
        flags=cl.mem_migration_flags.HOST)
    q.finish()
    ##OPENCL HOST CODE AREA STOP

    ##ACCELIZE DRMLIB CODE AREA START     
    drm_manager.deactivate()
    ##ACCELIZE DRMLIB CODE AREA STOP

    # Release xclhal2 board handler
    #xclClose(boardHandler) # /!\ XRT Python binding is in development
                            # state, xclClose() generate crash at the 
                            # time this script is written
    
    diff = source_hw_results != source_sw_results
    if diff.any():
        print(f"Error: Result mismatch i={i} \
            CPU={source_sw_results[i]} != \
            DEVICE={source_hw_results[i]}")
        raise
            
    print("TEST PASSED")

if __name__ == '__main__':

    # Parse the arguments
    option = argparse.ArgumentParser()
    
    option.add_argument('-x', '--xclbin', dest="xclbin_path", 
                        type=str, default=None,
                        required=True, help="Path to .xclbin file")
    
    args = option.parse_args()
    rtl_adder_run(args.xclbin_path)
    
