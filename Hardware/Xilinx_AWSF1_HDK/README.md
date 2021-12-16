# Accelize Getting Started
## AWS F1 HDK example designs

The following example design are based on [AWS-FPGA examples](https://github.com/aws/aws-fpga/tree/master/hdk/cl/examples)


| Name                   | Description            | Status                                           | Internal AFI/AGFI                             |
| -----------------------|------------------------|:-----------------------------------------------: |:--------------------------------------------: | 
| cl_hello_world_drm1act | 1 DRM Ctrl + 1 IP Act. | Tested OK with AMI v1.11.0 (Xilinx Vitis 2021.1) | afi-0c2a61679e6ae03d9 agfi-03cc351fe7f058feb  |
| cl_hello_world_drm2act | 1 DRM Ctrl + 2 IP Act. | Tested OK with AMI v1.11.0 (Xilinx Vitis 2021.1) | afi-02e07b7e3c3732001 agfi-04e99f4fd324ccaa5  |


### How to synthesize the example designs
```bash
git clone https://github.com/aws/aws-fpga.git
source aws-fpga/hdk_setup.sh
```

Copy the design folder in **aws-fpga/hdk/cl/examples/**
Open a terminal in the design folder

```bash
export CL_DIR=$(pwd)
cd $CL_DIR/build/scripts
./aws_build_dcp_from_cl.sh
```

Once the synthesis is complete, you need to submit the DCP to AWS to create the AFI
Follow the instructions form [AWS FPGA GitHub](https://github.com/aws/aws-fpga/tree/master/hdk#step-3-submit-the-design-checkpoint-to-aws-to-create-the-afi)


### How to compile & run application
* **Prerequisites**:
  * Create an account on [Accelize Portal](https://portal.accelize.com) (free)
  * Create your Access Key  on [Accelize Portal - Access Key](https://portal.accelize.com/front/customer/apicredential)
  * Replace "software/cred.json" with your Access Key
  * Edit "software/conf.json" to change "boardType" and "frequency" parameters [Optional]
  * [Install the DRM library](http://accelize.s3-website-eu-west-1.amazonaws.com/documentation/stable/drm_library_installation.html)

* **Execution:**
  * git clone https://github.com/aws/aws-fpga.git $AWS_FPGA_REPO_DIR
  * source $AWS_FPGA_REPO_DIR/sdk_setup.sh 
  * cd software
  * Compile using "make clean all"
  * In a terminal:
    * sudo fpga-load-local-image -S 0 -I ${YOUR-AGFI-ID}
    * sudo ./app
    
### How to compile & run Docker application
* **Prerequisites**:
  * install DockerCE on development and execution hosts 
* **Build:**
  * docker image build -f aws_f1.Dockerfile --tag=${YOUR-DOCKERHUB-REPO} . 
  * docker push ${YOUR-DOCKERHUB-REPO}
* **Run:**
  * sudo fpga-load-local-image -S 0 -I ${YOUR-AGFI-ID}
  * git clone https://github.com/Xilinx/Xilinx_Base_Runtime.git
  * source Xilinx_Base_Runtime/utilities/xilinx_aws_docker_setup.sh
  * docker run -v ${PATH-TO-YOUR-cred.json}:/cred.json $XILINX_AWS_DOCKER_DEVICES ${YOUR-DOCKERHUB-REPO}
