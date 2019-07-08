# Accelize Getting Started
## Intel OPAE example designs

The following example design are based on Intel DCP v1.1 example designs
Each of them shows a different context in which one could integrate the Accelize DRM IPs

| Name                       | Description                            | Status            |
| -------------------------- |--------------------------------------- |:----------------: |
| hello_afu_rtl              | How to add DRM IPs in an RTL kernel    | Tested OK DCP 1.1 |


/!\ Intel DCP 1.1 does not support .vhdl files, use only .vhd files

### How to synthesize the example designs

* Copy the example folder in $OPAE_PLATFORM_ROOT/hw/samples/
* cd $OPAE_PLATFORM_ROOT/hw/samples/<your-project>

* Setup Environment:
  * source /opt/dcp1_1/script/f1_env_set.sh
  * cd <you-project-folder>
  * rm -fr build_synth
  * afu_synth_setup --source hw/rtl/filelist.txt build_synth
  * cp -f afu.qsf build_synth/hw/afu.qsf
* Launch synthesis:
  * cd build_synth
  * $OPAE_PLATFORM_ROOT/bin/run.sh

### Create FPGA Image from .gbs
 * refer to <link>

### How to run compile & run application
 * Create an account on [Accelize Portal](https://portal.accelize.com) (free)
 * Create your Access Key  on [Accelize Portal - Access Key](https://portal.accelize.com/front/customer/apicredential)
 * Program the FPGA with your FPGA ID
 * Replace "app/cred.json" with your Access Key
 * Edit "conf.json" to change "boardType" and "frequency" parameters [Optional]
 * In a terminal:
   * cd app/
   * sudo sh
   * export LD_LIBRARY_PATH=/opt/dcp1_1/hw/samples/<your-project>/sw:/opt/dcp1_1/opencl/opencl_bsp/linux64/driver:/opt/dcp1_1/opencl/opencl_bsp/linux64/lib:/opt/intelFPGA_pro/17.1/hld/host/linux64/lib
   * ./app

