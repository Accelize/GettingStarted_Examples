# Accelize Getting Started
## Xilinx SDAccel Python API

The following API is meant to be used with Accelize SDAccel example ["rtl_kernel/rtl_adder_pipes"](https://github.com/Accelize/GettingStarted_Examples/tree/master/Hardware/Xilinx_SDAccel/01_rtl_kernel/rtl_adder_pipes)

### Folder Structure
* **xrt_python_binding/**
  * Python binding for XRT, based on [Xilinx GitHub Python Wrappers](https://github.com/Xilinx/XRT/tree/master/src/python) 
* **main.py**
  * Python equivalent to "main.cpp" source file of the original design
  * Uses the DRM Library Python-API
* **conf.json** and **cred.json**
  * Configuration files for the DRM Library


### How to run application
* **Prerequisites**:
  * Create an account on [Accelize Portal](https://portal.accelize.com) (free)
  * Create your Access Key  on [Accelize Portal - Access Key](https://portal.accelize.com/front/customer/apicredential)
  * Install [Accelize DRM Library](http://accelize.s3-website-eu-west-1.amazonaws.com/documentation/stable/drm_library_installation.html#installation-from-packages) version 2.2 or higher
  * Replace "app/{your-exec-env}/cred.json" with your Access Key
  * Edit "app/{your-exec-env}/conf.json" to change "boardType" and "frequency" parameters [Optional]
* **Setup Environment:**
  * source XRT setup script
* **Execution** 
  * python3 main.py \<path-to-xclbin-file>
