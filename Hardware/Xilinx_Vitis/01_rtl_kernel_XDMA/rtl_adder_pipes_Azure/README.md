Adder With Pipes (RTL)
======================
This example shows an adder with pipes using 3 RTL kernels an dprotected with Accelize DRM Solution.

## SUPPORTED PLATFORMS
Board | Software Version
------|-----------------
Xilinx Alveo U250|Vitis 2020.2

# 1. Requierements
Find the latest Vitis, XRT and Target Platform versions to use in the [Microsoft Azure with Alveo U250](https://www.xilinx.com/products/boards-and-kits/alveo/cloud-solutions/microsoft-azure.html) Webpage

# 2. Run Synthesis
Enter the example design folder:
```bash
cd GettingStarted_Examples/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_Azure
```
Configure environment for Vitis  and run the synthesis:
```bash
source /tools/Xilinx/Vitis/2020.2/settings64.sh 
source /opt/xilinx/xrt/setup.sh
make
```
Once synthesis is complete, the bitstream will be located in the *xclbin* folder

# 3. FPGA Bitstream Attestation
The xclbin bitstream can't be used directly on Azure.
You need first to complete the "FPGA Bitstream Attestation" process.
We provide a convenient script to simplify the process.
Please edit the content to add your storage account name and blob container name and run:
```bash
az login
./fpga-attestation.sh <PATH_TO_THE_XCLBIN>
```

Arguments:
- <PATH_TO_THE_XCLBIN>: Path to the bistream generated at previous step

Once completed, the attested bitstream will be available in the current folder with extension ".azure.xclbin"


# 4. Run the FPGA application
Install the DRM Library - Installation steps can be found in the [Accelize Documentation](https://tech.accelize.com/documentation/stable/drm_library_installation.html)
Copy your cred.json file in the "app" folder and run:
```bash
cd app
make
../app <PATH_TO_ATTESTED_BITSTREAM>
```

## 5. Troubleshootings
+ Azure Error: MarketplacePurchaseEligibilityFailed

=> You ned to accept the terms of the VM Image (more details on https://go.microsoft.com/fwlink/?linkid=2110637)
```bash
az vm image terms accept --urn xilinx:xilinx_vitis_2019_2:vitis2019_2-1107_0355:1.0.0
az vm image terms accept --urn xilinx:xilinx_vitis_2019_2_centos_development_vm:vitis2019_2-1107_0355_centos:1.0.0
```

+ ERROR: [VPL RTSTAT-2] Partially routed nets: 1 net(s) are partially routed. The problem bus(es) and/or net(s) are level0_i/level1/level1_i/ulp/ip_psr_aresetn_kernel2_slr0/U0/peripheral_aresetn[0].

=> Azure U250 DSA (xilinx_u250_gen3x16_xdma_2_1_202010_1) does not support dual-clock mode.
