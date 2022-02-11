# Accelize Getting Started
## Xilinx XRT OCL-API

The following API is meant to be used with Accelize Vitis examples ["01_rtl_kernel_XDMA/rtl_adder_pipes_Alveo"](https://github.com/Accelize/GettingStarted_Examples/tree/master/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_Alveo)

From 2020.2 release XRT provides a new OCL API for kernel's AXI-registers accesses

### Folder Structure
* **Makefile**
* **main.cpp**
  * NEW_REG_ACCESS_API-equivalent to "main.cpp" source file  of the original design.
  * Uses the Xilinx OCL-API
* **conf.json** and **cred.json**
  * Configuration files for the DRM Library


### How to compile & run application
* **Prerequisites**:
  * XRT version must be 2020.2 or newer. To check XRT version: 
  ```bash
  cat /opt/xilinx/xrt/version.json
  ```
  * Create an account on [Accelize Portal](https://portal.accelize.com) (free)
  * Create your Access Key  on [Accelize Portal - Access Key](https://portal.accelize.com/front/customer/apicredential)
  * Install [Accelize DRM Library](https://tech.accelize.com/documentation/stable/drm_library_installation.html#installation-from-packages) version 2.2 or higher
  * Replace "app/{your-exec-env}/cred.json" with your Access Key
  * Edit "app/{your-exec-env}/conf.json" to change "boardType" and "frequency" parameters [Optional]
* **Setup Environment:**
  * source XRT setup script
* **Execution** 
  ```bash
  make clean all
  ./app \<path-to-xclbin-file>
  ```
## Troubleshooting
### '[XRT] ERROR: xclRegRW: can't map CU.' error:

This is a known issue from XRT 2021.1 version (cf. [Xilinx Support](https://support.xilinx.com/s/question/0D52E00006zJLOOSA4/xclregrw-cant-map-cu-since-update-to-xrt-20211?language=en_US)). To fix it:
* Create a xrt.ini file with:
  ```ini
  [Runtime]
  rw_shared=true
  ```
* or type the command line:
  ```bash
  echo -e "[Runtime]\nrw_shared=true" >> ./xrt.ini
  ```  
* Update the line `xclOpenContext(boardHandler, xclbinId, cuidx, `**false**`)` with `xclOpenContext(boardHandler, xclbinId, cuidx,`**true**`)`

  in: 
  
  `drm_read_callback` and `drm_write_callback` functions
