# Accelize Getting Started
## Xilinx PYNQ PYTHON-API

The following API is meant to be used with Accelize Vitis examples ["01_rtl_kernel_XDMA/rtl_adder_pipes_Alveo"](https://github.com/Accelize/GettingStarted_Examples/tree/master/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_Alveo)


### Folder Structure
* **host.py**
  * PYNQ-API-equivalent to "main.cpp" source file  of the original design.
  * Uses the Xilinx PYNQ-API
* **conf.json** and **cred.json**
  * Configuration files for the DRM Library


### How to compile & run application
* **Prerequisites**:
  * XRT version must be 2.3 or newer. To check XRT version: 
  ```bash
  cat /opt/xilinx/xrt/version.json
  ```
  * The minimum Python version is 3.5.2, although the recommended minimum version is 3.6
  ```bash
  python3 --version
  ```
  * Install python module dependencies
  ```bash
  sudo apt install pip -y
  pip install pynq numpy
  ```
  * Create an account on [Accelize Portal](https://portal.accelize.com) (free)
  * Create your Access Key  on [Accelize Portal - Access Key](https://portal.accelize.com/front/customer/apicredential)
  * Install [Accelize DRM Library](https://tech.accelize.com/documentation/stable/drm_library_installation.html#installation-from-packages) version 2.2 or higher
  * Create "app/{your-exec-env}/cred.json" with your Access Key
  * Edit "app/{your-exec-env}/conf.json" to change "boardType" and "frequency" parameters [Optional]
* **Setup Environment:**
  * source XRT setup script
* **Execution** 
  ```bash
  ./host.py {path-to-xclbin-file}
  ```
