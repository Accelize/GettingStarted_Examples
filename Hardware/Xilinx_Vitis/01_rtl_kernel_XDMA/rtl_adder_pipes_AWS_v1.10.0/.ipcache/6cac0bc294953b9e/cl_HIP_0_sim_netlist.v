// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Mar 30 13:23:21 2021
// Host        : ip-172-31-9-235.eu-west-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cl_HIP_0_sim_netlist.v
// Design      : cl_HIP_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flgb2104-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "cl_HIP_0.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329
   (S00_AXI_araddr,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arregion,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awregion,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arid,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arregion,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awid,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awregion,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rid,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    aclk,
    aclk1,
    aresetn,
    ddr4_mem_calib_complete,
    s_sh_cl_rst_dimm_a_n,
    s_sh_cl_rst_dimm_b_n,
    s_sh_cl_rst_dimm_d_n,
    s_sh_cl_sh_ddr_araddr,
    s_sh_cl_sh_ddr_arburst,
    s_sh_cl_sh_ddr_arid,
    s_sh_cl_sh_ddr_arlen,
    s_sh_cl_sh_ddr_arsize,
    s_sh_cl_sh_ddr_arvalid,
    s_sh_cl_sh_ddr_awaddr,
    s_sh_cl_sh_ddr_awburst,
    s_sh_cl_sh_ddr_awid,
    s_sh_cl_sh_ddr_awlen,
    s_sh_cl_sh_ddr_awsize,
    s_sh_cl_sh_ddr_awvalid,
    s_sh_cl_sh_ddr_bready,
    s_sh_cl_sh_ddr_rready,
    s_sh_cl_sh_ddr_wdata,
    s_sh_cl_sh_ddr_wid,
    s_sh_cl_sh_ddr_wlast,
    s_sh_cl_sh_ddr_wstrb,
    s_sh_cl_sh_ddr_wvalid,
    s_sh_clk_300m_dimm0_dn,
    s_sh_clk_300m_dimm0_dp,
    s_sh_clk_300m_dimm1_dn,
    s_sh_clk_300m_dimm1_dp,
    s_sh_clk_300m_dimm3_dn,
    s_sh_clk_300m_dimm3_dp,
    s_sh_clk_main_a0,
    s_sh_ddr_sh_stat_ack0,
    s_sh_ddr_sh_stat_ack1,
    s_sh_ddr_sh_stat_ack2,
    s_sh_ddr_sh_stat_int0,
    s_sh_ddr_sh_stat_int1,
    s_sh_ddr_sh_stat_int2,
    s_sh_ddr_sh_stat_rdata0,
    s_sh_ddr_sh_stat_rdata1,
    s_sh_ddr_sh_stat_rdata2,
    s_sh_m_a_act_n,
    s_sh_m_a_ba,
    s_sh_m_a_bg,
    s_sh_m_a_cke,
    s_sh_m_a_clk_dn,
    s_sh_m_a_clk_dp,
    s_sh_m_a_cs_n,
    s_sh_m_a_dq,
    s_sh_m_a_dqs_dn,
    s_sh_m_a_dqs_dp,
    s_sh_m_a_ecc,
    s_sh_m_a_ma,
    s_sh_m_a_odt,
    s_sh_m_a_par,
    s_sh_m_b_act_n,
    s_sh_m_b_ba,
    s_sh_m_b_bg,
    s_sh_m_b_cke,
    s_sh_m_b_clk_dn,
    s_sh_m_b_clk_dp,
    s_sh_m_b_cs_n,
    s_sh_m_b_dq,
    s_sh_m_b_dqs_dn,
    s_sh_m_b_dqs_dp,
    s_sh_m_b_ecc,
    s_sh_m_b_ma,
    s_sh_m_b_odt,
    s_sh_m_b_par,
    s_sh_m_d_act_n,
    s_sh_m_d_ba,
    s_sh_m_d_bg,
    s_sh_m_d_cke,
    s_sh_m_d_clk_dn,
    s_sh_m_d_clk_dp,
    s_sh_m_d_cs_n,
    s_sh_m_d_dq,
    s_sh_m_d_dqs_dn,
    s_sh_m_d_dqs_dp,
    s_sh_m_d_ecc,
    s_sh_m_d_ma,
    s_sh_m_d_odt,
    s_sh_m_d_par,
    s_sh_rst_main_n,
    s_sh_sh_cl_ddr_arready,
    s_sh_sh_cl_ddr_awready,
    s_sh_sh_cl_ddr_bid,
    s_sh_sh_cl_ddr_bresp,
    s_sh_sh_cl_ddr_bvalid,
    s_sh_sh_cl_ddr_is_ready,
    s_sh_sh_cl_ddr_rdata,
    s_sh_sh_cl_ddr_rid,
    s_sh_sh_cl_ddr_rlast,
    s_sh_sh_cl_ddr_rresp,
    s_sh_sh_cl_ddr_rvalid,
    s_sh_sh_cl_ddr_wready,
    s_sh_sh_ddr_stat_addr0,
    s_sh_sh_ddr_stat_addr1,
    s_sh_sh_ddr_stat_addr2,
    s_sh_sh_ddr_stat_rd0,
    s_sh_sh_ddr_stat_rd1,
    s_sh_sh_ddr_stat_rd2,
    s_sh_sh_ddr_stat_wdata0,
    s_sh_sh_ddr_stat_wdata1,
    s_sh_sh_ddr_stat_wdata2,
    s_sh_sh_ddr_stat_wr0,
    s_sh_sh_ddr_stat_wr1,
    s_sh_sh_ddr_stat_wr2);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 37, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 4, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [36:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *) input [5:0]S00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]S00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION" *) input [3:0]S00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [36:0]S00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *) input [5:0]S00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]S00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]S00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output S00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION" *) input [3:0]S00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input S00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *) output [5:0]S00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input S00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]S00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output S00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [511:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *) output [5:0]S00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output S00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [511:0]S00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input S00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output S00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [63:0]S00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input S00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI, ADDR_WIDTH 36, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_extra_b_00, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [35:0]S01_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARBURST" *) input [1:0]S01_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE" *) input [3:0]S01_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARID" *) input [0:0]S01_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLEN" *) input [7:0]S01_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK" *) input [0:0]S01_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT" *) input [2:0]S01_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARQOS" *) input [3:0]S01_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY" *) output S01_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREGION" *) input [3:0]S01_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE" *) input [2:0]S01_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID" *) input S01_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR" *) input [35:0]S01_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWBURST" *) input [1:0]S01_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE" *) input [3:0]S01_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWID" *) input [0:0]S01_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLEN" *) input [7:0]S01_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK" *) input [0:0]S01_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT" *) input [2:0]S01_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWQOS" *) input [3:0]S01_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY" *) output S01_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREGION" *) input [3:0]S01_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE" *) input [2:0]S01_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID" *) input S01_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BID" *) output [0:0]S01_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BREADY" *) input S01_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BRESP" *) output [1:0]S01_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BVALID" *) output S01_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RDATA" *) output [31:0]S01_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RID" *) output [0:0]S01_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RLAST" *) output S01_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RREADY" *) input S01_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RRESP" *) output [1:0]S01_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RVALID" *) output S01_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WDATA" *) input [31:0]S01_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WLAST" *) input S01_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WREADY" *) output S01_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB" *) input [3:0]S01_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WVALID" *) input S01_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S02_AXI, ADDR_WIDTH 36, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_extra_b_00, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [35:0]S02_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARBURST" *) input [1:0]S02_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE" *) input [3:0]S02_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARID" *) input [0:0]S02_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLEN" *) input [7:0]S02_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK" *) input [0:0]S02_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARPROT" *) input [2:0]S02_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARQOS" *) input [3:0]S02_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARREADY" *) output S02_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARREGION" *) input [3:0]S02_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARSIZE" *) input [2:0]S02_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARVALID" *) input S02_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWADDR" *) input [35:0]S02_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWBURST" *) input [1:0]S02_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE" *) input [3:0]S02_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWID" *) input [0:0]S02_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLEN" *) input [7:0]S02_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK" *) input [0:0]S02_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWPROT" *) input [2:0]S02_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWQOS" *) input [3:0]S02_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWREADY" *) output S02_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWREGION" *) input [3:0]S02_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWSIZE" *) input [2:0]S02_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWVALID" *) input S02_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BID" *) output [0:0]S02_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BREADY" *) input S02_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BRESP" *) output [1:0]S02_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BVALID" *) output S02_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RDATA" *) output [31:0]S02_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RID" *) output [0:0]S02_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RLAST" *) output S02_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RREADY" *) input S02_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RRESP" *) output [1:0]S02_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RVALID" *) output S02_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WDATA" *) input [31:0]S02_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WLAST" *) input S02_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WREADY" *) output S02_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WSTRB" *) input [3:0]S02_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WVALID" *) input S02_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_CLKEN m_sc_aclken, CLK_DOMAIN cd_data_h2c_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK1, ASSOCIATED_BUSIF S01_AXI:S02_AXI, ASSOCIATED_CLKEN m_sc_aclken, CLK_DOMAIN cd_extra_b_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input aclk1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DDR4_MEM_CALIB_COMPLETE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DDR4_MEM_CALIB_COMPLETE, LAYERED_METADATA undef" *) output ddr4_mem_calib_complete;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_A_N" *) output s_sh_cl_rst_dimm_a_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_B_N" *) output s_sh_cl_rst_dimm_b_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_D_N" *) output s_sh_cl_rst_dimm_d_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_araddr" *) output [63:0]s_sh_cl_sh_ddr_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arburst" *) output [1:0]s_sh_cl_sh_ddr_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arid" *) output [15:0]s_sh_cl_sh_ddr_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arlen" *) output [7:0]s_sh_cl_sh_ddr_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arsize" *) output [2:0]s_sh_cl_sh_ddr_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arvalid" *) output s_sh_cl_sh_ddr_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awaddr" *) output [63:0]s_sh_cl_sh_ddr_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awburst" *) output [1:0]s_sh_cl_sh_ddr_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awid" *) output [15:0]s_sh_cl_sh_ddr_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awlen" *) output [7:0]s_sh_cl_sh_ddr_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awsize" *) output [2:0]s_sh_cl_sh_ddr_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awvalid" *) output s_sh_cl_sh_ddr_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_bready" *) output s_sh_cl_sh_ddr_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_rready" *) output s_sh_cl_sh_ddr_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wdata" *) output [511:0]s_sh_cl_sh_ddr_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wid" *) output [15:0]s_sh_cl_sh_ddr_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wlast" *) output s_sh_cl_sh_ddr_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wstrb" *) output [63:0]s_sh_cl_sh_ddr_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wvalid" *) output s_sh_cl_sh_ddr_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM0_DN" *) input s_sh_clk_300m_dimm0_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM0_DP" *) input s_sh_clk_300m_dimm0_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM1_DN" *) input s_sh_clk_300m_dimm1_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM1_DP" *) input s_sh_clk_300m_dimm1_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM3_DN" *) input s_sh_clk_300m_dimm3_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM3_DP" *) input s_sh_clk_300m_dimm3_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh clk_main_a0" *) input s_sh_clk_main_a0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack0" *) output s_sh_ddr_sh_stat_ack0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack1" *) output s_sh_ddr_sh_stat_ack1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack2" *) output s_sh_ddr_sh_stat_ack2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int0" *) output [7:0]s_sh_ddr_sh_stat_int0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int1" *) output [7:0]s_sh_ddr_sh_stat_int1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int2" *) output [7:0]s_sh_ddr_sh_stat_int2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata0" *) output [31:0]s_sh_ddr_sh_stat_rdata0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata1" *) output [31:0]s_sh_ddr_sh_stat_rdata1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata2" *) output [31:0]s_sh_ddr_sh_stat_rdata2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ACT_N" *) output s_sh_m_a_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_BA" *) output [1:0]s_sh_m_a_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_BG" *) output [1:0]s_sh_m_a_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CKE" *) output [0:0]s_sh_m_a_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CLK_DN" *) output [0:0]s_sh_m_a_clk_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CLK_DP" *) output [0:0]s_sh_m_a_clk_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CS_N" *) output [0:0]s_sh_m_a_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQ" *) inout [63:0]s_sh_m_a_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQS_DN" *) inout [17:0]s_sh_m_a_dqs_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQS_DP" *) inout [17:0]s_sh_m_a_dqs_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ECC" *) inout [7:0]s_sh_m_a_ecc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_MA" *) output [16:0]s_sh_m_a_ma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ODT" *) output [0:0]s_sh_m_a_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_PAR" *) output s_sh_m_a_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ACT_N" *) output s_sh_m_b_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_BA" *) output [1:0]s_sh_m_b_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_BG" *) output [1:0]s_sh_m_b_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CKE" *) output [0:0]s_sh_m_b_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CLK_DN" *) output [0:0]s_sh_m_b_clk_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CLK_DP" *) output [0:0]s_sh_m_b_clk_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CS_N" *) output [0:0]s_sh_m_b_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQ" *) inout [63:0]s_sh_m_b_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQS_DN" *) inout [17:0]s_sh_m_b_dqs_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQS_DP" *) inout [17:0]s_sh_m_b_dqs_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ECC" *) inout [7:0]s_sh_m_b_ecc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_MA" *) output [16:0]s_sh_m_b_ma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ODT" *) output [0:0]s_sh_m_b_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_PAR" *) output s_sh_m_b_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ACT_N" *) output s_sh_m_d_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_BA" *) output [1:0]s_sh_m_d_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_BG" *) output [1:0]s_sh_m_d_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CKE" *) output [0:0]s_sh_m_d_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CLK_DN" *) output [0:0]s_sh_m_d_clk_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CLK_DP" *) output [0:0]s_sh_m_d_clk_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CS_N" *) output [0:0]s_sh_m_d_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQ" *) inout [63:0]s_sh_m_d_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQS_DN" *) inout [17:0]s_sh_m_d_dqs_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQS_DP" *) inout [17:0]s_sh_m_d_dqs_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ECC" *) inout [7:0]s_sh_m_d_ecc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_MA" *) output [16:0]s_sh_m_d_ma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ODT" *) output [0:0]s_sh_m_d_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_PAR" *) output s_sh_m_d_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh rst_main_n" *) input s_sh_rst_main_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_arready" *) input s_sh_sh_cl_ddr_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_awready" *) input s_sh_sh_cl_ddr_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bid" *) input [15:0]s_sh_sh_cl_ddr_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bresp" *) input [1:0]s_sh_sh_cl_ddr_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bvalid" *) input s_sh_sh_cl_ddr_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_is_ready" *) input s_sh_sh_cl_ddr_is_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rdata" *) input [511:0]s_sh_sh_cl_ddr_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rid" *) input [15:0]s_sh_sh_cl_ddr_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rlast" *) input s_sh_sh_cl_ddr_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rresp" *) input [1:0]s_sh_sh_cl_ddr_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rvalid" *) input s_sh_sh_cl_ddr_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_wready" *) input s_sh_sh_cl_ddr_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr0" *) input [7:0]s_sh_sh_ddr_stat_addr0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr1" *) input [7:0]s_sh_sh_ddr_stat_addr1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr2" *) input [7:0]s_sh_sh_ddr_stat_addr2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd0" *) input s_sh_sh_ddr_stat_rd0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd1" *) input s_sh_sh_ddr_stat_rd1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd2" *) input s_sh_sh_ddr_stat_rd2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata0" *) input [31:0]s_sh_sh_ddr_stat_wdata0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata1" *) input [31:0]s_sh_sh_ddr_stat_wdata1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata2" *) input [31:0]s_sh_sh_ddr_stat_wdata2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr0" *) input s_sh_sh_ddr_stat_wr0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr1" *) input s_sh_sh_ddr_stat_wr1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr2" *) input s_sh_sh_ddr_stat_wr2;

  wire [36:0]S00_AXI_araddr;
  wire [5:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire [2:0]S00_AXI_arprot;
  wire S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire S00_AXI_arvalid;
  wire [36:0]S00_AXI_awaddr;
  wire [5:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [2:0]S00_AXI_awprot;
  wire S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire S00_AXI_awvalid;
  wire [5:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire [5:0]S00_AXI_rid;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [35:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [0:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire [0:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire S01_AXI_arready;
  wire [3:0]S01_AXI_arregion;
  wire [2:0]S01_AXI_arsize;
  wire S01_AXI_arvalid;
  wire [35:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [0:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire S01_AXI_awready;
  wire [3:0]S01_AXI_awregion;
  wire [2:0]S01_AXI_awsize;
  wire S01_AXI_awvalid;
  wire [0:0]S01_AXI_bid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [31:0]S01_AXI_rdata;
  wire [0:0]S01_AXI_rid;
  wire S01_AXI_rlast;
  wire S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire S01_AXI_rvalid;
  wire [31:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [3:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire [35:0]S02_AXI_araddr;
  wire [1:0]S02_AXI_arburst;
  wire [3:0]S02_AXI_arcache;
  wire [0:0]S02_AXI_arid;
  wire [7:0]S02_AXI_arlen;
  wire [0:0]S02_AXI_arlock;
  wire [2:0]S02_AXI_arprot;
  wire [3:0]S02_AXI_arqos;
  wire S02_AXI_arready;
  wire [3:0]S02_AXI_arregion;
  wire [2:0]S02_AXI_arsize;
  wire S02_AXI_arvalid;
  wire [35:0]S02_AXI_awaddr;
  wire [1:0]S02_AXI_awburst;
  wire [3:0]S02_AXI_awcache;
  wire [0:0]S02_AXI_awid;
  wire [7:0]S02_AXI_awlen;
  wire [0:0]S02_AXI_awlock;
  wire [2:0]S02_AXI_awprot;
  wire [3:0]S02_AXI_awqos;
  wire S02_AXI_awready;
  wire [3:0]S02_AXI_awregion;
  wire [2:0]S02_AXI_awsize;
  wire S02_AXI_awvalid;
  wire [0:0]S02_AXI_bid;
  wire S02_AXI_bready;
  wire [1:0]S02_AXI_bresp;
  wire S02_AXI_bvalid;
  wire [31:0]S02_AXI_rdata;
  wire [0:0]S02_AXI_rid;
  wire S02_AXI_rlast;
  wire S02_AXI_rready;
  wire [1:0]S02_AXI_rresp;
  wire S02_AXI_rvalid;
  wire [31:0]S02_AXI_wdata;
  wire S02_AXI_wlast;
  wire S02_AXI_wready;
  wire [3:0]S02_AXI_wstrb;
  wire S02_AXI_wvalid;
  wire aclk;
  wire aclk1;
  wire aresetn;
  wire aws_clk_main_a0_out;
  wire ddr4_mem_calib_complete;
  wire [63:0]interconnect_ddr4_mem00_M00_AXI_ARADDR;
  wire [1:0]interconnect_ddr4_mem00_M00_AXI_ARBURST;
  wire [3:0]interconnect_ddr4_mem00_M00_AXI_ARCACHE;
  wire [7:0]interconnect_ddr4_mem00_M00_AXI_ARLEN;
  wire interconnect_ddr4_mem00_M00_AXI_ARLOCK;
  wire [2:0]interconnect_ddr4_mem00_M00_AXI_ARPROT;
  wire [3:0]interconnect_ddr4_mem00_M00_AXI_ARQOS;
  wire interconnect_ddr4_mem00_M00_AXI_ARREADY;
  wire interconnect_ddr4_mem00_M00_AXI_ARVALID;
  wire [63:0]interconnect_ddr4_mem00_M00_AXI_AWADDR;
  wire [1:0]interconnect_ddr4_mem00_M00_AXI_AWBURST;
  wire [3:0]interconnect_ddr4_mem00_M00_AXI_AWCACHE;
  wire [7:0]interconnect_ddr4_mem00_M00_AXI_AWLEN;
  wire interconnect_ddr4_mem00_M00_AXI_AWLOCK;
  wire [2:0]interconnect_ddr4_mem00_M00_AXI_AWPROT;
  wire [3:0]interconnect_ddr4_mem00_M00_AXI_AWQOS;
  wire interconnect_ddr4_mem00_M00_AXI_AWREADY;
  wire interconnect_ddr4_mem00_M00_AXI_AWVALID;
  wire interconnect_ddr4_mem00_M00_AXI_BREADY;
  wire [1:0]interconnect_ddr4_mem00_M00_AXI_BRESP;
  wire interconnect_ddr4_mem00_M00_AXI_BVALID;
  wire [511:0]interconnect_ddr4_mem00_M00_AXI_RDATA;
  wire interconnect_ddr4_mem00_M00_AXI_RLAST;
  wire interconnect_ddr4_mem00_M00_AXI_RREADY;
  wire [1:0]interconnect_ddr4_mem00_M00_AXI_RRESP;
  wire interconnect_ddr4_mem00_M00_AXI_RVALID;
  wire [511:0]interconnect_ddr4_mem00_M00_AXI_WDATA;
  wire interconnect_ddr4_mem00_M00_AXI_WLAST;
  wire interconnect_ddr4_mem00_M00_AXI_WREADY;
  wire [63:0]interconnect_ddr4_mem00_M00_AXI_WSTRB;
  wire interconnect_ddr4_mem00_M00_AXI_WVALID;
  wire psr_aclk1_SLR1_interconnect_aresetn;
  wire psr_aclk_SLR0_interconnect_aresetn;
  wire psr_aclk_SLR1_interconnect_aresetn;
  wire s_sh_cl_rst_dimm_a_n;
  wire s_sh_cl_rst_dimm_b_n;
  wire s_sh_cl_rst_dimm_d_n;
  wire [63:0]s_sh_cl_sh_ddr_araddr;
  wire [1:0]s_sh_cl_sh_ddr_arburst;
  wire [15:0]s_sh_cl_sh_ddr_arid;
  wire [7:0]s_sh_cl_sh_ddr_arlen;
  wire [2:0]s_sh_cl_sh_ddr_arsize;
  wire s_sh_cl_sh_ddr_arvalid;
  wire [63:0]s_sh_cl_sh_ddr_awaddr;
  wire [1:0]s_sh_cl_sh_ddr_awburst;
  wire [15:0]s_sh_cl_sh_ddr_awid;
  wire [7:0]s_sh_cl_sh_ddr_awlen;
  wire [2:0]s_sh_cl_sh_ddr_awsize;
  wire s_sh_cl_sh_ddr_awvalid;
  wire s_sh_cl_sh_ddr_bready;
  wire s_sh_cl_sh_ddr_rready;
  wire [511:0]s_sh_cl_sh_ddr_wdata;
  wire [15:0]s_sh_cl_sh_ddr_wid;
  wire s_sh_cl_sh_ddr_wlast;
  wire [63:0]s_sh_cl_sh_ddr_wstrb;
  wire s_sh_cl_sh_ddr_wvalid;
  wire s_sh_clk_300m_dimm0_dn;
  wire s_sh_clk_300m_dimm0_dp;
  wire s_sh_clk_300m_dimm1_dn;
  wire s_sh_clk_300m_dimm1_dp;
  wire s_sh_clk_300m_dimm3_dn;
  wire s_sh_clk_300m_dimm3_dp;
  wire s_sh_clk_main_a0;
  wire s_sh_ddr_sh_stat_ack0;
  wire s_sh_ddr_sh_stat_ack1;
  wire s_sh_ddr_sh_stat_ack2;
  wire [7:0]s_sh_ddr_sh_stat_int0;
  wire [7:0]s_sh_ddr_sh_stat_int1;
  wire [7:0]s_sh_ddr_sh_stat_int2;
  wire [31:0]s_sh_ddr_sh_stat_rdata0;
  wire [31:0]s_sh_ddr_sh_stat_rdata1;
  wire [31:0]s_sh_ddr_sh_stat_rdata2;
  wire s_sh_m_a_act_n;
  wire [1:0]s_sh_m_a_ba;
  wire [1:0]s_sh_m_a_bg;
  wire [0:0]s_sh_m_a_cke;
  wire [0:0]s_sh_m_a_clk_dn;
  wire [0:0]s_sh_m_a_clk_dp;
  wire [0:0]s_sh_m_a_cs_n;
  wire [63:0]s_sh_m_a_dq;
  wire [17:0]s_sh_m_a_dqs_dn;
  wire [17:0]s_sh_m_a_dqs_dp;
  wire [7:0]s_sh_m_a_ecc;
  wire [16:0]s_sh_m_a_ma;
  wire [0:0]s_sh_m_a_odt;
  wire s_sh_m_a_par;
  wire s_sh_m_b_act_n;
  wire [1:0]s_sh_m_b_ba;
  wire [1:0]s_sh_m_b_bg;
  wire [0:0]s_sh_m_b_cke;
  wire [0:0]s_sh_m_b_clk_dn;
  wire [0:0]s_sh_m_b_clk_dp;
  wire [0:0]s_sh_m_b_cs_n;
  wire [63:0]s_sh_m_b_dq;
  wire [17:0]s_sh_m_b_dqs_dn;
  wire [17:0]s_sh_m_b_dqs_dp;
  wire [7:0]s_sh_m_b_ecc;
  wire [16:0]s_sh_m_b_ma;
  wire [0:0]s_sh_m_b_odt;
  wire s_sh_m_b_par;
  wire s_sh_m_d_act_n;
  wire [1:0]s_sh_m_d_ba;
  wire [1:0]s_sh_m_d_bg;
  wire [0:0]s_sh_m_d_cke;
  wire [0:0]s_sh_m_d_clk_dn;
  wire [0:0]s_sh_m_d_clk_dp;
  wire [0:0]s_sh_m_d_cs_n;
  wire [63:0]s_sh_m_d_dq;
  wire [17:0]s_sh_m_d_dqs_dn;
  wire [17:0]s_sh_m_d_dqs_dp;
  wire [7:0]s_sh_m_d_ecc;
  wire [16:0]s_sh_m_d_ma;
  wire [0:0]s_sh_m_d_odt;
  wire s_sh_m_d_par;
  wire s_sh_rst_main_n;
  wire s_sh_sh_cl_ddr_arready;
  wire s_sh_sh_cl_ddr_awready;
  wire [15:0]s_sh_sh_cl_ddr_bid;
  wire [1:0]s_sh_sh_cl_ddr_bresp;
  wire s_sh_sh_cl_ddr_bvalid;
  wire s_sh_sh_cl_ddr_is_ready;
  wire [511:0]s_sh_sh_cl_ddr_rdata;
  wire [15:0]s_sh_sh_cl_ddr_rid;
  wire s_sh_sh_cl_ddr_rlast;
  wire [1:0]s_sh_sh_cl_ddr_rresp;
  wire s_sh_sh_cl_ddr_rvalid;
  wire s_sh_sh_cl_ddr_wready;
  wire [7:0]s_sh_sh_ddr_stat_addr0;
  wire [7:0]s_sh_sh_ddr_stat_addr1;
  wire [7:0]s_sh_sh_ddr_stat_addr2;
  wire s_sh_sh_ddr_stat_rd0;
  wire s_sh_sh_ddr_stat_rd1;
  wire s_sh_sh_ddr_stat_rd2;
  wire [31:0]s_sh_sh_ddr_stat_wdata0;
  wire [31:0]s_sh_sh_ddr_stat_wdata1;
  wire [31:0]s_sh_sh_ddr_stat_wdata2;
  wire s_sh_sh_ddr_stat_wr0;
  wire s_sh_sh_ddr_stat_wr1;
  wire s_sh_sh_ddr_stat_wr2;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interconnect_imp_1XWE5B8 interconnect
       (.M00_AXI_araddr(interconnect_ddr4_mem00_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_ddr4_mem00_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_ddr4_mem00_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect_ddr4_mem00_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_ddr4_mem00_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_ddr4_mem00_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_ddr4_mem00_M00_AXI_ARQOS),
        .M00_AXI_arvalid(interconnect_ddr4_mem00_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_ddr4_mem00_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_ddr4_mem00_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_ddr4_mem00_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect_ddr4_mem00_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_ddr4_mem00_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_ddr4_mem00_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_ddr4_mem00_M00_AXI_AWQOS),
        .M00_AXI_awvalid(interconnect_ddr4_mem00_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_ddr4_mem00_M00_AXI_BREADY),
        .M00_AXI_rready(interconnect_ddr4_mem00_M00_AXI_RREADY),
        .M00_AXI_wdata(interconnect_ddr4_mem00_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_ddr4_mem00_M00_AXI_WLAST),
        .M00_AXI_wstrb(interconnect_ddr4_mem00_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_ddr4_mem00_M00_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arid(S00_AXI_arid),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arregion(S00_AXI_arregion),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awid(S00_AXI_awid),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awready_0(aclk),
        .S00_AXI_awregion(S00_AXI_awregion),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bid(S00_AXI_bid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rid(S00_AXI_rid),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .S01_AXI_araddr(S01_AXI_araddr),
        .S01_AXI_arburst(S01_AXI_arburst),
        .S01_AXI_arcache(S01_AXI_arcache),
        .S01_AXI_arid(S01_AXI_arid),
        .S01_AXI_arlen(S01_AXI_arlen),
        .S01_AXI_arlock(S01_AXI_arlock),
        .S01_AXI_arprot(S01_AXI_arprot),
        .S01_AXI_arqos(S01_AXI_arqos),
        .S01_AXI_arready(S01_AXI_arready),
        .S01_AXI_arregion(S01_AXI_arregion),
        .S01_AXI_arsize(S01_AXI_arsize),
        .S01_AXI_arvalid(S01_AXI_arvalid),
        .S01_AXI_awaddr(S01_AXI_awaddr),
        .S01_AXI_awburst(S01_AXI_awburst),
        .S01_AXI_awcache(S01_AXI_awcache),
        .S01_AXI_awid(S01_AXI_awid),
        .S01_AXI_awlen(S01_AXI_awlen),
        .S01_AXI_awlock(S01_AXI_awlock),
        .S01_AXI_awprot(S01_AXI_awprot),
        .S01_AXI_awqos(S01_AXI_awqos),
        .S01_AXI_awready(S01_AXI_awready),
        .S01_AXI_awregion(S01_AXI_awregion),
        .S01_AXI_awsize(S01_AXI_awsize),
        .S01_AXI_awvalid(S01_AXI_awvalid),
        .S01_AXI_bid(S01_AXI_bid),
        .S01_AXI_bready(S01_AXI_bready),
        .S01_AXI_bresp(S01_AXI_bresp),
        .S01_AXI_bvalid(S01_AXI_bvalid),
        .S01_AXI_rdata(S01_AXI_rdata),
        .S01_AXI_rid(S01_AXI_rid),
        .S01_AXI_rlast(S01_AXI_rlast),
        .S01_AXI_rready(S01_AXI_rready),
        .S01_AXI_rresp(S01_AXI_rresp),
        .S01_AXI_rvalid(S01_AXI_rvalid),
        .S01_AXI_wdata(S01_AXI_wdata),
        .S01_AXI_wlast(S01_AXI_wlast),
        .S01_AXI_wready(S01_AXI_wready),
        .S01_AXI_wstrb(S01_AXI_wstrb),
        .S01_AXI_wvalid(S01_AXI_wvalid),
        .S02_AXI_araddr(S02_AXI_araddr),
        .S02_AXI_arburst(S02_AXI_arburst),
        .S02_AXI_arcache(S02_AXI_arcache),
        .S02_AXI_arid(S02_AXI_arid),
        .S02_AXI_arlen(S02_AXI_arlen),
        .S02_AXI_arlock(S02_AXI_arlock),
        .S02_AXI_arprot(S02_AXI_arprot),
        .S02_AXI_arqos(S02_AXI_arqos),
        .S02_AXI_arready(S02_AXI_arready),
        .S02_AXI_arregion(S02_AXI_arregion),
        .S02_AXI_arsize(S02_AXI_arsize),
        .S02_AXI_arvalid(S02_AXI_arvalid),
        .S02_AXI_awaddr(S02_AXI_awaddr),
        .S02_AXI_awburst(S02_AXI_awburst),
        .S02_AXI_awcache(S02_AXI_awcache),
        .S02_AXI_awid(S02_AXI_awid),
        .S02_AXI_awlen(S02_AXI_awlen),
        .S02_AXI_awlock(S02_AXI_awlock),
        .S02_AXI_awprot(S02_AXI_awprot),
        .S02_AXI_awqos(S02_AXI_awqos),
        .S02_AXI_awready(S02_AXI_awready),
        .S02_AXI_awregion(S02_AXI_awregion),
        .S02_AXI_awsize(S02_AXI_awsize),
        .S02_AXI_awvalid(S02_AXI_awvalid),
        .S02_AXI_bid(S02_AXI_bid),
        .S02_AXI_bready(S02_AXI_bready),
        .S02_AXI_bresp(S02_AXI_bresp),
        .S02_AXI_bvalid(S02_AXI_bvalid),
        .S02_AXI_rdata(S02_AXI_rdata),
        .S02_AXI_rid(S02_AXI_rid),
        .S02_AXI_rlast(S02_AXI_rlast),
        .S02_AXI_rready(S02_AXI_rready),
        .S02_AXI_rresp(S02_AXI_rresp),
        .S02_AXI_rvalid(S02_AXI_rvalid),
        .S02_AXI_wdata(S02_AXI_wdata),
        .S02_AXI_wlast(S02_AXI_wlast),
        .S02_AXI_wready(S02_AXI_wready),
        .S02_AXI_wstrb(S02_AXI_wstrb),
        .S02_AXI_wvalid(S02_AXI_wvalid),
        .S_AXI_arready(interconnect_ddr4_mem00_M00_AXI_ARREADY),
        .S_AXI_awready(interconnect_ddr4_mem00_M00_AXI_AWREADY),
        .S_AXI_bresp(interconnect_ddr4_mem00_M00_AXI_BRESP),
        .S_AXI_bvalid(interconnect_ddr4_mem00_M00_AXI_BVALID),
        .S_AXI_rdata(interconnect_ddr4_mem00_M00_AXI_RDATA),
        .S_AXI_rlast(interconnect_ddr4_mem00_M00_AXI_RLAST),
        .S_AXI_rresp(interconnect_ddr4_mem00_M00_AXI_RRESP),
        .S_AXI_rvalid(interconnect_ddr4_mem00_M00_AXI_RVALID),
        .S_AXI_wready(interconnect_ddr4_mem00_M00_AXI_WREADY),
        .aclk(aws_clk_main_a0_out),
        .aclk1(aclk1),
        .interconnect_aresetn(psr_aclk_SLR0_interconnect_aresetn),
        .interconnect_aresetn1(psr_aclk_SLR1_interconnect_aresetn),
        .interconnect_aresetn2(psr_aclk1_SLR1_interconnect_aresetn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory_imp_AMH3FI memory
       (.S_AXI_araddr(interconnect_ddr4_mem00_M00_AXI_ARADDR),
        .S_AXI_arburst(interconnect_ddr4_mem00_M00_AXI_ARBURST),
        .S_AXI_arcache(interconnect_ddr4_mem00_M00_AXI_ARCACHE),
        .S_AXI_arlen(interconnect_ddr4_mem00_M00_AXI_ARLEN),
        .S_AXI_arlock(interconnect_ddr4_mem00_M00_AXI_ARLOCK),
        .S_AXI_arprot(interconnect_ddr4_mem00_M00_AXI_ARPROT),
        .S_AXI_arqos(interconnect_ddr4_mem00_M00_AXI_ARQOS),
        .S_AXI_arready(interconnect_ddr4_mem00_M00_AXI_ARREADY),
        .S_AXI_arvalid(interconnect_ddr4_mem00_M00_AXI_ARVALID),
        .S_AXI_awaddr(interconnect_ddr4_mem00_M00_AXI_AWADDR),
        .S_AXI_awburst(interconnect_ddr4_mem00_M00_AXI_AWBURST),
        .S_AXI_awcache(interconnect_ddr4_mem00_M00_AXI_AWCACHE),
        .S_AXI_awlen(interconnect_ddr4_mem00_M00_AXI_AWLEN),
        .S_AXI_awlock(interconnect_ddr4_mem00_M00_AXI_AWLOCK),
        .S_AXI_awprot(interconnect_ddr4_mem00_M00_AXI_AWPROT),
        .S_AXI_awqos(interconnect_ddr4_mem00_M00_AXI_AWQOS),
        .S_AXI_awready(interconnect_ddr4_mem00_M00_AXI_AWREADY),
        .S_AXI_awvalid(interconnect_ddr4_mem00_M00_AXI_AWVALID),
        .S_AXI_bready(interconnect_ddr4_mem00_M00_AXI_BREADY),
        .S_AXI_bresp(interconnect_ddr4_mem00_M00_AXI_BRESP),
        .S_AXI_bvalid(interconnect_ddr4_mem00_M00_AXI_BVALID),
        .S_AXI_rdata(interconnect_ddr4_mem00_M00_AXI_RDATA),
        .S_AXI_rlast(interconnect_ddr4_mem00_M00_AXI_RLAST),
        .S_AXI_rready(interconnect_ddr4_mem00_M00_AXI_RREADY),
        .S_AXI_rresp(interconnect_ddr4_mem00_M00_AXI_RRESP),
        .S_AXI_rvalid(interconnect_ddr4_mem00_M00_AXI_RVALID),
        .S_AXI_wdata(interconnect_ddr4_mem00_M00_AXI_WDATA),
        .S_AXI_wlast(interconnect_ddr4_mem00_M00_AXI_WLAST),
        .S_AXI_wready(interconnect_ddr4_mem00_M00_AXI_WREADY),
        .S_AXI_wstrb(interconnect_ddr4_mem00_M00_AXI_WSTRB),
        .S_AXI_wvalid(interconnect_ddr4_mem00_M00_AXI_WVALID),
        .aclk(aws_clk_main_a0_out),
        .ddr4_mem_calib_complete(ddr4_mem_calib_complete),
        .s_sh_cl_rst_dimm_a_n(s_sh_cl_rst_dimm_a_n),
        .s_sh_cl_rst_dimm_b_n(s_sh_cl_rst_dimm_b_n),
        .s_sh_cl_rst_dimm_d_n(s_sh_cl_rst_dimm_d_n),
        .s_sh_cl_sh_ddr_araddr(s_sh_cl_sh_ddr_araddr),
        .s_sh_cl_sh_ddr_arburst(s_sh_cl_sh_ddr_arburst),
        .s_sh_cl_sh_ddr_arid(s_sh_cl_sh_ddr_arid),
        .s_sh_cl_sh_ddr_arlen(s_sh_cl_sh_ddr_arlen),
        .s_sh_cl_sh_ddr_arsize(s_sh_cl_sh_ddr_arsize),
        .s_sh_cl_sh_ddr_arvalid(s_sh_cl_sh_ddr_arvalid),
        .s_sh_cl_sh_ddr_awaddr(s_sh_cl_sh_ddr_awaddr),
        .s_sh_cl_sh_ddr_awburst(s_sh_cl_sh_ddr_awburst),
        .s_sh_cl_sh_ddr_awid(s_sh_cl_sh_ddr_awid),
        .s_sh_cl_sh_ddr_awlen(s_sh_cl_sh_ddr_awlen),
        .s_sh_cl_sh_ddr_awsize(s_sh_cl_sh_ddr_awsize),
        .s_sh_cl_sh_ddr_awvalid(s_sh_cl_sh_ddr_awvalid),
        .s_sh_cl_sh_ddr_bready(s_sh_cl_sh_ddr_bready),
        .s_sh_cl_sh_ddr_rready(s_sh_cl_sh_ddr_rready),
        .s_sh_cl_sh_ddr_wdata(s_sh_cl_sh_ddr_wdata),
        .s_sh_cl_sh_ddr_wid(s_sh_cl_sh_ddr_wid),
        .s_sh_cl_sh_ddr_wlast(s_sh_cl_sh_ddr_wlast),
        .s_sh_cl_sh_ddr_wstrb(s_sh_cl_sh_ddr_wstrb),
        .s_sh_cl_sh_ddr_wvalid(s_sh_cl_sh_ddr_wvalid),
        .s_sh_clk_300m_dimm0_dn(s_sh_clk_300m_dimm0_dn),
        .s_sh_clk_300m_dimm0_dp(s_sh_clk_300m_dimm0_dp),
        .s_sh_clk_300m_dimm1_dn(s_sh_clk_300m_dimm1_dn),
        .s_sh_clk_300m_dimm1_dp(s_sh_clk_300m_dimm1_dp),
        .s_sh_clk_300m_dimm3_dn(s_sh_clk_300m_dimm3_dn),
        .s_sh_clk_300m_dimm3_dp(s_sh_clk_300m_dimm3_dp),
        .s_sh_clk_main_a0(s_sh_clk_main_a0),
        .s_sh_ddr_sh_stat_ack0(s_sh_ddr_sh_stat_ack0),
        .s_sh_ddr_sh_stat_ack1(s_sh_ddr_sh_stat_ack1),
        .s_sh_ddr_sh_stat_ack2(s_sh_ddr_sh_stat_ack2),
        .s_sh_ddr_sh_stat_int0(s_sh_ddr_sh_stat_int0),
        .s_sh_ddr_sh_stat_int1(s_sh_ddr_sh_stat_int1),
        .s_sh_ddr_sh_stat_int2(s_sh_ddr_sh_stat_int2),
        .s_sh_ddr_sh_stat_rdata0(s_sh_ddr_sh_stat_rdata0),
        .s_sh_ddr_sh_stat_rdata1(s_sh_ddr_sh_stat_rdata1),
        .s_sh_ddr_sh_stat_rdata2(s_sh_ddr_sh_stat_rdata2),
        .s_sh_m_a_act_n(s_sh_m_a_act_n),
        .s_sh_m_a_ba(s_sh_m_a_ba),
        .s_sh_m_a_bg(s_sh_m_a_bg),
        .s_sh_m_a_cke(s_sh_m_a_cke),
        .s_sh_m_a_clk_dn(s_sh_m_a_clk_dn),
        .s_sh_m_a_clk_dp(s_sh_m_a_clk_dp),
        .s_sh_m_a_cs_n(s_sh_m_a_cs_n),
        .s_sh_m_a_dq(s_sh_m_a_dq),
        .s_sh_m_a_dqs_dn(s_sh_m_a_dqs_dn),
        .s_sh_m_a_dqs_dp(s_sh_m_a_dqs_dp),
        .s_sh_m_a_ecc(s_sh_m_a_ecc),
        .s_sh_m_a_ma(s_sh_m_a_ma),
        .s_sh_m_a_odt(s_sh_m_a_odt),
        .s_sh_m_a_par(s_sh_m_a_par),
        .s_sh_m_b_act_n(s_sh_m_b_act_n),
        .s_sh_m_b_ba(s_sh_m_b_ba),
        .s_sh_m_b_bg(s_sh_m_b_bg),
        .s_sh_m_b_cke(s_sh_m_b_cke),
        .s_sh_m_b_clk_dn(s_sh_m_b_clk_dn),
        .s_sh_m_b_clk_dp(s_sh_m_b_clk_dp),
        .s_sh_m_b_cs_n(s_sh_m_b_cs_n),
        .s_sh_m_b_dq(s_sh_m_b_dq),
        .s_sh_m_b_dqs_dn(s_sh_m_b_dqs_dn),
        .s_sh_m_b_dqs_dp(s_sh_m_b_dqs_dp),
        .s_sh_m_b_ecc(s_sh_m_b_ecc),
        .s_sh_m_b_ma(s_sh_m_b_ma),
        .s_sh_m_b_odt(s_sh_m_b_odt),
        .s_sh_m_b_par(s_sh_m_b_par),
        .s_sh_m_d_act_n(s_sh_m_d_act_n),
        .s_sh_m_d_ba(s_sh_m_d_ba),
        .s_sh_m_d_bg(s_sh_m_d_bg),
        .s_sh_m_d_cke(s_sh_m_d_cke),
        .s_sh_m_d_clk_dn(s_sh_m_d_clk_dn),
        .s_sh_m_d_clk_dp(s_sh_m_d_clk_dp),
        .s_sh_m_d_cs_n(s_sh_m_d_cs_n),
        .s_sh_m_d_dq(s_sh_m_d_dq),
        .s_sh_m_d_dqs_dn(s_sh_m_d_dqs_dn),
        .s_sh_m_d_dqs_dp(s_sh_m_d_dqs_dp),
        .s_sh_m_d_ecc(s_sh_m_d_ecc),
        .s_sh_m_d_ma(s_sh_m_d_ma),
        .s_sh_m_d_odt(s_sh_m_d_odt),
        .s_sh_m_d_par(s_sh_m_d_par),
        .s_sh_rst_main_n(s_sh_rst_main_n),
        .s_sh_sh_cl_ddr_arready(s_sh_sh_cl_ddr_arready),
        .s_sh_sh_cl_ddr_awready(s_sh_sh_cl_ddr_awready),
        .s_sh_sh_cl_ddr_bid(s_sh_sh_cl_ddr_bid),
        .s_sh_sh_cl_ddr_bresp(s_sh_sh_cl_ddr_bresp),
        .s_sh_sh_cl_ddr_bvalid(s_sh_sh_cl_ddr_bvalid),
        .s_sh_sh_cl_ddr_is_ready(s_sh_sh_cl_ddr_is_ready),
        .s_sh_sh_cl_ddr_rdata(s_sh_sh_cl_ddr_rdata),
        .s_sh_sh_cl_ddr_rid(s_sh_sh_cl_ddr_rid),
        .s_sh_sh_cl_ddr_rlast(s_sh_sh_cl_ddr_rlast),
        .s_sh_sh_cl_ddr_rresp(s_sh_sh_cl_ddr_rresp),
        .s_sh_sh_cl_ddr_rvalid(s_sh_sh_cl_ddr_rvalid),
        .s_sh_sh_cl_ddr_wready(s_sh_sh_cl_ddr_wready),
        .s_sh_sh_ddr_stat_addr0(s_sh_sh_ddr_stat_addr0),
        .s_sh_sh_ddr_stat_addr1(s_sh_sh_ddr_stat_addr1),
        .s_sh_sh_ddr_stat_addr2(s_sh_sh_ddr_stat_addr2),
        .s_sh_sh_ddr_stat_rd0(s_sh_sh_ddr_stat_rd0),
        .s_sh_sh_ddr_stat_rd1(s_sh_sh_ddr_stat_rd1),
        .s_sh_sh_ddr_stat_rd2(s_sh_sh_ddr_stat_rd2),
        .s_sh_sh_ddr_stat_wdata0(s_sh_sh_ddr_stat_wdata0),
        .s_sh_sh_ddr_stat_wdata1(s_sh_sh_ddr_stat_wdata1),
        .s_sh_sh_ddr_stat_wdata2(s_sh_sh_ddr_stat_wdata2),
        .s_sh_sh_ddr_stat_wr0(s_sh_sh_ddr_stat_wr0),
        .s_sh_sh_ddr_stat_wr1(s_sh_sh_ddr_stat_wr1),
        .s_sh_sh_ddr_stat_wr2(s_sh_sh_ddr_stat_wr2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_imp_57Y9M4 reset
       (.aclk(aclk),
        .aclk1(aclk1),
        .aresetn(aresetn),
        .interconnect_aresetn(psr_aclk_SLR0_interconnect_aresetn),
        .interconnect_aresetn1(psr_aclk_SLR1_interconnect_aresetn),
        .interconnect_aresetn2(psr_aclk1_SLR1_interconnect_aresetn));
endmodule

(* X_CORE_INFO = "aws_v1_0_3_top,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_aws_0
   (clk_main_a0,
    rst_main_n,
    CLK_300M_DIMM0_DP,
    CLK_300M_DIMM0_DN,
    M_A_ACT_N,
    M_A_MA,
    M_A_BA,
    M_A_BG,
    M_A_CKE,
    M_A_ODT,
    M_A_CS_N,
    M_A_CLK_DN,
    M_A_CLK_DP,
    M_A_PAR,
    M_A_DQ,
    M_A_ECC,
    M_A_DQS_DP,
    M_A_DQS_DN,
    cl_RST_DIMM_A_N,
    CLK_300M_DIMM1_DP,
    CLK_300M_DIMM1_DN,
    M_B_ACT_N,
    M_B_MA,
    M_B_BA,
    M_B_BG,
    M_B_CKE,
    M_B_ODT,
    M_B_CS_N,
    M_B_CLK_DN,
    M_B_CLK_DP,
    M_B_PAR,
    M_B_DQ,
    M_B_ECC,
    M_B_DQS_DP,
    M_B_DQS_DN,
    cl_RST_DIMM_B_N,
    CLK_300M_DIMM3_DP,
    CLK_300M_DIMM3_DN,
    M_D_ACT_N,
    M_D_MA,
    M_D_BA,
    M_D_BG,
    M_D_CKE,
    M_D_ODT,
    M_D_CS_N,
    M_D_CLK_DN,
    M_D_CLK_DP,
    M_D_PAR,
    M_D_DQ,
    M_D_ECC,
    M_D_DQS_DP,
    M_D_DQS_DN,
    cl_RST_DIMM_D_N,
    sh_ddr_stat_addr0,
    sh_ddr_stat_wr0,
    sh_ddr_stat_rd0,
    sh_ddr_stat_wdata0,
    ddr_sh_stat_ack0,
    ddr_sh_stat_rdata0,
    ddr_sh_stat_int0,
    sh_ddr_stat_addr1,
    sh_ddr_stat_wr1,
    sh_ddr_stat_rd1,
    sh_ddr_stat_wdata1,
    ddr_sh_stat_ack1,
    ddr_sh_stat_rdata1,
    ddr_sh_stat_int1,
    sh_ddr_stat_addr2,
    sh_ddr_stat_wr2,
    sh_ddr_stat_rd2,
    sh_ddr_stat_wdata2,
    ddr_sh_stat_ack2,
    ddr_sh_stat_rdata2,
    ddr_sh_stat_int2,
    cl_sh_ddr_awid,
    cl_sh_ddr_awaddr,
    cl_sh_ddr_awlen,
    cl_sh_ddr_awsize,
    cl_sh_ddr_awburst,
    cl_sh_ddr_awvalid,
    sh_cl_ddr_awready,
    cl_sh_ddr_wid,
    cl_sh_ddr_wdata,
    cl_sh_ddr_wstrb,
    cl_sh_ddr_wlast,
    cl_sh_ddr_wvalid,
    sh_cl_ddr_wready,
    sh_cl_ddr_bid,
    sh_cl_ddr_bresp,
    sh_cl_ddr_bvalid,
    cl_sh_ddr_bready,
    cl_sh_ddr_arid,
    cl_sh_ddr_araddr,
    cl_sh_ddr_arlen,
    cl_sh_ddr_arsize,
    cl_sh_ddr_arburst,
    cl_sh_ddr_arvalid,
    sh_cl_ddr_arready,
    sh_cl_ddr_rid,
    sh_cl_ddr_rdata,
    sh_cl_ddr_rresp,
    sh_cl_ddr_rlast,
    sh_cl_ddr_rvalid,
    cl_sh_ddr_rready,
    sh_cl_ddr_is_ready,
    clk_main_a0_out,
    rst_main_n_out,
    s_axi_ddrc_awid,
    s_axi_ddrc_awaddr,
    s_axi_ddrc_awlen,
    s_axi_ddrc_awsize,
    s_axi_ddrc_awvalid,
    s_axi_ddrc_awready,
    s_axi_ddrc_wdata,
    s_axi_ddrc_wstrb,
    s_axi_ddrc_wlast,
    s_axi_ddrc_wvalid,
    s_axi_ddrc_wready,
    s_axi_ddrc_bid,
    s_axi_ddrc_bresp,
    s_axi_ddrc_bvalid,
    s_axi_ddrc_bready,
    s_axi_ddrc_arid,
    s_axi_ddrc_araddr,
    s_axi_ddrc_arlen,
    s_axi_ddrc_arsize,
    s_axi_ddrc_arvalid,
    s_axi_ddrc_arready,
    s_axi_ddrc_rid,
    s_axi_ddrc_rdata,
    s_axi_ddrc_rresp,
    s_axi_ddrc_rlast,
    s_axi_ddrc_rvalid,
    s_axi_ddrc_rready,
    ddrc_is_ready);
  input clk_main_a0;
  input rst_main_n;
  input CLK_300M_DIMM0_DP;
  input CLK_300M_DIMM0_DN;
  output M_A_ACT_N;
  output [16:0]M_A_MA;
  output [1:0]M_A_BA;
  output [1:0]M_A_BG;
  output [0:0]M_A_CKE;
  output [0:0]M_A_ODT;
  output [0:0]M_A_CS_N;
  output [0:0]M_A_CLK_DN;
  output [0:0]M_A_CLK_DP;
  output M_A_PAR;
  inout [63:0]M_A_DQ;
  inout [7:0]M_A_ECC;
  inout [17:0]M_A_DQS_DP;
  inout [17:0]M_A_DQS_DN;
  output cl_RST_DIMM_A_N;
  input CLK_300M_DIMM1_DP;
  input CLK_300M_DIMM1_DN;
  output M_B_ACT_N;
  output [16:0]M_B_MA;
  output [1:0]M_B_BA;
  output [1:0]M_B_BG;
  output [0:0]M_B_CKE;
  output [0:0]M_B_ODT;
  output [0:0]M_B_CS_N;
  output [0:0]M_B_CLK_DN;
  output [0:0]M_B_CLK_DP;
  output M_B_PAR;
  inout [63:0]M_B_DQ;
  inout [7:0]M_B_ECC;
  inout [17:0]M_B_DQS_DP;
  inout [17:0]M_B_DQS_DN;
  output cl_RST_DIMM_B_N;
  input CLK_300M_DIMM3_DP;
  input CLK_300M_DIMM3_DN;
  output M_D_ACT_N;
  output [16:0]M_D_MA;
  output [1:0]M_D_BA;
  output [1:0]M_D_BG;
  output [0:0]M_D_CKE;
  output [0:0]M_D_ODT;
  output [0:0]M_D_CS_N;
  output [0:0]M_D_CLK_DN;
  output [0:0]M_D_CLK_DP;
  output M_D_PAR;
  inout [63:0]M_D_DQ;
  inout [7:0]M_D_ECC;
  inout [17:0]M_D_DQS_DP;
  inout [17:0]M_D_DQS_DN;
  output cl_RST_DIMM_D_N;
  input [7:0]sh_ddr_stat_addr0;
  input sh_ddr_stat_wr0;
  input sh_ddr_stat_rd0;
  input [31:0]sh_ddr_stat_wdata0;
  output ddr_sh_stat_ack0;
  output [31:0]ddr_sh_stat_rdata0;
  output [7:0]ddr_sh_stat_int0;
  input [7:0]sh_ddr_stat_addr1;
  input sh_ddr_stat_wr1;
  input sh_ddr_stat_rd1;
  input [31:0]sh_ddr_stat_wdata1;
  output ddr_sh_stat_ack1;
  output [31:0]ddr_sh_stat_rdata1;
  output [7:0]ddr_sh_stat_int1;
  input [7:0]sh_ddr_stat_addr2;
  input sh_ddr_stat_wr2;
  input sh_ddr_stat_rd2;
  input [31:0]sh_ddr_stat_wdata2;
  output ddr_sh_stat_ack2;
  output [31:0]ddr_sh_stat_rdata2;
  output [7:0]ddr_sh_stat_int2;
  output [15:0]cl_sh_ddr_awid;
  output [63:0]cl_sh_ddr_awaddr;
  output [7:0]cl_sh_ddr_awlen;
  output [2:0]cl_sh_ddr_awsize;
  output [1:0]cl_sh_ddr_awburst;
  output cl_sh_ddr_awvalid;
  input sh_cl_ddr_awready;
  output [15:0]cl_sh_ddr_wid;
  output [511:0]cl_sh_ddr_wdata;
  output [63:0]cl_sh_ddr_wstrb;
  output cl_sh_ddr_wlast;
  output cl_sh_ddr_wvalid;
  input sh_cl_ddr_wready;
  input [15:0]sh_cl_ddr_bid;
  input [1:0]sh_cl_ddr_bresp;
  input sh_cl_ddr_bvalid;
  output cl_sh_ddr_bready;
  output [15:0]cl_sh_ddr_arid;
  output [63:0]cl_sh_ddr_araddr;
  output [7:0]cl_sh_ddr_arlen;
  output [2:0]cl_sh_ddr_arsize;
  output [1:0]cl_sh_ddr_arburst;
  output cl_sh_ddr_arvalid;
  input sh_cl_ddr_arready;
  input [15:0]sh_cl_ddr_rid;
  input [511:0]sh_cl_ddr_rdata;
  input [1:0]sh_cl_ddr_rresp;
  input sh_cl_ddr_rlast;
  input sh_cl_ddr_rvalid;
  output cl_sh_ddr_rready;
  input sh_cl_ddr_is_ready;
  output clk_main_a0_out;
  output rst_main_n_out;
  input [15:0]s_axi_ddrc_awid;
  input [63:0]s_axi_ddrc_awaddr;
  input [7:0]s_axi_ddrc_awlen;
  input [2:0]s_axi_ddrc_awsize;
  input s_axi_ddrc_awvalid;
  output s_axi_ddrc_awready;
  input [511:0]s_axi_ddrc_wdata;
  input [63:0]s_axi_ddrc_wstrb;
  input s_axi_ddrc_wlast;
  input s_axi_ddrc_wvalid;
  output s_axi_ddrc_wready;
  output [15:0]s_axi_ddrc_bid;
  output [1:0]s_axi_ddrc_bresp;
  output s_axi_ddrc_bvalid;
  input s_axi_ddrc_bready;
  input [15:0]s_axi_ddrc_arid;
  input [63:0]s_axi_ddrc_araddr;
  input [7:0]s_axi_ddrc_arlen;
  input [2:0]s_axi_ddrc_arsize;
  input s_axi_ddrc_arvalid;
  output s_axi_ddrc_arready;
  output [15:0]s_axi_ddrc_rid;
  output [511:0]s_axi_ddrc_rdata;
  output [1:0]s_axi_ddrc_rresp;
  output s_axi_ddrc_rlast;
  output s_axi_ddrc_rvalid;
  input s_axi_ddrc_rready;
  output ddrc_is_ready;


endmodule

(* CHECK_LICENSE_TYPE = "bd_3329_calib_concat_0,xlconcat_v2_1_4_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_calib_concat_0
   (In0,
    dout);
  input [0:0]In0;
  output [0:0]dout;

  wire [0:0]In0;

  assign dout[0] = In0;
endmodule

(* X_CORE_INFO = "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_calib_reduce_0
   (Op1,
    Res);
  input [0:0]Op1;
  output Res;


endmodule

(* X_CORE_INFO = "bd_ffc7,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_interconnect_ddr4_mem00_0
   (aclk,
    aclk1,
    aclk2,
    aresetn,
    S00_AXI_awid,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bid,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_arid,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rid,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    S01_AXI_awid,
    S01_AXI_awaddr,
    S01_AXI_awlen,
    S01_AXI_awsize,
    S01_AXI_awburst,
    S01_AXI_awlock,
    S01_AXI_awcache,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awvalid,
    S01_AXI_awready,
    S01_AXI_wdata,
    S01_AXI_wstrb,
    S01_AXI_wlast,
    S01_AXI_wvalid,
    S01_AXI_wready,
    S01_AXI_bid,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_bready,
    S01_AXI_arid,
    S01_AXI_araddr,
    S01_AXI_arlen,
    S01_AXI_arsize,
    S01_AXI_arburst,
    S01_AXI_arlock,
    S01_AXI_arcache,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arvalid,
    S01_AXI_arready,
    S01_AXI_rid,
    S01_AXI_rdata,
    S01_AXI_rresp,
    S01_AXI_rlast,
    S01_AXI_rvalid,
    S01_AXI_rready,
    S02_AXI_awid,
    S02_AXI_awaddr,
    S02_AXI_awlen,
    S02_AXI_awsize,
    S02_AXI_awburst,
    S02_AXI_awlock,
    S02_AXI_awcache,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awvalid,
    S02_AXI_awready,
    S02_AXI_wdata,
    S02_AXI_wstrb,
    S02_AXI_wlast,
    S02_AXI_wvalid,
    S02_AXI_wready,
    S02_AXI_bid,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_bready,
    S02_AXI_arid,
    S02_AXI_araddr,
    S02_AXI_arlen,
    S02_AXI_arsize,
    S02_AXI_arburst,
    S02_AXI_arlock,
    S02_AXI_arcache,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arvalid,
    S02_AXI_arready,
    S02_AXI_rid,
    S02_AXI_rdata,
    S02_AXI_rresp,
    S02_AXI_rlast,
    S02_AXI_rvalid,
    S02_AXI_rready,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    M00_AXI_rready);
  input aclk;
  input aclk1;
  input aclk2;
  input aresetn;
  input [5:0]S00_AXI_awid;
  input [36:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [5:0]S00_AXI_bid;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [5:0]S00_AXI_arid;
  input [36:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [5:0]S00_AXI_rid;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  input [0:0]S01_AXI_awid;
  input [35:0]S01_AXI_awaddr;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awsize;
  input [1:0]S01_AXI_awburst;
  input [0:0]S01_AXI_awlock;
  input [3:0]S01_AXI_awcache;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  input S01_AXI_awvalid;
  output S01_AXI_awready;
  input [31:0]S01_AXI_wdata;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wlast;
  input S01_AXI_wvalid;
  output S01_AXI_wready;
  output [0:0]S01_AXI_bid;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input S01_AXI_bready;
  input [0:0]S01_AXI_arid;
  input [35:0]S01_AXI_araddr;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arsize;
  input [1:0]S01_AXI_arburst;
  input [0:0]S01_AXI_arlock;
  input [3:0]S01_AXI_arcache;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  input S01_AXI_arvalid;
  output S01_AXI_arready;
  output [0:0]S01_AXI_rid;
  output [31:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rlast;
  output S01_AXI_rvalid;
  input S01_AXI_rready;
  input [0:0]S02_AXI_awid;
  input [35:0]S02_AXI_awaddr;
  input [7:0]S02_AXI_awlen;
  input [2:0]S02_AXI_awsize;
  input [1:0]S02_AXI_awburst;
  input [0:0]S02_AXI_awlock;
  input [3:0]S02_AXI_awcache;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  input S02_AXI_awvalid;
  output S02_AXI_awready;
  input [31:0]S02_AXI_wdata;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wlast;
  input S02_AXI_wvalid;
  output S02_AXI_wready;
  output [0:0]S02_AXI_bid;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  input S02_AXI_bready;
  input [0:0]S02_AXI_arid;
  input [35:0]S02_AXI_araddr;
  input [7:0]S02_AXI_arlen;
  input [2:0]S02_AXI_arsize;
  input [1:0]S02_AXI_arburst;
  input [0:0]S02_AXI_arlock;
  input [3:0]S02_AXI_arcache;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  input S02_AXI_arvalid;
  output S02_AXI_arready;
  output [0:0]S02_AXI_rid;
  output [31:0]S02_AXI_rdata;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rlast;
  output S02_AXI_rvalid;
  input S02_AXI_rready;
  output [63:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [511:0]M00_AXI_wdata;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [63:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [511:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  output M00_AXI_rready;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_psr_aclk1_SLR1_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_psr_aclk_SLR0_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_psr_aclk_SLR1_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_DDR4_MEM00_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [63:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [63:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [63:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [63:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_S00_AXI_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [5:0]s_axi_awid;
  input [36:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [5:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [5:0]s_axi_arid;
  input [36:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input s_axi_arvalid;
  output s_axi_arready;
  output [5:0]s_axi_rid;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [5:0]m_axi_awid;
  output [36:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [5:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [5:0]m_axi_arid;
  output [36:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output m_axi_arvalid;
  input m_axi_arready;
  input [5:0]m_axi_rid;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_S01_AXI_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [35:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [35:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [35:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [35:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_S02_AXI_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [35:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [35:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [35:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [35:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* CHECK_LICENSE_TYPE = "cl_HIP_0,bd_3329,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_3329,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aclk1,
    aresetn,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awregion,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arregion,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    S01_AXI_awaddr,
    S01_AXI_awlen,
    S01_AXI_awsize,
    S01_AXI_awburst,
    S01_AXI_awlock,
    S01_AXI_awcache,
    S01_AXI_awprot,
    S01_AXI_awregion,
    S01_AXI_awqos,
    S01_AXI_awvalid,
    S01_AXI_awready,
    S01_AXI_wdata,
    S01_AXI_wstrb,
    S01_AXI_wlast,
    S01_AXI_wvalid,
    S01_AXI_wready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_bready,
    S01_AXI_araddr,
    S01_AXI_arlen,
    S01_AXI_arsize,
    S01_AXI_arburst,
    S01_AXI_arlock,
    S01_AXI_arcache,
    S01_AXI_arprot,
    S01_AXI_arregion,
    S01_AXI_arqos,
    S01_AXI_arvalid,
    S01_AXI_arready,
    S01_AXI_rdata,
    S01_AXI_rresp,
    S01_AXI_rlast,
    S01_AXI_rvalid,
    S01_AXI_rready,
    S02_AXI_awaddr,
    S02_AXI_awlen,
    S02_AXI_awsize,
    S02_AXI_awburst,
    S02_AXI_awlock,
    S02_AXI_awcache,
    S02_AXI_awprot,
    S02_AXI_awregion,
    S02_AXI_awqos,
    S02_AXI_awvalid,
    S02_AXI_awready,
    S02_AXI_wdata,
    S02_AXI_wstrb,
    S02_AXI_wlast,
    S02_AXI_wvalid,
    S02_AXI_wready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_bready,
    S02_AXI_araddr,
    S02_AXI_arlen,
    S02_AXI_arsize,
    S02_AXI_arburst,
    S02_AXI_arlock,
    S02_AXI_arcache,
    S02_AXI_arprot,
    S02_AXI_arregion,
    S02_AXI_arqos,
    S02_AXI_arvalid,
    S02_AXI_arready,
    S02_AXI_rdata,
    S02_AXI_rresp,
    S02_AXI_rlast,
    S02_AXI_rvalid,
    S02_AXI_rready,
    s_sh_rst_main_n,
    s_sh_clk_main_a0,
    s_sh_clk_300m_dimm0_dp,
    s_sh_clk_300m_dimm0_dn,
    s_sh_clk_300m_dimm1_dp,
    s_sh_clk_300m_dimm1_dn,
    s_sh_clk_300m_dimm3_dp,
    s_sh_clk_300m_dimm3_dn,
    s_sh_sh_ddr_stat_wr0,
    s_sh_sh_ddr_stat_rd0,
    s_sh_sh_ddr_stat_wr1,
    s_sh_sh_ddr_stat_rd1,
    s_sh_sh_ddr_stat_wr2,
    s_sh_sh_ddr_stat_rd2,
    s_sh_sh_cl_ddr_awready,
    s_sh_sh_cl_ddr_wready,
    s_sh_sh_cl_ddr_bvalid,
    s_sh_sh_cl_ddr_arready,
    s_sh_sh_cl_ddr_rlast,
    s_sh_sh_cl_ddr_rvalid,
    s_sh_sh_cl_ddr_is_ready,
    s_sh_sh_ddr_stat_addr0,
    s_sh_sh_ddr_stat_wdata0,
    s_sh_sh_ddr_stat_addr1,
    s_sh_sh_ddr_stat_wdata1,
    s_sh_sh_ddr_stat_addr2,
    s_sh_sh_ddr_stat_wdata2,
    s_sh_sh_cl_ddr_bid,
    s_sh_sh_cl_ddr_bresp,
    s_sh_sh_cl_ddr_rid,
    s_sh_sh_cl_ddr_rdata,
    s_sh_sh_cl_ddr_rresp,
    s_sh_ddr_sh_stat_ack0,
    s_sh_ddr_sh_stat_ack1,
    s_sh_ddr_sh_stat_ack2,
    s_sh_m_a_act_n,
    s_sh_m_a_cke,
    s_sh_m_a_odt,
    s_sh_m_a_cs_n,
    s_sh_m_a_clk_dn,
    s_sh_m_a_clk_dp,
    s_sh_m_a_par,
    s_sh_cl_rst_dimm_a_n,
    s_sh_m_b_act_n,
    s_sh_m_b_cke,
    s_sh_m_b_odt,
    s_sh_m_b_cs_n,
    s_sh_m_b_clk_dn,
    s_sh_m_b_clk_dp,
    s_sh_m_b_par,
    s_sh_cl_rst_dimm_b_n,
    s_sh_m_d_act_n,
    s_sh_m_d_cke,
    s_sh_m_d_odt,
    s_sh_m_d_cs_n,
    s_sh_m_d_clk_dn,
    s_sh_m_d_clk_dp,
    s_sh_m_d_par,
    s_sh_cl_rst_dimm_d_n,
    s_sh_cl_sh_ddr_awvalid,
    s_sh_cl_sh_ddr_wlast,
    s_sh_cl_sh_ddr_wvalid,
    s_sh_cl_sh_ddr_bready,
    s_sh_cl_sh_ddr_arvalid,
    s_sh_cl_sh_ddr_rready,
    s_sh_m_a_ma,
    s_sh_m_a_ba,
    s_sh_m_a_bg,
    s_sh_m_b_ma,
    s_sh_m_b_ba,
    s_sh_m_b_bg,
    s_sh_m_d_ma,
    s_sh_m_d_ba,
    s_sh_m_d_bg,
    s_sh_ddr_sh_stat_rdata0,
    s_sh_ddr_sh_stat_int0,
    s_sh_ddr_sh_stat_rdata1,
    s_sh_ddr_sh_stat_int1,
    s_sh_ddr_sh_stat_rdata2,
    s_sh_ddr_sh_stat_int2,
    s_sh_cl_sh_ddr_awid,
    s_sh_cl_sh_ddr_awaddr,
    s_sh_cl_sh_ddr_awlen,
    s_sh_cl_sh_ddr_awsize,
    s_sh_cl_sh_ddr_awburst,
    s_sh_cl_sh_ddr_wid,
    s_sh_cl_sh_ddr_wdata,
    s_sh_cl_sh_ddr_wstrb,
    s_sh_cl_sh_ddr_arid,
    s_sh_cl_sh_ddr_araddr,
    s_sh_cl_sh_ddr_arlen,
    s_sh_cl_sh_ddr_arsize,
    s_sh_cl_sh_ddr_arburst,
    s_sh_m_a_dq,
    s_sh_m_a_ecc,
    s_sh_m_a_dqs_dp,
    s_sh_m_a_dqs_dn,
    s_sh_m_b_dq,
    s_sh_m_b_ecc,
    s_sh_m_b_dqs_dp,
    s_sh_m_b_dqs_dn,
    s_sh_m_d_dq,
    s_sh_m_d_ecc,
    s_sh_m_d_dqs_dp,
    s_sh_m_d_dqs_dn,
    ddr4_mem_calib_complete,
    S00_AXI_arid,
    S00_AXI_awid,
    S00_AXI_bid,
    S00_AXI_rid,
    S01_AXI_arid,
    S01_AXI_awid,
    S01_AXI_bid,
    S01_AXI_rid,
    S02_AXI_arid,
    S02_AXI_awid,
    S02_AXI_bid,
    S02_AXI_rid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_data_h2c_00, ASSOCIATED_BUSIF S00_AXI, INSERT_VIP 0, ASSOCIATED_CLKEN m_sc_aclken" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk1, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, ASSOCIATED_BUSIF S01_AXI:S02_AXI, INSERT_VIP 0, ASSOCIATED_CLKEN m_sc_aclken" *) input aclk1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [36:0]S00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]S00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]S00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION" *) input [3:0]S00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input S00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output S00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [511:0]S00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [63:0]S00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input S00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input S00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output S00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]S00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output S00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input S00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [36:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]S00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION" *) input [3:0]S00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [511:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output S00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR" *) input [35:0]S01_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLEN" *) input [7:0]S01_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE" *) input [2:0]S01_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWBURST" *) input [1:0]S01_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK" *) input [0:0]S01_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE" *) input [3:0]S01_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT" *) input [2:0]S01_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREGION" *) input [3:0]S01_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWQOS" *) input [3:0]S01_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID" *) input S01_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY" *) output S01_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WDATA" *) input [31:0]S01_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB" *) input [3:0]S01_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WLAST" *) input S01_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WVALID" *) input S01_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WREADY" *) output S01_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BRESP" *) output [1:0]S01_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BVALID" *) output S01_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BREADY" *) input S01_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR" *) input [35:0]S01_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLEN" *) input [7:0]S01_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE" *) input [2:0]S01_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARBURST" *) input [1:0]S01_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK" *) input [0:0]S01_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE" *) input [3:0]S01_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT" *) input [2:0]S01_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREGION" *) input [3:0]S01_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARQOS" *) input [3:0]S01_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID" *) input S01_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY" *) output S01_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RDATA" *) output [31:0]S01_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RRESP" *) output [1:0]S01_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RLAST" *) output S01_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RVALID" *) output S01_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RREADY" *) input S01_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWADDR" *) input [35:0]S02_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLEN" *) input [7:0]S02_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWSIZE" *) input [2:0]S02_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWBURST" *) input [1:0]S02_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK" *) input [0:0]S02_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE" *) input [3:0]S02_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWPROT" *) input [2:0]S02_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWREGION" *) input [3:0]S02_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWQOS" *) input [3:0]S02_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWVALID" *) input S02_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWREADY" *) output S02_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WDATA" *) input [31:0]S02_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WSTRB" *) input [3:0]S02_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WLAST" *) input S02_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WVALID" *) input S02_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WREADY" *) output S02_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BRESP" *) output [1:0]S02_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BVALID" *) output S02_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BREADY" *) input S02_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARADDR" *) input [35:0]S02_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLEN" *) input [7:0]S02_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARSIZE" *) input [2:0]S02_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARBURST" *) input [1:0]S02_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK" *) input [0:0]S02_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE" *) input [3:0]S02_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARPROT" *) input [2:0]S02_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARREGION" *) input [3:0]S02_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARQOS" *) input [3:0]S02_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARVALID" *) input S02_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARREADY" *) output S02_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RDATA" *) output [31:0]S02_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RRESP" *) output [1:0]S02_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RLAST" *) output S02_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RVALID" *) output S02_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RREADY" *) input S02_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh rst_main_n" *) input s_sh_rst_main_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh clk_main_a0" *) input s_sh_clk_main_a0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM0_DP" *) input s_sh_clk_300m_dimm0_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM0_DN" *) input s_sh_clk_300m_dimm0_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM1_DP" *) input s_sh_clk_300m_dimm1_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM1_DN" *) input s_sh_clk_300m_dimm1_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM3_DP" *) input s_sh_clk_300m_dimm3_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM3_DN" *) input s_sh_clk_300m_dimm3_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr0" *) input s_sh_sh_ddr_stat_wr0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd0" *) input s_sh_sh_ddr_stat_rd0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr1" *) input s_sh_sh_ddr_stat_wr1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd1" *) input s_sh_sh_ddr_stat_rd1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr2" *) input s_sh_sh_ddr_stat_wr2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd2" *) input s_sh_sh_ddr_stat_rd2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_awready" *) input s_sh_sh_cl_ddr_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_wready" *) input s_sh_sh_cl_ddr_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bvalid" *) input s_sh_sh_cl_ddr_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_arready" *) input s_sh_sh_cl_ddr_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rlast" *) input s_sh_sh_cl_ddr_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rvalid" *) input s_sh_sh_cl_ddr_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_is_ready" *) input s_sh_sh_cl_ddr_is_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr0" *) input [7:0]s_sh_sh_ddr_stat_addr0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata0" *) input [31:0]s_sh_sh_ddr_stat_wdata0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr1" *) input [7:0]s_sh_sh_ddr_stat_addr1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata1" *) input [31:0]s_sh_sh_ddr_stat_wdata1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr2" *) input [7:0]s_sh_sh_ddr_stat_addr2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata2" *) input [31:0]s_sh_sh_ddr_stat_wdata2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bid" *) input [15:0]s_sh_sh_cl_ddr_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bresp" *) input [1:0]s_sh_sh_cl_ddr_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rid" *) input [15:0]s_sh_sh_cl_ddr_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rdata" *) input [511:0]s_sh_sh_cl_ddr_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rresp" *) input [1:0]s_sh_sh_cl_ddr_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack0" *) output s_sh_ddr_sh_stat_ack0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack1" *) output s_sh_ddr_sh_stat_ack1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack2" *) output s_sh_ddr_sh_stat_ack2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ACT_N" *) output s_sh_m_a_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CKE" *) output [0:0]s_sh_m_a_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ODT" *) output [0:0]s_sh_m_a_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CS_N" *) output [0:0]s_sh_m_a_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CLK_DN" *) output [0:0]s_sh_m_a_clk_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CLK_DP" *) output [0:0]s_sh_m_a_clk_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_PAR" *) output s_sh_m_a_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_A_N" *) output s_sh_cl_rst_dimm_a_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ACT_N" *) output s_sh_m_b_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CKE" *) output [0:0]s_sh_m_b_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ODT" *) output [0:0]s_sh_m_b_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CS_N" *) output [0:0]s_sh_m_b_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CLK_DN" *) output [0:0]s_sh_m_b_clk_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CLK_DP" *) output [0:0]s_sh_m_b_clk_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_PAR" *) output s_sh_m_b_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_B_N" *) output s_sh_cl_rst_dimm_b_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ACT_N" *) output s_sh_m_d_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CKE" *) output [0:0]s_sh_m_d_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ODT" *) output [0:0]s_sh_m_d_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CS_N" *) output [0:0]s_sh_m_d_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CLK_DN" *) output [0:0]s_sh_m_d_clk_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CLK_DP" *) output [0:0]s_sh_m_d_clk_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_PAR" *) output s_sh_m_d_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_D_N" *) output s_sh_cl_rst_dimm_d_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awvalid" *) output s_sh_cl_sh_ddr_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wlast" *) output s_sh_cl_sh_ddr_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wvalid" *) output s_sh_cl_sh_ddr_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_bready" *) output s_sh_cl_sh_ddr_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arvalid" *) output s_sh_cl_sh_ddr_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_rready" *) output s_sh_cl_sh_ddr_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_MA" *) output [16:0]s_sh_m_a_ma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_BA" *) output [1:0]s_sh_m_a_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_BG" *) output [1:0]s_sh_m_a_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_MA" *) output [16:0]s_sh_m_b_ma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_BA" *) output [1:0]s_sh_m_b_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_BG" *) output [1:0]s_sh_m_b_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_MA" *) output [16:0]s_sh_m_d_ma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_BA" *) output [1:0]s_sh_m_d_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_BG" *) output [1:0]s_sh_m_d_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata0" *) output [31:0]s_sh_ddr_sh_stat_rdata0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int0" *) output [7:0]s_sh_ddr_sh_stat_int0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata1" *) output [31:0]s_sh_ddr_sh_stat_rdata1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int1" *) output [7:0]s_sh_ddr_sh_stat_int1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata2" *) output [31:0]s_sh_ddr_sh_stat_rdata2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int2" *) output [7:0]s_sh_ddr_sh_stat_int2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awid" *) output [15:0]s_sh_cl_sh_ddr_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awaddr" *) output [63:0]s_sh_cl_sh_ddr_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awlen" *) output [7:0]s_sh_cl_sh_ddr_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awsize" *) output [2:0]s_sh_cl_sh_ddr_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awburst" *) output [1:0]s_sh_cl_sh_ddr_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wid" *) output [15:0]s_sh_cl_sh_ddr_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wdata" *) output [511:0]s_sh_cl_sh_ddr_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wstrb" *) output [63:0]s_sh_cl_sh_ddr_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arid" *) output [15:0]s_sh_cl_sh_ddr_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_araddr" *) output [63:0]s_sh_cl_sh_ddr_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arlen" *) output [7:0]s_sh_cl_sh_ddr_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arsize" *) output [2:0]s_sh_cl_sh_ddr_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arburst" *) output [1:0]s_sh_cl_sh_ddr_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQ" *) inout [63:0]s_sh_m_a_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ECC" *) inout [7:0]s_sh_m_a_ecc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQS_DP" *) inout [17:0]s_sh_m_a_dqs_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQS_DN" *) inout [17:0]s_sh_m_a_dqs_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQ" *) inout [63:0]s_sh_m_b_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ECC" *) inout [7:0]s_sh_m_b_ecc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQS_DP" *) inout [17:0]s_sh_m_b_dqs_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQS_DN" *) inout [17:0]s_sh_m_b_dqs_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQ" *) inout [63:0]s_sh_m_d_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ECC" *) inout [7:0]s_sh_m_d_ecc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQS_DP" *) inout [17:0]s_sh_m_d_dqs_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQS_DN" *) inout [17:0]s_sh_m_d_dqs_dn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ddr4_mem_calib_complete DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ddr4_mem_calib_complete, LAYERED_METADATA undef" *) output ddr4_mem_calib_complete;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *) input [5:0]S00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *) input [5:0]S00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *) output [5:0]S00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 6, ADDR_WIDTH 37, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [5:0]S00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARID" *) input [0:0]S01_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWID" *) input [0:0]S01_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BID" *) output [0:0]S01_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 1, ADDR_WIDTH 36, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [0:0]S01_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARID" *) input [0:0]S02_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWID" *) input [0:0]S02_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BID" *) output [0:0]S02_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S02_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 1, ADDR_WIDTH 36, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [0:0]S02_AXI_rid;

  wire [36:0]S00_AXI_araddr;
  wire [5:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire [2:0]S00_AXI_arprot;
  wire S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire S00_AXI_arvalid;
  wire [36:0]S00_AXI_awaddr;
  wire [5:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [2:0]S00_AXI_awprot;
  wire S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire S00_AXI_awvalid;
  wire [5:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire [5:0]S00_AXI_rid;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [35:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [0:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire [0:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire S01_AXI_arready;
  wire [3:0]S01_AXI_arregion;
  wire [2:0]S01_AXI_arsize;
  wire S01_AXI_arvalid;
  wire [35:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [0:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire S01_AXI_awready;
  wire [3:0]S01_AXI_awregion;
  wire [2:0]S01_AXI_awsize;
  wire S01_AXI_awvalid;
  wire [0:0]S01_AXI_bid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [31:0]S01_AXI_rdata;
  wire [0:0]S01_AXI_rid;
  wire S01_AXI_rlast;
  wire S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire S01_AXI_rvalid;
  wire [31:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [3:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire [35:0]S02_AXI_araddr;
  wire [1:0]S02_AXI_arburst;
  wire [3:0]S02_AXI_arcache;
  wire [0:0]S02_AXI_arid;
  wire [7:0]S02_AXI_arlen;
  wire [0:0]S02_AXI_arlock;
  wire [2:0]S02_AXI_arprot;
  wire [3:0]S02_AXI_arqos;
  wire S02_AXI_arready;
  wire [3:0]S02_AXI_arregion;
  wire [2:0]S02_AXI_arsize;
  wire S02_AXI_arvalid;
  wire [35:0]S02_AXI_awaddr;
  wire [1:0]S02_AXI_awburst;
  wire [3:0]S02_AXI_awcache;
  wire [0:0]S02_AXI_awid;
  wire [7:0]S02_AXI_awlen;
  wire [0:0]S02_AXI_awlock;
  wire [2:0]S02_AXI_awprot;
  wire [3:0]S02_AXI_awqos;
  wire S02_AXI_awready;
  wire [3:0]S02_AXI_awregion;
  wire [2:0]S02_AXI_awsize;
  wire S02_AXI_awvalid;
  wire [0:0]S02_AXI_bid;
  wire S02_AXI_bready;
  wire [1:0]S02_AXI_bresp;
  wire S02_AXI_bvalid;
  wire [31:0]S02_AXI_rdata;
  wire [0:0]S02_AXI_rid;
  wire S02_AXI_rlast;
  wire S02_AXI_rready;
  wire [1:0]S02_AXI_rresp;
  wire S02_AXI_rvalid;
  wire [31:0]S02_AXI_wdata;
  wire S02_AXI_wlast;
  wire S02_AXI_wready;
  wire [3:0]S02_AXI_wstrb;
  wire S02_AXI_wvalid;
  wire aclk;
  wire aclk1;
  wire aresetn;
  wire ddr4_mem_calib_complete;
  wire s_sh_cl_rst_dimm_a_n;
  wire s_sh_cl_rst_dimm_b_n;
  wire s_sh_cl_rst_dimm_d_n;
  wire [63:0]s_sh_cl_sh_ddr_araddr;
  wire [1:0]s_sh_cl_sh_ddr_arburst;
  wire [15:0]s_sh_cl_sh_ddr_arid;
  wire [7:0]s_sh_cl_sh_ddr_arlen;
  wire [2:0]s_sh_cl_sh_ddr_arsize;
  wire s_sh_cl_sh_ddr_arvalid;
  wire [63:0]s_sh_cl_sh_ddr_awaddr;
  wire [1:0]s_sh_cl_sh_ddr_awburst;
  wire [15:0]s_sh_cl_sh_ddr_awid;
  wire [7:0]s_sh_cl_sh_ddr_awlen;
  wire [2:0]s_sh_cl_sh_ddr_awsize;
  wire s_sh_cl_sh_ddr_awvalid;
  wire s_sh_cl_sh_ddr_bready;
  wire s_sh_cl_sh_ddr_rready;
  wire [511:0]s_sh_cl_sh_ddr_wdata;
  wire [15:0]s_sh_cl_sh_ddr_wid;
  wire s_sh_cl_sh_ddr_wlast;
  wire [63:0]s_sh_cl_sh_ddr_wstrb;
  wire s_sh_cl_sh_ddr_wvalid;
  wire s_sh_clk_300m_dimm0_dn;
  wire s_sh_clk_300m_dimm0_dp;
  wire s_sh_clk_300m_dimm1_dn;
  wire s_sh_clk_300m_dimm1_dp;
  wire s_sh_clk_300m_dimm3_dn;
  wire s_sh_clk_300m_dimm3_dp;
  wire s_sh_clk_main_a0;
  wire s_sh_ddr_sh_stat_ack0;
  wire s_sh_ddr_sh_stat_ack1;
  wire s_sh_ddr_sh_stat_ack2;
  wire [7:0]s_sh_ddr_sh_stat_int0;
  wire [7:0]s_sh_ddr_sh_stat_int1;
  wire [7:0]s_sh_ddr_sh_stat_int2;
  wire [31:0]s_sh_ddr_sh_stat_rdata0;
  wire [31:0]s_sh_ddr_sh_stat_rdata1;
  wire [31:0]s_sh_ddr_sh_stat_rdata2;
  wire s_sh_m_a_act_n;
  wire [1:0]s_sh_m_a_ba;
  wire [1:0]s_sh_m_a_bg;
  wire [0:0]s_sh_m_a_cke;
  wire [0:0]s_sh_m_a_clk_dn;
  wire [0:0]s_sh_m_a_clk_dp;
  wire [0:0]s_sh_m_a_cs_n;
  wire [63:0]s_sh_m_a_dq;
  wire [17:0]s_sh_m_a_dqs_dn;
  wire [17:0]s_sh_m_a_dqs_dp;
  wire [7:0]s_sh_m_a_ecc;
  wire [16:0]s_sh_m_a_ma;
  wire [0:0]s_sh_m_a_odt;
  wire s_sh_m_a_par;
  wire s_sh_m_b_act_n;
  wire [1:0]s_sh_m_b_ba;
  wire [1:0]s_sh_m_b_bg;
  wire [0:0]s_sh_m_b_cke;
  wire [0:0]s_sh_m_b_clk_dn;
  wire [0:0]s_sh_m_b_clk_dp;
  wire [0:0]s_sh_m_b_cs_n;
  wire [63:0]s_sh_m_b_dq;
  wire [17:0]s_sh_m_b_dqs_dn;
  wire [17:0]s_sh_m_b_dqs_dp;
  wire [7:0]s_sh_m_b_ecc;
  wire [16:0]s_sh_m_b_ma;
  wire [0:0]s_sh_m_b_odt;
  wire s_sh_m_b_par;
  wire s_sh_m_d_act_n;
  wire [1:0]s_sh_m_d_ba;
  wire [1:0]s_sh_m_d_bg;
  wire [0:0]s_sh_m_d_cke;
  wire [0:0]s_sh_m_d_clk_dn;
  wire [0:0]s_sh_m_d_clk_dp;
  wire [0:0]s_sh_m_d_cs_n;
  wire [63:0]s_sh_m_d_dq;
  wire [17:0]s_sh_m_d_dqs_dn;
  wire [17:0]s_sh_m_d_dqs_dp;
  wire [7:0]s_sh_m_d_ecc;
  wire [16:0]s_sh_m_d_ma;
  wire [0:0]s_sh_m_d_odt;
  wire s_sh_m_d_par;
  wire s_sh_rst_main_n;
  wire s_sh_sh_cl_ddr_arready;
  wire s_sh_sh_cl_ddr_awready;
  wire [15:0]s_sh_sh_cl_ddr_bid;
  wire [1:0]s_sh_sh_cl_ddr_bresp;
  wire s_sh_sh_cl_ddr_bvalid;
  wire s_sh_sh_cl_ddr_is_ready;
  wire [511:0]s_sh_sh_cl_ddr_rdata;
  wire [15:0]s_sh_sh_cl_ddr_rid;
  wire s_sh_sh_cl_ddr_rlast;
  wire [1:0]s_sh_sh_cl_ddr_rresp;
  wire s_sh_sh_cl_ddr_rvalid;
  wire s_sh_sh_cl_ddr_wready;
  wire [7:0]s_sh_sh_ddr_stat_addr0;
  wire [7:0]s_sh_sh_ddr_stat_addr1;
  wire [7:0]s_sh_sh_ddr_stat_addr2;
  wire s_sh_sh_ddr_stat_rd0;
  wire s_sh_sh_ddr_stat_rd1;
  wire s_sh_sh_ddr_stat_rd2;
  wire [31:0]s_sh_sh_ddr_stat_wdata0;
  wire [31:0]s_sh_sh_ddr_stat_wdata1;
  wire [31:0]s_sh_sh_ddr_stat_wdata2;
  wire s_sh_sh_ddr_stat_wr0;
  wire s_sh_sh_ddr_stat_wr1;
  wire s_sh_sh_ddr_stat_wr2;

  (* HW_HANDOFF = "cl_HIP_0.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329 inst
       (.S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arid(S00_AXI_arid),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arregion(S00_AXI_arregion),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awid(S00_AXI_awid),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awregion(S00_AXI_awregion),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bid(S00_AXI_bid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rid(S00_AXI_rid),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .S01_AXI_araddr(S01_AXI_araddr),
        .S01_AXI_arburst(S01_AXI_arburst),
        .S01_AXI_arcache(S01_AXI_arcache),
        .S01_AXI_arid(S01_AXI_arid),
        .S01_AXI_arlen(S01_AXI_arlen),
        .S01_AXI_arlock(S01_AXI_arlock),
        .S01_AXI_arprot(S01_AXI_arprot),
        .S01_AXI_arqos(S01_AXI_arqos),
        .S01_AXI_arready(S01_AXI_arready),
        .S01_AXI_arregion(S01_AXI_arregion),
        .S01_AXI_arsize(S01_AXI_arsize),
        .S01_AXI_arvalid(S01_AXI_arvalid),
        .S01_AXI_awaddr(S01_AXI_awaddr),
        .S01_AXI_awburst(S01_AXI_awburst),
        .S01_AXI_awcache(S01_AXI_awcache),
        .S01_AXI_awid(S01_AXI_awid),
        .S01_AXI_awlen(S01_AXI_awlen),
        .S01_AXI_awlock(S01_AXI_awlock),
        .S01_AXI_awprot(S01_AXI_awprot),
        .S01_AXI_awqos(S01_AXI_awqos),
        .S01_AXI_awready(S01_AXI_awready),
        .S01_AXI_awregion(S01_AXI_awregion),
        .S01_AXI_awsize(S01_AXI_awsize),
        .S01_AXI_awvalid(S01_AXI_awvalid),
        .S01_AXI_bid(S01_AXI_bid),
        .S01_AXI_bready(S01_AXI_bready),
        .S01_AXI_bresp(S01_AXI_bresp),
        .S01_AXI_bvalid(S01_AXI_bvalid),
        .S01_AXI_rdata(S01_AXI_rdata),
        .S01_AXI_rid(S01_AXI_rid),
        .S01_AXI_rlast(S01_AXI_rlast),
        .S01_AXI_rready(S01_AXI_rready),
        .S01_AXI_rresp(S01_AXI_rresp),
        .S01_AXI_rvalid(S01_AXI_rvalid),
        .S01_AXI_wdata(S01_AXI_wdata),
        .S01_AXI_wlast(S01_AXI_wlast),
        .S01_AXI_wready(S01_AXI_wready),
        .S01_AXI_wstrb(S01_AXI_wstrb),
        .S01_AXI_wvalid(S01_AXI_wvalid),
        .S02_AXI_araddr(S02_AXI_araddr),
        .S02_AXI_arburst(S02_AXI_arburst),
        .S02_AXI_arcache(S02_AXI_arcache),
        .S02_AXI_arid(S02_AXI_arid),
        .S02_AXI_arlen(S02_AXI_arlen),
        .S02_AXI_arlock(S02_AXI_arlock),
        .S02_AXI_arprot(S02_AXI_arprot),
        .S02_AXI_arqos(S02_AXI_arqos),
        .S02_AXI_arready(S02_AXI_arready),
        .S02_AXI_arregion(S02_AXI_arregion),
        .S02_AXI_arsize(S02_AXI_arsize),
        .S02_AXI_arvalid(S02_AXI_arvalid),
        .S02_AXI_awaddr(S02_AXI_awaddr),
        .S02_AXI_awburst(S02_AXI_awburst),
        .S02_AXI_awcache(S02_AXI_awcache),
        .S02_AXI_awid(S02_AXI_awid),
        .S02_AXI_awlen(S02_AXI_awlen),
        .S02_AXI_awlock(S02_AXI_awlock),
        .S02_AXI_awprot(S02_AXI_awprot),
        .S02_AXI_awqos(S02_AXI_awqos),
        .S02_AXI_awready(S02_AXI_awready),
        .S02_AXI_awregion(S02_AXI_awregion),
        .S02_AXI_awsize(S02_AXI_awsize),
        .S02_AXI_awvalid(S02_AXI_awvalid),
        .S02_AXI_bid(S02_AXI_bid),
        .S02_AXI_bready(S02_AXI_bready),
        .S02_AXI_bresp(S02_AXI_bresp),
        .S02_AXI_bvalid(S02_AXI_bvalid),
        .S02_AXI_rdata(S02_AXI_rdata),
        .S02_AXI_rid(S02_AXI_rid),
        .S02_AXI_rlast(S02_AXI_rlast),
        .S02_AXI_rready(S02_AXI_rready),
        .S02_AXI_rresp(S02_AXI_rresp),
        .S02_AXI_rvalid(S02_AXI_rvalid),
        .S02_AXI_wdata(S02_AXI_wdata),
        .S02_AXI_wlast(S02_AXI_wlast),
        .S02_AXI_wready(S02_AXI_wready),
        .S02_AXI_wstrb(S02_AXI_wstrb),
        .S02_AXI_wvalid(S02_AXI_wvalid),
        .aclk(aclk),
        .aclk1(aclk1),
        .aresetn(aresetn),
        .ddr4_mem_calib_complete(ddr4_mem_calib_complete),
        .s_sh_cl_rst_dimm_a_n(s_sh_cl_rst_dimm_a_n),
        .s_sh_cl_rst_dimm_b_n(s_sh_cl_rst_dimm_b_n),
        .s_sh_cl_rst_dimm_d_n(s_sh_cl_rst_dimm_d_n),
        .s_sh_cl_sh_ddr_araddr(s_sh_cl_sh_ddr_araddr),
        .s_sh_cl_sh_ddr_arburst(s_sh_cl_sh_ddr_arburst),
        .s_sh_cl_sh_ddr_arid(s_sh_cl_sh_ddr_arid),
        .s_sh_cl_sh_ddr_arlen(s_sh_cl_sh_ddr_arlen),
        .s_sh_cl_sh_ddr_arsize(s_sh_cl_sh_ddr_arsize),
        .s_sh_cl_sh_ddr_arvalid(s_sh_cl_sh_ddr_arvalid),
        .s_sh_cl_sh_ddr_awaddr(s_sh_cl_sh_ddr_awaddr),
        .s_sh_cl_sh_ddr_awburst(s_sh_cl_sh_ddr_awburst),
        .s_sh_cl_sh_ddr_awid(s_sh_cl_sh_ddr_awid),
        .s_sh_cl_sh_ddr_awlen(s_sh_cl_sh_ddr_awlen),
        .s_sh_cl_sh_ddr_awsize(s_sh_cl_sh_ddr_awsize),
        .s_sh_cl_sh_ddr_awvalid(s_sh_cl_sh_ddr_awvalid),
        .s_sh_cl_sh_ddr_bready(s_sh_cl_sh_ddr_bready),
        .s_sh_cl_sh_ddr_rready(s_sh_cl_sh_ddr_rready),
        .s_sh_cl_sh_ddr_wdata(s_sh_cl_sh_ddr_wdata),
        .s_sh_cl_sh_ddr_wid(s_sh_cl_sh_ddr_wid),
        .s_sh_cl_sh_ddr_wlast(s_sh_cl_sh_ddr_wlast),
        .s_sh_cl_sh_ddr_wstrb(s_sh_cl_sh_ddr_wstrb),
        .s_sh_cl_sh_ddr_wvalid(s_sh_cl_sh_ddr_wvalid),
        .s_sh_clk_300m_dimm0_dn(s_sh_clk_300m_dimm0_dn),
        .s_sh_clk_300m_dimm0_dp(s_sh_clk_300m_dimm0_dp),
        .s_sh_clk_300m_dimm1_dn(s_sh_clk_300m_dimm1_dn),
        .s_sh_clk_300m_dimm1_dp(s_sh_clk_300m_dimm1_dp),
        .s_sh_clk_300m_dimm3_dn(s_sh_clk_300m_dimm3_dn),
        .s_sh_clk_300m_dimm3_dp(s_sh_clk_300m_dimm3_dp),
        .s_sh_clk_main_a0(s_sh_clk_main_a0),
        .s_sh_ddr_sh_stat_ack0(s_sh_ddr_sh_stat_ack0),
        .s_sh_ddr_sh_stat_ack1(s_sh_ddr_sh_stat_ack1),
        .s_sh_ddr_sh_stat_ack2(s_sh_ddr_sh_stat_ack2),
        .s_sh_ddr_sh_stat_int0(s_sh_ddr_sh_stat_int0),
        .s_sh_ddr_sh_stat_int1(s_sh_ddr_sh_stat_int1),
        .s_sh_ddr_sh_stat_int2(s_sh_ddr_sh_stat_int2),
        .s_sh_ddr_sh_stat_rdata0(s_sh_ddr_sh_stat_rdata0),
        .s_sh_ddr_sh_stat_rdata1(s_sh_ddr_sh_stat_rdata1),
        .s_sh_ddr_sh_stat_rdata2(s_sh_ddr_sh_stat_rdata2),
        .s_sh_m_a_act_n(s_sh_m_a_act_n),
        .s_sh_m_a_ba(s_sh_m_a_ba),
        .s_sh_m_a_bg(s_sh_m_a_bg),
        .s_sh_m_a_cke(s_sh_m_a_cke),
        .s_sh_m_a_clk_dn(s_sh_m_a_clk_dn),
        .s_sh_m_a_clk_dp(s_sh_m_a_clk_dp),
        .s_sh_m_a_cs_n(s_sh_m_a_cs_n),
        .s_sh_m_a_dq(s_sh_m_a_dq),
        .s_sh_m_a_dqs_dn(s_sh_m_a_dqs_dn),
        .s_sh_m_a_dqs_dp(s_sh_m_a_dqs_dp),
        .s_sh_m_a_ecc(s_sh_m_a_ecc),
        .s_sh_m_a_ma(s_sh_m_a_ma),
        .s_sh_m_a_odt(s_sh_m_a_odt),
        .s_sh_m_a_par(s_sh_m_a_par),
        .s_sh_m_b_act_n(s_sh_m_b_act_n),
        .s_sh_m_b_ba(s_sh_m_b_ba),
        .s_sh_m_b_bg(s_sh_m_b_bg),
        .s_sh_m_b_cke(s_sh_m_b_cke),
        .s_sh_m_b_clk_dn(s_sh_m_b_clk_dn),
        .s_sh_m_b_clk_dp(s_sh_m_b_clk_dp),
        .s_sh_m_b_cs_n(s_sh_m_b_cs_n),
        .s_sh_m_b_dq(s_sh_m_b_dq),
        .s_sh_m_b_dqs_dn(s_sh_m_b_dqs_dn),
        .s_sh_m_b_dqs_dp(s_sh_m_b_dqs_dp),
        .s_sh_m_b_ecc(s_sh_m_b_ecc),
        .s_sh_m_b_ma(s_sh_m_b_ma),
        .s_sh_m_b_odt(s_sh_m_b_odt),
        .s_sh_m_b_par(s_sh_m_b_par),
        .s_sh_m_d_act_n(s_sh_m_d_act_n),
        .s_sh_m_d_ba(s_sh_m_d_ba),
        .s_sh_m_d_bg(s_sh_m_d_bg),
        .s_sh_m_d_cke(s_sh_m_d_cke),
        .s_sh_m_d_clk_dn(s_sh_m_d_clk_dn),
        .s_sh_m_d_clk_dp(s_sh_m_d_clk_dp),
        .s_sh_m_d_cs_n(s_sh_m_d_cs_n),
        .s_sh_m_d_dq(s_sh_m_d_dq),
        .s_sh_m_d_dqs_dn(s_sh_m_d_dqs_dn),
        .s_sh_m_d_dqs_dp(s_sh_m_d_dqs_dp),
        .s_sh_m_d_ecc(s_sh_m_d_ecc),
        .s_sh_m_d_ma(s_sh_m_d_ma),
        .s_sh_m_d_odt(s_sh_m_d_odt),
        .s_sh_m_d_par(s_sh_m_d_par),
        .s_sh_rst_main_n(s_sh_rst_main_n),
        .s_sh_sh_cl_ddr_arready(s_sh_sh_cl_ddr_arready),
        .s_sh_sh_cl_ddr_awready(s_sh_sh_cl_ddr_awready),
        .s_sh_sh_cl_ddr_bid(s_sh_sh_cl_ddr_bid),
        .s_sh_sh_cl_ddr_bresp(s_sh_sh_cl_ddr_bresp),
        .s_sh_sh_cl_ddr_bvalid(s_sh_sh_cl_ddr_bvalid),
        .s_sh_sh_cl_ddr_is_ready(s_sh_sh_cl_ddr_is_ready),
        .s_sh_sh_cl_ddr_rdata(s_sh_sh_cl_ddr_rdata),
        .s_sh_sh_cl_ddr_rid(s_sh_sh_cl_ddr_rid),
        .s_sh_sh_cl_ddr_rlast(s_sh_sh_cl_ddr_rlast),
        .s_sh_sh_cl_ddr_rresp(s_sh_sh_cl_ddr_rresp),
        .s_sh_sh_cl_ddr_rvalid(s_sh_sh_cl_ddr_rvalid),
        .s_sh_sh_cl_ddr_wready(s_sh_sh_cl_ddr_wready),
        .s_sh_sh_ddr_stat_addr0(s_sh_sh_ddr_stat_addr0),
        .s_sh_sh_ddr_stat_addr1(s_sh_sh_ddr_stat_addr1),
        .s_sh_sh_ddr_stat_addr2(s_sh_sh_ddr_stat_addr2),
        .s_sh_sh_ddr_stat_rd0(s_sh_sh_ddr_stat_rd0),
        .s_sh_sh_ddr_stat_rd1(s_sh_sh_ddr_stat_rd1),
        .s_sh_sh_ddr_stat_rd2(s_sh_sh_ddr_stat_rd2),
        .s_sh_sh_ddr_stat_wdata0(s_sh_sh_ddr_stat_wdata0),
        .s_sh_sh_ddr_stat_wdata1(s_sh_sh_ddr_stat_wdata1),
        .s_sh_sh_ddr_stat_wdata2(s_sh_sh_ddr_stat_wdata2),
        .s_sh_sh_ddr_stat_wr0(s_sh_sh_ddr_stat_wr0),
        .s_sh_sh_ddr_stat_wr1(s_sh_sh_ddr_stat_wr1),
        .s_sh_sh_ddr_stat_wr2(s_sh_sh_ddr_stat_wr2));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interconnect_imp_1XWE5B8
   (M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_rready,
    S00_AXI_awready,
    S00_AXI_wready,
    S00_AXI_bid,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_arready,
    S00_AXI_rid,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S01_AXI_awready,
    S01_AXI_wready,
    S01_AXI_bid,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_arready,
    S01_AXI_rid,
    S01_AXI_rdata,
    S01_AXI_rresp,
    S01_AXI_rlast,
    S01_AXI_rvalid,
    S02_AXI_awready,
    S02_AXI_wready,
    S02_AXI_bid,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_arready,
    S02_AXI_rid,
    S02_AXI_rdata,
    S02_AXI_rresp,
    S02_AXI_rlast,
    S02_AXI_rvalid,
    aclk,
    S00_AXI_awready_0,
    aclk1,
    interconnect_aresetn1,
    S_AXI_awready,
    S_AXI_wready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_arready,
    S_AXI_rdata,
    S_AXI_rresp,
    S_AXI_rlast,
    S_AXI_rvalid,
    interconnect_aresetn,
    S00_AXI_awid,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awregion,
    S00_AXI_awvalid,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_bready,
    S00_AXI_arid,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arregion,
    S00_AXI_arvalid,
    S00_AXI_rready,
    interconnect_aresetn2,
    S01_AXI_awid,
    S01_AXI_awaddr,
    S01_AXI_awlen,
    S01_AXI_awsize,
    S01_AXI_awburst,
    S01_AXI_awlock,
    S01_AXI_awcache,
    S01_AXI_awprot,
    S01_AXI_awregion,
    S01_AXI_awqos,
    S01_AXI_awvalid,
    S01_AXI_wdata,
    S01_AXI_wstrb,
    S01_AXI_wlast,
    S01_AXI_wvalid,
    S01_AXI_bready,
    S01_AXI_arid,
    S01_AXI_araddr,
    S01_AXI_arlen,
    S01_AXI_arsize,
    S01_AXI_arburst,
    S01_AXI_arlock,
    S01_AXI_arcache,
    S01_AXI_arprot,
    S01_AXI_arregion,
    S01_AXI_arqos,
    S01_AXI_arvalid,
    S01_AXI_rready,
    S02_AXI_awid,
    S02_AXI_awaddr,
    S02_AXI_awlen,
    S02_AXI_awsize,
    S02_AXI_awburst,
    S02_AXI_awlock,
    S02_AXI_awcache,
    S02_AXI_awprot,
    S02_AXI_awregion,
    S02_AXI_awqos,
    S02_AXI_awvalid,
    S02_AXI_wdata,
    S02_AXI_wstrb,
    S02_AXI_wlast,
    S02_AXI_wvalid,
    S02_AXI_bready,
    S02_AXI_arid,
    S02_AXI_araddr,
    S02_AXI_arlen,
    S02_AXI_arsize,
    S02_AXI_arburst,
    S02_AXI_arlock,
    S02_AXI_arcache,
    S02_AXI_arprot,
    S02_AXI_arregion,
    S02_AXI_arqos,
    S02_AXI_arvalid,
    S02_AXI_rready);
  output [63:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  output [511:0]M00_AXI_wdata;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  output M00_AXI_bready;
  output [63:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  output M00_AXI_rready;
  output S00_AXI_awready;
  output S00_AXI_wready;
  output [5:0]S00_AXI_bid;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output S00_AXI_arready;
  output [5:0]S00_AXI_rid;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  output S01_AXI_awready;
  output S01_AXI_wready;
  output [0:0]S01_AXI_bid;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output S01_AXI_arready;
  output [0:0]S01_AXI_rid;
  output [31:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rlast;
  output S01_AXI_rvalid;
  output S02_AXI_awready;
  output S02_AXI_wready;
  output [0:0]S02_AXI_bid;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output S02_AXI_arready;
  output [0:0]S02_AXI_rid;
  output [31:0]S02_AXI_rdata;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rlast;
  output S02_AXI_rvalid;
  input aclk;
  input S00_AXI_awready_0;
  input aclk1;
  input [0:0]interconnect_aresetn1;
  input S_AXI_awready;
  input S_AXI_wready;
  input [1:0]S_AXI_bresp;
  input S_AXI_bvalid;
  input S_AXI_arready;
  input [511:0]S_AXI_rdata;
  input [1:0]S_AXI_rresp;
  input S_AXI_rlast;
  input S_AXI_rvalid;
  input [0:0]interconnect_aresetn;
  input [5:0]S00_AXI_awid;
  input [36:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awregion;
  input S00_AXI_awvalid;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  input S00_AXI_bready;
  input [5:0]S00_AXI_arid;
  input [36:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arregion;
  input S00_AXI_arvalid;
  input S00_AXI_rready;
  input [0:0]interconnect_aresetn2;
  input [0:0]S01_AXI_awid;
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
  input [31:0]S01_AXI_wdata;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wlast;
  input S01_AXI_wvalid;
  input S01_AXI_bready;
  input [0:0]S01_AXI_arid;
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
  input S01_AXI_rready;
  input [0:0]S02_AXI_awid;
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
  input [31:0]S02_AXI_wdata;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wlast;
  input S02_AXI_wvalid;
  input S02_AXI_bready;
  input [0:0]S02_AXI_arid;
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
  input S02_AXI_rready;

  wire [63:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arvalid;
  wire [63:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire M00_AXI_rready;
  wire [511:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire [63:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [36:0]S00_AXI_araddr;
  wire [5:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire [2:0]S00_AXI_arprot;
  wire S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire S00_AXI_arvalid;
  wire [36:0]S00_AXI_awaddr;
  wire [5:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [2:0]S00_AXI_awprot;
  wire S00_AXI_awready;
  wire S00_AXI_awready_0;
  wire [3:0]S00_AXI_awregion;
  wire S00_AXI_awvalid;
  wire [5:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire [5:0]S00_AXI_rid;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [35:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [0:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire [0:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire S01_AXI_arready;
  wire [3:0]S01_AXI_arregion;
  wire [2:0]S01_AXI_arsize;
  wire S01_AXI_arvalid;
  wire [35:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [0:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire S01_AXI_awready;
  wire [3:0]S01_AXI_awregion;
  wire [2:0]S01_AXI_awsize;
  wire S01_AXI_awvalid;
  wire [0:0]S01_AXI_bid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [31:0]S01_AXI_rdata;
  wire [0:0]S01_AXI_rid;
  wire S01_AXI_rlast;
  wire S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire S01_AXI_rvalid;
  wire [31:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [3:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire [35:0]S02_AXI_araddr;
  wire [1:0]S02_AXI_arburst;
  wire [3:0]S02_AXI_arcache;
  wire [0:0]S02_AXI_arid;
  wire [7:0]S02_AXI_arlen;
  wire [0:0]S02_AXI_arlock;
  wire [2:0]S02_AXI_arprot;
  wire [3:0]S02_AXI_arqos;
  wire S02_AXI_arready;
  wire [3:0]S02_AXI_arregion;
  wire [2:0]S02_AXI_arsize;
  wire S02_AXI_arvalid;
  wire [35:0]S02_AXI_awaddr;
  wire [1:0]S02_AXI_awburst;
  wire [3:0]S02_AXI_awcache;
  wire [0:0]S02_AXI_awid;
  wire [7:0]S02_AXI_awlen;
  wire [0:0]S02_AXI_awlock;
  wire [2:0]S02_AXI_awprot;
  wire [3:0]S02_AXI_awqos;
  wire S02_AXI_awready;
  wire [3:0]S02_AXI_awregion;
  wire [2:0]S02_AXI_awsize;
  wire S02_AXI_awvalid;
  wire [0:0]S02_AXI_bid;
  wire S02_AXI_bready;
  wire [1:0]S02_AXI_bresp;
  wire S02_AXI_bvalid;
  wire [31:0]S02_AXI_rdata;
  wire [0:0]S02_AXI_rid;
  wire S02_AXI_rlast;
  wire S02_AXI_rready;
  wire [1:0]S02_AXI_rresp;
  wire S02_AXI_rvalid;
  wire [31:0]S02_AXI_wdata;
  wire S02_AXI_wlast;
  wire S02_AXI_wready;
  wire [3:0]S02_AXI_wstrb;
  wire S02_AXI_wvalid;
  wire S_AXI_arready;
  wire S_AXI_awready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [511:0]S_AXI_rdata;
  wire S_AXI_rlast;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire S_AXI_wready;
  wire aclk;
  wire aclk1;
  wire [0:0]interconnect_aresetn;
  wire [0:0]interconnect_aresetn1;
  wire [0:0]interconnect_aresetn2;
  wire [36:0]vip_S00_AXI_M_AXI_ARADDR;
  wire [5:0]vip_S00_AXI_M_AXI_ARID;
  wire [7:0]vip_S00_AXI_M_AXI_ARLEN;
  wire [2:0]vip_S00_AXI_M_AXI_ARPROT;
  wire vip_S00_AXI_M_AXI_ARREADY;
  wire vip_S00_AXI_M_AXI_ARVALID;
  wire [36:0]vip_S00_AXI_M_AXI_AWADDR;
  wire [5:0]vip_S00_AXI_M_AXI_AWID;
  wire [7:0]vip_S00_AXI_M_AXI_AWLEN;
  wire [2:0]vip_S00_AXI_M_AXI_AWPROT;
  wire vip_S00_AXI_M_AXI_AWREADY;
  wire vip_S00_AXI_M_AXI_AWVALID;
  wire [5:0]vip_S00_AXI_M_AXI_BID;
  wire vip_S00_AXI_M_AXI_BREADY;
  wire [1:0]vip_S00_AXI_M_AXI_BRESP;
  wire vip_S00_AXI_M_AXI_BVALID;
  wire [511:0]vip_S00_AXI_M_AXI_RDATA;
  wire [5:0]vip_S00_AXI_M_AXI_RID;
  wire vip_S00_AXI_M_AXI_RLAST;
  wire vip_S00_AXI_M_AXI_RREADY;
  wire [1:0]vip_S00_AXI_M_AXI_RRESP;
  wire vip_S00_AXI_M_AXI_RVALID;
  wire [511:0]vip_S00_AXI_M_AXI_WDATA;
  wire vip_S00_AXI_M_AXI_WLAST;
  wire vip_S00_AXI_M_AXI_WREADY;
  wire [63:0]vip_S00_AXI_M_AXI_WSTRB;
  wire vip_S00_AXI_M_AXI_WVALID;
  wire [35:0]vip_S01_AXI_M_AXI_ARADDR;
  wire [1:0]vip_S01_AXI_M_AXI_ARBURST;
  wire [3:0]vip_S01_AXI_M_AXI_ARCACHE;
  wire vip_S01_AXI_M_AXI_ARID;
  wire [7:0]vip_S01_AXI_M_AXI_ARLEN;
  wire vip_S01_AXI_M_AXI_ARLOCK;
  wire [2:0]vip_S01_AXI_M_AXI_ARPROT;
  wire [3:0]vip_S01_AXI_M_AXI_ARQOS;
  wire vip_S01_AXI_M_AXI_ARREADY;
  wire [2:0]vip_S01_AXI_M_AXI_ARSIZE;
  wire vip_S01_AXI_M_AXI_ARVALID;
  wire [35:0]vip_S01_AXI_M_AXI_AWADDR;
  wire [1:0]vip_S01_AXI_M_AXI_AWBURST;
  wire [3:0]vip_S01_AXI_M_AXI_AWCACHE;
  wire vip_S01_AXI_M_AXI_AWID;
  wire [7:0]vip_S01_AXI_M_AXI_AWLEN;
  wire vip_S01_AXI_M_AXI_AWLOCK;
  wire [2:0]vip_S01_AXI_M_AXI_AWPROT;
  wire [3:0]vip_S01_AXI_M_AXI_AWQOS;
  wire vip_S01_AXI_M_AXI_AWREADY;
  wire [2:0]vip_S01_AXI_M_AXI_AWSIZE;
  wire vip_S01_AXI_M_AXI_AWVALID;
  wire vip_S01_AXI_M_AXI_BID;
  wire vip_S01_AXI_M_AXI_BREADY;
  wire [1:0]vip_S01_AXI_M_AXI_BRESP;
  wire vip_S01_AXI_M_AXI_BVALID;
  wire [31:0]vip_S01_AXI_M_AXI_RDATA;
  wire vip_S01_AXI_M_AXI_RID;
  wire vip_S01_AXI_M_AXI_RLAST;
  wire vip_S01_AXI_M_AXI_RREADY;
  wire [1:0]vip_S01_AXI_M_AXI_RRESP;
  wire vip_S01_AXI_M_AXI_RVALID;
  wire [31:0]vip_S01_AXI_M_AXI_WDATA;
  wire vip_S01_AXI_M_AXI_WLAST;
  wire vip_S01_AXI_M_AXI_WREADY;
  wire [3:0]vip_S01_AXI_M_AXI_WSTRB;
  wire vip_S01_AXI_M_AXI_WVALID;
  wire [35:0]vip_S02_AXI_M_AXI_ARADDR;
  wire [1:0]vip_S02_AXI_M_AXI_ARBURST;
  wire [3:0]vip_S02_AXI_M_AXI_ARCACHE;
  wire vip_S02_AXI_M_AXI_ARID;
  wire [7:0]vip_S02_AXI_M_AXI_ARLEN;
  wire vip_S02_AXI_M_AXI_ARLOCK;
  wire [2:0]vip_S02_AXI_M_AXI_ARPROT;
  wire [3:0]vip_S02_AXI_M_AXI_ARQOS;
  wire vip_S02_AXI_M_AXI_ARREADY;
  wire [2:0]vip_S02_AXI_M_AXI_ARSIZE;
  wire vip_S02_AXI_M_AXI_ARVALID;
  wire [35:0]vip_S02_AXI_M_AXI_AWADDR;
  wire [1:0]vip_S02_AXI_M_AXI_AWBURST;
  wire [3:0]vip_S02_AXI_M_AXI_AWCACHE;
  wire vip_S02_AXI_M_AXI_AWID;
  wire [7:0]vip_S02_AXI_M_AXI_AWLEN;
  wire vip_S02_AXI_M_AXI_AWLOCK;
  wire [2:0]vip_S02_AXI_M_AXI_AWPROT;
  wire [3:0]vip_S02_AXI_M_AXI_AWQOS;
  wire vip_S02_AXI_M_AXI_AWREADY;
  wire [2:0]vip_S02_AXI_M_AXI_AWSIZE;
  wire vip_S02_AXI_M_AXI_AWVALID;
  wire vip_S02_AXI_M_AXI_BID;
  wire vip_S02_AXI_M_AXI_BREADY;
  wire [1:0]vip_S02_AXI_M_AXI_BRESP;
  wire vip_S02_AXI_M_AXI_BVALID;
  wire [31:0]vip_S02_AXI_M_AXI_RDATA;
  wire vip_S02_AXI_M_AXI_RID;
  wire vip_S02_AXI_M_AXI_RLAST;
  wire vip_S02_AXI_M_AXI_RREADY;
  wire [1:0]vip_S02_AXI_M_AXI_RRESP;
  wire vip_S02_AXI_M_AXI_RVALID;
  wire [31:0]vip_S02_AXI_M_AXI_WDATA;
  wire vip_S02_AXI_M_AXI_WLAST;
  wire vip_S02_AXI_M_AXI_WREADY;
  wire [3:0]vip_S02_AXI_M_AXI_WSTRB;
  wire vip_S02_AXI_M_AXI_WVALID;
  wire [2:0]NLW_interconnect_ddr4_mem00_M00_AXI_arsize_UNCONNECTED;
  wire [2:0]NLW_interconnect_ddr4_mem00_M00_AXI_awsize_UNCONNECTED;
  wire [3:0]NLW_vip_s00_axi_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_vip_s00_axi_m_axi_awregion_UNCONNECTED;
  wire [3:0]NLW_vip_s01_axi_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_vip_s01_axi_m_axi_awregion_UNCONNECTED;
  wire [3:0]NLW_vip_s02_axi_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_vip_s02_axi_m_axi_awregion_UNCONNECTED;

  (* X_CORE_INFO = "bd_ffc7,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_interconnect_ddr4_mem00_0 interconnect_ddr4_mem00
       (.M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arburst(M00_AXI_arburst),
        .M00_AXI_arcache(M00_AXI_arcache),
        .M00_AXI_arlen(M00_AXI_arlen),
        .M00_AXI_arlock(M00_AXI_arlock),
        .M00_AXI_arprot(M00_AXI_arprot),
        .M00_AXI_arqos(M00_AXI_arqos),
        .M00_AXI_arready(S_AXI_arready),
        .M00_AXI_arsize(NLW_interconnect_ddr4_mem00_M00_AXI_arsize_UNCONNECTED[2:0]),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(M00_AXI_awaddr),
        .M00_AXI_awburst(M00_AXI_awburst),
        .M00_AXI_awcache(M00_AXI_awcache),
        .M00_AXI_awlen(M00_AXI_awlen),
        .M00_AXI_awlock(M00_AXI_awlock),
        .M00_AXI_awprot(M00_AXI_awprot),
        .M00_AXI_awqos(M00_AXI_awqos),
        .M00_AXI_awready(S_AXI_awready),
        .M00_AXI_awsize(NLW_interconnect_ddr4_mem00_M00_AXI_awsize_UNCONNECTED[2:0]),
        .M00_AXI_awvalid(M00_AXI_awvalid),
        .M00_AXI_bready(M00_AXI_bready),
        .M00_AXI_bresp(S_AXI_bresp),
        .M00_AXI_bvalid(S_AXI_bvalid),
        .M00_AXI_rdata(S_AXI_rdata),
        .M00_AXI_rlast(S_AXI_rlast),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(S_AXI_rresp),
        .M00_AXI_rvalid(S_AXI_rvalid),
        .M00_AXI_wdata(M00_AXI_wdata),
        .M00_AXI_wlast(M00_AXI_wlast),
        .M00_AXI_wready(S_AXI_wready),
        .M00_AXI_wstrb(M00_AXI_wstrb),
        .M00_AXI_wvalid(M00_AXI_wvalid),
        .S00_AXI_araddr(vip_S00_AXI_M_AXI_ARADDR),
        .S00_AXI_arburst({1'b0,1'b1}),
        .S00_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S00_AXI_arid(vip_S00_AXI_M_AXI_ARID),
        .S00_AXI_arlen(vip_S00_AXI_M_AXI_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(vip_S00_AXI_M_AXI_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(vip_S00_AXI_M_AXI_ARREADY),
        .S00_AXI_arsize({1'b1,1'b1,1'b0}),
        .S00_AXI_arvalid(vip_S00_AXI_M_AXI_ARVALID),
        .S00_AXI_awaddr(vip_S00_AXI_M_AXI_AWADDR),
        .S00_AXI_awburst({1'b0,1'b1}),
        .S00_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S00_AXI_awid(vip_S00_AXI_M_AXI_AWID),
        .S00_AXI_awlen(vip_S00_AXI_M_AXI_AWLEN),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot(vip_S00_AXI_M_AXI_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(vip_S00_AXI_M_AXI_AWREADY),
        .S00_AXI_awsize({1'b1,1'b1,1'b0}),
        .S00_AXI_awvalid(vip_S00_AXI_M_AXI_AWVALID),
        .S00_AXI_bid(vip_S00_AXI_M_AXI_BID),
        .S00_AXI_bready(vip_S00_AXI_M_AXI_BREADY),
        .S00_AXI_bresp(vip_S00_AXI_M_AXI_BRESP),
        .S00_AXI_bvalid(vip_S00_AXI_M_AXI_BVALID),
        .S00_AXI_rdata(vip_S00_AXI_M_AXI_RDATA),
        .S00_AXI_rid(vip_S00_AXI_M_AXI_RID),
        .S00_AXI_rlast(vip_S00_AXI_M_AXI_RLAST),
        .S00_AXI_rready(vip_S00_AXI_M_AXI_RREADY),
        .S00_AXI_rresp(vip_S00_AXI_M_AXI_RRESP),
        .S00_AXI_rvalid(vip_S00_AXI_M_AXI_RVALID),
        .S00_AXI_wdata(vip_S00_AXI_M_AXI_WDATA),
        .S00_AXI_wlast(vip_S00_AXI_M_AXI_WLAST),
        .S00_AXI_wready(vip_S00_AXI_M_AXI_WREADY),
        .S00_AXI_wstrb(vip_S00_AXI_M_AXI_WSTRB),
        .S00_AXI_wvalid(vip_S00_AXI_M_AXI_WVALID),
        .S01_AXI_araddr(vip_S01_AXI_M_AXI_ARADDR),
        .S01_AXI_arburst(vip_S01_AXI_M_AXI_ARBURST),
        .S01_AXI_arcache(vip_S01_AXI_M_AXI_ARCACHE),
        .S01_AXI_arid(vip_S01_AXI_M_AXI_ARID),
        .S01_AXI_arlen(vip_S01_AXI_M_AXI_ARLEN),
        .S01_AXI_arlock(vip_S01_AXI_M_AXI_ARLOCK),
        .S01_AXI_arprot(vip_S01_AXI_M_AXI_ARPROT),
        .S01_AXI_arqos(vip_S01_AXI_M_AXI_ARQOS),
        .S01_AXI_arready(vip_S01_AXI_M_AXI_ARREADY),
        .S01_AXI_arsize(vip_S01_AXI_M_AXI_ARSIZE),
        .S01_AXI_arvalid(vip_S01_AXI_M_AXI_ARVALID),
        .S01_AXI_awaddr(vip_S01_AXI_M_AXI_AWADDR),
        .S01_AXI_awburst(vip_S01_AXI_M_AXI_AWBURST),
        .S01_AXI_awcache(vip_S01_AXI_M_AXI_AWCACHE),
        .S01_AXI_awid(vip_S01_AXI_M_AXI_AWID),
        .S01_AXI_awlen(vip_S01_AXI_M_AXI_AWLEN),
        .S01_AXI_awlock(vip_S01_AXI_M_AXI_AWLOCK),
        .S01_AXI_awprot(vip_S01_AXI_M_AXI_AWPROT),
        .S01_AXI_awqos(vip_S01_AXI_M_AXI_AWQOS),
        .S01_AXI_awready(vip_S01_AXI_M_AXI_AWREADY),
        .S01_AXI_awsize(vip_S01_AXI_M_AXI_AWSIZE),
        .S01_AXI_awvalid(vip_S01_AXI_M_AXI_AWVALID),
        .S01_AXI_bid(vip_S01_AXI_M_AXI_BID),
        .S01_AXI_bready(vip_S01_AXI_M_AXI_BREADY),
        .S01_AXI_bresp(vip_S01_AXI_M_AXI_BRESP),
        .S01_AXI_bvalid(vip_S01_AXI_M_AXI_BVALID),
        .S01_AXI_rdata(vip_S01_AXI_M_AXI_RDATA),
        .S01_AXI_rid(vip_S01_AXI_M_AXI_RID),
        .S01_AXI_rlast(vip_S01_AXI_M_AXI_RLAST),
        .S01_AXI_rready(vip_S01_AXI_M_AXI_RREADY),
        .S01_AXI_rresp(vip_S01_AXI_M_AXI_RRESP),
        .S01_AXI_rvalid(vip_S01_AXI_M_AXI_RVALID),
        .S01_AXI_wdata(vip_S01_AXI_M_AXI_WDATA),
        .S01_AXI_wlast(vip_S01_AXI_M_AXI_WLAST),
        .S01_AXI_wready(vip_S01_AXI_M_AXI_WREADY),
        .S01_AXI_wstrb(vip_S01_AXI_M_AXI_WSTRB),
        .S01_AXI_wvalid(vip_S01_AXI_M_AXI_WVALID),
        .S02_AXI_araddr(vip_S02_AXI_M_AXI_ARADDR),
        .S02_AXI_arburst(vip_S02_AXI_M_AXI_ARBURST),
        .S02_AXI_arcache(vip_S02_AXI_M_AXI_ARCACHE),
        .S02_AXI_arid(vip_S02_AXI_M_AXI_ARID),
        .S02_AXI_arlen(vip_S02_AXI_M_AXI_ARLEN),
        .S02_AXI_arlock(vip_S02_AXI_M_AXI_ARLOCK),
        .S02_AXI_arprot(vip_S02_AXI_M_AXI_ARPROT),
        .S02_AXI_arqos(vip_S02_AXI_M_AXI_ARQOS),
        .S02_AXI_arready(vip_S02_AXI_M_AXI_ARREADY),
        .S02_AXI_arsize(vip_S02_AXI_M_AXI_ARSIZE),
        .S02_AXI_arvalid(vip_S02_AXI_M_AXI_ARVALID),
        .S02_AXI_awaddr(vip_S02_AXI_M_AXI_AWADDR),
        .S02_AXI_awburst(vip_S02_AXI_M_AXI_AWBURST),
        .S02_AXI_awcache(vip_S02_AXI_M_AXI_AWCACHE),
        .S02_AXI_awid(vip_S02_AXI_M_AXI_AWID),
        .S02_AXI_awlen(vip_S02_AXI_M_AXI_AWLEN),
        .S02_AXI_awlock(vip_S02_AXI_M_AXI_AWLOCK),
        .S02_AXI_awprot(vip_S02_AXI_M_AXI_AWPROT),
        .S02_AXI_awqos(vip_S02_AXI_M_AXI_AWQOS),
        .S02_AXI_awready(vip_S02_AXI_M_AXI_AWREADY),
        .S02_AXI_awsize(vip_S02_AXI_M_AXI_AWSIZE),
        .S02_AXI_awvalid(vip_S02_AXI_M_AXI_AWVALID),
        .S02_AXI_bid(vip_S02_AXI_M_AXI_BID),
        .S02_AXI_bready(vip_S02_AXI_M_AXI_BREADY),
        .S02_AXI_bresp(vip_S02_AXI_M_AXI_BRESP),
        .S02_AXI_bvalid(vip_S02_AXI_M_AXI_BVALID),
        .S02_AXI_rdata(vip_S02_AXI_M_AXI_RDATA),
        .S02_AXI_rid(vip_S02_AXI_M_AXI_RID),
        .S02_AXI_rlast(vip_S02_AXI_M_AXI_RLAST),
        .S02_AXI_rready(vip_S02_AXI_M_AXI_RREADY),
        .S02_AXI_rresp(vip_S02_AXI_M_AXI_RRESP),
        .S02_AXI_rvalid(vip_S02_AXI_M_AXI_RVALID),
        .S02_AXI_wdata(vip_S02_AXI_M_AXI_WDATA),
        .S02_AXI_wlast(vip_S02_AXI_M_AXI_WLAST),
        .S02_AXI_wready(vip_S02_AXI_M_AXI_WREADY),
        .S02_AXI_wstrb(vip_S02_AXI_M_AXI_WSTRB),
        .S02_AXI_wvalid(vip_S02_AXI_M_AXI_WVALID),
        .aclk(aclk),
        .aclk1(S00_AXI_awready_0),
        .aclk2(aclk1),
        .aresetn(interconnect_aresetn1));
  (* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_S00_AXI_0 vip_s00_axi
       (.aclk(S00_AXI_awready_0),
        .aresetn(interconnect_aresetn),
        .m_axi_araddr(vip_S00_AXI_M_AXI_ARADDR),
        .m_axi_arid(vip_S00_AXI_M_AXI_ARID),
        .m_axi_arlen(vip_S00_AXI_M_AXI_ARLEN),
        .m_axi_arprot(vip_S00_AXI_M_AXI_ARPROT),
        .m_axi_arready(vip_S00_AXI_M_AXI_ARREADY),
        .m_axi_arregion(NLW_vip_s00_axi_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arvalid(vip_S00_AXI_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S00_AXI_M_AXI_AWADDR),
        .m_axi_awid(vip_S00_AXI_M_AXI_AWID),
        .m_axi_awlen(vip_S00_AXI_M_AXI_AWLEN),
        .m_axi_awprot(vip_S00_AXI_M_AXI_AWPROT),
        .m_axi_awready(vip_S00_AXI_M_AXI_AWREADY),
        .m_axi_awregion(NLW_vip_s00_axi_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awvalid(vip_S00_AXI_M_AXI_AWVALID),
        .m_axi_bid(vip_S00_AXI_M_AXI_BID),
        .m_axi_bready(vip_S00_AXI_M_AXI_BREADY),
        .m_axi_bresp(vip_S00_AXI_M_AXI_BRESP),
        .m_axi_bvalid(vip_S00_AXI_M_AXI_BVALID),
        .m_axi_rdata(vip_S00_AXI_M_AXI_RDATA),
        .m_axi_rid(vip_S00_AXI_M_AXI_RID),
        .m_axi_rlast(vip_S00_AXI_M_AXI_RLAST),
        .m_axi_rready(vip_S00_AXI_M_AXI_RREADY),
        .m_axi_rresp(vip_S00_AXI_M_AXI_RRESP),
        .m_axi_rvalid(vip_S00_AXI_M_AXI_RVALID),
        .m_axi_wdata(vip_S00_AXI_M_AXI_WDATA),
        .m_axi_wlast(vip_S00_AXI_M_AXI_WLAST),
        .m_axi_wready(vip_S00_AXI_M_AXI_WREADY),
        .m_axi_wstrb(vip_S00_AXI_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S00_AXI_M_AXI_WVALID),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_arid(S00_AXI_arid),
        .s_axi_arlen(S00_AXI_arlen),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arregion(S00_AXI_arregion),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_awaddr(S00_AXI_awaddr),
        .s_axi_awid(S00_AXI_awid),
        .s_axi_awlen(S00_AXI_awlen),
        .s_axi_awprot(S00_AXI_awprot),
        .s_axi_awready(S00_AXI_awready),
        .s_axi_awregion(S00_AXI_awregion),
        .s_axi_awvalid(S00_AXI_awvalid),
        .s_axi_bid(S00_AXI_bid),
        .s_axi_bready(S00_AXI_bready),
        .s_axi_bresp(S00_AXI_bresp),
        .s_axi_bvalid(S00_AXI_bvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rid(S00_AXI_rid),
        .s_axi_rlast(S00_AXI_rlast),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_rvalid(S00_AXI_rvalid),
        .s_axi_wdata(S00_AXI_wdata),
        .s_axi_wlast(S00_AXI_wlast),
        .s_axi_wready(S00_AXI_wready),
        .s_axi_wstrb(S00_AXI_wstrb),
        .s_axi_wvalid(S00_AXI_wvalid));
  (* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_S01_AXI_0 vip_s01_axi
       (.aclk(aclk1),
        .aresetn(interconnect_aresetn2),
        .m_axi_araddr(vip_S01_AXI_M_AXI_ARADDR),
        .m_axi_arburst(vip_S01_AXI_M_AXI_ARBURST),
        .m_axi_arcache(vip_S01_AXI_M_AXI_ARCACHE),
        .m_axi_arid(vip_S01_AXI_M_AXI_ARID),
        .m_axi_arlen(vip_S01_AXI_M_AXI_ARLEN),
        .m_axi_arlock(vip_S01_AXI_M_AXI_ARLOCK),
        .m_axi_arprot(vip_S01_AXI_M_AXI_ARPROT),
        .m_axi_arqos(vip_S01_AXI_M_AXI_ARQOS),
        .m_axi_arready(vip_S01_AXI_M_AXI_ARREADY),
        .m_axi_arregion(NLW_vip_s01_axi_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(vip_S01_AXI_M_AXI_ARSIZE),
        .m_axi_arvalid(vip_S01_AXI_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S01_AXI_M_AXI_AWADDR),
        .m_axi_awburst(vip_S01_AXI_M_AXI_AWBURST),
        .m_axi_awcache(vip_S01_AXI_M_AXI_AWCACHE),
        .m_axi_awid(vip_S01_AXI_M_AXI_AWID),
        .m_axi_awlen(vip_S01_AXI_M_AXI_AWLEN),
        .m_axi_awlock(vip_S01_AXI_M_AXI_AWLOCK),
        .m_axi_awprot(vip_S01_AXI_M_AXI_AWPROT),
        .m_axi_awqos(vip_S01_AXI_M_AXI_AWQOS),
        .m_axi_awready(vip_S01_AXI_M_AXI_AWREADY),
        .m_axi_awregion(NLW_vip_s01_axi_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(vip_S01_AXI_M_AXI_AWSIZE),
        .m_axi_awvalid(vip_S01_AXI_M_AXI_AWVALID),
        .m_axi_bid(vip_S01_AXI_M_AXI_BID),
        .m_axi_bready(vip_S01_AXI_M_AXI_BREADY),
        .m_axi_bresp(vip_S01_AXI_M_AXI_BRESP),
        .m_axi_bvalid(vip_S01_AXI_M_AXI_BVALID),
        .m_axi_rdata(vip_S01_AXI_M_AXI_RDATA),
        .m_axi_rid(vip_S01_AXI_M_AXI_RID),
        .m_axi_rlast(vip_S01_AXI_M_AXI_RLAST),
        .m_axi_rready(vip_S01_AXI_M_AXI_RREADY),
        .m_axi_rresp(vip_S01_AXI_M_AXI_RRESP),
        .m_axi_rvalid(vip_S01_AXI_M_AXI_RVALID),
        .m_axi_wdata(vip_S01_AXI_M_AXI_WDATA),
        .m_axi_wlast(vip_S01_AXI_M_AXI_WLAST),
        .m_axi_wready(vip_S01_AXI_M_AXI_WREADY),
        .m_axi_wstrb(vip_S01_AXI_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S01_AXI_M_AXI_WVALID),
        .s_axi_araddr(S01_AXI_araddr),
        .s_axi_arburst(S01_AXI_arburst),
        .s_axi_arcache(S01_AXI_arcache),
        .s_axi_arid(S01_AXI_arid),
        .s_axi_arlen(S01_AXI_arlen),
        .s_axi_arlock(S01_AXI_arlock),
        .s_axi_arprot(S01_AXI_arprot),
        .s_axi_arqos(S01_AXI_arqos),
        .s_axi_arready(S01_AXI_arready),
        .s_axi_arregion(S01_AXI_arregion),
        .s_axi_arsize(S01_AXI_arsize),
        .s_axi_arvalid(S01_AXI_arvalid),
        .s_axi_awaddr(S01_AXI_awaddr),
        .s_axi_awburst(S01_AXI_awburst),
        .s_axi_awcache(S01_AXI_awcache),
        .s_axi_awid(S01_AXI_awid),
        .s_axi_awlen(S01_AXI_awlen),
        .s_axi_awlock(S01_AXI_awlock),
        .s_axi_awprot(S01_AXI_awprot),
        .s_axi_awqos(S01_AXI_awqos),
        .s_axi_awready(S01_AXI_awready),
        .s_axi_awregion(S01_AXI_awregion),
        .s_axi_awsize(S01_AXI_awsize),
        .s_axi_awvalid(S01_AXI_awvalid),
        .s_axi_bid(S01_AXI_bid),
        .s_axi_bready(S01_AXI_bready),
        .s_axi_bresp(S01_AXI_bresp),
        .s_axi_bvalid(S01_AXI_bvalid),
        .s_axi_rdata(S01_AXI_rdata),
        .s_axi_rid(S01_AXI_rid),
        .s_axi_rlast(S01_AXI_rlast),
        .s_axi_rready(S01_AXI_rready),
        .s_axi_rresp(S01_AXI_rresp),
        .s_axi_rvalid(S01_AXI_rvalid),
        .s_axi_wdata(S01_AXI_wdata),
        .s_axi_wlast(S01_AXI_wlast),
        .s_axi_wready(S01_AXI_wready),
        .s_axi_wstrb(S01_AXI_wstrb),
        .s_axi_wvalid(S01_AXI_wvalid));
  (* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_S02_AXI_0 vip_s02_axi
       (.aclk(aclk1),
        .aresetn(interconnect_aresetn2),
        .m_axi_araddr(vip_S02_AXI_M_AXI_ARADDR),
        .m_axi_arburst(vip_S02_AXI_M_AXI_ARBURST),
        .m_axi_arcache(vip_S02_AXI_M_AXI_ARCACHE),
        .m_axi_arid(vip_S02_AXI_M_AXI_ARID),
        .m_axi_arlen(vip_S02_AXI_M_AXI_ARLEN),
        .m_axi_arlock(vip_S02_AXI_M_AXI_ARLOCK),
        .m_axi_arprot(vip_S02_AXI_M_AXI_ARPROT),
        .m_axi_arqos(vip_S02_AXI_M_AXI_ARQOS),
        .m_axi_arready(vip_S02_AXI_M_AXI_ARREADY),
        .m_axi_arregion(NLW_vip_s02_axi_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(vip_S02_AXI_M_AXI_ARSIZE),
        .m_axi_arvalid(vip_S02_AXI_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S02_AXI_M_AXI_AWADDR),
        .m_axi_awburst(vip_S02_AXI_M_AXI_AWBURST),
        .m_axi_awcache(vip_S02_AXI_M_AXI_AWCACHE),
        .m_axi_awid(vip_S02_AXI_M_AXI_AWID),
        .m_axi_awlen(vip_S02_AXI_M_AXI_AWLEN),
        .m_axi_awlock(vip_S02_AXI_M_AXI_AWLOCK),
        .m_axi_awprot(vip_S02_AXI_M_AXI_AWPROT),
        .m_axi_awqos(vip_S02_AXI_M_AXI_AWQOS),
        .m_axi_awready(vip_S02_AXI_M_AXI_AWREADY),
        .m_axi_awregion(NLW_vip_s02_axi_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(vip_S02_AXI_M_AXI_AWSIZE),
        .m_axi_awvalid(vip_S02_AXI_M_AXI_AWVALID),
        .m_axi_bid(vip_S02_AXI_M_AXI_BID),
        .m_axi_bready(vip_S02_AXI_M_AXI_BREADY),
        .m_axi_bresp(vip_S02_AXI_M_AXI_BRESP),
        .m_axi_bvalid(vip_S02_AXI_M_AXI_BVALID),
        .m_axi_rdata(vip_S02_AXI_M_AXI_RDATA),
        .m_axi_rid(vip_S02_AXI_M_AXI_RID),
        .m_axi_rlast(vip_S02_AXI_M_AXI_RLAST),
        .m_axi_rready(vip_S02_AXI_M_AXI_RREADY),
        .m_axi_rresp(vip_S02_AXI_M_AXI_RRESP),
        .m_axi_rvalid(vip_S02_AXI_M_AXI_RVALID),
        .m_axi_wdata(vip_S02_AXI_M_AXI_WDATA),
        .m_axi_wlast(vip_S02_AXI_M_AXI_WLAST),
        .m_axi_wready(vip_S02_AXI_M_AXI_WREADY),
        .m_axi_wstrb(vip_S02_AXI_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S02_AXI_M_AXI_WVALID),
        .s_axi_araddr(S02_AXI_araddr),
        .s_axi_arburst(S02_AXI_arburst),
        .s_axi_arcache(S02_AXI_arcache),
        .s_axi_arid(S02_AXI_arid),
        .s_axi_arlen(S02_AXI_arlen),
        .s_axi_arlock(S02_AXI_arlock),
        .s_axi_arprot(S02_AXI_arprot),
        .s_axi_arqos(S02_AXI_arqos),
        .s_axi_arready(S02_AXI_arready),
        .s_axi_arregion(S02_AXI_arregion),
        .s_axi_arsize(S02_AXI_arsize),
        .s_axi_arvalid(S02_AXI_arvalid),
        .s_axi_awaddr(S02_AXI_awaddr),
        .s_axi_awburst(S02_AXI_awburst),
        .s_axi_awcache(S02_AXI_awcache),
        .s_axi_awid(S02_AXI_awid),
        .s_axi_awlen(S02_AXI_awlen),
        .s_axi_awlock(S02_AXI_awlock),
        .s_axi_awprot(S02_AXI_awprot),
        .s_axi_awqos(S02_AXI_awqos),
        .s_axi_awready(S02_AXI_awready),
        .s_axi_awregion(S02_AXI_awregion),
        .s_axi_awsize(S02_AXI_awsize),
        .s_axi_awvalid(S02_AXI_awvalid),
        .s_axi_bid(S02_AXI_bid),
        .s_axi_bready(S02_AXI_bready),
        .s_axi_bresp(S02_AXI_bresp),
        .s_axi_bvalid(S02_AXI_bvalid),
        .s_axi_rdata(S02_AXI_rdata),
        .s_axi_rid(S02_AXI_rid),
        .s_axi_rlast(S02_AXI_rlast),
        .s_axi_rready(S02_AXI_rready),
        .s_axi_rresp(S02_AXI_rresp),
        .s_axi_rvalid(S02_AXI_rvalid),
        .s_axi_wdata(S02_AXI_wdata),
        .s_axi_wlast(S02_AXI_wlast),
        .s_axi_wready(S02_AXI_wready),
        .s_axi_wstrb(S02_AXI_wstrb),
        .s_axi_wvalid(S02_AXI_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory_imp_AMH3FI
   (s_sh_m_a_act_n,
    s_sh_m_a_ma,
    s_sh_m_a_ba,
    s_sh_m_a_bg,
    s_sh_m_a_cke,
    s_sh_m_a_odt,
    s_sh_m_a_cs_n,
    s_sh_m_a_clk_dn,
    s_sh_m_a_clk_dp,
    s_sh_m_a_par,
    s_sh_cl_rst_dimm_a_n,
    s_sh_m_b_act_n,
    s_sh_m_b_ma,
    s_sh_m_b_ba,
    s_sh_m_b_bg,
    s_sh_m_b_cke,
    s_sh_m_b_odt,
    s_sh_m_b_cs_n,
    s_sh_m_b_clk_dn,
    s_sh_m_b_clk_dp,
    s_sh_m_b_par,
    s_sh_cl_rst_dimm_b_n,
    s_sh_m_d_act_n,
    s_sh_m_d_ma,
    s_sh_m_d_ba,
    s_sh_m_d_bg,
    s_sh_m_d_cke,
    s_sh_m_d_odt,
    s_sh_m_d_cs_n,
    s_sh_m_d_clk_dn,
    s_sh_m_d_clk_dp,
    s_sh_m_d_par,
    s_sh_cl_rst_dimm_d_n,
    s_sh_ddr_sh_stat_ack0,
    s_sh_ddr_sh_stat_rdata0,
    s_sh_ddr_sh_stat_int0,
    s_sh_ddr_sh_stat_ack1,
    s_sh_ddr_sh_stat_rdata1,
    s_sh_ddr_sh_stat_int1,
    s_sh_ddr_sh_stat_ack2,
    s_sh_ddr_sh_stat_rdata2,
    s_sh_ddr_sh_stat_int2,
    s_sh_cl_sh_ddr_awid,
    s_sh_cl_sh_ddr_awaddr,
    s_sh_cl_sh_ddr_awlen,
    s_sh_cl_sh_ddr_awsize,
    s_sh_cl_sh_ddr_awburst,
    s_sh_cl_sh_ddr_awvalid,
    s_sh_cl_sh_ddr_wid,
    s_sh_cl_sh_ddr_wdata,
    s_sh_cl_sh_ddr_wstrb,
    s_sh_cl_sh_ddr_wlast,
    s_sh_cl_sh_ddr_wvalid,
    s_sh_cl_sh_ddr_bready,
    s_sh_cl_sh_ddr_arid,
    s_sh_cl_sh_ddr_araddr,
    s_sh_cl_sh_ddr_arlen,
    s_sh_cl_sh_ddr_arsize,
    s_sh_cl_sh_ddr_arburst,
    s_sh_cl_sh_ddr_arvalid,
    s_sh_cl_sh_ddr_rready,
    aclk,
    ddr4_mem_calib_complete,
    S_AXI_awready,
    S_AXI_wready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_arready,
    S_AXI_rdata,
    S_AXI_rresp,
    S_AXI_rlast,
    S_AXI_rvalid,
    s_sh_m_a_dq,
    s_sh_m_a_ecc,
    s_sh_m_a_dqs_dp,
    s_sh_m_a_dqs_dn,
    s_sh_m_b_dq,
    s_sh_m_b_ecc,
    s_sh_m_b_dqs_dp,
    s_sh_m_b_dqs_dn,
    s_sh_m_d_dq,
    s_sh_m_d_ecc,
    s_sh_m_d_dqs_dp,
    s_sh_m_d_dqs_dn,
    s_sh_clk_main_a0,
    s_sh_rst_main_n,
    s_sh_clk_300m_dimm0_dp,
    s_sh_clk_300m_dimm0_dn,
    s_sh_clk_300m_dimm1_dp,
    s_sh_clk_300m_dimm1_dn,
    s_sh_clk_300m_dimm3_dp,
    s_sh_clk_300m_dimm3_dn,
    s_sh_sh_ddr_stat_addr0,
    s_sh_sh_ddr_stat_wr0,
    s_sh_sh_ddr_stat_rd0,
    s_sh_sh_ddr_stat_wdata0,
    s_sh_sh_ddr_stat_addr1,
    s_sh_sh_ddr_stat_wr1,
    s_sh_sh_ddr_stat_rd1,
    s_sh_sh_ddr_stat_wdata1,
    s_sh_sh_ddr_stat_addr2,
    s_sh_sh_ddr_stat_wr2,
    s_sh_sh_ddr_stat_rd2,
    s_sh_sh_ddr_stat_wdata2,
    s_sh_sh_cl_ddr_awready,
    s_sh_sh_cl_ddr_wready,
    s_sh_sh_cl_ddr_bid,
    s_sh_sh_cl_ddr_bresp,
    s_sh_sh_cl_ddr_bvalid,
    s_sh_sh_cl_ddr_arready,
    s_sh_sh_cl_ddr_rid,
    s_sh_sh_cl_ddr_rdata,
    s_sh_sh_cl_ddr_rresp,
    s_sh_sh_cl_ddr_rlast,
    s_sh_sh_cl_ddr_rvalid,
    s_sh_sh_cl_ddr_is_ready,
    S_AXI_awaddr,
    S_AXI_awlen,
    S_AXI_awburst,
    S_AXI_awlock,
    S_AXI_awcache,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awvalid,
    S_AXI_wdata,
    S_AXI_wstrb,
    S_AXI_wlast,
    S_AXI_wvalid,
    S_AXI_bready,
    S_AXI_araddr,
    S_AXI_arlen,
    S_AXI_arburst,
    S_AXI_arlock,
    S_AXI_arcache,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arvalid,
    S_AXI_rready);
  output s_sh_m_a_act_n;
  output [16:0]s_sh_m_a_ma;
  output [1:0]s_sh_m_a_ba;
  output [1:0]s_sh_m_a_bg;
  output [0:0]s_sh_m_a_cke;
  output [0:0]s_sh_m_a_odt;
  output [0:0]s_sh_m_a_cs_n;
  output [0:0]s_sh_m_a_clk_dn;
  output [0:0]s_sh_m_a_clk_dp;
  output s_sh_m_a_par;
  output s_sh_cl_rst_dimm_a_n;
  output s_sh_m_b_act_n;
  output [16:0]s_sh_m_b_ma;
  output [1:0]s_sh_m_b_ba;
  output [1:0]s_sh_m_b_bg;
  output [0:0]s_sh_m_b_cke;
  output [0:0]s_sh_m_b_odt;
  output [0:0]s_sh_m_b_cs_n;
  output [0:0]s_sh_m_b_clk_dn;
  output [0:0]s_sh_m_b_clk_dp;
  output s_sh_m_b_par;
  output s_sh_cl_rst_dimm_b_n;
  output s_sh_m_d_act_n;
  output [16:0]s_sh_m_d_ma;
  output [1:0]s_sh_m_d_ba;
  output [1:0]s_sh_m_d_bg;
  output [0:0]s_sh_m_d_cke;
  output [0:0]s_sh_m_d_odt;
  output [0:0]s_sh_m_d_cs_n;
  output [0:0]s_sh_m_d_clk_dn;
  output [0:0]s_sh_m_d_clk_dp;
  output s_sh_m_d_par;
  output s_sh_cl_rst_dimm_d_n;
  output s_sh_ddr_sh_stat_ack0;
  output [31:0]s_sh_ddr_sh_stat_rdata0;
  output [7:0]s_sh_ddr_sh_stat_int0;
  output s_sh_ddr_sh_stat_ack1;
  output [31:0]s_sh_ddr_sh_stat_rdata1;
  output [7:0]s_sh_ddr_sh_stat_int1;
  output s_sh_ddr_sh_stat_ack2;
  output [31:0]s_sh_ddr_sh_stat_rdata2;
  output [7:0]s_sh_ddr_sh_stat_int2;
  output [15:0]s_sh_cl_sh_ddr_awid;
  output [63:0]s_sh_cl_sh_ddr_awaddr;
  output [7:0]s_sh_cl_sh_ddr_awlen;
  output [2:0]s_sh_cl_sh_ddr_awsize;
  output [1:0]s_sh_cl_sh_ddr_awburst;
  output s_sh_cl_sh_ddr_awvalid;
  output [15:0]s_sh_cl_sh_ddr_wid;
  output [511:0]s_sh_cl_sh_ddr_wdata;
  output [63:0]s_sh_cl_sh_ddr_wstrb;
  output s_sh_cl_sh_ddr_wlast;
  output s_sh_cl_sh_ddr_wvalid;
  output s_sh_cl_sh_ddr_bready;
  output [15:0]s_sh_cl_sh_ddr_arid;
  output [63:0]s_sh_cl_sh_ddr_araddr;
  output [7:0]s_sh_cl_sh_ddr_arlen;
  output [2:0]s_sh_cl_sh_ddr_arsize;
  output [1:0]s_sh_cl_sh_ddr_arburst;
  output s_sh_cl_sh_ddr_arvalid;
  output s_sh_cl_sh_ddr_rready;
  output aclk;
  output ddr4_mem_calib_complete;
  output S_AXI_awready;
  output S_AXI_wready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_arready;
  output [511:0]S_AXI_rdata;
  output [1:0]S_AXI_rresp;
  output S_AXI_rlast;
  output S_AXI_rvalid;
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
  input s_sh_clk_main_a0;
  input s_sh_rst_main_n;
  input s_sh_clk_300m_dimm0_dp;
  input s_sh_clk_300m_dimm0_dn;
  input s_sh_clk_300m_dimm1_dp;
  input s_sh_clk_300m_dimm1_dn;
  input s_sh_clk_300m_dimm3_dp;
  input s_sh_clk_300m_dimm3_dn;
  input [7:0]s_sh_sh_ddr_stat_addr0;
  input s_sh_sh_ddr_stat_wr0;
  input s_sh_sh_ddr_stat_rd0;
  input [31:0]s_sh_sh_ddr_stat_wdata0;
  input [7:0]s_sh_sh_ddr_stat_addr1;
  input s_sh_sh_ddr_stat_wr1;
  input s_sh_sh_ddr_stat_rd1;
  input [31:0]s_sh_sh_ddr_stat_wdata1;
  input [7:0]s_sh_sh_ddr_stat_addr2;
  input s_sh_sh_ddr_stat_wr2;
  input s_sh_sh_ddr_stat_rd2;
  input [31:0]s_sh_sh_ddr_stat_wdata2;
  input s_sh_sh_cl_ddr_awready;
  input s_sh_sh_cl_ddr_wready;
  input [15:0]s_sh_sh_cl_ddr_bid;
  input [1:0]s_sh_sh_cl_ddr_bresp;
  input s_sh_sh_cl_ddr_bvalid;
  input s_sh_sh_cl_ddr_arready;
  input [15:0]s_sh_sh_cl_ddr_rid;
  input [511:0]s_sh_sh_cl_ddr_rdata;
  input [1:0]s_sh_sh_cl_ddr_rresp;
  input s_sh_sh_cl_ddr_rlast;
  input s_sh_sh_cl_ddr_rvalid;
  input s_sh_sh_cl_ddr_is_ready;
  input [63:0]S_AXI_awaddr;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awburst;
  input [0:0]S_AXI_awlock;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  input S_AXI_awvalid;
  input [511:0]S_AXI_wdata;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wlast;
  input S_AXI_wvalid;
  input S_AXI_bready;
  input [63:0]S_AXI_araddr;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arburst;
  input [0:0]S_AXI_arlock;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  input S_AXI_arvalid;
  input S_AXI_rready;

  wire [63:0]S_AXI_araddr;
  wire [1:0]S_AXI_arburst;
  wire [3:0]S_AXI_arcache;
  wire [7:0]S_AXI_arlen;
  wire [0:0]S_AXI_arlock;
  wire [2:0]S_AXI_arprot;
  wire [3:0]S_AXI_arqos;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [63:0]S_AXI_awaddr;
  wire [1:0]S_AXI_awburst;
  wire [3:0]S_AXI_awcache;
  wire [7:0]S_AXI_awlen;
  wire [0:0]S_AXI_awlock;
  wire [2:0]S_AXI_awprot;
  wire [3:0]S_AXI_awqos;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [511:0]S_AXI_rdata;
  wire S_AXI_rlast;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [511:0]S_AXI_wdata;
  wire S_AXI_wlast;
  wire S_AXI_wready;
  wire [63:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire aclk;
  wire aws_ddrc_is_ready;
  wire aws_rst_main_n_out;
  wire calib_concat_dout;
  wire ddr4_mem_calib_complete;
  wire s_sh_cl_rst_dimm_a_n;
  wire s_sh_cl_rst_dimm_b_n;
  wire s_sh_cl_rst_dimm_d_n;
  wire [63:0]s_sh_cl_sh_ddr_araddr;
  wire [1:0]s_sh_cl_sh_ddr_arburst;
  wire [15:0]s_sh_cl_sh_ddr_arid;
  wire [7:0]s_sh_cl_sh_ddr_arlen;
  wire [2:0]s_sh_cl_sh_ddr_arsize;
  wire s_sh_cl_sh_ddr_arvalid;
  wire [63:0]s_sh_cl_sh_ddr_awaddr;
  wire [1:0]s_sh_cl_sh_ddr_awburst;
  wire [15:0]s_sh_cl_sh_ddr_awid;
  wire [7:0]s_sh_cl_sh_ddr_awlen;
  wire [2:0]s_sh_cl_sh_ddr_awsize;
  wire s_sh_cl_sh_ddr_awvalid;
  wire s_sh_cl_sh_ddr_bready;
  wire s_sh_cl_sh_ddr_rready;
  wire [511:0]s_sh_cl_sh_ddr_wdata;
  wire [15:0]s_sh_cl_sh_ddr_wid;
  wire s_sh_cl_sh_ddr_wlast;
  wire [63:0]s_sh_cl_sh_ddr_wstrb;
  wire s_sh_cl_sh_ddr_wvalid;
  wire s_sh_clk_300m_dimm0_dn;
  wire s_sh_clk_300m_dimm0_dp;
  wire s_sh_clk_300m_dimm1_dn;
  wire s_sh_clk_300m_dimm1_dp;
  wire s_sh_clk_300m_dimm3_dn;
  wire s_sh_clk_300m_dimm3_dp;
  wire s_sh_clk_main_a0;
  wire s_sh_ddr_sh_stat_ack0;
  wire s_sh_ddr_sh_stat_ack1;
  wire s_sh_ddr_sh_stat_ack2;
  wire [7:0]s_sh_ddr_sh_stat_int0;
  wire [7:0]s_sh_ddr_sh_stat_int1;
  wire [7:0]s_sh_ddr_sh_stat_int2;
  wire [31:0]s_sh_ddr_sh_stat_rdata0;
  wire [31:0]s_sh_ddr_sh_stat_rdata1;
  wire [31:0]s_sh_ddr_sh_stat_rdata2;
  wire s_sh_m_a_act_n;
  wire [1:0]s_sh_m_a_ba;
  wire [1:0]s_sh_m_a_bg;
  wire [0:0]s_sh_m_a_cke;
  wire [0:0]s_sh_m_a_clk_dn;
  wire [0:0]s_sh_m_a_clk_dp;
  wire [0:0]s_sh_m_a_cs_n;
  wire [63:0]s_sh_m_a_dq;
  wire [17:0]s_sh_m_a_dqs_dn;
  wire [17:0]s_sh_m_a_dqs_dp;
  wire [7:0]s_sh_m_a_ecc;
  wire [16:0]s_sh_m_a_ma;
  wire [0:0]s_sh_m_a_odt;
  wire s_sh_m_a_par;
  wire s_sh_m_b_act_n;
  wire [1:0]s_sh_m_b_ba;
  wire [1:0]s_sh_m_b_bg;
  wire [0:0]s_sh_m_b_cke;
  wire [0:0]s_sh_m_b_clk_dn;
  wire [0:0]s_sh_m_b_clk_dp;
  wire [0:0]s_sh_m_b_cs_n;
  wire [63:0]s_sh_m_b_dq;
  wire [17:0]s_sh_m_b_dqs_dn;
  wire [17:0]s_sh_m_b_dqs_dp;
  wire [7:0]s_sh_m_b_ecc;
  wire [16:0]s_sh_m_b_ma;
  wire [0:0]s_sh_m_b_odt;
  wire s_sh_m_b_par;
  wire s_sh_m_d_act_n;
  wire [1:0]s_sh_m_d_ba;
  wire [1:0]s_sh_m_d_bg;
  wire [0:0]s_sh_m_d_cke;
  wire [0:0]s_sh_m_d_clk_dn;
  wire [0:0]s_sh_m_d_clk_dp;
  wire [0:0]s_sh_m_d_cs_n;
  wire [63:0]s_sh_m_d_dq;
  wire [17:0]s_sh_m_d_dqs_dn;
  wire [17:0]s_sh_m_d_dqs_dp;
  wire [7:0]s_sh_m_d_ecc;
  wire [16:0]s_sh_m_d_ma;
  wire [0:0]s_sh_m_d_odt;
  wire s_sh_m_d_par;
  wire s_sh_rst_main_n;
  wire s_sh_sh_cl_ddr_arready;
  wire s_sh_sh_cl_ddr_awready;
  wire [15:0]s_sh_sh_cl_ddr_bid;
  wire [1:0]s_sh_sh_cl_ddr_bresp;
  wire s_sh_sh_cl_ddr_bvalid;
  wire s_sh_sh_cl_ddr_is_ready;
  wire [511:0]s_sh_sh_cl_ddr_rdata;
  wire [15:0]s_sh_sh_cl_ddr_rid;
  wire s_sh_sh_cl_ddr_rlast;
  wire [1:0]s_sh_sh_cl_ddr_rresp;
  wire s_sh_sh_cl_ddr_rvalid;
  wire s_sh_sh_cl_ddr_wready;
  wire [7:0]s_sh_sh_ddr_stat_addr0;
  wire [7:0]s_sh_sh_ddr_stat_addr1;
  wire [7:0]s_sh_sh_ddr_stat_addr2;
  wire s_sh_sh_ddr_stat_rd0;
  wire s_sh_sh_ddr_stat_rd1;
  wire s_sh_sh_ddr_stat_rd2;
  wire [31:0]s_sh_sh_ddr_stat_wdata0;
  wire [31:0]s_sh_sh_ddr_stat_wdata1;
  wire [31:0]s_sh_sh_ddr_stat_wdata2;
  wire s_sh_sh_ddr_stat_wr0;
  wire s_sh_sh_ddr_stat_wr1;
  wire s_sh_sh_ddr_stat_wr2;
  wire [63:0]vip_DDR4_MEM00_M_AXI_ARADDR;
  wire [7:0]vip_DDR4_MEM00_M_AXI_ARLEN;
  wire vip_DDR4_MEM00_M_AXI_ARREADY;
  wire vip_DDR4_MEM00_M_AXI_ARVALID;
  wire [63:0]vip_DDR4_MEM00_M_AXI_AWADDR;
  wire [7:0]vip_DDR4_MEM00_M_AXI_AWLEN;
  wire vip_DDR4_MEM00_M_AXI_AWREADY;
  wire vip_DDR4_MEM00_M_AXI_AWVALID;
  wire vip_DDR4_MEM00_M_AXI_BREADY;
  wire [1:0]vip_DDR4_MEM00_M_AXI_BRESP;
  wire vip_DDR4_MEM00_M_AXI_BVALID;
  wire [511:0]vip_DDR4_MEM00_M_AXI_RDATA;
  wire vip_DDR4_MEM00_M_AXI_RLAST;
  wire vip_DDR4_MEM00_M_AXI_RREADY;
  wire [1:0]vip_DDR4_MEM00_M_AXI_RRESP;
  wire vip_DDR4_MEM00_M_AXI_RVALID;
  wire [511:0]vip_DDR4_MEM00_M_AXI_WDATA;
  wire vip_DDR4_MEM00_M_AXI_WLAST;
  wire vip_DDR4_MEM00_M_AXI_WREADY;
  wire [63:0]vip_DDR4_MEM00_M_AXI_WSTRB;
  wire vip_DDR4_MEM00_M_AXI_WVALID;
  wire [15:0]NLW_aws_s_axi_ddrc_bid_UNCONNECTED;
  wire [15:0]NLW_aws_s_axi_ddrc_rid_UNCONNECTED;
  wire [1:0]NLW_vip_DDR4_MEM00_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_vip_DDR4_MEM00_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_vip_DDR4_MEM00_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_vip_DDR4_MEM00_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_vip_DDR4_MEM00_m_axi_arqos_UNCONNECTED;
  wire [1:0]NLW_vip_DDR4_MEM00_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_vip_DDR4_MEM00_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_vip_DDR4_MEM00_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_vip_DDR4_MEM00_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_vip_DDR4_MEM00_m_axi_awqos_UNCONNECTED;

  (* X_CORE_INFO = "aws_v1_0_3_top,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_aws_0 aws
       (.CLK_300M_DIMM0_DN(s_sh_clk_300m_dimm0_dn),
        .CLK_300M_DIMM0_DP(s_sh_clk_300m_dimm0_dp),
        .CLK_300M_DIMM1_DN(s_sh_clk_300m_dimm1_dn),
        .CLK_300M_DIMM1_DP(s_sh_clk_300m_dimm1_dp),
        .CLK_300M_DIMM3_DN(s_sh_clk_300m_dimm3_dn),
        .CLK_300M_DIMM3_DP(s_sh_clk_300m_dimm3_dp),
        .M_A_ACT_N(s_sh_m_a_act_n),
        .M_A_BA(s_sh_m_a_ba),
        .M_A_BG(s_sh_m_a_bg),
        .M_A_CKE(s_sh_m_a_cke),
        .M_A_CLK_DN(s_sh_m_a_clk_dn),
        .M_A_CLK_DP(s_sh_m_a_clk_dp),
        .M_A_CS_N(s_sh_m_a_cs_n),
        .M_A_DQ(s_sh_m_a_dq),
        .M_A_DQS_DN(s_sh_m_a_dqs_dn),
        .M_A_DQS_DP(s_sh_m_a_dqs_dp),
        .M_A_ECC(s_sh_m_a_ecc),
        .M_A_MA(s_sh_m_a_ma),
        .M_A_ODT(s_sh_m_a_odt),
        .M_A_PAR(s_sh_m_a_par),
        .M_B_ACT_N(s_sh_m_b_act_n),
        .M_B_BA(s_sh_m_b_ba),
        .M_B_BG(s_sh_m_b_bg),
        .M_B_CKE(s_sh_m_b_cke),
        .M_B_CLK_DN(s_sh_m_b_clk_dn),
        .M_B_CLK_DP(s_sh_m_b_clk_dp),
        .M_B_CS_N(s_sh_m_b_cs_n),
        .M_B_DQ(s_sh_m_b_dq),
        .M_B_DQS_DN(s_sh_m_b_dqs_dn),
        .M_B_DQS_DP(s_sh_m_b_dqs_dp),
        .M_B_ECC(s_sh_m_b_ecc),
        .M_B_MA(s_sh_m_b_ma),
        .M_B_ODT(s_sh_m_b_odt),
        .M_B_PAR(s_sh_m_b_par),
        .M_D_ACT_N(s_sh_m_d_act_n),
        .M_D_BA(s_sh_m_d_ba),
        .M_D_BG(s_sh_m_d_bg),
        .M_D_CKE(s_sh_m_d_cke),
        .M_D_CLK_DN(s_sh_m_d_clk_dn),
        .M_D_CLK_DP(s_sh_m_d_clk_dp),
        .M_D_CS_N(s_sh_m_d_cs_n),
        .M_D_DQ(s_sh_m_d_dq),
        .M_D_DQS_DN(s_sh_m_d_dqs_dn),
        .M_D_DQS_DP(s_sh_m_d_dqs_dp),
        .M_D_ECC(s_sh_m_d_ecc),
        .M_D_MA(s_sh_m_d_ma),
        .M_D_ODT(s_sh_m_d_odt),
        .M_D_PAR(s_sh_m_d_par),
        .cl_RST_DIMM_A_N(s_sh_cl_rst_dimm_a_n),
        .cl_RST_DIMM_B_N(s_sh_cl_rst_dimm_b_n),
        .cl_RST_DIMM_D_N(s_sh_cl_rst_dimm_d_n),
        .cl_sh_ddr_araddr(s_sh_cl_sh_ddr_araddr),
        .cl_sh_ddr_arburst(s_sh_cl_sh_ddr_arburst),
        .cl_sh_ddr_arid(s_sh_cl_sh_ddr_arid),
        .cl_sh_ddr_arlen(s_sh_cl_sh_ddr_arlen),
        .cl_sh_ddr_arsize(s_sh_cl_sh_ddr_arsize),
        .cl_sh_ddr_arvalid(s_sh_cl_sh_ddr_arvalid),
        .cl_sh_ddr_awaddr(s_sh_cl_sh_ddr_awaddr),
        .cl_sh_ddr_awburst(s_sh_cl_sh_ddr_awburst),
        .cl_sh_ddr_awid(s_sh_cl_sh_ddr_awid),
        .cl_sh_ddr_awlen(s_sh_cl_sh_ddr_awlen),
        .cl_sh_ddr_awsize(s_sh_cl_sh_ddr_awsize),
        .cl_sh_ddr_awvalid(s_sh_cl_sh_ddr_awvalid),
        .cl_sh_ddr_bready(s_sh_cl_sh_ddr_bready),
        .cl_sh_ddr_rready(s_sh_cl_sh_ddr_rready),
        .cl_sh_ddr_wdata(s_sh_cl_sh_ddr_wdata),
        .cl_sh_ddr_wid(s_sh_cl_sh_ddr_wid),
        .cl_sh_ddr_wlast(s_sh_cl_sh_ddr_wlast),
        .cl_sh_ddr_wstrb(s_sh_cl_sh_ddr_wstrb),
        .cl_sh_ddr_wvalid(s_sh_cl_sh_ddr_wvalid),
        .clk_main_a0(s_sh_clk_main_a0),
        .clk_main_a0_out(aclk),
        .ddr_sh_stat_ack0(s_sh_ddr_sh_stat_ack0),
        .ddr_sh_stat_ack1(s_sh_ddr_sh_stat_ack1),
        .ddr_sh_stat_ack2(s_sh_ddr_sh_stat_ack2),
        .ddr_sh_stat_int0(s_sh_ddr_sh_stat_int0),
        .ddr_sh_stat_int1(s_sh_ddr_sh_stat_int1),
        .ddr_sh_stat_int2(s_sh_ddr_sh_stat_int2),
        .ddr_sh_stat_rdata0(s_sh_ddr_sh_stat_rdata0),
        .ddr_sh_stat_rdata1(s_sh_ddr_sh_stat_rdata1),
        .ddr_sh_stat_rdata2(s_sh_ddr_sh_stat_rdata2),
        .ddrc_is_ready(aws_ddrc_is_ready),
        .rst_main_n(s_sh_rst_main_n),
        .rst_main_n_out(aws_rst_main_n_out),
        .s_axi_ddrc_araddr(vip_DDR4_MEM00_M_AXI_ARADDR),
        .s_axi_ddrc_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ddrc_arlen(vip_DDR4_MEM00_M_AXI_ARLEN),
        .s_axi_ddrc_arready(vip_DDR4_MEM00_M_AXI_ARREADY),
        .s_axi_ddrc_arsize({1'b1,1'b1,1'b0}),
        .s_axi_ddrc_arvalid(vip_DDR4_MEM00_M_AXI_ARVALID),
        .s_axi_ddrc_awaddr(vip_DDR4_MEM00_M_AXI_AWADDR),
        .s_axi_ddrc_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ddrc_awlen(vip_DDR4_MEM00_M_AXI_AWLEN),
        .s_axi_ddrc_awready(vip_DDR4_MEM00_M_AXI_AWREADY),
        .s_axi_ddrc_awsize({1'b1,1'b1,1'b0}),
        .s_axi_ddrc_awvalid(vip_DDR4_MEM00_M_AXI_AWVALID),
        .s_axi_ddrc_bid(NLW_aws_s_axi_ddrc_bid_UNCONNECTED[15:0]),
        .s_axi_ddrc_bready(vip_DDR4_MEM00_M_AXI_BREADY),
        .s_axi_ddrc_bresp(vip_DDR4_MEM00_M_AXI_BRESP),
        .s_axi_ddrc_bvalid(vip_DDR4_MEM00_M_AXI_BVALID),
        .s_axi_ddrc_rdata(vip_DDR4_MEM00_M_AXI_RDATA),
        .s_axi_ddrc_rid(NLW_aws_s_axi_ddrc_rid_UNCONNECTED[15:0]),
        .s_axi_ddrc_rlast(vip_DDR4_MEM00_M_AXI_RLAST),
        .s_axi_ddrc_rready(vip_DDR4_MEM00_M_AXI_RREADY),
        .s_axi_ddrc_rresp(vip_DDR4_MEM00_M_AXI_RRESP),
        .s_axi_ddrc_rvalid(vip_DDR4_MEM00_M_AXI_RVALID),
        .s_axi_ddrc_wdata(vip_DDR4_MEM00_M_AXI_WDATA),
        .s_axi_ddrc_wlast(vip_DDR4_MEM00_M_AXI_WLAST),
        .s_axi_ddrc_wready(vip_DDR4_MEM00_M_AXI_WREADY),
        .s_axi_ddrc_wstrb(vip_DDR4_MEM00_M_AXI_WSTRB),
        .s_axi_ddrc_wvalid(vip_DDR4_MEM00_M_AXI_WVALID),
        .sh_cl_ddr_arready(s_sh_sh_cl_ddr_arready),
        .sh_cl_ddr_awready(s_sh_sh_cl_ddr_awready),
        .sh_cl_ddr_bid(s_sh_sh_cl_ddr_bid),
        .sh_cl_ddr_bresp(s_sh_sh_cl_ddr_bresp),
        .sh_cl_ddr_bvalid(s_sh_sh_cl_ddr_bvalid),
        .sh_cl_ddr_is_ready(s_sh_sh_cl_ddr_is_ready),
        .sh_cl_ddr_rdata(s_sh_sh_cl_ddr_rdata),
        .sh_cl_ddr_rid(s_sh_sh_cl_ddr_rid),
        .sh_cl_ddr_rlast(s_sh_sh_cl_ddr_rlast),
        .sh_cl_ddr_rresp(s_sh_sh_cl_ddr_rresp),
        .sh_cl_ddr_rvalid(s_sh_sh_cl_ddr_rvalid),
        .sh_cl_ddr_wready(s_sh_sh_cl_ddr_wready),
        .sh_ddr_stat_addr0(s_sh_sh_ddr_stat_addr0),
        .sh_ddr_stat_addr1(s_sh_sh_ddr_stat_addr1),
        .sh_ddr_stat_addr2(s_sh_sh_ddr_stat_addr2),
        .sh_ddr_stat_rd0(s_sh_sh_ddr_stat_rd0),
        .sh_ddr_stat_rd1(s_sh_sh_ddr_stat_rd1),
        .sh_ddr_stat_rd2(s_sh_sh_ddr_stat_rd2),
        .sh_ddr_stat_wdata0(s_sh_sh_ddr_stat_wdata0),
        .sh_ddr_stat_wdata1(s_sh_sh_ddr_stat_wdata1),
        .sh_ddr_stat_wdata2(s_sh_sh_ddr_stat_wdata2),
        .sh_ddr_stat_wr0(s_sh_sh_ddr_stat_wr0),
        .sh_ddr_stat_wr1(s_sh_sh_ddr_stat_wr1),
        .sh_ddr_stat_wr2(s_sh_sh_ddr_stat_wr2));
  (* CHECK_LICENSE_TYPE = "bd_3329_calib_concat_0,xlconcat_v2_1_4_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_calib_concat_0 calib_concat
       (.In0(aws_ddrc_is_ready),
        .dout(calib_concat_dout));
  (* X_CORE_INFO = "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_calib_reduce_0 calib_reduce
       (.Op1(calib_concat_dout),
        .Res(ddr4_mem_calib_complete));
  (* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_DDR4_MEM00_0 vip_DDR4_MEM00
       (.aclk(aclk),
        .aresetn(aws_rst_main_n_out),
        .m_axi_araddr(vip_DDR4_MEM00_M_AXI_ARADDR),
        .m_axi_arburst(NLW_vip_DDR4_MEM00_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_vip_DDR4_MEM00_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arlen(vip_DDR4_MEM00_M_AXI_ARLEN),
        .m_axi_arlock(NLW_vip_DDR4_MEM00_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_vip_DDR4_MEM00_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_vip_DDR4_MEM00_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(vip_DDR4_MEM00_M_AXI_ARREADY),
        .m_axi_arvalid(vip_DDR4_MEM00_M_AXI_ARVALID),
        .m_axi_awaddr(vip_DDR4_MEM00_M_AXI_AWADDR),
        .m_axi_awburst(NLW_vip_DDR4_MEM00_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_vip_DDR4_MEM00_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awlen(vip_DDR4_MEM00_M_AXI_AWLEN),
        .m_axi_awlock(NLW_vip_DDR4_MEM00_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_vip_DDR4_MEM00_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_vip_DDR4_MEM00_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(vip_DDR4_MEM00_M_AXI_AWREADY),
        .m_axi_awvalid(vip_DDR4_MEM00_M_AXI_AWVALID),
        .m_axi_bready(vip_DDR4_MEM00_M_AXI_BREADY),
        .m_axi_bresp(vip_DDR4_MEM00_M_AXI_BRESP),
        .m_axi_bvalid(vip_DDR4_MEM00_M_AXI_BVALID),
        .m_axi_rdata(vip_DDR4_MEM00_M_AXI_RDATA),
        .m_axi_rlast(vip_DDR4_MEM00_M_AXI_RLAST),
        .m_axi_rready(vip_DDR4_MEM00_M_AXI_RREADY),
        .m_axi_rresp(vip_DDR4_MEM00_M_AXI_RRESP),
        .m_axi_rvalid(vip_DDR4_MEM00_M_AXI_RVALID),
        .m_axi_wdata(vip_DDR4_MEM00_M_AXI_WDATA),
        .m_axi_wlast(vip_DDR4_MEM00_M_AXI_WLAST),
        .m_axi_wready(vip_DDR4_MEM00_M_AXI_WREADY),
        .m_axi_wstrb(vip_DDR4_MEM00_M_AXI_WSTRB),
        .m_axi_wvalid(vip_DDR4_MEM00_M_AXI_WVALID),
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_arburst(S_AXI_arburst),
        .s_axi_arcache(S_AXI_arcache),
        .s_axi_arlen(S_AXI_arlen),
        .s_axi_arlock(S_AXI_arlock),
        .s_axi_arprot(S_AXI_arprot),
        .s_axi_arqos(S_AXI_arqos),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awburst(S_AXI_awburst),
        .s_axi_awcache(S_AXI_awcache),
        .s_axi_awlen(S_AXI_awlen),
        .s_axi_awlock(S_AXI_awlock),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awqos(S_AXI_awqos),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rlast(S_AXI_rlast),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wlast(S_AXI_wlast),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_imp_57Y9M4
   (interconnect_aresetn2,
    interconnect_aresetn,
    interconnect_aresetn1,
    aclk1,
    aresetn,
    aclk);
  output [0:0]interconnect_aresetn2;
  output [0:0]interconnect_aresetn;
  output [0:0]interconnect_aresetn1;
  input aclk1;
  input aresetn;
  input aclk;

  wire aclk;
  wire aclk1;
  wire aresetn;
  wire [0:0]interconnect_aresetn;
  wire [0:0]interconnect_aresetn1;
  wire [0:0]interconnect_aresetn2;
  wire NLW_psr_aclk1_SLR1_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psr_aclk1_SLR1_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psr_aclk1_SLR1_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psr_aclk1_SLR1_peripheral_reset_UNCONNECTED;
  wire NLW_psr_aclk_SLR0_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psr_aclk_SLR0_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psr_aclk_SLR0_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psr_aclk_SLR0_peripheral_reset_UNCONNECTED;
  wire NLW_psr_aclk_SLR1_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psr_aclk_SLR1_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psr_aclk_SLR1_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psr_aclk_SLR1_peripheral_reset_UNCONNECTED;

  (* X_CORE_INFO = "proc_sys_reset,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_psr_aclk1_SLR1_0 psr_aclk1_SLR1
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_psr_aclk1_SLR1_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn),
        .interconnect_aresetn(interconnect_aresetn2),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psr_aclk1_SLR1_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psr_aclk1_SLR1_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psr_aclk1_SLR1_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(aclk1));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_psr_aclk_SLR0_0 psr_aclk_SLR0
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_psr_aclk_SLR0_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn),
        .interconnect_aresetn(interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psr_aclk_SLR0_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psr_aclk_SLR0_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psr_aclk_SLR0_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(aclk));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_psr_aclk_SLR1_0 psr_aclk_SLR1
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_psr_aclk_SLR1_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn),
        .interconnect_aresetn(interconnect_aresetn1),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psr_aclk_SLR1_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psr_aclk_SLR1_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psr_aclk_SLR1_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(aclk));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
