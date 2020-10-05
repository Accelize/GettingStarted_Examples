# Accelize Getting Started
## Xilinx Vitis example designs

The following example designs are based on [Xilinx SDAccel examples](https://github.com/Xilinx/SDAccel_Examples)
Each of them shows a different context in which one could integrate the Accelize DRM IPs

| Name                       | Description                            | Status      |
| -------------------------- |--------------------------------------- |:----------: |
| 01_rtl_kernel_XDMA         | How to add DRM IPs in an RTL kernel    | Tested OK with Xilinx Vitis 2019.2 & AWS 1.8.1|
| 01_rtl_kernel_QDMA         | How to add DRM IPs in an RTL kernel    | Tested OK with Xilinx Vitis 2019.2 & AWS 1.8.1|
| 02_c_kernel                | How to add DRM IPs in an C kernel      | Coming soon |
| 03_ocl_kernel              | How to add DRM IPs in an OpenCL kernel | Coming soon |
| 04_mixed_c_rtl_kernels     | How to add DRM IPs in multiple kernels | Coming soon |
| 04_mixed_c_ocl_rtl_kernels | How to add DRM IPs in multiple kernels | Coming soon |

**Note:** Each design example folder contains a "xclbin.ref" folder containing prebuilt xilinx objects and bitstreams for reference. 

### How to synthesize the example designs

* Edit Makefile:
  * Change "VTS_PLATFORM" variable
  * Change "KERNEL_FREQ_MHZ" variable [Optional]
* Setup Environment:
  * [Alveo] Initialize Vivado and Vitis environment variables (XILINX_VIVADO, XILINX_VITIS)
  * [AWS] git clone https://github.com/aws/aws-fpga.git $AWS_FPGA_REPO_DIR  
  * [AWS] source $AWS_FPGA_REPO_DIR/vitis_setup.sh
  * source /opt/xilinx/xrt/setup.sh
* Launch synthesis:
  * run "make" command in terminal

### How to compile & run application
* **Prerequisites**:
  * Create an account on [Accelize Portal](https://portal.accelize.com) (free)
  * Create your Access Key  on [Accelize Portal - Access Key](https://portal.accelize.com/front/customer/apicredential)
  * Install [Accelize DRM Library](http://accelize.s3-website-eu-west-1.amazonaws.com/documentation/stable/drm_library_installation.html#installation-from-packages) version 2.3 or higher
  * Replace "app/{your-exec-env}/cred.json" with your Access Key
  * Edit "app/{your-exec-env}/conf.json" to change "boardType" and "frequency" parameters [Optional]

* **Alveo Boards (On-Premise Execution):**
  * cd app
  * source /opt/xilinx/xrt/setup.sh
  * make clean all
  * ./app {path-to-xclbin}
    
* **AWS F1 Instances (Cloud Execution):**
  * Create ".awsxclbin" as described in [Create an Amazon FPGA Image (AFI)](https://github.com/aws/aws-fpga/tree/master/SDAccel#2-create-an-amazon-fpga-image-afi) section of the documentation 
  * cd app
  * source $AWS_FPGA_REPO_DIR/vitis_runtime_setup.sh
  * source /opt/xilinx/xrt/setup.sh
  * make clean all
  * ./app {path-to-awsxclbin}
  
### How to compile & run Docker application
* **Prerequisites**:
  * install DockerCE on development and execution hosts 
* **Alveo Boards (On-Premise Execution)**:
  * **Build:**
    * docker image build -f alveo_u200.Dockerfile --tag=${YOUR-DOCKERHUB-REPO} . 
    * docker push ${YOUR-DOCKERHUB-REPO}
  * **Run:**
    * git clone https://github.com/Xilinx/Xilinx_Base_Runtime.git
    * source Xilinx_Base_Runtime/utilities/xilinx_docker_setup.sh
    * docker run -v ${PATH-TO-YOUR-cred.json}:/cred.json $XILINX_AWS_DOCKER_DEVICES ${YOUR-DOCKERHUB-REPO}
* **AWS**:
  * **Build:**
    * docker image build -f aws_f1.Dockerfile --tag=${YOUR-DOCKERHUB-REPO} . 
    * docker push ${YOUR-DOCKERHUB-REPO}
  * **Run:**
    * git clone https://github.com/Xilinx/Xilinx_Base_Runtime.git
    * source Xilinx_Base_Runtime/utilities/xilinx_aws_docker_setup.sh
    * docker run -v ${PATH-TO-YOUR-cred.json}:/cred.json $XILINX_AWS_DOCKER_DEVICES ${YOUR-DOCKERHUB-REPO}
