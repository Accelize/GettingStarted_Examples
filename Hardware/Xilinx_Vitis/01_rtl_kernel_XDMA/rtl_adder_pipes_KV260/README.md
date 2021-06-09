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
Enter the following lines in Vivado TCL console or add them to your Vivado init script
```bash
xhub::refresh_catalog [xhub::get_xstores xilinx_board_store]
xhub::install [xhub::get_xitems *kv260*]
xhub::install [xhub::get_xitems *som240*]
set_param board.repoPaths [get_property LOCAL_ROOT_DIR [xhub::get_xstores xilinx_board_store]]
```

## 1.3. Synthesize bitstream
```bash
cd GettingStarted_Examples/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_KV260
```

Configure environment for KV260 board:
+ Download & install ZYNQMP "Common images for Embedded Vitis platforms":
https://www.xilinx.com/member/forms/download/xef.html?filename=xilinx-zynqmp-common-v2020.2.tar.gz

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
mkdir drmlib_xcompile
unset LD_LIBRARY_PATH
source <PATH_TO_ZYNQMP_COMMON_IMAGES>/y/environment-setup-aarch64-xilinx-linux
```
## 2.2. Cross-compile JsonCpp Lib for K26 ARM CPU
```bash
cd drmlib_xcompile
git clone https://github.com/open-source-parsers/jsoncpp.git
cd jsoncpp
mkdir -p build/debug
cd build/debug
cmake -DJSONCPP_WITH_POST_BUILD_UNITTEST=0 -DCMAKE_BUILD_TYPE=debug -DBUILD_STATIC_LIBS=OFF -DBUILD_SHARED_LIBS=ON -DARCHIVE_INSTALL_DIR=. -G "Unix Makefiles" ../..
make
```

## 2.3. Cross-compile DRMLib for K26 ARM CPU
```bash
cd drmlib_xcompile
git clone https://github.com/Accelize/drm.git --recursive --depth 1
```

Edit drm/CMakeLists.txt:

After line "**## libaccelize_drm**", add:
```bash
target_include_directories(accelize_drm PUBLIC "<PATH_TO_DRMLIB_XCOMPILE>/jsoncpp/include")
find_library(accelize_drm PUBLIC  "<PATH_TO_DRMLIB_XCOMPILE>/jsoncpp/build/debug/lib")
target_link_libraries(accelize_drm "<PATH_TO_DRMLIB_XCOMPILE>/jsoncpp/build/debug/lib/libjsoncpp.so")
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
make app
```

# 3. Build Petalinux with Application Package (Bitstream + App) for KV260
## 3.1. Prerequisites:
+ Download & Install PetaLinux Tools Installer 2020.2.2 ("Kria K26 Special release"):
https://www.xilinx.com/member/forms/download/xef.html?filename=petalinux-v2020.2.2-final-installer.run
+ Download KV260 Starter Kit BSP:
https://www.xilinx.com/member/forms/download/xef.html?filename=xilinx-k26-starterkit-v2020.2.2-final.bsp
+ Copy your Access Key (cred.json) in "<PATH_TO_rtl_adder_pipes_KV260>/app/cred.json"

## 3.2. Create PetaLinux project for FPGA Bitstream:
```bash
mkdir petalnx-prj
source <path-to-installed-PetaLinux>/settings.sh
petalinux-create -t project -s <PATH_TO_KV260_BSP>
cd xilinx-k26-starterkit-2020.2.2

echo 'BOARD_VARIANT = "kv"' >>  project-spec/meta-user/conf/petalinuxbsp.conf
echo 'CONFIG_packagegroup-kv260-smartcam' >> project-spec/meta-user/conf/user-rootfsconfig
echo 'CONFIG_packagegroup-kv260-aibox-reid' >> project-spec/meta-user/conf/user-rootfsconfig
echo 'CONFIG_packagegroup-kv260-defect-detect' >> project-spec/meta-user/conf/user-rootfsconfig
petalinux-config -c rootfs
petalinux-build -s
```

## 3.3. Create PetaLinux Recipe for FPGA Bitstream:
```bash
petalinux-create -t apps --template fpgamanager -n kv260-drm-adder-demo-fpga --enable --srcuri "<PATH_TO_rtl_adder_pipes_KV260>/peta_linux_recipes/kv260-drm-adder-demo-fpga/kv260-aibox-reid.dtsi <PATH_TO_rtl_adder_pipes_KV260>/_x/link/int/system.bit <PATH_TO_rtl_adder_pipes_KV260>/xclbin/rtl_adder_pipes_hdk_4.2.1.12_vitis_2020.2_xilinx_kv260.xclbin"
```
## 3.4. Create PetaLinux Recipe for FPGA App:
```bash
petalinux-create -t apps --template fpgamanager -n kv260-drm-adder-demo-app --enable --srcuri "<PATH_TO_rtl_adder_pipes_KV260>/app/app <PATH_TO_rtl_adder_pipes_KV260>/app/conf.json <PATH_TO_rtl_adder_pipes_KV260>/app/cred.json <PATH_TO_rtl_adder_pipes_KV260>/app/lib/libaccelize_drm.so.2.5.2 <PATH_TO_rtl_adder_pipes_KV260>/app/lib/libjsoncpp.so.1.9.4"
```
Then replace the the file "project-spec/meta-user/recipes-apps/kv260-drm-adder-demo-app/kv260-drm-adder-demo-app.bb" by this one:
<PATH_TO_rtl_adder_pipes_KV260>/petalinux_recipes/kv260-drm-adder-demo-app/kv260-drm-adder-demo-app.bb"

## 3.5. Build PetaLinux:
```bash
petalinux-build
```
Output files are generated in "<GENERATED_PROJECT_FOLDER>/images/linux"

## 3.6. Generate SDCard Image:
```bash
petalinux-package --wic --bootfiles "ramdisk.cpio.gz.u-boot boot.scr Image system.dtb"
```
Output ".wic" file is generated in "<GENERATED_PROJECT_FOLDER>/images/linux"

[OPTIONAL] You can compress this Image from 4GB to approx. 250MB using:
```bash
gzip images/linux/petalinux-sdimage.wic
```

# 4. Run the Application on the KV260 Starter Kit
## 4.1. Prepare the SDCard
Install [balenaEtcher](https://www.balena.io/etcher/) and write the ".wic" on the SD Card

## 4.2. Run the application
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

# 5. Troubleshooting

> Issue: "/tools/xilinx/vitis_2020.2.2/Vivado/2020.2.2/bin/loader: line 309: 27618 Killed                  "$RDI_PROG" "$@""

This issue can happen during bitstream synthesis if the computer lack RAM.
Add more RAM to fix the issue

> Kernel Panic: no sync

This issue can happen when run a Petalinux image on the KV260.
There's many possible root cause but the first thing to try is to clean the petalinux build environment with the following command and run a full build again:
```bash
petalinux-build -x mrproper
```
