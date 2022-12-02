Adder With Pipes (RTL)
======================
This example shows an adder with pipes using 3 RTL kernels and protected with Accelize DRM Solution.

## SUPPORTED PLATFORMS
Board | Software Version | Kria OS Version
------|------------------|----------------
Xilinx Kria Starter Kit KV260|Vitis 2022.1|Petalinux 2022.1

# 1.Run Synthesis
Configure environment for Vitis  2022.1:
```bash
source <PATH_TO_VITIS_2022.1_INSTALL>/settings64.sh 
```

## 1.1. Build the platform (XSA & XPFM)
```bash
git clone --recursive https://github.com/Xilinx/kria-vitis-platforms
cd kria-vitis-platforms
git checkout xilinx_v2022.1_update3
cd kv260
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
export PATH_TO_K26_PRJ=$PWD
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

&#x26a0;&#xfe0f; WARNING: For SOM, you need to install the "PetaLinux Tools Installer Update 3":
```bash
source <path-to-installed-PetaLinux>/settings.sh
petalinux-upgrade -u http://petalinux.xilinx.com/sswreleases/rel-v2022/sdkupdate/2022.1_update3/ -p "aarch64" --wget-args "--wait 1 -nH --cut-dirs=4"
```

## 2.2. Create PetaLinux project for FPGA Bitstream:
In a new terminal (fresh environment - not contaminated by the previous steps):
```bash
mkdir petalnx-prj
cd petalnx-prj
source <path-to-installed-PetaLinux>/settings.sh
petalinux-create -t project -s <PATH_TO_KV260_BSP>
cd xilinx-kv260-starterkit-2022.1 
```

Update CMA requirement to support Secure OS:
```bash
sed -i 's/900/700/g' project-spec/meta-user/recipes-bsp/device-tree/files/system-user.dtsi
```

## 2.3. Add Accelize and Provenrun Meta-Layers: 
```bash
### Clone meta-layers
mkdir components/ext_sources
git clone https://github.com/Accelize/meta-accelize.git -b honister --depth 1 components/ext_sources/meta-accelize
git clone https://github.com/ProvenRun/meta-provenrun.git -b xilinx-drm-honister --depth 1 components/ext_sources/meta-provenrun

### Add meta-layers to petalinux config
sed -i /CONFIG_USER_LAYER/d project-spec/configs/config
echo 'CONFIG_USER_LAYER_0="${PROOT}/components/ext_sources/meta-provenrun"' >> project-spec/configs/config
echo 'CONFIG_USER_LAYER_1="${PROOT}/components/ext_sources/meta-accelize"' >> project-spec/configs/config
echo 'CONFIG_USER_LAYER_2=""' >> project-spec/configs/config

### Add meta-layers recipes to the build
echo 'MACHINE_FEATURES:append = " provencore accelize fpga-overlay"' >> project-spec/meta-user/conf/petalinuxbsp.conf

### Configure base project
@yes | petalinux-config --silentconfig

### [FIX] Rename Provencore and Accelize recipes in Petalinux conf
sed -i 's/uppercase/provenrun-uppercase/g' components/yocto/layers/meta-petalinux/dynamic-layers/provenrun/recipes-core/images/petalinux-image-common-provencore.inc
sed -i 's/drmselftest/accelize-drmselftest/g' components/yocto/layers/meta-petalinux/dynamic-layers/accelize/recipes-core/images/petalinux-image-common-accelize.inc
```

## 2.4. Create PetaLinux Recipe for FPGA Bitstream:
```bash
petalinux-create -t apps --template fpgamanager -n accelize-kv260-drmdemo-firmware --enable --srcuri "$PATH_TO_K26_PRJ/petalinux_recipes/accelize-kv260-drmdemo-firmware/kv260-aibox-reid.dtsi $PATH_TO_K26_PRJ/petalinux_recipes/accelize-kv260-drmdemo-firmware/shell.json $PATH_TO_K26_PRJ/_x/link/int/system.bit $PATH_TO_K26_PRJ/xclbin/rtl_adder_pipes_xilinx_kv260.xclbin "

### Rename recipe to add version number for the resulting rpm
mv project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-firmware/accelize-kv260-drmdemo-firmware.bb project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-firmware/accelize-kv260-drmdemo-firmware_1.1.bb

### Add rpm version tag
echo 'PKGR = "1.pl2022.1"' >> project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-firmware/accelize-kv260-drmdemo-firmware_1.1.bb
```
    
## 2.5. Create PetaLinux Recipe for FPGA App:
```bash
petalinux-create -t apps -n accelize-kv260-drmdemo-app --enable --srcuri "$PATH_TO_K26_PRJ/app/Makefile $PATH_TO_K26_PRJ/app/main.cpp $PATH_TO_K26_PRJ/app/conf.json"

### Copy edited app recipe to the project
cp $PATH_TO_K26_PRJ/petalinux_recipes/accelize-kv260-drmdemo-app/accelize-kv260-drmdemo-app.bb project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-app/accelize-kv260-drmdemo-app.bb

