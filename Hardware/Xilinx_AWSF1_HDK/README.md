# Accelize Getting Started
## AWS F1 HDK example designs

The following example design are based on [AWS-FPGA examples](https://github.com/aws/aws-fpga/tree/master/hdk/cl/examples)


| Name                 | Description            | Status                                        | Internal AFI/AGFI                             |
| ---------------------|------------------------|:--------------------------------------------: |:--------------------------------------------: | 
| 01_refdesign_drm1act | 1 DRM Ctrl + 1 IP Act. | Tested OK with AMI v1.6.0 (Xilinx SDx 2018.3) | afi-0a09954be312fdd1c agfi-0585dc9e79690e5d3  |
| 02_refdesign_drm2act | 1 DRM Ctrl + 2 IP Act. | Coming soon                                   | afi-05176f55a4bd18924 agfi-0a019c155b0c932c7  |

**Note:** Each design example folder contains an "output.ref" folder containing prebuilt xilinx objects and bitstreams for reference. 

### How to synthesize the example designs

* Copy the design folder in $HDK_DIR/cl/examples/
* Open a terminal in the design folder
* Follow the instructions from [AWS-FPGA GitHub](https://github.com/aws/aws-fpga/tree/master/hdk#how-to-create-an-amazon-fpga-image-afi-from-one-of-the-cl-examples-step-by-step-guide)

### How to run compile & run application
 * Install [Accelize DRM Library](https://github.com/Accelize/drmlib)
 * Create an account on [Accelize Portal](https://portal.accelize.com) (free)
 * Create your Access Key  on [Accelize Portal - Access Key](https://portal.accelize.com/front/customer/apicredential)
 * Replace "software/cred.json" with your Access Key
 * Edit "conf.json" to change "boardType" and "frequency" parameters [Optional]
 * In a terminal:
   * sudo fpga-load-local-image -S 0 -I ${YOUR-AGFI-ID}
   *  sudo ./app

