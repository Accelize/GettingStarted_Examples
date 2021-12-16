# Accelize Getting Started
## Xilinx XRT AWS CPP-API

The following API is meant to be used with Accelize SDAccel example ["rtl_kernel/rtl_adder_pipes"](https://github.com/Accelize/GettingStarted_Examples/tree/master/Hardware/Xilinx_SDAccel/01_rtl_kernel/rtl_adder_pipes)

### Folder Structure
* **Makefile**
  * Uses xrt_aws library (AWS custom xrt library)
* **main.cpp**
  * Uses the DRM Library CPP-API
* **conf.json** and **cred.json**
  * Configuration files for the DRM Library


### How to compile & run application
* **Prerequisites**:
  * Create an account on [Accelize Portal](https://portal.accelize.com) (free)
  * Create your Access Key  on [Accelize Portal - Access Key](https://portal.accelize.com/front/customer/apicredential)
  * Install [Accelize DRM Library](http://accelize.s3-website-eu-west-1.amazonaws.com/documentation/stable/drm_library_installation.html#installation-from-packages) version 2.2 or higher
  * Replace "app/{your-exec-env}/cred.json" with your Access Key
  * Edit "app/{your-exec-env}/conf.json" to change "boardType" and "frequency" parameters [Optional]
* **Setup Environment:**
  * source XRT setup script
* **Execution** 
  * make clean all
  * ./app \<path-to-xclbin-file>
