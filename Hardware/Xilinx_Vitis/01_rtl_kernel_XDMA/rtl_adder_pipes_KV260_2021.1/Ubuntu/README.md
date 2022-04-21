Adder With Pipes (RTL)
======================
This example shows an adder with pipes using 3 RTL kernels and protected with Accelize DRM Solution.

## SUPPORTED PLATFORMS
Board | Software Version
------|-----------------
Xilinx Kria Starter Kit KV260|Vitis 2021.1  

# 1.Run Synthesis
Configure environment for Vitis  2021.1:
```bash
source <PATH_TO_VITIS_2021.1_INSTALL>/settings64.sh 
```

## 1.1. Build the platform (XSA & XPFM)
```bash
git clone --recursive https://github.com/Xilinx/kv260-vitis
cd kv260-vitis
git checkout remotes/origin/release-2021.1
make platform PFM=kv260_vcuDecode_vmixDP
export PATH_TO_KV260_PLATFORM=$PWD
```

## 1.2. Install KV260 board and SOM240 Daughterboard in Vivado
Enter the following lines in Vivado TCL console or add them to your Vivado init script (~/.Xilinx/Vivado/Vivado_init.tcl)
```bash
xhub::refresh_catalog [xhub::get_xstores xilinx_board_store]
xhub::install [xhub::get_xitems *kv260*]
xhub::install [xhub::get_xitems *som240*]
set_param board.repoPaths [get_property LOCAL_ROOT_DIR [xhub::get_xstores xilinx_board_store]]
```

## 1.3. Synthesize bitstream
```bash
git clone https://github.com/Accelize/GettingStarted_Examples.git --depth=1
cd GettingStarted_Examples/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_KV260_2021.1
export PATH_TO_KV260_PRJ=$PWD
```

Run the synthesis:
```bash
export PLATFORM_REPO_PATHS=${PATH_TO_KV260_PLATFORM}/platforms/xilinx_kv260_vcuDecode_vmixDP_202110_1
make
```
Once synthesis is complete, the bitstream will be located in the *xclbin* folder

&#x26a0;&#xfe0f; WARNING: If you're using the Vivado flow instead of the Vitis one, please make sure to set the DRM Controller Bridge Address using the following command at synthesis:
```tcl
set ctrl_if_name [get_bd_addr_segs -addressables -of [get_bd_intf_pins kernel_drm_controller_1/s_axi_control]]
assign_bd_address -offset 0xA0010000 -range 0x00010000 -target_address_space [get_bd_addr_spaces PS_0/Data] [get_bd_addr_segs $ctrl_if_name] -force
```


# 2. Build the Embedded Linux Packages using Ubuntu

&#x26a0;&#xfe0f; We provide pre-filled assets in folder "ubuntu_material" for this example project. If you use your own project, you might need to adapt them.

## 2.1. Setup Environment
If not already done at step 1, configure environment for Vitis  2021.1:

```bash
source <PATH_TO_VITIS_2021.1_INSTALL>/settings64.sh 
```

## 2.2. Generate PAC assets
To install an Accelerated Application (AA) you need to create a Platform Assets Container (PAC) which can be identified by xlnx-config for the install.

