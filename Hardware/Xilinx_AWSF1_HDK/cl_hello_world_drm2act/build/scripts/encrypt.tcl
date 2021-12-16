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
file copy -force $CL_DIR/design/cl_hello_world_defines.vh             $TARGET_DIR
file copy -force $CL_DIR/design/cl_id_defines.vh                      $TARGET_DIR
file copy -force $CL_DIR/design/cl_hello_world.sv                     $TARGET_DIR 
file copy -force $CL_DIR/../common/design/cl_common_defines.vh        $TARGET_DIR 
file copy -force $UNUSED_TEMPLATES_DIR/unused_apppf_irq_template.inc  $TARGET_DIR
file copy -force $UNUSED_TEMPLATES_DIR/unused_cl_sda_template.inc     $TARGET_DIR
file copy -force $UNUSED_TEMPLATES_DIR/unused_ddr_a_b_d_template.inc  $TARGET_DIR
file copy -force $UNUSED_TEMPLATES_DIR/unused_ddr_c_template.inc      $TARGET_DIR
file copy -force $UNUSED_TEMPLATES_DIR/unused_dma_pcis_template.inc   $TARGET_DIR
file copy -force $UNUSED_TEMPLATES_DIR/unused_pcim_template.inc       $TARGET_DIR
file copy -force $UNUSED_TEMPLATES_DIR/unused_sh_bar1_template.inc    $TARGET_DIR
file copy -force $UNUSED_TEMPLATES_DIR/unused_flr_template.inc        $TARGET_DIR

# AXI CROSSBAR
file mkdir $TARGET_DIR/
exec cp -rf $CL_DIR/design/axi_crossbar_1s3m $TARGET_DIR/
# DRM Controller
file copy -force $CL_DIR/design/drm_hdk/common/vhdl/xilinx/drm_all_components.vhdl  $TARGET_DIR
file copy -force $CL_DIR/design/drm_hdk/controller/rtl/core/drm_ip_controller.vhdl  $TARGET_DIR
file copy -force $CL_DIR/design/drm_hdk/controller/rtl/core/cdc_bridge.sv  $TARGET_DIR
file copy -force $CL_DIR/design/drm_hdk/controller/rtl/syn/top_drm_controller.sv  $TARGET_DIR
# ACTIVATOR0
file copy -force $CL_DIR/design/drm_hdk/activator0/core/drm_ip_activator_package_0x1003000e00030001.vhdl $TARGET_DIR
file copy -force $CL_DIR/design/drm_hdk/activator0/core/drm_ip_activator_0x1003000e00030001.vhdl $TARGET_DIR
file copy -force $CL_DIR/design/drm_hdk/activator0/syn/top_drm_activator_0x1003000e00030001.sv $TARGET_DIR
# ACTIVATOR1
file copy -force $CL_DIR/design/drm_hdk/activator1/core/drm_ip_activator_package_0x1003000e00040001.vhdl $TARGET_DIR
file copy -force $CL_DIR/design/drm_hdk/activator1/core/drm_ip_activator_0x1003000e00040001.vhdl $TARGET_DIR
file copy -force $CL_DIR/design/drm_hdk/activator1/syn/top_drm_activator_0x1003000e00040001.sv $TARGET_DIR
# USER IPS
file copy -force $CL_DIR/design/user_ip_1.v                             $TARGET_DIR
file copy -force $CL_DIR/design/user_ip_2.v                             $TARGET_DIR
# TOP LEVEL
file copy -force $CL_DIR/design/cl_toplevel.v                         $TARGET_DIR

#---- End of section replaced by Developr ---

# Make sure files have write permissions for the encryption
exec chmod +w {*}[glob $TARGET_DIR/*]

set TOOL_VERSION $::env(VIVADO_TOOL_VERSION)
set vivado_version [string range [version -short] 0 5]
puts "AWS FPGA: VIVADO_TOOL_VERSION $TOOL_VERSION"
puts "vivado_version $vivado_version"

# encrypt .v/.sv/.vh/inc as verilog files
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_keyfile_2017_4.txt -lang verilog  [glob -nocomplain -- $TARGET_DIR/*.{v,sv}] [glob -nocomplain -- $TARGET_DIR/*.vh] [glob -nocomplain -- $TARGET_DIR/*.inc]
# encrypt *vhdl files
encrypt -k $HDK_SHELL_DIR/build/scripts/vivado_vhdl_keyfile_2017_4.txt -lang vhdl -quiet [ glob -nocomplain -- $TARGET_DIR/*.vhd? ]
