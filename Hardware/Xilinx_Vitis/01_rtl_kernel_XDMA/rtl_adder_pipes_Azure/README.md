Adder With Pipes (RTL)
======================
This example shows an adder with pipes using 3 RTL kernels an dprotected with Accelize DRM Solution.

## SUPPORTED PLATFORMS
Board | Software Version
------|-----------------
Xilinx Alveo U250|SDx 2019.2

# 1.Run Synthesis
Enter the example design folder:
```bash
cd GettingStarted_Examples/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_Azure
```
Configure environment for Vitis  and run the synthesis:
```bash
source /tools/Xilinx/Vitis/2019.2/settings64.sh 
source /opt/xilinx/xrt/setup.sh
make
```
Once synthesis is complete, the bitstream will be located in the *xclbin* folder

# 2. FPGA Bitstream Attestation
The xclbin bitstream can't be used directly on Azure.
You need first to complete the "FPGA Bitstream Attestation" process.
We provide a convenient script to simplify the process
```bash
./fpga-attestation.sh <PATH_TO_THE_XCLBIN>
```
Once completed, you can download the attested bitstream using the following command:
```bash
az storage blob download-batch --account-name <YOUR_STORAGE_ACCOUNT_NAME> -s <YOUR_BLOB_CONTAINER_NAME> -d . --pattern *.bit.xclbin
```
**Note: It can take a few minutes between the end of the FPGA attestation process and the download file availability.

Arguments:
- <YOUR_STORAGE_ACCOUNT_NAME>: The name of the storage account you've created in section 1
- <YOUR_BLOB_CONTAINER_NAME>: The name of the blob container you've created in section 1
- <PATH_TO_THE_XCLBIN>: Path to the bistream generated at previous step

# 3. Run the FPGA application
Copy your cred.json file generated on the [Accelize Portal](https://portal.accelize.com/) in the "app" folder and run:
```bash
cd app
make
../app <PATH_TO_ATTESTED_BITSTREAM>
```
