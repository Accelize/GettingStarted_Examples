# /*******************************************************************************
# Copyright (c) 2018, Xilinx, Inc.
# All rights reserved.
# Redistribution and use in source and binary forms, with or without modification,
# are permitted provided that the following conditions are met:
# 1. Redistributions of source code must retain the above copyright notice,
# this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright notice,
# this list of conditions and the following disclaimer in the documentation
# and/or other materials provided with the distribution.
# 3. Neither the name of the copyright holder nor the names of its contributors
# may be used to endorse or promote products derived from this software
# without specific prior written permission.
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,THE IMPLIED 
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
# IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, 
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, 
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY 
# OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING 
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
# EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# *******************************************************************************/

set path_to_hdl "./src/drm_hdk/controller/rtl"
set path_to_drm_components "./src/drm_hdk/common/vhdl/xilinx"
set path_to_packaged "./packaged_kernel/controller_${suffix}"
set path_to_tmp_project "./tmp_kernel_pack_1_${suffix}"
set path_to_activator0 "./src/drm_hdk/activator0"

create_project -force kernel_pack $path_to_tmp_project 

read_vhdl [ glob $path_to_drm_components/*.vhdl ] -library drm_library
read_verilog [ glob $path_to_hdl/core/*.sv ] -library drm_library
read_vhdl [ glob $path_to_hdl/core/*.vhdl ] -library drm_library
read_verilog [glob $path_to_hdl/syn/*.sv]
read_vhdl [ glob $path_to_activator0/core/*.vhdl ] -library drm_library
read_vhdl [ glob $path_to_activator0/syn/*.vhdl ] -library drm_library
read_verilog [ glob $path_to_activator0/syn/*.sv ]
read_verilog src/drm_controller_with_activator.v
set_property top drm_controller_with_activator [current_fileset]

update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
ipx::package_project -root_dir $path_to_packaged -vendor accelize.com -library hdk -taxonomy /KernelIP -import_files -set_current false
ipx::unload_core $path_to_packaged/component.xml
ipx::edit_ip_in_project -upgrade true -name tmp_edit_project -directory $path_to_packaged $path_to_packaged/component.xml
set_property core_revision 2 [ipx::current_core]
foreach up [ipx::get_user_parameters] {
  ipx::remove_user_parameter [get_property NAME $up] [ipx::current_core]
}
set_property sdx_kernel true [ipx::current_core]
set_property sdx_kernel_type rtl [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::infer_bus_interface ap_clk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
ipx::infer_bus_interface ap_rst_n xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
ipx::infer_bus_interface ap_clk_2 xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
ipx::infer_bus_interface ap_rst_n_2 xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
ipx::associate_bus_interfaces -busif s_axi_control -clock ap_clk [ipx::current_core]
ipx::associate_bus_interfaces -busif activation_code0_uip0 -clock ap_clk [ipx::current_core]
ipx::associate_bus_interfaces -busif activation_code1_uip0 -clock ap_clk [ipx::current_core]
ipx::associate_bus_interfaces -busif activation_code2_uip0 -clock ap_clk [ipx::current_core]
ipx::associate_bus_interfaces -busif activation_code3_uip0 -clock ap_clk [ipx::current_core]
ipx::associate_bus_interfaces -busif metering_event_uip0 -clock ap_clk [ipx::current_core]

set_property xpm_libraries {XPM_CDC XPM_MEMORY XPM_FIFO} [ipx::current_core]
set_property supported_families { } [ipx::current_core]
set_property auto_family_support_level level_2 [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::save_core [ipx::current_core]
close_project -delete
