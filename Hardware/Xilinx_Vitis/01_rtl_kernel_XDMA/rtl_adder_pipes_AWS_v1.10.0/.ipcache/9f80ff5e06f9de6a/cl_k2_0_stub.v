// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Mar 30 13:14:40 2021
// Host        : ip-172-31-9-235.eu-west-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cl_k2_0_stub.v
// Design      : cl_k2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flgb2104-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "krnl_adder_stage_rtl,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_clk_2, ap_rst_n, ap_rst_n_2, p0_TDATA, 
  p0_TVALID, p0_TREADY, p1_TDATA, p1_TVALID, p1_TREADY, s_axi_control_AWVALID, 
  s_axi_control_AWREADY, s_axi_control_AWADDR, s_axi_control_WVALID, 
  s_axi_control_WREADY, s_axi_control_WDATA, s_axi_control_WSTRB, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_ARADDR, s_axi_control_RVALID, 
  s_axi_control_RREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_BRESP, drm_to_uip_tdata, drm_to_uip_tvalid, 
  drm_to_uip_tready, uip_to_drm_tready, uip_to_drm_tdata, uip_to_drm_tvalid)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_clk_2,ap_rst_n,ap_rst_n_2,p0_TDATA[31:0],p0_TVALID,p0_TREADY,p1_TDATA[31:0],p1_TVALID,p1_TREADY,s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_AWADDR[5:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_ARADDR[5:0],s_axi_control_RVALID,s_axi_control_RREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_BRESP[1:0],drm_to_uip_tdata[31:0],drm_to_uip_tvalid,drm_to_uip_tready,uip_to_drm_tready,uip_to_drm_tdata[31:0],uip_to_drm_tvalid" */;
  input ap_clk;
  input ap_clk_2;
  input ap_rst_n;
  input ap_rst_n_2;
  input [31:0]p0_TDATA;
  input p0_TVALID;
  output p0_TREADY;
  output [31:0]p1_TDATA;
  output p1_TVALID;
  input p1_TREADY;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [5:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  input [31:0]drm_to_uip_tdata;
  input drm_to_uip_tvalid;
  output drm_to_uip_tready;
  input uip_to_drm_tready;
  output [31:0]uip_to_drm_tdata;
  output uip_to_drm_tvalid;
endmodule
