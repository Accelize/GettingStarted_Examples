Adder With Pipes (RTL)
======================
This example shows an adder with pipes using 3 RTL kernels and protected with Accelize DRM Solution.

## SUPPORTED PLATFORMS
Board | Software Version
------|-----------------
Xilinx Kria Starter Kit KV260|Vitis 2020.2.2

&#x26a0;&#xfe0f; WARNING: Kria Platform require Vitis 2020.2.2. Any prior version will not work!

# 1.Run Synthesis
Configure environment for Vitis  2020.2.2:
```bash
source <PATH_TO_VITIS_2020.2.2_INSTALL>/settings64.sh 
source /opt/xilinx/xrt/setup.sh
```

## 1.1. Build the platform (XSA & XPFM)
```bash
git clone --recursive https://github.com/Xilinx/kv260-vitis
cd kv260-vitis
make platform PFM=kv260_vcuDecode_vmixDP
```

## 1.2. Install KV260 board and SOM240 Daughterboard in Vivado
Enter the following lines in Vivado TCL console or add them to your Vivado init script (~/.Xilinx/Vivado/Vivado_init.tcl)
```bash
xhub::refresh_catalog [xhub::get_xstores xilinx_board_store]
xhub::install [xhub::get_xitems *kv260*]
xhub::install [xhub::get_xitems *som240*]
set_param board.repoPaths [get_property LOCAL_ROOT_DIR [xhub::get_xstores xilinx_board_store]]
```

## 1.3. Install ZYNQMP "Common images for Embedded Vitis platforms" 
+ Download & extract ZYNQMP "Common images for Embedded Vitis platforms":
https://www.xilinx.com/member/forms/download/xef.html?filename=xilinx-zynqmp-common-v2020.2.tar.gz

## 1.4. Synthesize bitstream
```bash
git clone https://github.com/Accelize/GettingStarted_Examples.git --depth=1
cd GettingStarted_Examples/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_KV260
export PATH_TO_KV260_PRJ=<PATH_TO_rtl_adder_pipes_KV260>
```

Run the synthesis:
```bash
export PLATFORM_REPO_PATHS=<PATH_TO_KV260_PLATFORM_GIT_FROM_STEP_1.1>/kv260-vitis/platforms/xilinx_kv260_vcuDecode_vmixDP_202022_1
export ROOTFS=<PATH_TO_ZYNQMP_COMMON_IMAGES>/xilinx-zynqmp-common-v2020.2
make bitstream
```
Once synthesis is complete, the bitstream will be located in the *xclbin* folder

# 2. Build Software for Embedded ARM CPU using Petalinux
## 2.1. Environment Setup
In a new terminal window:
```bash
unset LD_LIBRARY_PATH
cd <PATH_TO_ZYNQMP_COMMON_IMAGES>
./sdk.sh
source /opt/petalinux/2020.2/environment-setup-aarch64-xilinx-linux
mkdir $PATH_TO_KV260_PRJ/drmlib_xcompile
```
## 2.2. Cross-compile JsonCpp Lib for K26 ARM CPU
```bash
cd $PATH_TO_KV260_PRJ/drmlib_xcompile
git clone https://github.com/open-source-parsers/jsoncpp.git
cd jsoncpp
mkdir -p build/debug
cd build/debug
cmake -DJSONCPP_WITH_POST_BUILD_UNITTEST=0 -DCMAKE_BUILD_TYPE=debug -DBUILD_STATIC_LIBS=OFF -DBUILD_SHARED_LIBS=ON -DARCHIVE_INSTALL_DIR=. -G "Unix Makefiles" ../..
make
```

## 2.3. Cross-compile DRMLib for K26 ARM CPU
```bash
cd $PATH_TO_KV260_PRJ/drmlib_xcompile
git clone https://github.com/Accelize/drm.git --recursive --depth 1
```

Edit drm/CMakeLists.txt:

After line "**## libaccelize_drm**", add:
```bash
set(DRMLIB_XCOMPILE "<PATH_TO_DRMLIB_XCOMPILE>")
target_include_directories(accelize_drm PUBLIC "${DRMLIB_XCOMPILE}/jsoncpp/include")
find_library(accelize_drm PUBLIC  "${DRMLIB_XCOMPILE}/jsoncpp/build/debug/lib")
target_link_libraries(accelize_drm "${DRMLIB_XCOMPILE}/jsoncpp/build/debug/lib/libjsoncpp.so")
```

And remove line:
```bash
target_link_libraries(accelize_drm jsoncpp)
```

Then cross-compile the DRMLib for ARM CPU:
```bash
mkdir -p drm/build
cd drm/build
cmake  ..
make -j
```

## 2.4. Cross-compile Application for K26 ARM CPU

Edit Makefile with JSONCPP and DRMLIB build folder (if needed):
```bash
DRMLIB_XCOMPILE_DIR = drmlib_xcompile
JSONCPP_INCDIR      = ${DRMLIB_XCOMPILE_DIR}/jsoncpp/include
JSONCPP_LIBDIR      = ${DRMLIB_XCOMPILE_DIR}/jsoncpp/build/debug/lib
XLZDRMLIB_BUILDDIR  = ${DRMLIB_XCOMPILE_DIR}/drm/build
```

