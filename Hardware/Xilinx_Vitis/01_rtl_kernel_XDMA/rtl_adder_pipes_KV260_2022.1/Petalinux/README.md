Adder With Pipes (RTL)
======================
This example shows an adder with pipes using 3 RTL kernels and protected with Accelize DRM Solution.

## SUPPORTED PLATFORMS
Board | Software Version
------|-----------------
Xilinx Kria Starter Kit KV260|Vitis 2022.1

# 1.Run Synthesis
Configure environment for Vitis  2022.1:
```bash
source <PATH_TO_VITIS_2022.1_INSTALL>/settings64.sh 
```

## 1.1. Build the platform (XSA & XPFM)
```bash
git clone --recursive https://github.com/Xilinx/kv260-vitis
cd kv260-vitis
git checkout remotes/origin/xilinx_v2022.1_update2
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
cd GettingStarted_Examples/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_KV260_2022.1/Petalinux
export PATH_TO_KV260_PRJ=$PWD
```

Run the synthesis:
```bash
export PLATFORM_REPO_PATHS=${PATH_TO_KV260_PLATFORM}/platforms/xilinx_kv260_vcuDecode_vmixDP_202210_1
make
```
Once synthesis is complete, the bitstream will be located in the *xclbin* folder


&#x26a0;&#xfe0f; WARNING: If you're using the Vivado flow instead of the Vitis one, please make sure to set the DRM Controller Bridge Address using the following command at synthesis:
```tcl
set ctrl_if_name [get_bd_addr_segs -addressables -of [get_bd_intf_pins kernel_drm_controller_1/s_axi_control]]
assign_bd_address -offset 0xA0010000 -range 0x00010000 -target_address_space [get_bd_addr_spaces PS_0/Data] [get_bd_addr_segs $ctrl_if_name] -force
```


# 2. Build the Embedded Linux Packages using Petalinux
## 2.1. Prerequisites:
+ Download & Install PetaLinux Tools Installer 2022.1:
https://www.xilinx.com/member/forms/download/xef.html?filename=petalinux-v2022.1-04191534-installer.run
+ Download KV260 Starter Kit BSP:
https://www.xilinx.com/member/forms/download/xef.html?filename=xilinx-kv260-starterkit-v2022.1-05140151.bsp

&#x26a0;&#xfe0f; WARNING: Make sure to use the "Starter kit" BSP, not the "Production" one!

&#x26a0;&#xfe0f; WARNING: For SOM, you need to install the "PetaLinux Tools Installer Update 1" as described hre:
https://www.xilinx.com/content/dam/xilinx/Attachment/petalinux-tool-upgrade-2022-1-update2.txt


## 2.2. Create PetaLinux project for FPGA Bitstream:
In a new terminal (fresh environment - not contaminated by the previous steps):
```bash
mkdir petalnx-prj
cd petalnx-prj
source <path-to-installed-PetaLinux>/settings.sh
petalinux-create -t project -s <PATH_TO_KV260_BSP>
cd xilinx-k26-starterkit-2022.1
```

Build the ROOTFS:
```bash
echo 'BOARD_VARIANT = "kv"' >>  project-spec/meta-user/conf/petalinuxbsp.conf
petalinux-config -c rootfs --silentconfig
petalinux-build -s
```

## 2.3. Create PetaLinux Recipe for Accelize DRM Library:
```bash
petalinux-create -t apps -n libaccelize-drm_1.0 --enable 

cp $PATH_TO_KV260_PRJ/petalinux_recipes/libaccelize-drm/libaccelize-drm_1.0.bb project-spec/meta-user/recipes-apps/libaccelize-drm_1.0/libaccelize-drm_1.0.bb
```

## 2.4. Create PetaLinux Recipe for FPGA Bitstream:
```bash
petalinux-create -t apps --template fpgamanager -n accelize-kv260-drmdemo-fpga_1.0 --enable --srcuri "$PATH_TO_KV260_PRJ/petalinux_recipes/accelize-kv260-drmdemo-fpga/kv260-aibox-reid.dtsi $PATH_TO_KV260_PRJ/petalinux_recipes/accelize-kv260-drmdemo-fpga/shell.json $PATH_TO_KV260_PRJ/_x/link/int/system.bit $PATH_TO_KV260_PRJ/xclbin/rtl_adder_pipes_xilinx_kv260.xclbin "

echo 'PR = "1.pl2022_1"' >> project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-fpga_1.0/accelize-kv260-drmdemo-fpga_1.0.bb
```
    
