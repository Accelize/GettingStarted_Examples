# Accelize Getting Started
## Xilinx SDAccel example designs

The following example designs are based on [Xilinx SDAccel examples](https://github.com/Xilinx/SDAccel_Examples)
Each of them shows a different context in which one could integrate the Accelize DRM IPs

| Name                       | Description                            | Status      |
| -------------------------- |--------------------------------------- |:----------: |
| 01_rtl_kernel              | How to add DRM IPs in an RTL kernel    | Tested OK with 2018.3 & 2019.1     |
| 02_c_kernel                | How to add DRM IPs in an C kernel      | Coming soon |
| 03_ocl_kernel              | How to add DRM IPs in an OpenCL kernel | Coming soon |
| 04_mixed_c_rtl_kernels     | How to add DRM IPs in multiple kernels | Coming soon |
| 04_mixed_c_ocl_rtl_kernels | How to add DRM IPs in multiple kernels | Coming soon |

**Note:** Each design example folder contains a "xclbin.ref" folder containing prebuilt xilinx objects and bitstreams for reference. 

### How to synthesize the example designs

* Edit Makefile:
  * Change "SDX_PLATFORM" variable
  * Change "KERNEL_FREQ_MHZ" variable [Optional]
  * [Alibaba Cloud Only] Uncomment "XP_PARAMS_ABBF3" line
* Setup Environment:
  * Initialize Vivado and SDAccel environment variables (XILINX_VIVADO, XILINX_SDX)
  * source XRT setup script
* Launch synthesis:
  * run "make" command in terminal

### How to run compile & run application
* **Prerequisites**:
  * Create an account on [Accelize Portal](https://portal.accelize.com) (free)
  * Create your Access Key  on [Accelize Portal - Access Key](https://portal.accelize.com/front/customer/apicredential)
  * Replace "app/{your-exec-env}/cred.json" with your Access Key
  * Edit "app/{your-exec-env}/conf.json" to change "boardType" and "frequency" parameters [Optional]

* **Alveo Boards (On-Premise Execution):**
  * cd app/01_OnPrem_Alveo
  * Compile using "make clean all"
  * In a terminal:
    * export LD_LIBRARY_PATH=/opt/xilinx/xrt/lib:/usr/local/lib:/usr/local/lib6
    * ./app {path-to-xclbin}
    
* **AWS F1 Instances (Cloud Execution):**
  * Create ".awsxclbin" as described in [Create an Amazon FPGA Image (AFI)](https://github.com/aws/aws-fpga/tree/master/SDAccel#2-create-an-amazon-fpga-image-afi) section of the documentation 
  * cd app/02_AWS_F1
  * Compile using "make clean all"
  * In a terminal:
    * sudo sh
    * source /opt/xilinx/xrt/setup.sh
    * ./app
    
* **Alibaba Cloud F3 Instances (Cloud Execution):**
  * Create the FPGA image and program the FPGA with it as described in [steps 4 & 5 of the documentation](https://www.alibabacloud.com/help/doc-detail/61412.htm?spm=a2c63.p38356.a1.2.64977f7aRUG0s1)
  * cd app/03_AlibabaCloud_F3
  * Compile using "make clean all"
  * In a terminal:
    * sudo LD_LIBRARY_PATH=/opt/dcp1_1/hw/samples/drm_1activator/sw:/opt/dcp1_1/opencl/opencl_bsp/linux64/driver:/opt/dcp1_1/opencl/opencl_bsp/linux64/lib:/opt/intelFPGA_pro/17.1/hld/host/linux64/lib ./<YOUR_BINARY>
  
* **Huawei Cloud FP1 Instances (Cloud Execution):**
  * Create the FPGA image and program the FPGA with it as described in [the documentation](https://github.com/huaweicloud/huaweicloud-fpga/tree/master/fp1#uploading-and-registration)
  * cd app/04_HuaweiCloud_FP1
  * Compile using "make clean all"
  * In a terminal:
    * 
 
    