### Rename recipe to add version number for the resulting rpm
mv project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-app/accelize-kv260-drmdemo-app.bb project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-app/accelize-kv260-drmdemo-app_1.1.bb

### Add rpm version tag
echo 'PKGR = "1.pl2022.1"' >> project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-app/accelize-kv260-drmdemo-app_1.1.bb
```

## 2.6. [FIX] XRT version in applications recipe
For now, XRT versions for petalinux 2022.1 and 2022.2 are mixed in Xilinx dnf repository. To force dnf to install the right version, we need to set runtime dependencies on XRT and ZOCL.
```bash
echo 'RDEPENDS:${PN} += " zocl (=202210.2.13.479)"' >> project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-app/accelize-kv260-drmdemo-app_1.1.bb
echo 'RDEPENDS:${PN} += " xrt  (=202210.2.13.479)"' >> project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-app/accelize-kv260-drmdemo-app_1.1.bb
```

## 2.7. Build PetaLinux:
```bash
petalinux-build
```
Embedded Linux is generated in "xilinx-k26-starterkit-2022.1/images/linux"

RPM packages are generated in "xilinx-k26-starterkit-2022.1/build/tmp/deploy/rpm"
**Note**: You only need the execution rpms. Rpms with -dev -dbg -lic or -src extensions are not needed.

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

Add your Access Key (cred.json) file in "/etc/xilinx_appstore/cred.json"

In the USB-UART terminal, use the following commands to run the application:
```bash
sudo xmutil unloadapp
sudo xmutil loadapp accelize-kv260-drmdemo-firmware
app
```

On success, the output should look like:
```bash
[DRMLIB] Start Session ..
[  info  ] 1401  , DRM session A2D83A8F43189974 started.
[DRMLIB] Stop Session ..
[  info  ] 1401  , DRM session A2D83A8F43189974 stopped.
Nb data processed: 4096
TEST PASSED
```

## 3.3. Use the vanilla SDCard image provided by Xilinx
You can install the RPM packages manually or upload them tho the Kria Store Repository.

### 3.3.1. Prepare the Kria Starter Kit
Download the [Kria KV260 Starter Kit 2022.1 SD Card Image](https://www.xilinx.com/member/forms/download/xef.html?filename=petalinux-sdimage_xilinx-k26-starterkit.wic.xz)

Install [balenaEtcher](https://www.balena.io/etcher/) and write the ".wic" on the SD Card

Insert the SD Card in the KV260 slot and power-on the board.

In the USB-UART terminal, use the following commands to setup the board:
```bash
### For KV260
sudo dnf install https://tech.accelize.com/rpm/stable/2022_1/xilinx_k26_kv/accelize-repo-1.0-1.pl2022_1.xilinx_k26_kv.rpm
### For KR260
sudo dnf install https://tech.accelize.com/rpm/stable/2022_1/xilinx_k26_kr/accelize-repo-1.0-1.pl2022_1.xilinx_k26_kr.rpm

### Update accelize-repo to last version
sudo dnf update accelize-repo --refresh
sudo dnf install -y xilinx-appstore
sudo reboot
```

Add your Access Key (cred.json) file in "/etc/xilinx_appstore/cred.json"

### 3.3.2 Installing the RPM Packages manually
+ Copy the RPM packages generated at step "2.7. Build Petalinux" on the Embedded Linux.

### 3.3.3 Upload your RPMs on the Accelize Repository
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
PKGR = "1.pl2022_1" # <release>.<dist>
```

### 3.3.4. Run the application
the USB-UART terminal, use the following commands to run the application:

#### 3.3.4.1. Install The RPMs Manually
```bash
sudo dnf install -y ./accelize-kv260-drmdemo-firmware-*
sudo dnf install -y ./accelize-kv260-drmdemo-app-*
```

#### 3.3.4.2. Install The RPMs from the Kria Store Repository
```bash
sudo dnf install -y accelize-kv260-drmdemo-app
```

#### 3.3.4.3. Run the application
```bash
sudo xmutil unloadapp
sudo xmutil loadapp accelize-kv260-drmdemo-firmware
app
```

On success, the output should look like:

```bash
[DRMLIB] Start Session ..
[  info  ] 1401  , DRM session A2D83A8F43189974 started.
[DRMLIB] Stop Session ..
[  info  ] 1401  , DRM session A2D83A8F43189974 stopped.
Nb data processed: 4096
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


> DFX-MGRD> daemon loading accel accelize-kv260-drmdemo-firmware
> dfx_cfg_load: Image configuration failed
> FX-MGRD> ERROR: Failed to load firmware config: 1
> DFX-MGRD> ERROR: load_accel: Failed to load partial bitstream ret -1
> DFX-MGRD> ERROR: load_accelerator: Failed to load accel accelize-kv260-drmdemo-firmware
> Accelerator loaded to slot -1

Take a look a the output of the 'dmesg' command:

| Error                                              | Fix                                     |
|----------------------------------------------------|-----------------------------------------|
| create_overlay: Failed to create overlay (err=-22) | The .dtsi file is incorrect             |