## 2.5. Create PetaLinux Recipe for FPGA App:
```bash
petalinux-create -t apps -n accelize-kv260-drmdemo-app_1.0 --enable --srcuri "$PATH_TO_KV260_PRJ/app/Makefile $PATH_TO_KV260_PRJ/app/main.cpp $PATH_TO_KV260_PRJ/app/conf.json"

cp $PATH_TO_KV260_PRJ/petalinux_recipes/accelize-kv260-drmdemo-app/accelize-kv260-drmdemo-app_1.0.bb project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-app_1.0/accelize-kv260-drmdemo-app_1.0.bb
```

## 2.6. Create PetaLinux Packagegroup Recipe & Enable it:
```bash
mkdir -p project-spec/meta-user/recipes-core/packagegroups
cp -f $PATH_TO_KV260_PRJ/petalinux_recipes/packagegroups/accelize-packagegroup-kv260-drmdemo_1.0.bb project-spec/meta-user/recipes-core/packagegroups/.
echo 'IMAGE_INSTALL:append = " accelize-packagegroup-kv260-drmdemo"' >> project-spec/meta-user/conf/petalinuxbsp.conf
```

## 2.7. Build PetaLinux:
```bash
petalinux-build
```
Embedded Linux is generated in "xilinx-k26-starterkit-2022.1/images/linux"

RPM packages are generated in "xilinx-k26-starterkit-2022.1/build/tmp/deploy/rpm"

# 3. Run the Application on the KV260 Starter Kit

You can run the application either:
+ Generating the SDCard image with petalinux (in which the application is pre-installed )
+ Using the vanilla SDCard image provided by Xilinx and installing the application using RPM

## 3.1. Prerequisites
The starter kit must be configured with a Boot FW Image containing the Trusted Application for DRM operations.
You can request this Boot FW Image [here](mailto:support@accelize.com)

