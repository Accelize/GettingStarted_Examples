# Azure FPGA Getting Started

## Table of Contents
1. Create & Configure your Azure Account
2. Install Azure Command-line interface (CLI)
3. Create FPGA Instance
4. Instance Management
5. Synthesize and Run FPGA Example Design

## 1. Create & Configure your Azure Account
To setup your Azure account for FPGA applications execution, please follow this steps:
### 1.1. Create your Azure Account
https://azure.microsoft.com/en-us/free/

### 1.2. Create a Resource Group
https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal

### 1.3. Create a Virtual Network
https://docs.microsoft.com/en-us/azure/virtual-network/quick-create-portal

### 1.4. Create network Security Group
https://docs.microsoft.com/en-us/azure/virtual-network/manage-network-security-group

** Note: The Network Security Group needs to be created in the Virtual Network created at the previous step

### 1.5. Create a Storage Account
https://docs.microsoft.com/en-us/azure/storage/common/storage-account-create?toc=%2Fazure%2Fstorage%2Fblobs%2Ftoc.json&tabs=azure-portal

### 1.6. Create a "Blob" container
https://docs.microsoft.com/en-us/azure/storage/blobs/storage-quickstart-blobs-portal

### 1.7. Create a ssh key
https://docs.microsoft.com/en-us/azure/virtual-machines/linux/mac-create-ssh-keys

## 2. Install Azure Command-line interface (CLI)
You can find a detailled description of the installation process on Azure Documentation website:
[Install the Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)

To use the Azure CLI, you need to login with
```bash
az login
```

## 3. Create FPGA Instance
### 3.1. List Available Xilinx Instance Images
```bash
az vm image list --all --publisher xilinx
```

### 3.2. Instance Creation
```bash
az vm create --resource-group <YOUR_RESOURCE_GROUP> --name <INSTANCE_NAME> --image <VM_IMAGE_URN> --ssh-key-values <SSH_KEY_PATH> --nsg <NETWORK_SECURITY_GROUP> --size <VM_SIZE>  --output json
```

Arguments:
- <YOUR_RESOURCE_GROUP>: The resource group you've created in section 1
- <INSTANCE_NAME>: Can be anything you want
- <VM_IMAGE_URN>: The Image URN from section 3.1
- <SSH_KEY_PATH>: The path to your SSH key created in section 1
- <NETWORK_SECURITY_GROUP>: The name of the security group created in section 1
- <VM_SIZE>: This argument is in fact the kind of instance you want to start. FPGA-based instances are Standard_NP10s, Standard_NP20s, or Standard_NP40s


## 4. Instance Management
### 4.1. List Running Instances
```bash
az vm list --resource-group <YOUR_RESOURCE_GROUP>
```
### 4.1. Log in the Instance
```bash
ssh -i <SSH_KEY_PATH> azureuser@<VM_IP_ADDRESS>
```
### 4.2. Stop Instance
```bash
az vm deallocate --name <INSTANCE_NAME> --resource-group <YOUR_RESOURCE_GROUP> --no-wait
```
### 4.3. Delete the Instance
```bash
az vm delete --name <INSTANCE_NAME> --resource-group <YOUR_RESOURCE_GROUP> --no-wait
```

## 5. Synthesize and Run FPGA Example Design
We're going to use the Accelize Getting Started Example Design for Azure.
use the following process to synthesize the example design and run it on your previously created VM.
### 5.1. Clone Accelize Example Designs
On the Azure FPGA VM:
```bash
git clone https://github.com/Accelize/GettingStarted_Examples.git
```
### 5.2. Run Synthesis
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
Note: You can find the latest Vitis, XRT and Target Platform versions to use in the [Microsoft Azure with Alveo U250](https://www.xilinx.com/products/boards-and-kits/alveo/cloud-solutions/microsoft-azure.html) Webpage
Once synthesis is complete, the bitstream will be located in the *xclbin* folder

### 5.3. FPGA Bitstream Attestation
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

### 5.4. Run the FPGA application
copy your cred.json file generated on the [Accelize Portal](https://portal.accelize.com/) in the "app" folder and run:
```bash
cd app
make
../app <PATH_TO_ATTESTED_BITSTREAM>
```

## 6. Troubleshootings
+ Azure Error: MarketplacePurchaseEligibilityFailed
=> You ned to accept the terms of the VM Image (more details on https://go.microsoft.com/fwlink/?linkid=2110637)
```bash
az vm image terms accept --urn xilinx:xilinx_vitis_2019_2:vitis2019_2-1107_0355:1.0.0
az vm image terms accept --urn xilinx:xilinx_vitis_2019_2_centos_development_vm:vitis2019_2-1107_0355_centos:1.0.0
```
