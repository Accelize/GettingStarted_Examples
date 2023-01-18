#!/usr/bin/env python3

import argparse
from numpy import zeros
from pynq import Device, Overlay, allocate
from accelize_drm import DrmManager

DATA_SIZE = 10
INCR_VALUE = 10

# Read register callback function for drm manager
def read_callback (value, offset, krnl):
    try:
        value[0] = krnl.read(offset)
        return 0
    except:
        return 1

# Write register callback function for drm manager
def write_callback (value, offset, krnl):
    try:
        krnl.write(offset, value)
        return 0
    except:
        return 1

def run_kernel(xclbin_path, incr_value):
    
    source_sw_result = zeros(DATA_SIZE, int)

    # Discover devices
    devices = Device.devices
    if not devices:
        raise Exception("No devices found!")

    if len(devices) > 1:
        # Print list of devices
        for i, device in enumerate(devices):
            print("[{}] {}".format(i, device))

        # Select device
        selected = int(input("Select device: "))
        handle = Overlay(xclbin_path, device=devices[selected])
    else:
        handle = Overlay(xclbin_path, device=devices[0])

    # Get kernels from xclbin with their defined name
    krnl_input_stage = handle.k1
    krnl_adder_stage = handle.k2 
    krnl_output_stage = handle.k3
    
# Accelize DRM code area START
    # Get drm controller kernel
    krnl_drm_ctrl = handle.k4
    
    # Create drm manager
    drm_manager = DrmManager(
    "./conf.json" ,
    "./cred.json" ,
    lambda offset, value: read_callback(value,offset,krnl_drm_ctrl), 
    lambda offset, value: write_callback(value, offset, krnl_drm_ctrl),
    )
    
    print("[DRMLIB] Start Session ..")
    drm_manager.activate()
# Accelize DRM code area STOP

    # Input/Output buffer init
    input_buf = allocate(DATA_SIZE, 'u4', target=handle.bank1)
    output_buf = allocate(DATA_SIZE, 'u4', target=handle.bank1)
    
    for i in range(DATA_SIZE):
        input_buf[i] = i
        output_buf[i] = 0
        source_sw_result[i] = i + incr_value
    
    input_buf.sync_to_device()
    output_buf.sync_to_device()
    
    # Launch kernels
    input_run = krnl_input_stage.start(input_buf, DATA_SIZE)
    adder_run = krnl_adder_stage.start(incr_value, DATA_SIZE)
    output_run = krnl_output_stage.start(output_buf, DATA_SIZE)
    
    input_state = input_run.wait()
    adder_state = adder_run.wait()
    output_state = output_run.wait()

# Accelize DRM code area START
    print("[DRMLIB] Stop Session ..")
    drm_manager.deactivate()
# Accelize DRM code area STOP

    # Get output kernel result
    output_buf.sync_from_device()
   
    # Check result value
    match = 0
    for i in range(DATA_SIZE):
        if (output_buf[i] != source_sw_result[i]):
            print ("Error: Result mismatch")
            print ("i = %x CPU result = %x Device result = %x"%(i,source_sw_result[i],output_buf[i]))
            match = 1
            break

    print("TEST %s"%("FAILED" if match == 1 else "PASSED"))

    # Release resources
    del input_buf
    del output_buf
    handle.free()

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Execute kernel with PyXRT")
    parser.add_argument("xclbin_path", type=str, help="Path to the xclbin file")
    parser.add_argument("incr_value", type=int, nargs="?", default=INCR_VALUE, help="Increment value for the adder")
    args = parser.parse_args()

    xclbin_path = args.xclbin_path
    incr_value = args.incr_value
    run_kernel(xclbin_path, incr_value)