Then cross-compile the Application for ARM CPU:
```bash
cd $PATH_TO_KV260_PRJ
make app
```

# 3. Build Petalinux with Application Package (Bitstream + App) for KV260
## 3.1. Prerequisites:
+ Download & Install PetaLinux Tools Installer 2020.2.2 ("Kria K26 Special release"):
https://www.xilinx.com/member/forms/download/xef.html?filename=petalinux-v2020.2.2-final-installer.run
+ Download KV260 Starter Kit BSP:
https://www.xilinx.com/member/forms/download/xef.html?filename=xilinx-k26-starterkit-v2020.2.2-final.bsp
&#x26a0;&#xfe0f; WARNING: Make sure to use the "Starter kit" BSP, not the "Production" one!
+ Copy your Access Key (cred.json) in "<PATH_TO_rtl_adder_pipes_KV260>/app/cred.json"

## 3.2. Create PetaLinux project for FPGA Bitstream:
In a new terminal (fresh environment - not contaminated by the previous steps):
```bash
mkdir petalnx-prj
cd petalnx-prj
source <path-to-installed-PetaLinux>/settings.sh
petalinux-create -t project -s <PATH_TO_KV260_BSP>
cd xilinx-k26-starterkit-2020.2.2
```

Build the ROOTFS:
```bash
echo 'BOARD_VARIANT = "kv"' >>  project-spec/meta-user/conf/petalinuxbsp.conf
petalinux-config -c rootfs --silentconfig
petalinux-build -s
```

## 3.3. Create PetaLinux Recipe for FPGA Bitstream:
```bash
petalinux-create -t apps --template fpgamanager -n kv260-drm-adder-demo-fpga --enable --srcuri "$PATH_TO_KV260_PRJ/petalinux_recipes/kv260-drm-adder-demo-fpga/kv260-aibox-reid.dtsi $PATH_TO_KV260_PRJ/_x/link/int/system.bit $PATH_TO_KV260_PRJ/xclbin/rtl_adder_pipes_hdk_4.2.1.12_vitis_2020.2_xilinx_kv260.xclbin "
```
## 3.4. Create PetaLinux Recipe for FPGA App:
```bash
petalinux-create -t apps --template fpgamanager -n kv260-drm-adder-demo-app --enable --srcuri "$PATH_TO_KV260_PRJ/app/app $PATH_TO_KV260_PRJ/app/conf.json $PATH_TO_KV260_PRJ/app/cred.json $PATH_TO_KV260_PRJ/app/lib/libaccelize_drm.so.2.5.3 $PATH_TO_KV260_PRJ/app/lib/libjsoncpp.so.1.9.4"
```
Then replace the the file "project-spec/meta-user/recipes-apps/kv260-drm-adder-demo-app/kv260-drm-adder-demo-app.bb" by this one:
$PATH_TO_KV260_PRJ/petalinux_recipes/kv260-drm-adder-demo-app/kv260-drm-adder-demo-app.bb"
```bash
cp $PATH_TO_KV260_PRJ/petalinux_recipes/kv260-drm-adder-demo-app/kv260-drm-adder-demo-app.bb project-spec/meta-user/recipes-apps/kv260-drm-adder-demo-app/kv260-drm-adder-demo-app.bb
```

## 3.5. Create PetaLinux Packagegroup Recipe:
```bash
mkdir -p project-spec/meta-user/recipes-core/packagegroups
cp -f $PATH_TO_KV260_PRJ/petalinux_recipes/packagegroups/packagegroup-kv260-drm-adder-demo.bb project-spec/meta-user/recipes-core/packagegroups/packagegroup-kv260-drm-adder-demo.bb
echo 'IMAGE_INSTALL_append = " packagegroup-kv260-drm-adder-demo"' >> project-spec/meta-user/conf/petalinuxbsp.conf
```

## 3.6. Build PetaLinux:
```bash
petalinux-build
```
Output files are generated in "xilinx-k26-starterkit-2020.2.2/images/linux"

RPM packages are generated in "xilinx-k26-starterkit-2020.2.2/build/tmp/deploy/rpm"

## 3.7. Generate SDCard Image:
```bash
petalinux-package --wic --bootfiles "ramdisk.cpio.gz.u-boot boot.scr Image system.dtb"
```
Output ".wic" file is generated in "xilinx-k26-starterkit-2020.2.2/images/linux"

[OPTIONAL] You can compress this Image from 4GB to approx. 250MB using:
```bash
gzip images/linux/petalinux-sdimage.wic
```

# 4. Run the Application on the KV260 Starter Kit

You can run the application either:
+ Using the SDCard image generated by petalinux (in which the application is pre-installed )
+ Using the vanilla SDCard image provided by Xilinx and installing the application RPM packages

