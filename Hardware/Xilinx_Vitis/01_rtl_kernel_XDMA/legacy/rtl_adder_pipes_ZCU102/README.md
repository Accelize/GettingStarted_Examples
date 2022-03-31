Adder With Pipes (RTL)
======================
This example shows an adder with pipes using 3 RTL kernels and protected with Accelize DRM Solution.

## SUPPORTED PLATFORMS
Board | Software Version
------|-----------------
Xilinx ZCU102|Vitis 2020.2

# 1.Run Synthesis
Enter the example design folder:
```bash
cd GettingStarted_Examples/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_ZCU102
```

Configure environment for Vitis  2020.2:
```bash
source <PATH_TO_VITIS_2020.2_INSTALL>/settings64.sh 
source /opt/xilinx/xrt/setup.sh
```

Configure environment for ZCU102 board:
+ Download and Install "Vitis Embedded Base Platforms" for ZCU102:
https://www.xilinx.com/member/forms/download/design-license-zcu102-base.html?filename=xilinx_zcu102_base_202020_1.zip
+ Download & install ZYNQMP "Common images for Embedded Vitis platforms":
https://www.xilinx.com/member/forms/download/xef.html?filename=xilinx-zynqmp-common-v2020.2.tar.gz

Run the synthesis:
```bash
export PLATFORM_REPO_PATHS=<PATH_TO_VITIS_EMBEDDED_PLATFORMS>/xilinx_zcu102_base_202020_1
export ROOTFS=<PATH_TO_ZYNQMP_COMMON_IMAGES>/xilinx-zynqmp-common-v2020.2
make bitstream
```
Once synthesis is complete, the bitstream will be located in the *xclbin* folder

# 2. Build Software for Embedded ARM CPU using Petalinux
## 2.1 Build PetaLinux for Vitis & ZCU102
### Prerequisites:
+ Download & Install PetaLinux Tools Installer 2020.2:
https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/embedded-design-tools/2020-2.html

+ Download ZCU102 BSP:
https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/embedded-design-tools/2020-2.html

### Create PetaLinux project:
```bash
mkdir petalnx-prj
source <path-to-installed-PetaLinux>/settings.sh
petalinux-create -t project -s <PATH_TO_ZCU102_BSP>
cd <GENERATED_PROJECT_FOLDER>
```

### PetaLinux System Configuration:
```bash 
petalinux-config --get-hw-description <PATH_TO_ZCU102_XSA_FILE>
```
+ In "Image packaging Configuration", "Root filesystem type": select EXT4
+ In "Image packaging Configuration", "Root filesystem formats": add "ext4"

### PetaLinux rootfs Configuration:
Open the file "project-spec/meta-user/conf/user-rootfsconfig", and add the following:
```bash
CONFIG_xrt
CONFIG_xrt-dev
CONFIG_zocl
CONFIG_opencl-clhpp-dev
CONFIG_opencl-headers-dev
```
Run the following command to configure the PetaLinux rootfs:
```bash
petalinux-config -c rootfs
```
+ In "user packages": select all

### Build PetaLinux:
```bash
petalinux-build
```
Output files are generated in "<GENERATED_PROJECT_FOLDER>/images/linux"

## 2.2 Cross-compile the DRMLib & App for ZCU102 ARM CPU
In a new terminal window:
```bash
mkdir drmlib_xcompile
unset LD_LIBRARY_PATH
source <PATH_TO_ZYNQMP_COMMON_IMAGES>/y/environment-setup-aarch64-xilinx-linux
```
### Cross-compile JsonCpp Lib
```bash
cd drmlib_xcompile
git clone https://github.com/open-source-parsers/jsoncpp.git
cd jsoncpp
mkdir -p build/debug
cd build/debug
cmake -DJSONCPP_WITH_POST_BUILD_UNITTEST=0 -DCMAKE_BUILD_TYPE=debug -DBUILD_STATIC_LIBS=OFF -DBUILD_SHARED_LIBS=ON -DARCHIVE_INSTALL_DIR=. -G "Unix Makefiles" ../..
make
```

### Cross-compile DRMLib
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

### Cross-compile Application

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

# 3. Prepare the SDCard with bitstream and software
Copy your Access Key (cred.json) in the "app" folder

Generate the "package" folder using the command:
```bash
make all
```
The "package" contains all files that file sto be copie don the SD card.

## 3.1 [Windows] Copy files to SD card
Install Win32 Disk Imager and write the file "package/sd_card.img" on the SD Card

## 3.2 [Linux] Copy files to SD card
On linux you can directly partition and copy files from "package/sd_card" folder.

SD Card formatting instuctions can be found here:

https://www.xilinx.com/support/documentation/sw_manuals/xilinx2020_2/ug1144-petalinux-tools-reference-guide.pdf

# 4. Run the FPGA application
Insert the SD Card in the ZCU102 slot and power-on the board.

In the USB-UART terminal, use the following commands to run the application:
```bash
cd /media/sd-mmcblk0p1/
./run_app.sh
```

On success, the output should look like:
```bash
INFO: Reading binary_container_1.xclbin
Loading: 'binary_container_1.xclbin'
INFO: Reading binary_container_1.xclbin done!
XRT build version: 2.8.0
Build hash: f19a872233fbfe2eb933f25fa3d9a7
Build date: 2020-11-15 11:07:38
Git branch: 2020.2
PID: 1195
UID: 0
[Tue May 25 20:06:20 2021 GMT]
HOST: zynqmp-common-2020_2
EXE: /mnt/app
[DRMLIB] Start Session ..
[  info  ] 1195  , DRM session <SESSION-ID> created.
[DRMLIB] Stop Session ..
[  info  ] 1195  , DRM session <SESSION-ID> stopped.
TEST PASSED
```