Detailled description can be found on [this Xilinx Confluence page](https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/2057043969/Snaps+-+xlnx-config+Snap+for+Certified+Ubuntu+on+Xilinx+Devices#Kria-SOM-PAC)

### 2.2.1. Generate PAC directory structure

We will use the following names:
+ **PAC Name**     : accelize-getting-started-demo
+ **Config Name**  : accelize-getting-started-demo

```bash
mkdir -p accelize-getting-started-demo/hwconfig/accelize-getting-started-demo/kv260
```

### 2.2.2. Generate the manifest.yaml file
Manifest files will contain meta-information for a hardware configuration, usually tied to capabilities needed by an application. 

It’s a yaml file describing compatibility information and the location of the boot assets. 

Create the file **accelize-getting-started-demo/hwconfig/accelize-getting-started-demo/manifest.yaml** with following content:

```bash
name: accelize-getting-started-demo
description: This example shows an adder with pipes using 3 RTL kernels and protected with Accelize DRM Solution on MPSoC devices, with Ubuntu O/S
revision: 1.0
assets:
    kv260: kv260
```

### 2.2.3. Generate the <.xclbin> file
The xclbin file has been generated at Step 1.
However, it needs to be renamed accelize-getting-started-demo.xclbin and copied in folder **accelize-getting-started-demo/hwconfig/accelize-getting-started-demo/kv260** 

```bash
cp  ${PATH_TO_KV260_PRJ}/xclbin/*.xclbin accelize-getting-started-demo/hwconfig/accelize-getting-started-demo/kv260/accelize-getting-started-demo.xclbin
```

### 2.2.4. Generate the <.bit.bin> file
The <.bit.bin> is generated from the <.bit> generated during Vitis Synthesis of Step 1 using the **bootgen** tool.

**bootgen** tool needs a configuration file <.bif> as input.
This <.bif> file contains the path to the <.bit> file from Step 1.

&#x26a0;&#xfe0f; Both the <.bif> and <.bif> must be named after the AA Name.

Start by creating a **accelize-getting-started-demo.bif** file with content:
```bash
all:
{
    accelize-getting-started-demo.bit
}
```

Then run the <.bit.bin> generation as follows:

```bash
mkdir /tmp/build_bit_bin
cp ${PATH_TO_KV260_PRJ}/_x/link/int/system.bit /tmp/build_bit_bin/accelize-getting-started-demo.bit
cp accelize-getting-started-demo.bif /tmp/build_bit_bin/.
cd /tmp/build_bit_bin
bootgen -arch zynqmp -process_bitstream bin -image accelize-getting-started-demo.bif
cd -
cp /tmp/build_bit_bin/accelize-getting-started-demo.bit.bin accelize-getting-started-demo/hwconfig/accelize-getting-started-demo/kv260/.
```

### 2.2.5. Generate <.dtbo>
The <.dtbo> file is generated from a <.dtsi> file.
You can find an example file in folder "ubuntu_material".

If you adapat it to your app, please note:
+ **firmware-name** key must match the AA Name
+ **fpga-config-from-dmabuf** key is mandatory in the .dtsi file for the generated .dtbo to be recognized by Ubuntu Xilinx tools

Then run the <.dtbo> generation as follows:

```bash
dtc -q -@ -O dtb -o accelize-getting-started-demo/hwconfig/accelize-getting-started-demo/kv260/accelize-getting-started-demo.dtbo ubuntu_material/accelize-getting-started-demo.dtsi
```

### 2.2.6. Generate shell.json
The content of the shell.json file is always the same.
You can use the one provide in "ubuntu_material"

&#x26a0;&#xfe0f; **shell.json** is the only file that doesn't need to be named after the AA Name.

```bash
cp ubuntu_material/shell.json accelize-getting-started-demo/hwconfig/accelize-getting-started-demo/kv260/.
```

## 2.3. Generate Debian Package from the PAC folder

You can find numerous online documentation and tutorial on how to build a debian packages.

Here we'll create the most basic package, using files from "ubuntu_meterial" folder. 


```bash
mkdir -p /tmp/accelize-getting-started-demo/DEBIAN
mkdir -p /tmp/accelize-getting-started-demo/usr/local/share/xlnx-config/
mkdir -p /tmp/accelize-getting-started-demo/usr/bin
mkdir -p /tmp/accelize-getting-started-demo/tmp/accelize-getting-started-demo
cp -rf accelize-getting-started-demo /tmp/accelize-getting-started-demo/usr/local/share/xlnx-config/.
cp -f app/* /tmp/accelize-getting-started-demo/tmp/accelize-getting-started-demo/.
cp app/conf.json /tmp/accelize-getting-started-demo/usr/bin/.
cp ubuntu_material/DEBIAN/* /tmp/accelize-getting-started-demo/DEBIAN/.
chmod 555 /tmp/accelize-getting-started-demo/DEBIAN/postinst
cd /tmp
dpkg-deb --build accelize-getting-started-demo
cd -
cp /tmp/accelize-getting-started-demo.deb .
```

## 2.4. Upload Debian package on the Kria Store package Repository

&#x26a0;&#xfe0f;  **COMING SOON ...**


# 3. Run the Application on the KV260 Starter Kit

You can run the application either by:
+ Copying the PAC folder on the KV260 O/S (Manual Installation)
+ Installing the application from Debian Repository (Recommended)

## 3.1. Prerequisites

### 3.1.1. Update KV20 Firmware
The starter kit must be configured with a Boot FW Image containing the Trusted Application for DRM operations.
You can request this Boot FW Image [here](mailto:support@accelize.com)

The firmware update process is described on the [Xilinx Kria Confluence Page](https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/1641152513/Kria+K26+SOM#Boot-Firmware-Updates)

**Step-by-step Process in Video:**
https://user-images.githubusercontent.com/30148903/164562840-43c72b23-56d0-411d-8e8d-9a7e6c53b105.mp4

### 3.1.2. DRM Library

&#x26a0;&#xfe0f; Currently the DRMLib packages are not available from the Kria Store package Repository, thus you need to install the packages manually:

+ Copy the "ubuntu_material/drmlib_deb" packages on the KV260 O/S

+ Install the packages using:

```bash
sudo apt install -y ./libaccelize-drm*
```

### 3.1.3. xlnx-config tool
After first boot on Ubuntu install xlnx-config as it provides xmutil  install/load/unload command to manage xclbin on the FPGA:

```bash
sudo snap install xlnx-config --classic
```


## 3.2. Manual Installation

+ Copy the PAC folder on the KV260 O/S

Use scp, rsync, etc... to copy the PAC folder on the KV260 O/S

+ Copy the PAC folder in /usr/local/share/xlnx-config
```bash
sudo mkdir -p /usr/local/share/xlnx-config
sudo cp -r <path_to_pac_dir> /usr/local/share/xlnx-config
```

+ Install the PAC:
```bash
sudo xlnx-config -i accelize-getting-started-demo
```

+ Check that the PAC is installed:
```bash
sudo xlnx-config -q
```

## 3.3. Debian Package Installation

+ Manual Installation

Copy the **accelize-getting-started-demo.deb** file on the KV260 O/S using scp, rsync, ... and run:

```bash
sudo apt install -y ./accelize-getting-started-demo.deb
```
  
+ Install from Kria Store Debian Package Repository
  
&#x26a0;&#xfe0f;  **COMING SOON ...**


## 2.4. Run AA on KV260

+ Load the application:
```bash
sudo xlnx-config -x loadapp accelize-getting-started-demo
```

+ Copy your Access Key (cred.json) on the KV260 O/S using scp, rsync, ...

+ Run the application:
```bash
app <PATH_TO_ACCESS_KEY_FILE>
```

Expected output:

```bash
INFO: Reading /lib/firmware/xilinx/accelize-getting-started-demo/accelize-getting-started-demo.xclbin
Loading: '/lib/firmware/xilinx/accelize-getting-started-demo/accelize-getting-started-demo.xclbin'
INFO: Reading /lib/firmware/xilinx/accelize-getting-started-demo/accelize-getting-started-demo.xclbin done!
XRT build version: 2.8.0
Build hash:
Build date: 2021-09-14 10:38:42
Git branch:
PID: 5066
UID: 1000
[Tue Apr 19 00:35:58 2022 GMT]
HOST: kria
EXE: /usr/bin/app
[XRT] WARNING: shim: logfileName is no longer supported
[  info  ] 5066  , Provencecore driver is not loaded
[DRMLIB] Start Session ..
[  info  ] 5066  , Provisioned license #0 for session 6E28BA57D4F931CA on DRM controller
[  info  ] 5066  , DRM session 6E28BA57D4F931CA created.
[XRT] WARNING: unaligned host pointer '0xfffff9d71f78' detected, this leads to extra memcpy
[XRT] WARNING: unaligned host pointer '0xfffff9d75f78' detected, this leads to extra memcpy
[DRMLIB] Stop Session ..
[  info  ] 5066  , DRM session 6E28BA57D4F931CA stopped.
TEST PASSED
```
