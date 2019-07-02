# Accelize Getting Started
## Xilinx SDAccel example designs
### 01_rtl_kernel

+ rtl_adder_pipes

Same design as Xilinx Getting Started one but with DRM IPs added.
Behavior:


+ rtl_adder_pipes_dual_clock


| Name                       | Description                            | Status      |
| -------------------------- |--------------------------------------- |:----------: |
| 01_rtl_kernel              | How to add DRM IPs in an RTL kernel    | Testing     |
| 02_c_kernel                | How to add DRM IPs in an C kernel      | Coming soon |
| 03_ocl_kernel              | How to add DRM IPs in an OpenCL kernel | Coming soon |
| 04_mixed_c_rtl_kernels     | How to add DRM IPs in multiple kernels | Coming soon |
| 04_mixed_c_ocl_rtl_kernels | How to add DRM IPs in multiple kernels | Coming soon |

**Note:** Each design example folder contains a "xclbin.ref" folder conatining prebuilt xilinx object and bitstreams for reference. 

### How to synthesize the example designs

* Edit Makefile:
  * Change "SDX_PLATFORM" path
* Setup Environment:
  * Initi Vivado and SDAccel environment variables (XILINX_VIVADO, XILINX_SDX)
  * source XRT setup script
* Launch synthesis:
  * run "make" command in terminal

### How to run compile & run application

* aa
* bb
* cc