The firmware update process is described on the [Xilinx Kria Confluence Page](https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/1641152513/Kria+K26+SOM#Boot-Firmware-Updates)

**Step-by-step Process in Video:**

https://user-images.githubusercontent.com/30148903/164562995-331eef87-3f7a-44cb-a0de-a29c86a1a9b8.mp4


## 3.2. Generate the SDCard image with petalinux

### 3.2.1. Generate SDCard Image:
```bash
petalinux-package --wic --bootfiles "ramdisk.cpio.gz.u-boot boot.scr Image system.dtb"
```
Output ".wic" file is generated in "xilinx-k26-starterkit-2022.1/images/linux"

[OPTIONAL] You can compress this Image from 4GB to approx. 250MB using:
```bash
gzip images/linux/petalinux-sdimage.wic
```

### 3.2.2. Prepare the SDCard
Install [balenaEtcher](https://www.balena.io/etcher/) and write the ".wic" on the SD Card

### 3.2.3. Run the application
Insert the SD Card in the KV260 slot and power-on the board.

Add your Access Key (cred.json) file in "$HOME/cred.json"

In the USB-UART terminal, use the following commands to run the application:
```bash
sudo xmutil unloadapp
sudo xmutil loadapp accelize-kv260-drmdemo-fpga
app
```

On success, the output should look like:
```bash
INFO: Reading /lib/firmware/xilinx/accelize-kv260-drmdemo-fpga/accelize-kv260-drmdemo-fpga.xclbin
Loading: '/lib/firmware/xilinx/accelize-kv260-drmdemo-fpga/accelize-kv260-drmdemo-fpga.xclbin'
INFO: Reading /lib/firmware/xilinx/accelize-kv260-drmdemo-fpga/accelize-kv260-drmdemo-fpga.xclbin done!
[DRMLIB] Start Session ..
[  info  ] 1062  , DRM session <SESSION-ID> created.
XRT build version: 2.11.0
Build hash: 0dc9f505a3a910dea96166db7b5df8530b9ae38e
Build date: 2021-06-05 12:31:54
Git branch: 2021.1
PID: 1062
UID: 1000
[Thu Sep  9 15:50:24 2021 GMT]
HOST: xilinx-k26-starterkit-2021_1
EXE: /usr/bin/app
[DRMLIB] Stop Session ..
[  info  ] 1062  , DRM session <SESSION-ID> stopped.
TEST PASSED
```

## 3.3. Use the vanilla SDCard image provided by Xilinx
You can install the RPM packages manually or upload them tho the Kria Store Repository.

### 3.3.1 Installing the RPM Packages manually
+ Copy the RPM packages generated at step "2.7. Build Petalinux" on the Embedded Linux.

### 3.3.2 Upload your RPMs on the Accelize Repository
+ Log into your vendor portal
+ On the upper-right, click on your name and select "RPM Upload"
+ Upload each RPM package generated at previous steps

&#x26a0;&#xfe0f; RPM naming convention :

**\<vendor>-\<package_name>-\<version>-\<release>.\<dist><basearch>.rpm**

example : xilinx-helloworld-1.0-1.pl2022_1.aarch64.rpm

|Field            |Description                                                   |
|-----------------|-------------------------------------------------------|
| **vendor**       | Provided by Accelize, basically the name of company generating the package|
| **package_name** | Name describing the packaged software.String without special char or "." can include "-"|
| **version**      | The version of the packaged software. You cannot use a dash in the version number suggested 1.1.1|
| **release**      | The number of times this version of the software has been packaged. Constraint : integer >0|
| **dist**         | Always starting with "pl" for petalinux and the distribution version without dot: example 2022_1|
| **basearch**     | Refers to the base architecture of the system.|

**Note**: To make sure that the RPM packages are generated following this convention, please create your recipe file (.bb) with the name:
**\<vendor>-\<package_name>_\<version>.bb**
and add the following line inside the recipe:
```bash
PR = "1.pl2022_1" # <release>.<dist>
```

### 3.3.3. Prepare the SDCard
Download the [Kria KV260 Starter Kit 2022.1 SD Card Image](https://www.xilinx.com/member/forms/download/xef.html?filename=petalinux-sdimage_xilinx-k26-starterkit.wic.xz)

Install [balenaEtcher](https://www.balena.io/etcher/) and write the ".wic" on the SD Card

### 3.3.4. Run the application
Insert the SD Card in the KV260 slot and power-on the board.

Add your Access Key (cred.json) file in "$HOME/cred.json"

In the USB-UART terminal, use the following commands to run the application:

#### 3.3.4.1. Install The RPMs Manually
```bash
sudo dnf install -y ./libjsoncpp*
sudo dnf install -y ./libaccelize-drm-*
sudo dnf install -y ./accelize-kv260-drmdemo-fpga-*
sudo dnf install -y ./accelize-kv260-drmdemo-app-*
```

#### 3.3.4.2. Install The RPMs from the Kria Store Repository
```bash
sudo dnf clean all
sudo dnf update --refresh
sudo xmutil getpkgs
sudo dnf install -y accelize-packagegroup-kv260-drmdemo.noarch
```

#### 3.3.4.3. Run the application
```bash
sudo xmutil unloadapp
sudo xmutil loadapp accelize-kv260-drmdemo-fpga
app
```

On success, the output should look like:

```bash
INFO: Reading /lib/firmware/xilinx/accelize-kv260-drmdemo-fpga/accelize-kv260-drmdemo-fpga.xclbin
Loading: '/lib/firmware/xilinx/accelize-kv260-drmdemo-fpga/accelize-kv260-drmdemo-fpga.xclbin'
INFO: Reading /lib/firmware/xilinx/accelize-kv260-drmdemo-fpga/accelize-kv260-drmdemo-fpga.xclbin done!
[DRMLIB] Start Session ..
[  info  ] 2201  , DRM session <SESSION-ID> created.
XRT build version: 2.11.0
Build hash: 0dc9f505a3a910dea96166db7b5df8530b9ae38e
Build date: 2021-06-05 12:31:54
Git branch: 2021.1
PID: 2201
UID: 1000
[Thu Sep  9 16:31:49 2021 GMT]
HOST: xilinx-k26-starterkit-2021_1
EXE: /usr/bin/app
[DRMLIB] Stop Session ..
[  info  ] 2201  , DRM session <SESSION-ID> stopped.
TEST PASSED
```

# 4. Troubleshooting

> Issue: "/tools/xilinx/vitis_2022.1/Vivado/2022.1/bin/loader: line 309: 27618 Killed                  "$RDI_PROG" "$@""

This issue can happen during bitstream synthesis if the computer lacks RAM.
Add more RAM to fix the issue

> Kernel Panic: no sync

This issue can happen when running a Petalinux image on the KV260.
There's many possible root cause but the first thing to try is to clean the petalinux build environment with the following command and run 'petalinux-build' again:
```bash
petalinux-build -x mrproper
```

> *** buffer overflow detected ***: dfx-mgr-client terminated

This issue happens when the the rpm filenames exceed 32 characters.
Your can fix it easily by shortening the recipe (.bb) filenames.


> DFX-MGRD> daemon loading accel accelize-kv260-drmdemo-fpga
> dfx_cfg_load: Image configuration failed
> FX-MGRD> ERROR: Failed to load fpga config: 1
> DFX-MGRD> ERROR: load_accel: Failed to load partial bitstream ret -1
> DFX-MGRD> ERROR: load_accelerator: Failed to load accel accelize-kv260-drmdemo-fpga
> Accelerator loaded to slot -1

Take a look a the output of the 'dmesg' command:

| Error                                              | Fix                                     |
|----------------------------------------------------|-----------------------------------------|
| create_overlay: Failed to create overlay (err=-22) | The .dtsi file is incorrect             |
