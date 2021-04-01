// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Mar 30 13:23:20 2021
// Host        : ip-172-31-9-235.eu-west-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cl_HIP_0_stub.v
// Design      : cl_HIP_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flgb2104-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_3329,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aclk1, aresetn, S00_AXI_awaddr, 
  S00_AXI_awlen, S00_AXI_awprot, S00_AXI_awregion, S00_AXI_awvalid, S00_AXI_awready, 
  S00_AXI_wdata, S00_AXI_wstrb, S00_AXI_wlast, S00_AXI_wvalid, S00_AXI_wready, S00_AXI_bresp, 
  S00_AXI_bvalid, S00_AXI_bready, S00_AXI_araddr, S00_AXI_arlen, S00_AXI_arprot, 
  S00_AXI_arregion, S00_AXI_arvalid, S00_AXI_arready, S00_AXI_rdata, S00_AXI_rresp, 
  S00_AXI_rlast, S00_AXI_rvalid, S00_AXI_rready, S01_AXI_awaddr, S01_AXI_awlen, 
  S01_AXI_awsize, S01_AXI_awburst, S01_AXI_awlock, S01_AXI_awcache, S01_AXI_awprot, 
  S01_AXI_awregion, S01_AXI_awqos, S01_AXI_awvalid, S01_AXI_awready, S01_AXI_wdata, 
  S01_AXI_wstrb, S01_AXI_wlast, S01_AXI_wvalid, S01_AXI_wready, S01_AXI_bresp, 
  S01_AXI_bvalid, S01_AXI_bready, S01_AXI_araddr, S01_AXI_arlen, S01_AXI_arsize, 
  S01_AXI_arburst, S01_AXI_arlock, S01_AXI_arcache, S01_AXI_arprot, S01_AXI_arregion, 
  S01_AXI_arqos, S01_AXI_arvalid, S01_AXI_arready, S01_AXI_rdata, S01_AXI_rresp, 
  S01_AXI_rlast, S01_AXI_rvalid, S01_AXI_rready, S02_AXI_awaddr, S02_AXI_awlen, 
  S02_AXI_awsize, S02_AXI_awburst, S02_AXI_awlock, S02_AXI_awcache, S02_AXI_awprot, 
  S02_AXI_awregion, S02_AXI_awqos, S02_AXI_awvalid, S02_AXI_awready, S02_AXI_wdata, 
  S02_AXI_wstrb, S02_AXI_wlast, S02_AXI_wvalid, S02_AXI_wready, S02_AXI_bresp, 
  S02_AXI_bvalid, S02_AXI_bready, S02_AXI_araddr, S02_AXI_arlen, S02_AXI_arsize, 
  S02_AXI_arburst, S02_AXI_arlock, S02_AXI_arcache, S02_AXI_arprot, S02_AXI_arregion, 
  S02_AXI_arqos, S02_AXI_arvalid, S02_AXI_arready, S02_AXI_rdata, S02_AXI_rresp, 
  S02_AXI_rlast, S02_AXI_rvalid, S02_AXI_rready, s_sh_rst_main_n, s_sh_clk_main_a0, 
  s_sh_clk_300m_dimm0_dp, s_sh_clk_300m_dimm0_dn, s_sh_clk_300m_dimm1_dp, 
  s_sh_clk_300m_dimm1_dn, s_sh_clk_300m_dimm3_dp, s_sh_clk_300m_dimm3_dn, 
  s_sh_sh_ddr_stat_wr0, s_sh_sh_ddr_stat_rd0, s_sh_sh_ddr_stat_wr1, s_sh_sh_ddr_stat_rd1, 
  s_sh_sh_ddr_stat_wr2, s_sh_sh_ddr_stat_rd2, s_sh_sh_cl_ddr_awready, 
  s_sh_sh_cl_ddr_wready, s_sh_sh_cl_ddr_bvalid, s_sh_sh_cl_ddr_arready, 
  s_sh_sh_cl_ddr_rlast, s_sh_sh_cl_ddr_rvalid, s_sh_sh_cl_ddr_is_ready, 
  s_sh_sh_ddr_stat_addr0, s_sh_sh_ddr_stat_wdata0, s_sh_sh_ddr_stat_addr1, 
  s_sh_sh_ddr_stat_wdata1, s_sh_sh_ddr_stat_addr2, s_sh_sh_ddr_stat_wdata2, 
  s_sh_sh_cl_ddr_bid, s_sh_sh_cl_ddr_bresp, s_sh_sh_cl_ddr_rid, s_sh_sh_cl_ddr_rdata, 
  s_sh_sh_cl_ddr_rresp, s_sh_ddr_sh_stat_ack0, s_sh_ddr_sh_stat_ack1, 
  s_sh_ddr_sh_stat_ack2, s_sh_m_a_act_n, s_sh_m_a_cke, s_sh_m_a_odt, s_sh_m_a_cs_n, 
  s_sh_m_a_clk_dn, s_sh_m_a_clk_dp, s_sh_m_a_par, s_sh_cl_rst_dimm_a_n, s_sh_m_b_act_n, 
  s_sh_m_b_cke, s_sh_m_b_odt, s_sh_m_b_cs_n, s_sh_m_b_clk_dn, s_sh_m_b_clk_dp, s_sh_m_b_par, 
  s_sh_cl_rst_dimm_b_n, s_sh_m_d_act_n, s_sh_m_d_cke, s_sh_m_d_odt, s_sh_m_d_cs_n, 
  s_sh_m_d_clk_dn, s_sh_m_d_clk_dp, s_sh_m_d_par, s_sh_cl_rst_dimm_d_n, 
  s_sh_cl_sh_ddr_awvalid, s_sh_cl_sh_ddr_wlast, s_sh_cl_sh_ddr_wvalid, 
  s_sh_cl_sh_ddr_bready, s_sh_cl_sh_ddr_arvalid, s_sh_cl_sh_ddr_rready, s_sh_m_a_ma, 
  s_sh_m_a_ba, s_sh_m_a_bg, s_sh_m_b_ma, s_sh_m_b_ba, s_sh_m_b_bg, s_sh_m_d_ma, s_sh_m_d_ba, 
  s_sh_m_d_bg, s_sh_ddr_sh_stat_rdata0, s_sh_ddr_sh_stat_int0, s_sh_ddr_sh_stat_rdata1, 
  s_sh_ddr_sh_stat_int1, s_sh_ddr_sh_stat_rdata2, s_sh_ddr_sh_stat_int2, 
  s_sh_cl_sh_ddr_awid, s_sh_cl_sh_ddr_awaddr, s_sh_cl_sh_ddr_awlen, 
  s_sh_cl_sh_ddr_awsize, s_sh_cl_sh_ddr_awburst, s_sh_cl_sh_ddr_wid, 
  s_sh_cl_sh_ddr_wdata, s_sh_cl_sh_ddr_wstrb, s_sh_cl_sh_ddr_arid, s_sh_cl_sh_ddr_araddr, 
  s_sh_cl_sh_ddr_arlen, s_sh_cl_sh_ddr_arsize, s_sh_cl_sh_ddr_arburst, s_sh_m_a_dq, 
  s_sh_m_a_ecc, s_sh_m_a_dqs_dp, s_sh_m_a_dqs_dn, s_sh_m_b_dq, s_sh_m_b_ecc, s_sh_m_b_dqs_dp, 
  s_sh_m_b_dqs_dn, s_sh_m_d_dq, s_sh_m_d_ecc, s_sh_m_d_dqs_dp, s_sh_m_d_dqs_dn, 
  ddr4_mem_calib_complete, S00_AXI_arid, S00_AXI_awid, S00_AXI_bid, S00_AXI_rid, 
  S01_AXI_arid, S01_AXI_awid, S01_AXI_bid, S01_AXI_rid, S02_AXI_arid, S02_AXI_awid, 
  S02_AXI_bid, S02_AXI_rid)