## 4.1. Using the SDCard image generated by petalinux
### 4.1.1. Prepare the SDCard
Install [balenaEtcher](https://www.balena.io/etcher/) and write the ".wic" on the SD Card

### 4.1.2. Run the application
Insert the SD Card in the KV260 slot and power-on the board.

In the USB-UART terminal, use the following commands to run the application:
```bash
sudo xmutil unloadapp
sudo xmutil loadapp kv260-drm-adder-demo-fpga
app
```

On success, the output should look like:
```bash
INFO: Reading /lib/firmware/xilinx/kv260-drm-adder-demo-fpga/kv260-drm-adder-demo-fpga.xclbin
Loading: '/lib/firmware/xilinx/kv260-drm-adder-demo-fpga/kv260-drm-adder-demo-fpga.xclbin'
INFO: Reading /lib/firmware/xilinx/kv260-drm-adder-demo-fpga/kv260-drm-adder-demo-fpga.xclbin done!
XRT build version: 2.8.0
Build hash: b94857f15ba8c8251df446e8c51af7e0a7c9e061
Build date: 2021-05-25 13:50:52
Git branch: 2020.2
PID: 1318
UID: 1000
[Wed Jun  9 13:49:49 2021 GMT]
HOST: xilinx-k26-starterkit-2020_2.2
EXE: /usr/bin/app
[DRMLIB] Start Session ..
[  info  ] 1318  , DRM session <SESSION-ID> created.
[DRMLIB] Stop Session ..
[  info  ] 1318  , DRM session <SESSION-ID> stopped.
TEST PASSED
```

## 4.2. Using the vanilla SDCard image provided by Xilinx
### 4.2.1. Upload your RPMs on the Accelize Repository
+ Log into your vendor portal
+ On the upper-right, click on your name and select "RPM Upload"
+ Upload each RPM package generated at previous steps


### 4.2.2. Prepare the SDCard
Download the [Kria KV260 Starter Kit 2020.2.2 SD Card Image](https://www.xilinx.com/member/forms/download/xef.html?filename=petalinux-sdimage.wic.gz)

Install [balenaEtcher](https://www.balena.io/etcher/) and write the ".wic" on the SD Card

### 4.2.3. Run the application
Insert the SD Card in the KV260 slot and power-on the board.

Add your cred.json file in "/usr/bin/cred.json"

In the USB-UART terminal, use the following commands to run the application:
```bash
sudo dnf clean all
sudo dnf update
sudo sed -i 's/enabled=0/enabled=1/g' /etc/yum.repos.d/accelize.repo
sudo xmutil getpkgs
sudo dnf install packagegroup-kv260-drm-adder-demo.noarch
sudo xmutil unloadapp
sudo xmutil loadapp kv260-drm-adder-demo
app
```

On success, the output should look like:
```bash
INFO: Reading /lib/firmware/xilinx/kv260-drm-adder-demo-fpga/kv260-drm-adder-demo-fpga.xclbin
Loading: '/lib/firmware/xilinx/kv260-drm-adder-demo-fpga/kv260-drm-adder-demo-fpga.xclbin'
INFO: Reading /lib/firmware/xilinx/kv260-drm-adder-demo-fpga/kv260-drm-adder-demo-fpga.xclbin done!
XRT build version: 2.8.0
Build hash: b94857f15ba8c8251df446e8c51af7e0a7c9e061
Build date: 2021-05-25 13:50:52
Git branch: 2020.2
PID: 1318
UID: 1000
[Wed Jun  9 13:49:49 2021 GMT]
HOST: xilinx-k26-starterkit-2020_2.2
EXE: /usr/bin/app
[DRMLIB] Start Session ..
[  info  ] 1318  , DRM session <SESSION-ID> created.
[DRMLIB] Stop Session ..
[  info  ] 1318  , DRM session <SESSION-ID> stopped.
TEST PASSED
```

# 5. Troubleshooting

> Issue: "/tools/xilinx/vitis_2020.2.2/Vivado/2020.2.2/bin/loader: line 309: 27618 Killed                  "$RDI_PROG" "$@""

This issue can happen during bitstream synthesis if the computer lack RAM.
Add more RAM to fix the issue

> Kernel Panic: no sync

This issue can happen when running a Petalinux image on the KV260.
There's many possible root cause but the first thing to try is to clean the petalinux build environment with the following command and run 'petalinux-build' again:
```bash
petalinux-build -x mrproper
```

> [    5.682875] Run /init as init process \
 No contents to exec in /exec.d. Starting shell ... \
 sh: can't access tty; job control turned off 

If you face this boot error when running the application on the starter kit, copy the folder '$PATH_TO_KV260_PRJ/petalinux_recipes/som-carrier-autoload' in the following directory of your Petalinux project: 'project-spec/meta-user/recipes-apps/' an run 'petalinux-build' command again:
```bash
cp -rf $PATH_TO_KV260_PRJ/petalinux_recipes/som-carrier-autoload project-spec/meta-user/recipes-apps/.
petalinux-build
```
