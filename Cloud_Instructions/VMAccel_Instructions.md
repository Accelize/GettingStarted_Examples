# VMAccel Web Services Getting Started

## Table of Contents
1. Create & Configure your VMAccel Account
2. Create VMAccel FPGA Instance
3. Connect to your instance
4. Delete the Instance
5. Synthesize and Run FPGA Example Design

## 1. Create & Configure your VMAccel Account
Coming soon

## 2. Create VMAccel FPGA Instance
To create a VMAccel FPGA instance you have to be connected to your VMAccel acount on: https://xilinx.vmaccel.com/dashboard/project/

* Go to Instances in Compute menu on left panel

* Click on "Launch Instance"

* In the Popup window you can configure your instance:

    * Source: VMAccel provides a base image, built with XRT 2020.2 and Docker for Xilinx App Store applications: 
        * *Ubuntu 18.04 - XRT 2020.2 - Docker - Xilinx App Store*
        

    * Flavor: Use an Instance with FPGA attached (e.g: u50)

    * Networks: Use TestDrive_local to provide communication channels to your instance

    * Security Groups: Use default and ssh_ping to acces to your instance

    * Key pair: Selected the Key pair created in [section 1](##1.-Create-&-Configure-your-VMAccel-Account)

Once your FPGA instance is running, you might want to associate an elastic floating ip to it:

* Click on the contextual menu next to the create snapshot button and select  Associate Floating IP
* Select an address or create one and choose your instance in the port to be associated selection


## 3. Connect to your instance
```bash
ssh -i {path_to_your_key_pair} ubuntu@{elastic_ip_created_in_section_2}
```

## 4. Delete the Instance
To terminate an instance

* In the compute menu on left panel choose Instances

* Select the instance that you want to terminate by ticking to box before its name and click on the "Delete instances" button

## 5. Synthesize and Run FPGA Example Design
We're going to use the Accelize Getting Started Example Design for Alveo.
Use the following process to synthesize the example design and run it on your previously created Instance.

### 5.1. Clone Accelize Example Designs
```bash
git clone https://github.com/Accelize/GettingStarted_Examples.git
```

### 5.2. Run Synthesis
Enter the example design folder:
```bash
cd GettingStarted_Examples/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_Alveo
```
Configure environment for Vitis  and run the synthesis:
```bash
source /opt/xilinx/xrt/setup.sh
make
```
Once synthesis is complete, the bitstream will be located in the *xclbin* folder

**Note:** *If you have errors during compilation please refer to troubleshootings section*

### 5.3. Run the FPGA application
Copy your cred.json file generated on the [Accelize Portal](https://portal.accelize.com/) in the "app" folder and run:
```bash
cd app
source /opt/xilinx/xrt/setup.sh
make clean all
./app {path-to-xclbin}
```