/* synthesis syn_black_box black_box_pad_pin="aclk,aclk1,aresetn,S00_AXI_awaddr[36:0],S00_AXI_awlen[7:0],S00_AXI_awprot[2:0],S00_AXI_awregion[3:0],S00_AXI_awvalid,S00_AXI_awready,S00_AXI_wdata[511:0],S00_AXI_wstrb[63:0],S00_AXI_wlast,S00_AXI_wvalid,S00_AXI_wready,S00_AXI_bresp[1:0],S00_AXI_bvalid,S00_AXI_bready,S00_AXI_araddr[36:0],S00_AXI_arlen[7:0],S00_AXI_arprot[2:0],S00_AXI_arregion[3:0],S00_AXI_arvalid,S00_AXI_arready,S00_AXI_rdata[511:0],S00_AXI_rresp[1:0],S00_AXI_rlast,S00_AXI_rvalid,S00_AXI_rready,S01_AXI_awaddr[35:0],S01_AXI_awlen[7:0],S01_AXI_awsize[2:0],S01_AXI_awburst[1:0],S01_AXI_awlock[0:0],S01_AXI_awcache[3:0],S01_AXI_awprot[2:0],S01_AXI_awregion[3:0],S01_AXI_awqos[3:0],S01_AXI_awvalid,S01_AXI_awready,S01_AXI_wdata[31:0],S01_AXI_wstrb[3:0],S01_AXI_wlast,S01_AXI_wvalid,S01_AXI_wready,S01_AXI_bresp[1:0],S01_AXI_bvalid,S01_AXI_bready,S01_AXI_araddr[35:0],S01_AXI_arlen[7:0],S01_AXI_arsize[2:0],S01_AXI_arburst[1:0],S01_AXI_arlock[0:0],S01_AXI_arcache[3:0],S01_AXI_arprot[2:0],S01_AXI_arregion[3:0],S01_AXI_arqos[3:0],S01_AXI_arvalid,S01_AXI_arready,S01_AXI_rdata[31:0],S01_AXI_rresp[1:0],S01_AXI_rlast,S01_AXI_rvalid,S01_AXI_rready,S02_AXI_awaddr[35:0],S02_AXI_awlen[7:0],S02_AXI_awsize[2:0],S02_AXI_awburst[1:0],S02_AXI_awlock[0:0],S02_AXI_awcache[3:0],S02_AXI_awprot[2:0],S02_AXI_awregion[3:0],S02_AXI_awqos[3:0],S02_AXI_awvalid,S02_AXI_awready,S02_AXI_wdata[31:0],S02_AXI_wstrb[3:0],S02_AXI_wlast,S02_AXI_wvalid,S02_AXI_wready,S02_AXI_bresp[1:0],S02_AXI_bvalid,S02_AXI_bready,S02_AXI_araddr[35:0],S02_AXI_arlen[7:0],S02_AXI_arsize[2:0],S02_AXI_arburst[1:0],S02_AXI_arlock[0:0],S02_AXI_arcache[3:0],S02_AXI_arprot[2:0],S02_AXI_arregion[3:0],S02_AXI_arqos[3:0],S02_AXI_arvalid,S02_AXI_arready,S02_AXI_rdata[31:0],S02_AXI_rresp[1:0],S02_AXI_rlast,S02_AXI_rvalid,S02_AXI_rready,s_sh_rst_main_n,s_sh_clk_main_a0,s_sh_clk_300m_dimm0_dp,s_sh_clk_300m_dimm0_dn,s_sh_clk_300m_dimm1_dp,s_sh_clk_300m_dimm1_dn,s_sh_clk_300m_dimm3_dp,s_sh_clk_300m_dimm3_dn,s_sh_sh_ddr_stat_wr0,s_sh_sh_ddr_stat_rd0,s_sh_sh_ddr_stat_wr1,s_sh_sh_ddr_stat_rd1,s_sh_sh_ddr_stat_wr2,s_sh_sh_ddr_stat_rd2,s_sh_sh_cl_ddr_awready,s_sh_sh_cl_ddr_wready,s_sh_sh_cl_ddr_bvalid,s_sh_sh_cl_ddr_arready,s_sh_sh_cl_ddr_rlast,s_sh_sh_cl_ddr_rvalid,s_sh_sh_cl_ddr_is_ready,s_sh_sh_ddr_stat_addr0[7:0],s_sh_sh_ddr_stat_wdata0[31:0],s_sh_sh_ddr_stat_addr1[7:0],s_sh_sh_ddr_stat_wdata1[31:0],s_sh_sh_ddr_stat_addr2[7:0],s_sh_sh_ddr_stat_wdata2[31:0],s_sh_sh_cl_ddr_bid[15:0],s_sh_sh_cl_ddr_bresp[1:0],s_sh_sh_cl_ddr_rid[15:0],s_sh_sh_cl_ddr_rdata[511:0],s_sh_sh_cl_ddr_rresp[1:0],s_sh_ddr_sh_stat_ack0,s_sh_ddr_sh_stat_ack1,s_sh_ddr_sh_stat_ack2,s_sh_m_a_act_n,s_sh_m_a_cke[0:0],s_sh_m_a_odt[0:0],s_sh_m_a_cs_n[0:0],s_sh_m_a_clk_dn[0:0],s_sh_m_a_clk_dp[0:0],s_sh_m_a_par,s_sh_cl_rst_dimm_a_n,s_sh_m_b_act_n,s_sh_m_b_cke[0:0],s_sh_m_b_odt[0:0],s_sh_m_b_cs_n[0:0],s_sh_m_b_clk_dn[0:0],s_sh_m_b_clk_dp[0:0],s_sh_m_b_par,s_sh_cl_rst_dimm_b_n,s_sh_m_d_act_n,s_sh_m_d_cke[0:0],s_sh_m_d_odt[0:0],s_sh_m_d_cs_n[0:0],s_sh_m_d_clk_dn[0:0],s_sh_m_d_clk_dp[0:0],s_sh_m_d_par,s_sh_cl_rst_dimm_d_n,s_sh_cl_sh_ddr_awvalid,s_sh_cl_sh_ddr_wlast,s_sh_cl_sh_ddr_wvalid,s_sh_cl_sh_ddr_bready,s_sh_cl_sh_ddr_arvalid,s_sh_cl_sh_ddr_rready,s_sh_m_a_ma[16:0],s_sh_m_a_ba[1:0],s_sh_m_a_bg[1:0],s_sh_m_b_ma[16:0],s_sh_m_b_ba[1:0],s_sh_m_b_bg[1:0],s_sh_m_d_ma[16:0],s_sh_m_d_ba[1:0],s_sh_m_d_bg[1:0],s_sh_ddr_sh_stat_rdata0[31:0],s_sh_ddr_sh_stat_int0[7:0],s_sh_ddr_sh_stat_rdata1[31:0],s_sh_ddr_sh_stat_int1[7:0],s_sh_ddr_sh_stat_rdata2[31:0],s_sh_ddr_sh_stat_int2[7:0],s_sh_cl_sh_ddr_awid[15:0],s_sh_cl_sh_ddr_awaddr[63:0],s_sh_cl_sh_ddr_awlen[7:0],s_sh_cl_sh_ddr_awsize[2:0],s_sh_cl_sh_ddr_awburst[1:0],s_sh_cl_sh_ddr_wid[15:0],s_sh_cl_sh_ddr_wdata[511:0],s_sh_cl_sh_ddr_wstrb[63:0],s_sh_cl_sh_ddr_arid[15:0],s_sh_cl_sh_ddr_araddr[63:0],s_sh_cl_sh_ddr_arlen[7:0],s_sh_cl_sh_ddr_arsize[2:0],s_sh_cl_sh_ddr_arburst[1:0],s_sh_m_a_dq[63:0],s_sh_m_a_ecc[7:0],s_sh_m_a_dqs_dp[17:0],s_sh_m_a_dqs_dn[17:0],s_sh_m_b_dq[63:0],s_sh_m_b_ecc[7:0],s_sh_m_b_dqs_dp[17:0],s_sh_m_b_dqs_dn[17:0],s_sh_m_d_dq[63:0],s_sh_m_d_ecc[7:0],s_sh_m_d_dqs_dp[17:0],s_sh_m_d_dqs_dn[17:0],ddr4_mem_calib_complete,S00_AXI_arid[5:0],S00_AXI_awid[5:0],S00_AXI_bid[5:0],S00_AXI_rid[5:0],S01_AXI_arid[0:0],S01_AXI_awid[0:0],S01_AXI_bid[0:0],S01_AXI_rid[0:0],S02_AXI_arid[0:0],S02_AXI_awid[0:0],S02_AXI_bid[0:0],S02_AXI_rid[0:0]" */;
  input aclk;
  input aclk1;
  input aresetn;
  input [36:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awregion;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [36:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arregion;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  input [35:0]S01_AXI_awaddr;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awsize;
  input [1:0]S01_AXI_awburst;
  input [0:0]S01_AXI_awlock;
  input [3:0]S01_AXI_awcache;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awregion;
  input [3:0]S01_AXI_awqos;
  input S01_AXI_awvalid;
  output S01_AXI_awready;
  input [31:0]S01_AXI_wdata;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wlast;
  input S01_AXI_wvalid;
  output S01_AXI_wready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input S01_AXI_bready;
  input [35:0]S01_AXI_araddr;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arsize;
  input [1:0]S01_AXI_arburst;
  input [0:0]S01_AXI_arlock;
  input [3:0]S01_AXI_arcache;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arregion;
  input [3:0]S01_AXI_arqos;
  input S01_AXI_arvalid;
  output S01_AXI_arready;
  output [31:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rlast;
  output S01_AXI_rvalid;
  input S01_AXI_rready;
  input [35:0]S02_AXI_awaddr;
  input [7:0]S02_AXI_awlen;
  input [2:0]S02_AXI_awsize;
  input [1:0]S02_AXI_awburst;
  input [0:0]S02_AXI_awlock;
  input [3:0]S02_AXI_awcache;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awregion;
  input [3:0]S02_AXI_awqos;
  input S02_AXI_awvalid;
  output S02_AXI_awready;
  input [31:0]S02_AXI_wdata;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wlast;
  input S02_AXI_wvalid;
  output S02_AXI_wready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  input S02_AXI_bready;
  input [35:0]S02_AXI_araddr;
  input [7:0]S02_AXI_arlen;
  input [2:0]S02_AXI_arsize;
  input [1:0]S02_AXI_arburst;
  input [0:0]S02_AXI_arlock;
  input [3:0]S02_AXI_arcache;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arregion;
  input [3:0]S02_AXI_arqos;
  input S02_AXI_arvalid;
  output S02_AXI_arready;
  output [31:0]S02_AXI_rdata;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rlast;
  output S02_AXI_rvalid;
  input S02_AXI_rready;
  input s_sh_rst_main_n;
  input s_sh_clk_main_a0;
  input s_sh_clk_300m_dimm0_dp;
  input s_sh_clk_300m_dimm0_dn;
  input s_sh_clk_300m_dimm1_dp;
  input s_sh_clk_300m_dimm1_dn;
  input s_sh_clk_300m_dimm3_dp;
  input s_sh_clk_300m_dimm3_dn;
  input s_sh_sh_ddr_stat_wr0;
  input s_sh_sh_ddr_stat_rd0;
  input s_sh_sh_ddr_stat_wr1;
  input s_sh_sh_ddr_stat_rd1;
  input s_sh_sh_ddr_stat_wr2;
  input s_sh_sh_ddr_stat_rd2;
  input s_sh_sh_cl_ddr_awready;
  input s_sh_sh_cl_ddr_wready;
  input s_sh_sh_cl_ddr_bvalid;
  input s_sh_sh_cl_ddr_arready;
  input s_sh_sh_cl_ddr_rlast;
  input s_sh_sh_cl_ddr_rvalid;
  input s_sh_sh_cl_ddr_is_ready;
  input [7:0]s_sh_sh_ddr_stat_addr0;
  input [31:0]s_sh_sh_ddr_stat_wdata0;
  input [7:0]s_sh_sh_ddr_stat_addr1;
  input [31:0]s_sh_sh_ddr_stat_wdata1;
  input [7:0]s_sh_sh_ddr_stat_addr2;
  input [31:0]s_sh_sh_ddr_stat_wdata2;
  input [15:0]s_sh_sh_cl_ddr_bid;
  input [1:0]s_sh_sh_cl_ddr_bresp;
  input [15:0]s_sh_sh_cl_ddr_rid;
  input [511:0]s_sh_sh_cl_ddr_rdata;
  input [1:0]s_sh_sh_cl_ddr_rresp;
  output s_sh_ddr_sh_stat_ack0;
  output s_sh_ddr_sh_stat_ack1;
  output s_sh_ddr_sh_stat_ack2;
  output s_sh_m_a_act_n;
  output [0:0]s_sh_m_a_cke;
  output [0:0]s_sh_m_a_odt;
  output [0:0]s_sh_m_a_cs_n;
  output [0:0]s_sh_m_a_clk_dn;
  output [0:0]s_sh_m_a_clk_dp;
  output s_sh_m_a_par;
  output s_sh_cl_rst_dimm_a_n;
  output s_sh_m_b_act_n;
  output [0:0]s_sh_m_b_cke;
  output [0:0]s_sh_m_b_odt;
  output [0:0]s_sh_m_b_cs_n;
  output [0:0]s_sh_m_b_clk_dn;
  output [0:0]s_sh_m_b_clk_dp;
  output s_sh_m_b_par;
  output s_sh_cl_rst_dimm_b_n;
  output s_sh_m_d_act_n;
  output [0:0]s_sh_m_d_cke;
  output [0:0]s_sh_m_d_odt;
  output [0:0]s_sh_m_d_cs_n;
  output [0:0]s_sh_m_d_clk_dn;
  output [0:0]s_sh_m_d_clk_dp;
  output s_sh_m_d_par;
  output s_sh_cl_rst_dimm_d_n;
  output s_sh_cl_sh_ddr_awvalid;
  output s_sh_cl_sh_ddr_wlast;
  output s_sh_cl_sh_ddr_wvalid;
  output s_sh_cl_sh_ddr_bready;
  output s_sh_cl_sh_ddr_arvalid;
  output s_sh_cl_sh_ddr_rready;
  output [16:0]s_sh_m_a_ma;
  output [1:0]s_sh_m_a_ba;
  output [1:0]s_sh_m_a_bg;
  output [16:0]s_sh_m_b_ma;
  output [1:0]s_sh_m_b_ba;
  output [1:0]s_sh_m_b_bg;
  output [16:0]s_sh_m_d_ma;
  output [1:0]s_sh_m_d_ba;
  output [1:0]s_sh_m_d_bg;
  output [31:0]s_sh_ddr_sh_stat_rdata0;
  output [7:0]s_sh_ddr_sh_stat_int0;
  output [31:0]s_sh_ddr_sh_stat_rdata1;
  output [7:0]s_sh_ddr_sh_stat_int1;
  output [31:0]s_sh_ddr_sh_stat_rdata2;
  output [7:0]s_sh_ddr_sh_stat_int2;
  output [15:0]s_sh_cl_sh_ddr_awid;
  output [63:0]s_sh_cl_sh_ddr_awaddr;
  output [7:0]s_sh_cl_sh_ddr_awlen;
  output [2:0]s_sh_cl_sh_ddr_awsize;
  output [1:0]s_sh_cl_sh_ddr_awburst;
  output [15:0]s_sh_cl_sh_ddr_wid;
  output [511:0]s_sh_cl_sh_ddr_wdata;
  output [63:0]s_sh_cl_sh_ddr_wstrb;
  output [15:0]s_sh_cl_sh_ddr_arid;
  output [63:0]s_sh_cl_sh_ddr_araddr;
  output [7:0]s_sh_cl_sh_ddr_arlen;
  output [2:0]s_sh_cl_sh_ddr_arsize;
  output [1:0]s_sh_cl_sh_ddr_arburst;
  inout [63:0]s_sh_m_a_dq;
  inout [7:0]s_sh_m_a_ecc;
  inout [17:0]s_sh_m_a_dqs_dp;
  inout [17:0]s_sh_m_a_dqs_dn;
  inout [63:0]s_sh_m_b_dq;
  inout [7:0]s_sh_m_b_ecc;
  inout [17:0]s_sh_m_b_dqs_dp;
  inout [17:0]s_sh_m_b_dqs_dn;
  inout [63:0]s_sh_m_d_dq;
  inout [7:0]s_sh_m_d_ecc;
  inout [17:0]s_sh_m_d_dqs_dp;
  inout [17:0]s_sh_m_d_dqs_dn;
  output ddr4_mem_calib_complete;
  input [5:0]S00_AXI_arid;
  input [5:0]S00_AXI_awid;
  output [5:0]S00_AXI_bid;
  output [5:0]S00_AXI_rid;
  input [0:0]S01_AXI_arid;
  input [0:0]S01_AXI_awid;
  output [0:0]S01_AXI_bid;
  output [0:0]S01_AXI_rid;
  input [0:0]S02_AXI_arid;
  input [0:0]S02_AXI_awid;
  output [0:0]S02_AXI_bid;
  output [0:0]S02_AXI_rid;
endmodule
