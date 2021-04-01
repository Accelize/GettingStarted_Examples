// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Mar 30 13:16:13 2021
// Host        : ip-172-31-9-235.eu-west-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cl_k4_0_stub.v
// Design      : cl_k4_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flgb2104-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "kernel_drm_controller,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, ap_clk_2, ap_rst_n_2, 
  drm_to_uip0_tready, drm_to_uip0_tvalid, drm_to_uip0_tdata, uip0_to_drm_tready, 
  uip0_to_drm_tvalid, uip0_to_drm_tdata, s_axi_control_awvalid, s_axi_control_awready, 
  s_axi_control_awaddr, s_axi_control_wvalid, s_axi_control_wready, s_axi_control_wdata, 
  s_axi_control_wstrb, s_axi_control_bvalid, s_axi_control_bready, s_axi_control_bresp, 
  s_axi_control_arvalid, s_axi_control_arready, s_axi_control_araddr, 
  s_axi_control_rvalid, s_axi_control_rready, s_axi_control_rdata, s_axi_control_rresp)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ap_clk_2,ap_rst_n_2,drm_to_uip0_tready,drm_to_uip0_tvalid,drm_to_uip0_tdata[31:0],uip0_to_drm_tready,uip0_to_drm_tvalid,uip0_to_drm_tdata[31:0],s_axi_control_awvalid,s_axi_control_awready,s_axi_control_awaddr[15:0],s_axi_control_wvalid,s_axi_control_wready,s_axi_control_wdata[31:0],s_axi_control_wstrb[3:0],s_axi_control_bvalid,s_axi_control_bready,s_axi_control_bresp[1:0],s_axi_control_arvalid,s_axi_control_arready,s_axi_control_araddr[15:0],s_axi_control_rvalid,s_axi_control_rready,s_axi_control_rdata[31:0],s_axi_control_rresp[1:0]" */;
  input ap_clk;
  input ap_rst_n;
  input ap_clk_2;
  input ap_rst_n_2;
  input drm_to_uip0_tready;
  output drm_to_uip0_tvalid;
  output [31:0]drm_to_uip0_tdata;
  output uip0_to_drm_tready;
  input uip0_to_drm_tvalid;
  input [31:0]uip0_to_drm_tdata;
  input s_axi_control_awvalid;
  output s_axi_control_awready;
  input [15:0]s_axi_control_awaddr;
  input s_axi_control_wvalid;
  output s_axi_control_wready;
  input [31:0]s_axi_control_wdata;
  input [3:0]s_axi_control_wstrb;
  output s_axi_control_bvalid;
  input s_axi_control_bready;
  output [1:0]s_axi_control_bresp;
  input s_axi_control_arvalid;
  output s_axi_control_arready;
  input [15:0]s_axi_control_araddr;
  output s_axi_control_rvalid;
  input s_axi_control_rready;
  output [31:0]s_axi_control_rdata;
  output [1:0]s_axi_control_rresp;
endmodule
