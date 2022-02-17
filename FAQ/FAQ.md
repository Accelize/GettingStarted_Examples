# Frequently Asked Questions

## Table of Contents
1. [DRM Integration](#1-drm-integration)
2. [Design Execution & Debug](#2-design-execution--debug)
3. [Vendor & User Portals](#3-vendor--user-portals)
4. [Sales](#4-sales)
5. [Docker](#5-docker)

# 1. DRM Integration
## **Can you provide smaller version of the DRM IPs for smaller devices where resources are limited?**
If you're targeting MPSoC devices (Kria, ...), please contact your Accelize FAE to learn more.


## **How to adapt activator constraint file to your design?**
Only the paths are incorrect, you need to adapt them to your design:
Here's an example:
```tcl
set_false_path -from [get_pins -hier -filter -name=<YOUR_HIERARCHY_TO_ACTIVATOR_TOP_INSTANCE>/drm_ip_activator_0xVLNV_inst/DRM_ACTIVATOR_INSTANCE/ID_S_60df9df8_1ba4afe_E*/*ID_S_68b58136_785ea8d4_E/C]  -to [get_pins -hier -filter -name=<YOUR_HIERARCHY_TO_ACTIVATOR_TOP_INSTANCE>/drm_ip_activator_0xVLNV_inst/DRM_ACTIVATOR_INSTANCE//ID_S_60df9df8_1ba4afe_E*/*ID_S_5e32896_1ee6cae5_E/D]
```

with:
+ <YOUR_HIERARCHY_TO_ACTIVATOR_TOP_INSTANCE>: the full path from the top of your IP to where you've instantiated the Activator
+ 0xVLNV: the unique ID of your Activator


## **"Error Generated from encrypted envelope" when synthesizing the DRM IPs**
The DRM IP Activator needs to be compiled in a specific libray "drm_0xVVVVLLLLNNNNVVVV_library" as explained in the documentation:
https://tech.accelize.com/documentation/stable/drm_hardware_integration.html#synthesize-and-implement-your-design


## **How to protect multiple compute units (HLS, C/C++)**
Protecting multiple CU is achievable.
The way we'll do it depends on your design topology.
You might have either a "Data Pipeline" Design or a "Distributed Data" Design.
For a "Data Pipeline" design, only the first compute units needs to be protected
In a "Distributed Data" Design, every compute units from separated paths needs to be protected
**Note:** The "Data Pipeline" version is fewer resources intensive but can only be used if your compute units are depending on each other (e.g: stage of computation)


## **What are the supported frequencies for the DRM IPs?**
Our DRM IPs operating frequencies can be found in our online documentation:
https://tech.accelize.com/documentation/stable/drm_hardware_ip_controller.html#timings
However, we do not recommend running at high speed.
Our IPs don't need to use high frequency to operate, using high frequency will make the timing closure more complex for no reason.
Our IPs have been designed in such a way that they can operate in their own clock domain, independently from your IP clock domain (we use CDC for that purpose).
**Note:** The DRM Controller IP and DRM Activator IP must use the same clock frequency on "drm_aclk" input to work properly."


## **How to containerize my app?**
You can find examples of Dockerfile in our GitHub:
+ AWS: https://github.com/Accelize/GettingStarted_Examples/blob/master/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_AWS_v1.8.1/aws_f1.Dockerfile
+ Alveo (onPrem): https://github.com/Accelize/GettingStarted_Examples/blob/master/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_Alveo/alveo_u200.Dockerfile
You can also find valuable information on the following Xilinx GitHub repository: https://github.com/Xilinx/Xilinx_Base_Runtime


## **How to find which SLR can be used for the DRM Controller**
+ Synthesize an example design on the target platform with -R2 option in V++ link stage
+ Open Vivado project: ```vivado ./_x/link/vivado/vpl/prj/prj.xpr```
+ Open synthesized design
+ In the Vivado TCL Console: 
```tcl
get_pblocks -of [get_sites CONFIG_SITE_X0Y0]
get_pblocks -of [get_sites CONFIG_SITE_X0Y1]
get_pblocks -of [get_sites CONFIG_SITE_X0Y2]
get_pblocks -of [get_sites CONFIG_SITE_X0Y3]
```
**Note:** This number of available SLR (or CONFIG_SITE) dependens on your Targeted Platform (aka Shell or DSA)


## **ERROR: [VPL 41-237] Bus Interface property FREQ_HZ does not match between /uip0/activation_code0(300000000) and /k1/activation_code0_uip0(100000000)**
A clock need to be assigned, or the assigned clock is not the corrrect one in the TCL script:
```tcl
ipx::associate_bus_interfaces -busif activation_code0_uip0 -clock ap_clk_2 [ipx::current_core]
```


## **ERROR: [VPL INBB-3] Black Box Instances: Cell 'level0_i/ulp/k1/inst/top_drm_activator_0x1050000100010001_inst/drm_ip_activator_0x1050000100010001_inst/DRM_ACTIVATOR_INSTANCE/ID_S_5c27de2c_56814625_E/ID_S_1e0a11f_28b9b70c_E/ID_S_1c01072f_4a6e9605_E/ID_S_7a8c8ddd_2a61c449_E/ID_S_4a59f0c0_3b2f3800_E.ID_S_7ddc286d_78cad89b_E/ID_S_19c32f85_731115ad_E/ilaa' of type 'ulp_k1_0_ila_0' has undefined contents and is considered a black box**
Add the following line in the TCL of the IPs that includes the DRM IP Activator.
```tcl
read_ip [glob $path_to_drm_hdk/common/ila_0/ila_0.xci]
```



## **How to force one kernel/module/submodule to one specific SLR**
+ In the Vitis flow, to move a whole kernel, you can simply add the SLR assignement in your configuration file:
    ```bash
    [connectivity]
    slr=KERNEL_NAME:SLR1
    ```

+ To move a specific module in Vitis or Vivado flow, you need to add a constraints before the place & route operation takes place:
  + **Create a constraint file:**
  
    Create a TCL constraint file with the following content:
    ```tcl
    add_cells_to_pblock -clear_locs <PBLOCK_NAME> <MODULE_CELL>
    ```
    where:
      + <PBLOCK_NAME> can be either "pblock_dynamic_SLR0",  "pblock_dynamic_SLR1", ...
      + <MODULE_CELL> is the path to the module to move
      
    e.g. with a module "inst_adder" contained in "krnl_adder_stage_rtl_adder":
    ```tcl
    add_cells_to_pblock -clear_locs pblock_dynamic_SLR2 [get_cells -hier  *inst_adder -filter {ORIG_REF_NAME =~ "krnl_adder_stage_rtl_adder"}]
    ```
    
  + **Add the TCL constraint file to the V++ compiler options (Vitis flow only):**
  
  Edit your v++ linker command as follows:
    ```bash
    @v++ -l --linkhook.do_first vpl.impl.place_design,<TCL_SCRIPT_PATH> ...
    ```
    
    e.g:
    ```bash
    @v++ -l --linkhook.do_first vpl.impl.place_design,scripts/slr_assignement.tcl ...
    ```


## **How to generate a DCP of the Protected IP using the Vitis Flow**
Edit the package kernel script as follows:
```tcl
set kernel_vendor xilinx.com
set kernel_library RTLKernel
set kernel_name krnl_adder_stage_rtl

update_compile_order -fileset sources_1
launch_runs synth_1 -jobs 4
wait_on_run synth_1
open_run synth_1 -name synth_1
write_checkpoint -encrypt $dcpname

ipx::package_checkpoint -root_dir $path_to_packaged -vendor $kernel_vendor -library $kernel_library -name $kernel_name -taxonomy /KernelIP -force $dcpname
```

# 2. Design Execution & Debug
## **Enable DRMLib log file generation**
Edit the conf.json as follows:
```
"settings": {
    "log_file_type": 1,
    "log_file_verbosity":0
}
```
**Note**:
+ "log_file_type" enable log file generation (0=no logging file, 1=basic file, 2=rotation file)
+ "log_file_verbosity" set the log file verbosity level (0 stands for high verbosity, 6 stands for quiet) 


## **How to reset FPGA on AWS F1?**
```bash
sudo fpga-clear-local-image  -S 0  &&  sudo systemctl restart mpd
```


## **[ERROR]: DRM Controller Activation is in timeout**
Please check the following elements:
+ Clocks are correctly connected and identical for the DRM Controller and each DRM Activator
+ Resets are correctly connected on the DRM Controller and each DRM Activator
+ If using multiple DRM Activator, make sure that you're not holding one DRM Activator in reset state while working with the others.
+ Check that both the DRM Controller and the DRM Activators uses the same version of the "drm_all_coponents.vhdl" file
+ Check timing closure
+ Try with a lower frequency on the "drm_aclk" inputs
    
    
## **fatal error: CL/cl2.hpp: No such file or directory**
You need to install the OpenCL Headers package:
```bash
sudo apt-get install -y opencl-headers
```


## **Can I install multiple versions of XRT on one host machine?**
Yes, learn more here: https://www.xilinx.com/support/answers/75253.html
  
  
## **[Alveo U250] Error calling cl::Program program(...), error code is: -6, [XRT] ERROR: failed to load xclbin: Invalid argument**
With the latest U250 Target Platforms, you need to program the partition after programming the shell.

More details: https://www.xilinx.com/support/documentation/boards_and_kits/accelerator-cards/1_9/ug1301-getting-started-guide-alveo-accelerator-cards.pdf
```bash
#get shell name with --scan
sudo /opt/xilinx/xrt/bin/xbmgmt partition --scan

# Program partition
sudo /opt/xilinx/xrt/bin/xbmgmt partition --program --card 0000:02:00.0 --name xilinx_u250_gen3x16_xdma_shell_3_1

```


## **Azure: Error Code: BadRequest, Message: Offer with PublisherId: 'xilinx', OfferId: '...' cannot be purchased due to validation errors**
You need to agree the Image terms and conditions before using it:
```bash
az vm image terms accept --urn xilinx:xilinx_alveo_u250_deployment_vm_ubuntu1804_032321
```

## **Failed to perform HTTP request to Accelize webservice (Problem with the SSL CA cert (path? access rights?))**
This issue can happens if:
+ Running on Kria (or MPSoC) and teh Petalinux configuration is incorrect
+ Running in Mainland China and the Accelize DRM Web Service URL in the conf.json is not the chinese URL. [More details here](https://tech.accelize.com/documentation/stable/drm_configuration.html?highlight=conf%20json#library-configuration-file)

## **[XRT] ERROR: xclRegRW: can't map CU.' error:**

This is a known issue from XRT 2021.1 version if you are using `xclRegRead(...)` or `xclRegWrite(...)` function (cf. [Xilinx Support](https://support.xilinx.com/s/question/0D52E00006zJLOOSA4/xclregrw-cant-map-cu-since-update-to-xrt-20211?language=en_US)). To fix it:
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

## modprobe: ERROR: could not insert 'xclmgmt': Unknown symbol in module, or unknown parameter (see dmesg)

The error can happen when trying to install XRT on Ubuntu O/S.

the 'dmesg' command gives:
```bash
[  374.980198] xclmgmt: Unknown symbol fpga_mgr_unregister (err 0)
[  374.980263] xclmgmt: Unknown symbol fpga_mgr_register (err 0)
``` 

To fix this issue, you need:
- To install the "linux-module" package for your kernel version:
```bash
sudo apt install linux-generic
```
- Reboot the server


# 3. Vendor & User Portals

## **Are there any restrictions on which browser to use?**
  
We support:
+ Internet Explorer and Edge per Microsoft's lifecycle policy. We currently support IE11 and above.
+ Chrome and Safari on all platforms and Firefox on desktop platforms.
+ The Android native browser on Android 4.4 and later.

We require TLS 1.2 to be supported by the browser.

We respond to bug reports but do not proactively test other mobile browsers.


## **What is the "Dedicated Store" menu in my vendor portal?**
Starting with the Xilinx App Store, the Xilinx-based products and plans are displayed only on the Xilinx App Store: http://appstore.xilinx.com

Your "Vendor View" is still the same but with enhanced features (e.g: option to publish your app on the Xilinx App Store)

Your "Dedicated Store" now displays only the non-Xilinx products and plans (only for eligible ISVs)

## **What is EU VATMOSS**
Learn more here: https://europa.eu/youreurope/business/taxation/vat/vat-digital-services-moss-scheme/index_en.htm#:~:text=MOSS%20means%20you%20don%27t%20need%20to%20register%20with,to.%20There%20are%20two%20schemes%20running%20under%20MOSS%3A



# 4. Sales

## **Why do you need Business representative personal info?**
Stripe needs this information to make sure you're running a real company and that you're not "spoofing" the identity of the company business representative.
Stripe onboarding process is a mandatory step to comply with anti-money laundering laws that apply to financial transactions services.
These documents will be provided by you directly to Stripe using their online interface, Accelize will have no access and no copy of them.


## **Can we use your licensing technology for software licensing?**
+ **Pure software licensing**
    
We doe not (yet) offer pure software licensing. It is on our roadmap though (integration with a 3rd party software licensing solution).
Until then, you could obviously use commercial solutions such as FlexLM, RLM, or Keygen.sh outside of the Accelize Distribution Platform.

+ **Hardware licensing**
    
We could secure you software through our FPGA licensing technology. This would require to alter the software to perform some kind of computing inside an FPGA. I’d avise a compute function somewhere in the middle of the processing pipe to fully secure the app. 


## **Can we use your DRM technology for software protection?**

Software security is a multi-dimensional problem. I would tend to consider 2 dimensions: copy protection and tamper protection 

+ **Copy Protection**
    
Copy protection aims at protecting your business, by avoiding users to execute your software without payment. Copy protection is achieved through a DRM (Digital Rights Management) System, which is precisely what Accelize provides you. The DRM system ensure that every single execution is authorized by you, through a legitimate entitlement (right), wether a paid entitlement (license, subscription, pay-per-use) or a free entitlement (evaluation, free trial).
Our copy-protection system is unique: it protects the FPGA bitstream. As long as there is no value in executing your software without the FPGA component, you are fully protected from any kind of illegal use: piracy, theft, copy, over-use, etc.

+ **Tamper Protection**
    
Tamper protection aims at protecting your intellectual property, by avoiding users to access the contents of your software, wether code or data. Protecting your software assets is itself a 2 dimensional problem:protecting software at rest, protecting software during execution
Ideally, you would want to deliver your software encrypted (rest protection), and execute it in a completely opaque CPU (execution protection). Such ideal does not exist, but there are a number of counter-measures that can be taken to elevate the tampering effort & cost well above the value of your software.
As an example, we must ourselves ensure our DRM software is not tampered with, as this would defeat the value we offer you - protecting your business. Our approach combines trusted computing (FPGA) and encrypted delivery.
  + **rest protection:** our software delivered encrypted (IEEE 1735) which ensures our source code is never visible. It also ensure users cannot probe the internal contents of our software.
  + **execution protection:** our DRM runs entirely in FPGA, which is by nature an opaque computing platform. That is, adjacent logic cannot steal information inside our DRM. In addition, all sensitive data coming in and out of our DRM is cryptographically protected using encryption (data not visible) or signature (data visible but not modifiable). This inevitably means storage of encryption keys in the software, which now becomes the third kind of asset you need protect at rest and during execution, in addition to code and data.

+ **Software Protection Strategies**

There is no magical solution, and no absolute protection. And security has a cost, wether internal (development, testing, monitoring) or external (customer friction for delivery and execution, performance impact). So, you need to define a strategy that is matched to the actual threat level. You must also consider security as a holistic problem. Investing millions of dollars to prevent reverse engineering is useless if one can hack the personal WiFi of an employee working from home with a VPN, and thus directly access and steal all your source code, documentation, customer infirmation, banking information, etc.
Back to software security alone, I would delineate 3 levels you could consider:

  + **(1) Product Engineering Good Practices**
        
A skilled Product Engineering person will deploy common compilation and packaging techniques to protect your software. This would probably include obfuscation, anti-debug, encryption of data (especially your models), key storage, memory scrambling, etc. This is the strategy used by 99,99% of software vendors. This is a pre-requisite that should not be overlooked.

  + **(2) Anti-tampering software**
        
The use of anti-tampering software to further protect your software. This would include active advanced code/data obfuscation/transformation, integrity protection (self healing), whitebox cryptography (advanced concealment of crypto keys), etc. 

  + **(3) Trusted Computing (also called Confidential Computing)**

This is the most advanced technique to further protect execution of your soft
ware, through a « Secure Enclave ». On x86 servers, you would leverage Intel’s SGX (Software Guard Extension). On ARM, you would leverage TrustZone. These are usually implemented through a Trusted OS or Trusted Execution Environment (TEE). 
Now, this is a very complex approach that is usually only deployed by cryptographic applications. I would not recommend this approach for a non-cryptographic application.



## **How to create a metered plan**
You have two options: 

|Revenue Model  |   Billing Model   |   Metric      |
| --------------|-------------------|:------------: |
|Recurring      | Subscription      | Usage Units   |
|Recurring      | Pay-per-use       | Usage Units   |

**"Subscription"** will limit the number of usage units of your customer per month.
**"Pay-per-use"** will give unlimited access to your application and bill and the end of each months depending on the number of usage units consumed

**Example:**
A video Encoder using the number of frames encoded as usage units for the metered plan:
A Subscription of 1000 units will allow the end-user to encode 1000 frames per month. Above this number of frames, the DRM will lock, preventing any new frame to be generated
A Pay-per-use plan will allow the end-user to encode as many frames as he wants/needs. If the end-user encodes 4000 frames in the month, he'll be billed for 4000 usage units at the end of the month.
    
    
# 5. Docker
## **Unexpected result from xbutil: ERROR: Mixed versions of XRT and xbutil are not supported**
You can fix this by adding the following line in your Dockerfile:
```bash
ENV INTERNAL_BUILD 1
```
