# Amazon FPGA Hardware Development Kit
#
# Copyright 2016 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Amazon Software License (the "License"). You may not use
# this file except in compliance with the License. A copy of the License is
# located at
#
#    http://aws.amazon.com/asl/
#
# or in the "license" file accompanying this file. This file is distributed on
# an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, express or
# implied. See the License for the specific language governing permissions and
# limitations under the License.

# TODO:
# Add check if CL_DIR and HDK_SHELL_DIR directories exist
# Add check if /build and /build/src_port_encryption directories exist
# Add check if the vivado_keyfile exist

set HDK_SHELL_DIR $::env(HDK_SHELL_DIR)
set HDK_SHELL_DESIGN_DIR $::env(HDK_SHELL_DESIGN_DIR)
set CL_DIR $::env(CL_DIR)
set TARGET_DIR $CL_DIR/build/src_post_encryption
set UNUSED_TEMPLATES_DIR $HDK_SHELL_DESIGN_DIR/interfaces

# Remove any previously encrypted files, that may no longer be used
if {[llength [glob -nocomplain -dir $TARGET_DIR *]] != 0} {
  eval file delete -force [glob $TARGET_DIR/*]
}

#---- Developr would replace this section with design files ----

## Change file names and paths below to reflect your CL area.  DO NOT include AWS RTL files.
file copy -force $CL_DIR/../common/design/cl_common_defines.vh        $TARGET_DIR
file copy -force $CL_DIR/design/cl_hello_world_defines.vh             $TARGET_DIR
file copy -force $CL_DIR/design/cl_vhdl_wrapper.vhd                   $TARGET_DIR
file copy -force $CL_DIR/design/cl_id_defines.vh                      $TARGET_DIR
file copy -force $CL_DIR/design/cl_hello_world_pkg.sv                 $TARGET_DIR
file copy -force $CL_DIR/design/cl_hello_world.sv                     $TARGET_DIR 

# AXI CROSSBAR
file mkdir $TARGET_DIR/
exec cp -rf $CL_DIR/design/axi_crossbar_1s3m $TARGET_DIR/
# DRM
file copy -force $CL_DIR/design/drm/drm_controller_ip_axi4st.v $TARGET_DIR
file copy -force $CL_DIR/design/drm/drm_controller_ip.vhdl     $TARGET_DIR
# DRM COMPONENTS
file copy -force $CL_DIR/design/common/vhdl/xilinx/drm_all_components.vhdl    $TARGET_DIR
# ACTIVATOR 0
file copy -force $CL_DIR/design/user_ip_1/activator0/rtl/drm_activation_code_package_0x1003000e00030001.v $TARGET_DIR
file copy -force $CL_DIR/design/user_ip_1/activator0/rtl/drm_ip_activator_0x1003000e00030001.v $TARGET_DIR
file copy -force $CL_DIR/design/user_ip_1/activator0/rtl/drm_ip_activator_0x1003000e00030001.vhdl $TARGET_DIR
file copy -force $CL_DIR/design/user_ip_1/activator0/rtl/drm_ip_activator_0x1003000e00030001_axi4st.v $TARGET_DIR
# ACTIVATOR 1
file copy -force $CL_DIR/design/user_ip_2/activator1/rtl/drm_activation_code_package_0x1003000e00040001.v $TARGET_DIR
file copy -force $CL_DIR/design/user_ip_2/activator1/rtl/drm_ip_activator_0x1003000e00040001.v $TARGET_DIR
file copy -force $CL_DIR/design/user_ip_2/activator1/rtl/drm_ip_activator_0x1003000e00040001.vhdl $TARGET_DIR
file copy -force $CL_DIR/design/user_ip_2/activator1/rtl/drm_ip_activator_0x1003000e00040001_axi4st.v $TARGET_DIR
# ILA XBAR AXI4L 
exec cp -rf $CL_DIR/design/ila_xbar_axi4l $TARGET_DIR/
# USER IPS
file copy -force $CL_DIR/design/user_ip_1/user_ip_1.v                 $TARGET_DIR
file copy -force $CL_DIR/design/user_ip_2/user_ip_2.v                 $TARGET_DIR
# TOP LEVEL
file copy -force $CL_DIR/design/cl_toplevel.v                         $TARGET_DIR

file copy -force $UNUSED_TEMPLATES_DIR/unused_apppf_irq_template.inc  $TARGET_DIR
file copy -force $UNUSED_TEMPLATES_DIR/unused_cl_sda_template.inc     $TARGET_DIR
file copy -force $UNUSED_TEMPLATES_DIR/unused_ddr_a_b_d_template.inc  $TARGET_DIR
file copy -force $UNUSED_TEMPLATES_DIR/unused_ddr_c_template.inc      $TARGET_DIR
file copy -force $UNUSED_TEMPLATES_DIR/unused_dma_pcis_template.inc   $TARGET_DIR
file copy -force $UNUSED_TEMPLATES_DIR/unused_pcim_template.inc       $TARGET_DIR
file copy -force $UNUSED_TEMPLATES_DIR/unused_sh_bar1_template.inc    $TARGET_DIR
file copy -force $UNUSED_TEMPLATES_DIR/unused_flr_template.inc        $TARGET_DIR

#---- End of section replaced by Developr ---

# Make sure files have write permissions for the encryption
exec chmod +w {*}[glob $TARGET_DIR/*]

# encrypt .v/.sv/.vh/inc as verilog files
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_keyfile.txt -lang verilog $TARGET_DIR/cl_common_defines.vh       
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_keyfile.txt -lang verilog $TARGET_DIR/cl_hello_world_defines.vh            
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_keyfile.txt -lang verilog $TARGET_DIR/cl_vhdl_wrapper.vhd                  
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_keyfile.txt -lang verilog $TARGET_DIR/cl_id_defines.vh                     
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_keyfile.txt -lang verilog $TARGET_DIR/cl_hello_world_pkg.sv  
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_keyfile.txt -lang verilog $TARGET_DIR/cl_hello_world.sv 
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_keyfile.txt -lang verilog $TARGET_DIR/drm_activation_code_package_0x1003000e00030001.v 
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_keyfile.txt -lang verilog $TARGET_DIR/drm_ip_activator_0x1003000e00030001.v
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_keyfile.txt -lang verilog $TARGET_DIR/drm_ip_activator_0x1003000e00030001_axi4st.v
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_keyfile.txt -lang verilog $TARGET_DIR/drm_activation_code_package_0x1003000e00040001.v 
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_keyfile.txt -lang verilog $TARGET_DIR/drm_ip_activator_0x1003000e00040001.v
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_keyfile.txt -lang verilog $TARGET_DIR/drm_ip_activator_0x1003000e00040001_axi4st.v
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_keyfile.txt -lang verilog $TARGET_DIR/drm_controller_ip_axi4st.v
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_keyfile.txt -lang verilog $TARGET_DIR/user_ip_1.v 
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_keyfile.txt -lang verilog $TARGET_DIR/user_ip_2.v 
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_keyfile.txt -lang verilog $TARGET_DIR/cl_toplevel.v

# encrypt *vhdl files
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_vhdl_keyfile.txt -lang vhdl -quiet $TARGET_DIR/drm_controller_ip.vhdl
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_vhdl_keyfile.txt -lang vhdl -quiet $TARGET_DIR/drm_ip_activator_0x1003000e00030001.vhdl
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_vhdl_keyfile.txt -lang vhdl -quiet $TARGET_DIR/drm_ip_activator_0x1003000e00040001.vhdl

