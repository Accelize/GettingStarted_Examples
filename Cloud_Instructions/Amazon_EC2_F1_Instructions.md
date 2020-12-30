# Amazon Web Services (AWS) EC2 F1 Getting Started

## Table of Contents
1. Create & Configure your AWS Account
2. Create AWS FPGA Instance (F1)
3. Connect to your instance
4. Delete the Instance
5. Synthesize and Run FPGA Example Design

## 1. Create & Configure your AWS Account
To setup your AWS account for FPGA applications execution, please follow this steps:
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/get-set-up-for-amazon-ec2.html

## 2. Create AWS FPGA Instance (F1)
To start an Instance with FPGA attached, please follow the guide below.
At step 4 "Choose an Instance type", use one of the F1 flavor (f1.2xlarge, f1.4xlarge, f1.16xlarge)
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EC2_GetStarted.html#ec2-launch-instance

**Note:** Your account might not have permission to start FPGA instances by default.
In this case, please open a support ticket: https://console.aws.amazon.com/support/home?#

## 3. Connect to your instance
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EC2_GetStarted.html#ec2-connect-to-instance-linux

## 4. Delete the Instance
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EC2_GetStarted.html#ec2-clean-up-your-instance

## 5. Synthesize and Run FPGA Example Design
We're going to use the Accelize Getting Started Example Design for AWS.
Use the following process to synthesize the example design and run it on your previously created Instance.

### 5.1. Clone the AWS F1 Git Repository
On the AWS F1 Instance:
```bash
git clone https://github.com/aws/aws-fpga.git $AWS_FPGA_REPO_DIR
```
### 5.2. Clone Accelize Example Designs
```bash
git clone https://github.com/Accelize/GettingStarted_Examples.git
```
### 5.3. Run Synthesis
Enter the example design folder:
```bash
cd GettingStarted_Examples/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_AWS_v1.8.1
```
Configure environment for Vitis  and run the synthesis:
```bash
source $AWS_FPGA_REPO_DIR/vitis_setup.sh
source /opt/xilinx/xrt/setup.sh
make
```
Once synthesis is complete, the bitstream will be located in the *xclbin* folder

### 5.4. Amazon FPGA Image (AFI) generation
The xclbin bitstream can't be used directly on AWS.
You need first to complete to generate an Amazon FPGA Image (AFI).
The process is described here:
https://github.com/aws/aws-fpga/blob/master/Vitis/README.md#2-create-an-amazon-fpga-image-afi

At the end of the process, you'll get a ".awsxclbin" file that will be used by the application software to progrem the FPGA.

### 5.5. Run the FPGA application
Copy your cred.json file generated on the [Accelize Portal](https://portal.accelize.com/) in the "app" folder and run:
```bash
cd app
source $AWS_FPGA_REPO_DIR/vitis_runtime_setup.sh
source /opt/xilinx/xrt/setup.sh
make clean all
./app {path-to-awsxclbin}
```

