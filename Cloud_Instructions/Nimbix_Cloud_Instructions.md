# Nimbix Cloud FPGA Getting Started

## Table of Contents
1. Sign up for Nimbix Service
2. Start a Development Instance
3. Synthesize and Run FPGA Example Design
4. Create ready-to-run applications

## 1. Sign up for Nimbix Service
Go to Nimbix Cloud site to sign up : https://www.nimbix.net/contact-us
 Once the sign-up form has been submitted, you will receive an e-mail with instructions for setting up your Nimbix account.
 

## 2. Start a Development Instance
If you're aiming to use Nimbix only to run your application, then the process is straightforward.
In the "Compute" section, select one of the Xilinx Development App
**Note**: You can enter "Vitis Unified" in the search field to avoid browsing the app catalog

Then select "Desktop Mode With FPGA" and in the "Machine type" list, select the FPGA board you want to use (U50, U200, U250, ...) and click "Submit"

## 3. Synthesize and Run FPGA Example Design
We're going to use the Accelize Getting Started Example Design for Alveo Boards.
Use the following process to synthesize the example design and run it on your previously started instance.

### 3.1. Connect to the instance
You can either use the online VNC client or use SSH protocol (recommended):
```bash
ssh nimbix@<VM-ADDRESS-DISPLAYED-IN-DASHBOARD-SECTION>
```
**Note**: The password can be copied from the Dashboard section

### 3.2. Clone Accelize Example Designs
On the instance:
```bash
git clone https://github.com/Accelize/GettingStarted_Examples.git
```
### 3.3. Run Synthesis
Enter the example design folder:
```bash
cd  GettingStarted_Examples/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_Alveo
```

Edit the Makefile and change the "VTS_PLATFORM" value to match your FPGA Board setting
```bash
vim Makefile
```
**Note:** If you struggle finding the correct value, launch the synthesis as explained below and the error message will give you the list of correct values you can use.

Configure environment for Vitis and run the synthesis:
```bash
source /opt/xilinx/xrt/setup.sh
make
```
Once synthesis is complete, the bitstream will be located in the "xclbin" folder

### 3.5. Run the FPGA application
#### 3.5.1 Install the Accelize DRMLib
Install the Accelize DRMLib using the following guide:
https://tech.accelize.com/documentation/stable/drm_library_installation.html

#### 3.5.2 Generate and copy your Access Key
Copy your Access Key (cred.json) file generated on the [Accelize Portal](https://portal.accelize.com/) in the "app" folder

#### 3.5.3 Set the DRM Controller Base Address
With the Vitis Development flow, the kernel registers addressing is automatically handled by the tool.
It means that the DRM Controller base address might need to be adapted.
You can find the DRM Controller base address in the ".xclbin.info" file generated in the "xclbin" folder
Search for "kernel_drm_controller" and look for the line "Base Address"
Then edit the main.cpp and replace the "#define DRM_BASE_ADDRESS" value.

#### 3.5.4 Generate and copy your Access Key
```bash
cd app
source /opt/xilinx/xrt/setup.sh
make clean all
./app {path-to-xclbin}
```

## 4. Create ready-to-run applications
If you wish to sell a ready-to-use FPGA Application for your customer on Nimbix, you will need to use the "PushToCompute" feature: https://www.nimbix.net/pushtocompute

A detailed guide can be found here:
https://www.nimbix.net/pushtocompute-work-flow-deployment-guide




