# Accelize Getting Started
## Xilinx SDAccel example designs

The following example designs are based on [Xilinx SDAccel examples](https://github.com/Xilinx/SDAccel_Examples)
Each of them shows a different context in which one could integrate the Accelize DRM IPs

| Name                       | Description                            | Status      |
| -------------------------- |--------------------------------------- |:----------: |
| 01_rtl_kernel              | How to add DRM IPs in an RTL kernel    | Tested OK with 2018.3 & 2019.1     |

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
  * Install [Accelize DRM Library](https://tech.accelize.com/documentation/stable/drm_library_installation.html#installation-from-packages) version 2.2 or higher
  * Create "app/{your-exec-env}/cred.json" with your Access Key
  * Edit "app/{your-exec-env}/conf.json" to change "boardType" and "frequency" parameters [Optional]

* **Alveo Boards (On-Premise Execution):**
  * cd app/01_OnPrem_Alveo
  * Compile using "make clean all"
  * In a terminal:
    * export LD_LIBRARY_PATH=/opt/xilinx/xrt/lib:/usr/local/lib:/usr/local/lib64
    * ./app {path-to-xclbin}
    
* **AWS F1 Instances (Cloud Execution):**
  * Create ".awsxclbin" as described in [Create an Amazon FPGA Image (AFI)](https://github.com/aws/aws-fpga/tree/master/SDAccel#2-create-an-amazon-fpga-image-afi) section of the documentation 
  * git clone https://github.com/aws/aws-fpga.git --recursive $AWS_FPGA_REPO_DIR
  * source $AWS_FPGA_REPO_DIR/sdaccel_runtime_setup.sh
  * cd app/02_AWS_F1
  * Compile using "make clean all"
  * In a terminal:
    * sudo sh
    * source /opt/xilinx/xrt/setup.sh
    * ./app {path-to-awsxclbin}
  * **TROUBLESHOOTING**:
    * "xclProbe found 0 FPGA slots with xocl driver running": 
      * Reset the FPGA using "sudo fpga-clear-local-image -S 0" command and try again

* **AlibabaCloud F3 Instances (Cloud Execution):**
  * Create and Download an image as described in [Step 4 & Step 5](https://www.alibabacloud.com/help/doc-detail/91531.htm) section of the documentation 
  * cd app/03_AlibabaCloud_F3
  * source /root/xbinst_oem/F3_env_setup.sh xocl
  * Compile using "make clean all"
  * In a terminal:
    * ./run.sh {path-to-xclbin}
    

