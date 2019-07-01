# Accelize Getting Started
## Xilinx SDAccel example designs

The following example design are based on [Xilinx SDAccel examples](https://github.com/Xilinx/SDAccel_Examples)
Each of them shows a different context in which one could integrate the Accelize DRM IPs

| Name                       | Description                            | Status      |
| -------------------------- |--------------------------------------- |:----------: |
| 01_rtl_kernel              | How to add DRM IPs in an RTL kernel    | Tested OK with 2019.1     |
| 02_c_kernel                | How to add DRM IPs in an C kernel      | Coming soon |
| 03_ocl_kernel              | How to add DRM IPs in an OpenCL kernel | Coming soon |
| 04_mixed_c_rtl_kernels     | How to add DRM IPs in multiple kernels | Coming soon |
| 04_mixed_c_ocl_rtl_kernels | How to add DRM IPs in multiple kernels | Coming soon |

**Note:** Each design example folder contains a "xclbin.ref" folder containing prebuilt xilinx objects and bitstreams for reference. 

### How to synthesize the example designs

* Edit Makefile:
  * Change "SDX_PLATFORM" variable
  * Change "KERNEL_FREQ_MHZ" variable [Optional]
* Setup Environment:
  * Initialize Vivado and SDAccel environment variables (XILINX_VIVADO, XILINX_SDX)
  * source XRT setup script
* Launch synthesis:
  * run "make" command in terminal

### How to run compile & run application
Prerequisites:
 * Create an account on [Accelize Portal](https://portal.accelize.com) (free)
 * Create your Access Key  on [Accelize Portal - Access Key](https://portal.accelize.com/front/customer/apicredential)
 * Replace "app/cred.json" with your Access Key
 * Edit "conf.json" to change "boardType" and "frequency" parameters [Optional]
