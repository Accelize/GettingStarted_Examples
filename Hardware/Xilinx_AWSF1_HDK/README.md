# Accelize Getting Started
## AWS F1 HDK example designs

The following example design are based on [AWS-FPGA examples](https://github.com/aws/aws-fpga/tree/master/hdk/cl/examples)


| Name                 | Description            | Status                                        | Internal AFI/AGFI                             |
| ---------------------|------------------------|:--------------------------------------------: |:--------------------------------------------: | 
| cl_hello_world_drm1act | 1 DRM Ctrl + 1 IP Act. | Tested OK with AMI v1.8.1 (Xilinx SDx 2019.2) | afi-02a9b22e655cfcb68 agfi-02a72a28bf91afa30 |
| cl_hello_world_drm2act | 1 DRM Ctrl + 2 IP Act. | Tested OK with AMI v1.8.1 (Xilinx SDx 2019.2) | afi-00141f163aaa2b4da agfi-03208949a846b98b8  |


### How to synthesize the example designs

* Copy the design folder in $HDK_DIR/cl/examples/
* Open a terminal in the design folder
* Follow the instructions from [AWS-FPGA GitHub](https://github.com/aws/aws-fpga/tree/master/hdk#how-to-create-an-amazon-fpga-image-afi-from-one-of-the-cl-examples-step-by-step-guide)

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
