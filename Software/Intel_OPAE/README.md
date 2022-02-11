# Accelize Getting Started
## Intel OPAE API

The following API is meant to be used with Accelie example ["hello_afu_rtl"](https://github.com/Accelize/GettingStarted_Examples/tree/master/Hardware/Intel_AlibabaF1/hello_afu_rtl)

### How to run compile & run application
 * Create an account on [Accelize Portal](https://portal.accelize.com) (free)
 * Create your Access Key  on [Accelize Portal - Access Key](https://portal.accelize.com/front/customer/apicredential)
 * Program the FPGA with your FPGA ID
 * Create "app/cred.json" with your Access Key
 * Edit "conf.json" to change "boardType" and "frequency" parameters [Optional]
 * In a terminal:
   * cd app/
   * sudo sh
   * export LD_LIBRARY_PATH=/opt/dcp1_1/hw/samples/<your-project>/sw:/opt/dcp1_1/opencl/opencl_bsp/linux64/driver:/opt/dcp1_1/opencl/opencl_bsp/linux64/lib:/opt/intelFPGA_pro/17.1/hld/host/linux64/lib
   * ./app

