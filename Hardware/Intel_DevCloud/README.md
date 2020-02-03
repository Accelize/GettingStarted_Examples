# Accelize Getting Started
## IntelDevCloud example designs

The following example designs are based on Intel OPAE example designs
Each of them shows a different context in which one could integrate the Accelize DRM IPs

| Name                       | Description                            | Board            |Status            |
| -------------------------- |--------------------------------------- |:----------------: |:----------------: |
| hello_afu_rtl              | How to add DRM IPs in an RTL kernel    | Arria 10 |Tested OK |

**Note:** Each design example folder contains a "bitstream" folder containing prebuilt bitstreams for reference. 

### How to synthesize the example designs

* **Note:** Only nodes 137 & 138 comes with Accelize DRM Library pre-installed
* Accelize DRM Synthesis License Installation:
  * Copy **accelize_drm_synthesis_license.dat** on devcloud (user roor folder)
  * Add the following lines in "~/.altera.quartus/quartus2.ini"
`[General 17.1_pro]
LICENSE_FILE = /usr/local/licenseserver/quartus.lic:/home/u32094/accelize_drm_synthesis_license.dat`
`[General 18.1_pro]
LICENSE_FILE = /usr/local/licenseserver/quartus.lic:/home/u32094/accelize_drm_synthesis_license.dat 
`
* Launch Bitstream Generation:
  * source /opt/a10/inteldevstack/init_env.sh
  * rm -rf build_synth
  * afu_synth_setup --source hw/rtl/filelist.txt build_synth
  * cd build_synth
  * cp -f ../afu.qsf hw/afu.qsf
  * run.sh

### How to run compile & run application
 * Environement setup:
   * Edit .bash_profile to remove python3 from the PATH
 * Get an Entitlement to execute the application:
   * Create an account on [Accelize Portal](https://portal.accelize.com) (free)
   * Create your Access Key  on [Accelize Portal - Access Key](https://portal.accelize.com/front/customer/apicredential)
   * Replace "sw/cred.json" with your Access Key
* Run the application: 
  * cd sw
  * Edit "conf.json" to change "boardType" and "frequency" parameters [Optional]
  * ./progA10.sh <path_to_your_bitstream>
  * make clean all
  * ./app
