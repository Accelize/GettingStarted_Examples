Adder With Pipes (RTL)
======================
This example shows an adder with pipes using 3 RTL kernels and protected with Accelize DRM Solution.

## SUPPORTED PLATFORMS
Board | Software Version | Kria OS Version
------|------------------|----------------
Xilinx Kria Starter Kit KV260|Vitis 2022.1|Ubuntu 22.04 

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
cd GettingStarted_Examples/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_k26/Ubuntu/
export PATH_TO_K26_PRJ=$PWD
```

Run the synthesis:
```bash
export PLATFORM_REPO_PATHS=${PATH_TO_KV260_PLATFORM}/platforms/xilinx_kv260_vcuDecode_vmixDP_202210_1
make
```
Once synthesis is complete, the bitstream will be located in the *xclbin* folder

# 2. Build the Embedded Linux Packages using Ubuntu

&#x26a0;&#xfe0f; We provide pre-filled assets in folder "ubuntu_material" for this example project. If you use your own project, you might need to adapt them.

## 2.1. Setup Environment
If not already done at step 1, configure environment for Vitis  2022.1:

```bash
source <PATH_TO_VITIS_2022.1_INSTALL>/settings64.sh 
```

## 2.2. Generate programmable logic assets
To install an Accelerated Application (AA) you need to create programmable logic Assets which can be identified by xmutil.
```bash
mkdir -p accelize-k26-drmdemo/acccelize-k26-drmdemo-firmware
```
### 2.2.1. Generate the <.xclbin> file
The xclbin file has been generated at Step 1.
However, it needs to be renamed accelize-k26-drmdemo-firmware.xclbin and copied in assets folder

```bash
cp  ${PATH_TO_K26_PRJ}/xclbin/*.xclbin accelize-k26-drmdemo/accelize-k26-drmdemo-firmware/accelize-k26-drmdemo-firmware.xclbin
```

### 2.2.4. Generate the <.bit.bin> file
The <.bit.bin> is generated from the <.bit> generated during Vitis Synthesis of Step 1 using the **bootgen** tool.

**bootgen** tool needs a configuration file <.bif> as input.
This <.bif> file contains the path to the <.bit> file from Step 1.

&#x26a0;&#xfe0f; Both the <.bif> and <.bif> must be named after the AA Name.

Start by creating a **accelize-k26-drmdemo-firmware.bif** file with content:
```bash
all:
{
    accelize-k26-drmdemo-firmware.bit
}
```

Then run the <.bit.bin> generation as follows:

```bash
mkdir /tmp/build_bit_bin
cp ${PATH_TO_K26_PRJ}/_x/link/int/system.bit /tmp/build_bit_bin/accelize-k26-drmdemo-firmware.bit
cp accelize-k26-drmdemo-firmware.bif /tmp/build_bit_bin/.
cd /tmp/build_bit_bin
bootgen -arch zynqmp -process_bitstream bin -image accelize-k26-drmdemo-firmware.bif
cd -
cp /tmp/build_bit_bin/accelize-k26-drmdemo-firmware.bit.bin accelize-k26-drmdemo/accelize-k26-drmdemo-firmware/.
rm -fr /tmp/build_bit_bin
```

### 2.2.5. Generate <.dtbo>
The <.dtbo> file is generated from a <.dtsi> file.
You can find an example file in folder "ubuntu_material".

If you adapat it to your app, please note:
+ **firmware-name** key must match the AA Name

Then run the <.dtbo> generation as follows:

```bash
dtc -q -@ -O dtb -o accelize-k26-drmdemo/accelize-k26-drmdemo-firmware/accelize-k26-drmdemo-firmware.dtbo ${PATH_TO_K26_PRJ}/ubuntu_material/accelize-k26-drmdemo-firmware.dtsi
```

### 2.2.6. Generate shell.json
The content of the shell.json file is always the same.
You can use the one provide in "ubuntu_material"

&#x26a0;&#xfe0f; **shell.json** is the only file that doesn't need to be named after the AA Name.

```bash
cp ${PATH_TO_K26_PRJ}/ubuntu_material/shell.json accelize-k26-drmdemo/accelize-k26-drmdemo-firmware/.
```

## 2.3. Generate Debian Package from the assets folder

You can find numerous online documentation and tutorial on how to build a debian packages.

Here we'll create the most basic packages, using files from "ubuntu_material" folder.
For your package to be compliant with the package feed you need to add a MD5SUM summary file in your package.
To do so, we use the tools MD5SUM (availbale with the command '''sudo apt install md5sum''')

2 debian packages will be created for a Kria application. One for the bitstream firmware and one for the software application.  

```bash
### Firmware debian package
mkdir -p /tmp/accelize-k26-drmdemo-firmware_1.2-2+jammy_arm64/DEBIAN
mkdir -p /tmp/accelize-k26-drmdemo-firmware_1.2-2+jammy_arm64/lib/firmware/xilinx/
cp -rf accelize-k26-drmdemo/accelize-k26-drmdemo-firmware /tmp/accelize-k26-drmdemo-firmware_1.2-2+jammy_arm64/lib/firmware/xilinx/.
cp ubuntu_material/DEBIAN/firmware/* /tmp/accelize-k26-drmdemo-firmware_1.2-2+jammy_arm64/DEBIAN/.
chmod 555 /tmp/accelize-k26-drmdemo-firmware_1.2-2+jammy_arm64/DEBIAN/prerm
cd /tmp/accelize-k26-drmdemo-firmware_1.2-2+jammy_arm64

### MD5SUM compute
find ./lib/ -type f -exec md5sum "{}" + > ./DEBIAN/md5sums

### Package build
dpkg-deb --build --root-owner-group ../accelize-k26-drmdemo-firmware_1.2-2+jammy_arm64
cd -

### Software debian package
mkdir -p /tmp/accelize-k26-drmdemo_1.2-2+jammy_arm64/DEBIAN
mkdir -p /tmp/accelize-k26-drmdemo_1.2-2+jammy_arm64/usr/bin
mkdir -p /tmp/accelize-k26-drmdemo_1.2-2+jammy_arm64/tmp/accelize-k26-drmdemo
mkdir -p /tmp/accelize-k26-drmdemo_1.2-2+jammy_arm64/etc/xilinx_appstore/xlz-k26-drmdemo/
cp -f app/* /tmp/accelize-k26-drmdemo_1.2-2+jammy_arm64/tmp/accelize-k26-drmdemo/.
cp app/conf.json /tmp/accelize-k26-drmdemo_1.2-2+jammy_arm64/etc/xilinx_appstore/xlz-k26-drmdemo/.
cp ubuntu_material/DEBIAN/software/* /tmp/accelize-k26-drmdemo_1.2-2+jammy_arm64/DEBIAN/.
chmod 555 /tmp/accelize-k26-drmdemo_1.2-2+jammy_arm64/DEBIAN/postinst
chmod 555 /tmp/accelize-k26-drmdemo_1.2-2+jammy_arm64/DEBIAN/prerm
cd /tmp/accelize-k26-drmdemo_1.2-2+jammy_arm64

### MD5SUM compute
find ./usr/ ./tmp/ ./etc/ -type f -exec md5sum "{}" + > ./DEBIAN/md5sums

### Package build
dpkg-deb --build --root-owner-group ../accelize-k26-drmdemo_1.2-2+jammy_arm64
cd -

### Get generated packages
cp /tmp/accelize-k26-drmdemo-firmware_1.2-2+jammy_arm64.deb accelize-k26-drmdemo/.
cp /tmp/accelize-k26-drmdemo_1.2-2+jammy_arm64.deb accelize-k26-drmdemo/.
```

## 2.4. Upload Debian package on the Kria Store package Repository

Connect to your Accelize portal and click your name on the upper right menu.
Then select "Package Upload" menu

&#x26a0;&#xfe0f;  **Note: Only Vendor Administrator accounts can upload RPM or DEB packages**

&#x26a0;&#xfe0f;  **Note: Make sure to follow the package naming convention for Debian**


# 3. Run the Application on the KV260 Starter Kit

You can run the application either by:
+ Copying the assets folder and app sources on the KV260 O/S (Manual Installation)
+ Installing the application from Debian Repository (Recommended)

## 3.1. Prerequisites

### 3.1.1. Prepare SDCard
Download the [Kria Starter Kit Ubuntu 22.04 LTS image](https://people.canonical.com/~platform/images/xilinx/kria-ubuntu-22.04/iot-limerick-kria-classic-desktop-2204-x06-20220614-78.img.xz?_ga=2.44642532.1775117010.1669815985-255178202.1646648335)

Install [balenaEtcher](https://www.balena.io/etcher/) and write the ".wic" on the SD Card

Insert the SD Card in the KV260 slot and power-on the board.

### 3.1.2. DRM Library

Install the DRM Library for Kria using the following commands:

```bash
sudo apt update
sudo apt install -y git make g++ libcurl4-openssl-dev libjsoncpp-dev pkg-config cmake

git clone https://github.com/Accelize/drm.git --recursive --depth 1
mkdir -p drm/build
cd drm/build

cmake -DPKG=ON ..

make -j
sudo make package

sudo apt install -y ./packages/libaccelize-drm_*
sudo apt install -y ./packages/libaccelize-drm-dev_*
```

### 3.1.3. Update and setup XRT tools
After first boot on Ubuntu you need to install xrt libraries and tools; and update them to the last version to be aligned with vivado/vitis 2022.1

```bash
sudo apt update
sudo apt upgrade
sudo apt install -y xrt-dkms
```

## 3.2. Manual Installation

+ Copy the assets folder on the KV260 O/S

Use scp, rsync, etc... to copy the assets folder on the KV260 O/S

+ Copy the assets folder in /lib/firmware/xilinx/
```bash
sudo cp -r <path_to_assets_dir> /lib/firmware/xilinx/
```

+ Install app dependencies
```bash
sudo apt install -y uuid-dev libjsoncpp-dev
```

+ Copy and compile the application    
In manual installation mode, you need to copy the app folder on the KV260 O/S and compile the app:
```bash
cd <path_to_app_folder>
make
cp accelize-k26-drmdemo /usr/bin/.
mkdir -p /etc/xilinx_appstore/xlz-k26-drmdemo
cp conf.json /etc/xilinx_appstore/xlz-k26-drmdemo/.
cd -
```

## 3.3. Debian Package Installation

+ Manual .deb Installation

Copy both DEBIAN packge files from 2.3 on the KV260 O/S using scp, rsync, ... and run:

```bash
sudo apt install -y ./accelize-k26-drmdemo-firmware_1.2-2+jammy_arm64.deb
sudo apt install -y ./accelize-k26-drmdemo_1.2-2+jammy_arm64.deb
```
  
+ Install from Kria Store Debian Package Repository

```bash
sudo apt install -y accelize-k26-drmdemo
```


## 3.4. Run AA on KV260

+ Load the application:
```bash
sudo xmutil unloadapp
sudo xmutil loadapp accelize-k26-drmdemo-firmware
```

+ Copy your Access Key (cred.json) on the KV260 O/S using scp, rsync, ... to /etc/xilinx_appstore/

+ Run the application:
```bash
accelize-k26-drmdemo
```

Expected output:

```bash
[DRMLIB] Start Session ..
[  info  ] 5066  , DRM session 6E28BA57D4F931CA created.
[DRMLIB] Stop Session ..
[  info  ] 5066  , DRM session 6E28BA57D4F931CA stopped.
TEST PASSED
```
