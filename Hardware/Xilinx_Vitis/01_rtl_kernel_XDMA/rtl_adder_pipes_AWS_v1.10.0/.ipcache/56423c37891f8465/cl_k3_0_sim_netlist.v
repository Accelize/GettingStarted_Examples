// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Mar 30 13:18:26 2021
// Host        : ip-172-31-9-235.eu-west-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cl_k3_0_sim_netlist.v
// Design      : cl_k3_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flgb2104-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cl_k3_0,krnl_output_stage_rtl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "krnl_output_stage_rtl,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ap_clk,
    ap_rst_n,
    m_axi_gmem_AWVALID,
    m_axi_gmem_AWREADY,
    m_axi_gmem_AWADDR,
    m_axi_gmem_AWID,
    m_axi_gmem_AWLEN,
    m_axi_gmem_AWSIZE,
    m_axi_gmem_AWBURST,
    m_axi_gmem_AWLOCK,
    m_axi_gmem_AWCACHE,
    m_axi_gmem_AWPROT,
    m_axi_gmem_AWQOS,
    m_axi_gmem_AWREGION,
    m_axi_gmem_WVALID,
    m_axi_gmem_WREADY,
    m_axi_gmem_WDATA,
    m_axi_gmem_WSTRB,
    m_axi_gmem_WLAST,
    m_axi_gmem_ARVALID,
    m_axi_gmem_ARREADY,
    m_axi_gmem_ARADDR,
    m_axi_gmem_ARID,
    m_axi_gmem_ARLEN,
    m_axi_gmem_ARSIZE,
    m_axi_gmem_ARBURST,
    m_axi_gmem_ARLOCK,
    m_axi_gmem_ARCACHE,
    m_axi_gmem_ARPROT,
    m_axi_gmem_ARQOS,
    m_axi_gmem_ARREGION,
    m_axi_gmem_RVALID,
    m_axi_gmem_RREADY,
    m_axi_gmem_RDATA,
    m_axi_gmem_RLAST,
    m_axi_gmem_RID,
    m_axi_gmem_RRESP,
    m_axi_gmem_BVALID,
    m_axi_gmem_BREADY,
    m_axi_gmem_BRESP,
    m_axi_gmem_BID,
    p1_TDATA,
    p1_TVALID,
    p1_TREADY,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_AWADDR,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_ARADDR,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst_n, ASSOCIATED_BUSIF m_axi_gmem:s_axi_control:p1, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWVALID" *) output m_axi_gmem_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWREADY" *) input m_axi_gmem_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWADDR" *) output [63:0]m_axi_gmem_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWID" *) output [0:0]m_axi_gmem_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWLEN" *) output [7:0]m_axi_gmem_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWSIZE" *) output [2:0]m_axi_gmem_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWBURST" *) output [1:0]m_axi_gmem_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWLOCK" *) output [1:0]m_axi_gmem_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWCACHE" *) output [3:0]m_axi_gmem_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWPROT" *) output [2:0]m_axi_gmem_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWQOS" *) output [3:0]m_axi_gmem_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWREGION" *) output [3:0]m_axi_gmem_AWREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WVALID" *) output m_axi_gmem_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WREADY" *) input m_axi_gmem_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WDATA" *) output [31:0]m_axi_gmem_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WSTRB" *) output [3:0]m_axi_gmem_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WLAST" *) output m_axi_gmem_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARVALID" *) output m_axi_gmem_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARREADY" *) input m_axi_gmem_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARADDR" *) output [63:0]m_axi_gmem_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARID" *) output [0:0]m_axi_gmem_ARID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARLEN" *) output [7:0]m_axi_gmem_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARSIZE" *) output [2:0]m_axi_gmem_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARBURST" *) output [1:0]m_axi_gmem_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARLOCK" *) output [1:0]m_axi_gmem_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARCACHE" *) output [3:0]m_axi_gmem_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARPROT" *) output [2:0]m_axi_gmem_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARQOS" *) output [3:0]m_axi_gmem_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARREGION" *) output [3:0]m_axi_gmem_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RVALID" *) input m_axi_gmem_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RREADY" *) output m_axi_gmem_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RDATA" *) input [31:0]m_axi_gmem_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RLAST" *) input m_axi_gmem_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RID" *) input [0:0]m_axi_gmem_RID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RRESP" *) input [1:0]m_axi_gmem_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem BVALID" *) input m_axi_gmem_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem BREADY" *) output m_axi_gmem_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem BRESP" *) input [1:0]m_axi_gmem_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem BID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]m_axi_gmem_BID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 p1 TDATA" *) input [31:0]p1_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 p1 TVALID" *) input p1_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 p1 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p1, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, LAYERED_METADATA undef, INSERT_VIP 0" *) output p1_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [5:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [5:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]s_axi_control_BRESP;

  wire \<const0> ;
  wire \<const1> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [63:0]m_axi_gmem_AWADDR;
  wire [7:0]m_axi_gmem_AWLEN;
  wire m_axi_gmem_AWREADY;
  wire m_axi_gmem_AWVALID;
  wire m_axi_gmem_BVALID;
  wire [31:0]m_axi_gmem_WDATA;
  wire m_axi_gmem_WLAST;
  wire m_axi_gmem_WREADY;
  wire m_axi_gmem_WVALID;
  wire [31:0]p1_TDATA;
  wire p1_TREADY;
  wire p1_TVALID;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [5:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;

  assign m_axi_gmem_ARADDR[63] = \<const0> ;
  assign m_axi_gmem_ARADDR[62] = \<const0> ;
  assign m_axi_gmem_ARADDR[61] = \<const0> ;
  assign m_axi_gmem_ARADDR[60] = \<const0> ;
  assign m_axi_gmem_ARADDR[59] = \<const0> ;
  assign m_axi_gmem_ARADDR[58] = \<const0> ;
  assign m_axi_gmem_ARADDR[57] = \<const0> ;
  assign m_axi_gmem_ARADDR[56] = \<const0> ;
  assign m_axi_gmem_ARADDR[55] = \<const0> ;
  assign m_axi_gmem_ARADDR[54] = \<const0> ;
  assign m_axi_gmem_ARADDR[53] = \<const0> ;
  assign m_axi_gmem_ARADDR[52] = \<const0> ;
  assign m_axi_gmem_ARADDR[51] = \<const0> ;
  assign m_axi_gmem_ARADDR[50] = \<const0> ;
  assign m_axi_gmem_ARADDR[49] = \<const0> ;
  assign m_axi_gmem_ARADDR[48] = \<const0> ;
  assign m_axi_gmem_ARADDR[47] = \<const0> ;
  assign m_axi_gmem_ARADDR[46] = \<const0> ;
  assign m_axi_gmem_ARADDR[45] = \<const0> ;
  assign m_axi_gmem_ARADDR[44] = \<const0> ;
  assign m_axi_gmem_ARADDR[43] = \<const0> ;
  assign m_axi_gmem_ARADDR[42] = \<const0> ;
  assign m_axi_gmem_ARADDR[41] = \<const0> ;
  assign m_axi_gmem_ARADDR[40] = \<const0> ;
  assign m_axi_gmem_ARADDR[39] = \<const0> ;
  assign m_axi_gmem_ARADDR[38] = \<const0> ;
  assign m_axi_gmem_ARADDR[37] = \<const0> ;
  assign m_axi_gmem_ARADDR[36] = \<const0> ;
  assign m_axi_gmem_ARADDR[35] = \<const0> ;
  assign m_axi_gmem_ARADDR[34] = \<const0> ;
  assign m_axi_gmem_ARADDR[33] = \<const0> ;
  assign m_axi_gmem_ARADDR[32] = \<const0> ;
  assign m_axi_gmem_ARADDR[31] = \<const0> ;
  assign m_axi_gmem_ARADDR[30] = \<const0> ;
  assign m_axi_gmem_ARADDR[29] = \<const0> ;
  assign m_axi_gmem_ARADDR[28] = \<const0> ;
  assign m_axi_gmem_ARADDR[27] = \<const0> ;
  assign m_axi_gmem_ARADDR[26] = \<const0> ;
  assign m_axi_gmem_ARADDR[25] = \<const0> ;
  assign m_axi_gmem_ARADDR[24] = \<const0> ;
  assign m_axi_gmem_ARADDR[23] = \<const0> ;
  assign m_axi_gmem_ARADDR[22] = \<const0> ;
  assign m_axi_gmem_ARADDR[21] = \<const0> ;
  assign m_axi_gmem_ARADDR[20] = \<const0> ;
  assign m_axi_gmem_ARADDR[19] = \<const0> ;
  assign m_axi_gmem_ARADDR[18] = \<const0> ;
  assign m_axi_gmem_ARADDR[17] = \<const0> ;
  assign m_axi_gmem_ARADDR[16] = \<const0> ;
  assign m_axi_gmem_ARADDR[15] = \<const0> ;
  assign m_axi_gmem_ARADDR[14] = \<const0> ;
  assign m_axi_gmem_ARADDR[13] = \<const0> ;
  assign m_axi_gmem_ARADDR[12] = \<const0> ;
  assign m_axi_gmem_ARADDR[11] = \<const0> ;
  assign m_axi_gmem_ARADDR[10] = \<const0> ;
  assign m_axi_gmem_ARADDR[9] = \<const0> ;
  assign m_axi_gmem_ARADDR[8] = \<const0> ;
  assign m_axi_gmem_ARADDR[7] = \<const0> ;
  assign m_axi_gmem_ARADDR[6] = \<const0> ;
  assign m_axi_gmem_ARADDR[5] = \<const0> ;
  assign m_axi_gmem_ARADDR[4] = \<const0> ;
  assign m_axi_gmem_ARADDR[3] = \<const0> ;
  assign m_axi_gmem_ARADDR[2] = \<const0> ;
  assign m_axi_gmem_ARADDR[1] = \<const0> ;
  assign m_axi_gmem_ARADDR[0] = \<const0> ;
  assign m_axi_gmem_ARBURST[1] = \<const0> ;
  assign m_axi_gmem_ARBURST[0] = \<const1> ;
  assign m_axi_gmem_ARCACHE[3] = \<const0> ;
  assign m_axi_gmem_ARCACHE[2] = \<const0> ;
  assign m_axi_gmem_ARCACHE[1] = \<const1> ;
  assign m_axi_gmem_ARCACHE[0] = \<const1> ;
  assign m_axi_gmem_ARID[0] = \<const0> ;
  assign m_axi_gmem_ARLEN[7] = \<const0> ;
  assign m_axi_gmem_ARLEN[6] = \<const0> ;
  assign m_axi_gmem_ARLEN[5] = \<const0> ;
  assign m_axi_gmem_ARLEN[4] = \<const0> ;
  assign m_axi_gmem_ARLEN[3] = \<const0> ;
  assign m_axi_gmem_ARLEN[2] = \<const0> ;
  assign m_axi_gmem_ARLEN[1] = \<const0> ;
  assign m_axi_gmem_ARLEN[0] = \<const0> ;
  assign m_axi_gmem_ARLOCK[1] = \<const0> ;
  assign m_axi_gmem_ARLOCK[0] = \<const0> ;
  assign m_axi_gmem_ARPROT[2] = \<const0> ;
  assign m_axi_gmem_ARPROT[1] = \<const0> ;
  assign m_axi_gmem_ARPROT[0] = \<const0> ;
  assign m_axi_gmem_ARQOS[3] = \<const0> ;
  assign m_axi_gmem_ARQOS[2] = \<const0> ;
  assign m_axi_gmem_ARQOS[1] = \<const0> ;
  assign m_axi_gmem_ARQOS[0] = \<const0> ;
  assign m_axi_gmem_ARREGION[3] = \<const0> ;
  assign m_axi_gmem_ARREGION[2] = \<const0> ;
  assign m_axi_gmem_ARREGION[1] = \<const0> ;
  assign m_axi_gmem_ARREGION[0] = \<const0> ;
  assign m_axi_gmem_ARSIZE[2] = \<const0> ;
  assign m_axi_gmem_ARSIZE[1] = \<const0> ;
  assign m_axi_gmem_ARSIZE[0] = \<const0> ;
  assign m_axi_gmem_ARVALID = \<const0> ;
  assign m_axi_gmem_AWBURST[1] = \<const0> ;
  assign m_axi_gmem_AWBURST[0] = \<const1> ;
  assign m_axi_gmem_AWCACHE[3] = \<const0> ;
  assign m_axi_gmem_AWCACHE[2] = \<const0> ;
  assign m_axi_gmem_AWCACHE[1] = \<const1> ;
  assign m_axi_gmem_AWCACHE[0] = \<const1> ;
  assign m_axi_gmem_AWID[0] = \<const0> ;
  assign m_axi_gmem_AWLOCK[1] = \<const0> ;
  assign m_axi_gmem_AWLOCK[0] = \<const0> ;
  assign m_axi_gmem_AWPROT[2] = \<const0> ;
  assign m_axi_gmem_AWPROT[1] = \<const0> ;
  assign m_axi_gmem_AWPROT[0] = \<const0> ;
  assign m_axi_gmem_AWQOS[3] = \<const0> ;
  assign m_axi_gmem_AWQOS[2] = \<const0> ;
  assign m_axi_gmem_AWQOS[1] = \<const0> ;
  assign m_axi_gmem_AWQOS[0] = \<const0> ;
  assign m_axi_gmem_AWREGION[3] = \<const0> ;
  assign m_axi_gmem_AWREGION[2] = \<const0> ;
  assign m_axi_gmem_AWREGION[1] = \<const0> ;
  assign m_axi_gmem_AWREGION[0] = \<const0> ;
  assign m_axi_gmem_AWSIZE[2] = \<const0> ;
  assign m_axi_gmem_AWSIZE[1] = \<const1> ;
  assign m_axi_gmem_AWSIZE[0] = \<const0> ;
  assign m_axi_gmem_BREADY = \<const1> ;
  assign m_axi_gmem_RREADY = \<const0> ;
  assign m_axi_gmem_WSTRB[3] = \<const1> ;
  assign m_axi_gmem_WSTRB[2] = \<const1> ;
  assign m_axi_gmem_WSTRB[1] = \<const1> ;
  assign m_axi_gmem_WSTRB[0] = \<const1> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl inst
       (.\FSM_onehot_wstate_reg[1] (s_axi_control_WREADY),
        .FSM_sequential_rstate_reg(s_axi_control_RVALID),
        .Q({m_axi_gmem_WVALID,p1_TREADY}),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .awvalid_r_reg(m_axi_gmem_AWVALID),
        .is_zero_r_reg(m_axi_gmem_WLAST),
        .m_axi_gmem_AWADDR(m_axi_gmem_AWADDR),
        .m_axi_gmem_AWLEN(m_axi_gmem_AWLEN),
        .m_axi_gmem_AWREADY(m_axi_gmem_AWREADY),
        .m_axi_gmem_BVALID(m_axi_gmem_BVALID),
        .m_axi_gmem_WDATA(m_axi_gmem_WDATA),
        .m_axi_gmem_WREADY(m_axi_gmem_WREADY),
        .p1_TDATA(p1_TDATA),
        .p1_TVALID(p1_TVALID),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl
   (awvalid_r_reg,
    Q,
    s_axi_control_ARREADY,
    FSM_sequential_rstate_reg,
    s_axi_control_BVALID,
    \FSM_onehot_wstate_reg[1] ,
    s_axi_control_RDATA,
    m_axi_gmem_WDATA,
    m_axi_gmem_AWADDR,
    s_axi_control_AWREADY,
    is_zero_r_reg,
    m_axi_gmem_AWLEN,
    m_axi_gmem_AWREADY,
    ap_clk,
    s_axi_control_AWADDR,
    m_axi_gmem_BVALID,
    s_axi_control_WDATA,
    p1_TDATA,
    s_axi_control_RREADY,
    s_axi_control_ARVALID,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    s_axi_control_ARADDR,
    m_axi_gmem_WREADY,
    p1_TVALID,
    ap_rst_n);
  output awvalid_r_reg;
  output [1:0]Q;
  output s_axi_control_ARREADY;
  output FSM_sequential_rstate_reg;
  output s_axi_control_BVALID;
  output \FSM_onehot_wstate_reg[1] ;
  output [31:0]s_axi_control_RDATA;
  output [31:0]m_axi_gmem_WDATA;
  output [63:0]m_axi_gmem_AWADDR;
  output s_axi_control_AWREADY;
  output is_zero_r_reg;
  output [7:0]m_axi_gmem_AWLEN;
  input m_axi_gmem_AWREADY;
  input ap_clk;
  input [5:0]s_axi_control_AWADDR;
  input m_axi_gmem_BVALID;
  input [31:0]s_axi_control_WDATA;
  input [31:0]p1_TDATA;
  input s_axi_control_RREADY;
  input s_axi_control_ARVALID;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [5:0]s_axi_control_ARADDR;
  input m_axi_gmem_WREADY;
  input p1_TVALID;
  input ap_rst_n;

  wire \FSM_onehot_wstate_reg[1] ;
  wire FSM_sequential_rstate_reg;
  wire [1:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire awvalid_r_reg;
  wire is_zero_r_reg;
  wire [63:0]m_axi_gmem_AWADDR;
  wire [7:0]m_axi_gmem_AWLEN;
  wire m_axi_gmem_AWREADY;
  wire m_axi_gmem_BVALID;
  wire [31:0]m_axi_gmem_WDATA;
  wire m_axi_gmem_WREADY;
  wire [31:0]p1_TDATA;
  wire p1_TVALID;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [5:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_int inst_krnl_output_stage_rtl_int
       (.\FSM_onehot_wstate_reg[1] (\FSM_onehot_wstate_reg[1] ),
        .FSM_sequential_rstate_reg(FSM_sequential_rstate_reg),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .awvalid_r_reg(awvalid_r_reg),
        .is_zero_r_reg(is_zero_r_reg),
        .m_axi_gmem_AWADDR(m_axi_gmem_AWADDR),
        .m_axi_gmem_AWLEN(m_axi_gmem_AWLEN),
        .m_axi_gmem_AWREADY(m_axi_gmem_AWREADY),
        .m_axi_gmem_BVALID(m_axi_gmem_BVALID),
        .m_axi_gmem_WDATA(m_axi_gmem_WDATA),
        .m_axi_gmem_WREADY(m_axi_gmem_WREADY),
        .m_axi_gmem_WVALID(Q[1]),
        .p1_TDATA(p1_TDATA),
        .p1_TREADY(Q[0]),
        .p1_TVALID(p1_TVALID),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_axi_write_master
   (m_axi_gmem_AWADDR,
    is_zero_r_reg,
    is_zero_r_reg_0,
    awvalid_r_reg_0,
    is_zero_r_reg_1,
    m_axi_gmem_AWLEN,
    ap_start_pulse,
    ap_clk,
    areset,
    \addr_reg[0]_0 ,
    \addr_reg[1]_0 ,
    \addr_reg[2]_0 ,
    \addr_reg[3]_0 ,
    \addr_reg[4]_0 ,
    \addr_reg[5]_0 ,
    \addr_reg[6]_0 ,
    \addr_reg[7]_0 ,
    \addr_reg[8]_0 ,
    O,
    \addr_reg[24]_0 ,
    \addr_reg[32]_0 ,
    \addr_reg[40]_0 ,
    \addr_reg[48]_0 ,
    \addr_reg[56]_0 ,
    \addr_reg[63]_0 ,
    Q,
    S,
    \num_transactions_reg[15]_0 ,
    \num_transactions_reg[23]_0 ,
    m_axi_gmem_AWREADY,
    m_axi_gmem_BVALID,
    ap_idle,
    ap_start_r,
    ap_start,
    is_zero_r_reg_2,
    m_axi_gmem_WREADY,
    \count_r_reg[7] ,
    D);
  output [63:0]m_axi_gmem_AWADDR;
  output is_zero_r_reg;
  output is_zero_r_reg_0;
  output awvalid_r_reg_0;
  output is_zero_r_reg_1;
  output [7:0]m_axi_gmem_AWLEN;
  input ap_start_pulse;
  input ap_clk;
  input areset;
  input \addr_reg[0]_0 ;
  input \addr_reg[1]_0 ;
  input \addr_reg[2]_0 ;
  input \addr_reg[3]_0 ;
  input \addr_reg[4]_0 ;
  input \addr_reg[5]_0 ;
  input \addr_reg[6]_0 ;
  input \addr_reg[7]_0 ;
  input \addr_reg[8]_0 ;
  input [7:0]O;
  input [7:0]\addr_reg[24]_0 ;
  input [7:0]\addr_reg[32]_0 ;
  input [7:0]\addr_reg[40]_0 ;
  input [7:0]\addr_reg[48]_0 ;
  input [7:0]\addr_reg[56]_0 ;
  input [6:0]\addr_reg[63]_0 ;
  input [22:0]Q;
  input [7:0]S;
  input [7:0]\num_transactions_reg[15]_0 ;
  input [7:0]\num_transactions_reg[23]_0 ;
  input m_axi_gmem_AWREADY;
  input m_axi_gmem_BVALID;
  input ap_idle;
  input ap_start_r;
  input ap_start;
  input [0:0]is_zero_r_reg_2;
  input m_axi_gmem_WREADY;
  input \count_r_reg[7] ;
  input [7:0]D;

  wire [7:0]D;
  wire [7:0]O;
  wire [22:0]Q;
  wire [7:0]S;
  wire \addr_reg[0]_0 ;
  wire \addr_reg[1]_0 ;
  wire [7:0]\addr_reg[24]_0 ;
  wire \addr_reg[2]_0 ;
  wire [7:0]\addr_reg[32]_0 ;
  wire \addr_reg[3]_0 ;
  wire [7:0]\addr_reg[40]_0 ;
  wire [7:0]\addr_reg[48]_0 ;
  wire \addr_reg[4]_0 ;
  wire [7:0]\addr_reg[56]_0 ;
  wire \addr_reg[5]_0 ;
  wire [6:0]\addr_reg[63]_0 ;
  wire \addr_reg[6]_0 ;
  wire \addr_reg[7]_0 ;
  wire \addr_reg[8]_0 ;
  wire ap_clk;
  wire ap_idle;
  wire ap_start;
  wire ap_start_pulse;
  wire ap_start_r;
  wire areset;
  wire awvalid_r_reg_0;
  wire \count_r_reg[7] ;
  wire [7:0]final_burst_len;
  wire inst_burst_cntr_n_1;
  wire inst_burst_cntr_n_2;
  wire inst_burst_cntr_n_3;
  wire inst_w_to_aw_cntr_n_0;
  wire inst_w_transaction_cntr_n_0;
  wire is_zero_r_reg;
  wire is_zero_r_reg_0;
  wire is_zero_r_reg_1;
  wire [0:0]is_zero_r_reg_2;
  wire [63:0]m_axi_gmem_AWADDR;
  wire [7:0]m_axi_gmem_AWLEN;
  wire m_axi_gmem_AWREADY;
  wire m_axi_gmem_BVALID;
  wire m_axi_gmem_WREADY;
  wire [23:0]num_transactions;
  wire [23:0]num_transactions0;
  wire num_transactions1_carry__0_n_0;
  wire num_transactions1_carry__0_n_1;
  wire num_transactions1_carry__0_n_2;
  wire num_transactions1_carry__0_n_3;
  wire num_transactions1_carry__0_n_4;
  wire num_transactions1_carry__0_n_5;
  wire num_transactions1_carry__0_n_6;
  wire num_transactions1_carry__0_n_7;
  wire num_transactions1_carry__1_n_1;
  wire num_transactions1_carry__1_n_2;
  wire num_transactions1_carry__1_n_3;
  wire num_transactions1_carry__1_n_4;
  wire num_transactions1_carry__1_n_5;
  wire num_transactions1_carry__1_n_6;
  wire num_transactions1_carry__1_n_7;
  wire num_transactions1_carry_n_0;
  wire num_transactions1_carry_n_1;
  wire num_transactions1_carry_n_2;
  wire num_transactions1_carry_n_3;
  wire num_transactions1_carry_n_4;
  wire num_transactions1_carry_n_5;
  wire num_transactions1_carry_n_6;
  wire num_transactions1_carry_n_7;
  wire [7:0]\num_transactions_reg[15]_0 ;
  wire [7:0]\num_transactions_reg[23]_0 ;
  wire sel;
  wire start;
  wire w_almost_final_transaction;
  wire wfirst;
  wire wfirst_d1;
  wire wfirst_d10;
  wire wfirst_pulse;
  wire wfirst_pulse0;
  wire [7:7]NLW_num_transactions1_carry__1_CO_UNCONNECTED;

  LUT4 #(
    .INIT(16'h88F8)) 
    \addr[63]_i_1 
       (.I0(awvalid_r_reg_0),
        .I1(m_axi_gmem_AWREADY),
        .I2(ap_start),
        .I3(ap_start_r),
        .O(sel));
  FDRE \addr_reg[0] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0]_0 ),
        .Q(m_axi_gmem_AWADDR[0]),
        .R(1'b0));
  FDRE \addr_reg[10] 
       (.C(ap_clk),
        .CE(sel),
        .D(O[1]),
        .Q(m_axi_gmem_AWADDR[10]),
        .R(1'b0));
  FDRE \addr_reg[11] 
       (.C(ap_clk),
        .CE(sel),
        .D(O[2]),
        .Q(m_axi_gmem_AWADDR[11]),
        .R(1'b0));
  FDRE \addr_reg[12] 
       (.C(ap_clk),
        .CE(sel),
        .D(O[3]),
        .Q(m_axi_gmem_AWADDR[12]),
        .R(1'b0));
  FDRE \addr_reg[13] 
       (.C(ap_clk),
        .CE(sel),
        .D(O[4]),
        .Q(m_axi_gmem_AWADDR[13]),
        .R(1'b0));
  FDRE \addr_reg[14] 
       (.C(ap_clk),
        .CE(sel),
        .D(O[5]),
        .Q(m_axi_gmem_AWADDR[14]),
        .R(1'b0));
  FDRE \addr_reg[15] 
       (.C(ap_clk),
        .CE(sel),
        .D(O[6]),
        .Q(m_axi_gmem_AWADDR[15]),
        .R(1'b0));
  FDRE \addr_reg[16] 
       (.C(ap_clk),
        .CE(sel),
        .D(O[7]),
        .Q(m_axi_gmem_AWADDR[16]),
        .R(1'b0));
  FDRE \addr_reg[17] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[24]_0 [0]),
        .Q(m_axi_gmem_AWADDR[17]),
        .R(1'b0));
  FDRE \addr_reg[18] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[24]_0 [1]),
        .Q(m_axi_gmem_AWADDR[18]),
        .R(1'b0));
  FDRE \addr_reg[19] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[24]_0 [2]),
        .Q(m_axi_gmem_AWADDR[19]),
        .R(1'b0));
  FDRE \addr_reg[1] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[1]_0 ),
        .Q(m_axi_gmem_AWADDR[1]),
        .R(1'b0));
  FDRE \addr_reg[20] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[24]_0 [3]),
        .Q(m_axi_gmem_AWADDR[20]),
        .R(1'b0));
  FDRE \addr_reg[21] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[24]_0 [4]),
        .Q(m_axi_gmem_AWADDR[21]),
        .R(1'b0));
  FDRE \addr_reg[22] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[24]_0 [5]),
        .Q(m_axi_gmem_AWADDR[22]),
        .R(1'b0));
  FDRE \addr_reg[23] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[24]_0 [6]),
        .Q(m_axi_gmem_AWADDR[23]),
        .R(1'b0));
  FDRE \addr_reg[24] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[24]_0 [7]),
        .Q(m_axi_gmem_AWADDR[24]),
        .R(1'b0));
  FDRE \addr_reg[25] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[32]_0 [0]),
        .Q(m_axi_gmem_AWADDR[25]),
        .R(1'b0));
  FDRE \addr_reg[26] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[32]_0 [1]),
        .Q(m_axi_gmem_AWADDR[26]),
        .R(1'b0));
  FDRE \addr_reg[27] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[32]_0 [2]),
        .Q(m_axi_gmem_AWADDR[27]),
        .R(1'b0));
  FDRE \addr_reg[28] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[32]_0 [3]),
        .Q(m_axi_gmem_AWADDR[28]),
        .R(1'b0));
  FDRE \addr_reg[29] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[32]_0 [4]),
        .Q(m_axi_gmem_AWADDR[29]),
        .R(1'b0));
  FDRE \addr_reg[2] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[2]_0 ),
        .Q(m_axi_gmem_AWADDR[2]),
        .R(1'b0));
  FDRE \addr_reg[30] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[32]_0 [5]),
        .Q(m_axi_gmem_AWADDR[30]),
        .R(1'b0));
  FDRE \addr_reg[31] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[32]_0 [6]),
        .Q(m_axi_gmem_AWADDR[31]),
        .R(1'b0));
  FDRE \addr_reg[32] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[32]_0 [7]),
        .Q(m_axi_gmem_AWADDR[32]),
        .R(1'b0));
  FDRE \addr_reg[33] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[40]_0 [0]),
        .Q(m_axi_gmem_AWADDR[33]),
        .R(1'b0));
  FDRE \addr_reg[34] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[40]_0 [1]),
        .Q(m_axi_gmem_AWADDR[34]),
        .R(1'b0));
  FDRE \addr_reg[35] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[40]_0 [2]),
        .Q(m_axi_gmem_AWADDR[35]),
        .R(1'b0));
  FDRE \addr_reg[36] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[40]_0 [3]),
        .Q(m_axi_gmem_AWADDR[36]),
        .R(1'b0));
  FDRE \addr_reg[37] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[40]_0 [4]),
        .Q(m_axi_gmem_AWADDR[37]),
        .R(1'b0));
  FDRE \addr_reg[38] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[40]_0 [5]),
        .Q(m_axi_gmem_AWADDR[38]),
        .R(1'b0));
  FDRE \addr_reg[39] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[40]_0 [6]),
        .Q(m_axi_gmem_AWADDR[39]),
        .R(1'b0));
  FDRE \addr_reg[3] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[3]_0 ),
        .Q(m_axi_gmem_AWADDR[3]),
        .R(1'b0));
  FDRE \addr_reg[40] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[40]_0 [7]),
        .Q(m_axi_gmem_AWADDR[40]),
        .R(1'b0));
  FDRE \addr_reg[41] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[48]_0 [0]),
        .Q(m_axi_gmem_AWADDR[41]),
        .R(1'b0));
  FDRE \addr_reg[42] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[48]_0 [1]),
        .Q(m_axi_gmem_AWADDR[42]),
        .R(1'b0));
  FDRE \addr_reg[43] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[48]_0 [2]),
        .Q(m_axi_gmem_AWADDR[43]),
        .R(1'b0));
  FDRE \addr_reg[44] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[48]_0 [3]),
        .Q(m_axi_gmem_AWADDR[44]),
        .R(1'b0));
  FDRE \addr_reg[45] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[48]_0 [4]),
        .Q(m_axi_gmem_AWADDR[45]),
        .R(1'b0));
  FDRE \addr_reg[46] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[48]_0 [5]),
        .Q(m_axi_gmem_AWADDR[46]),
        .R(1'b0));
  FDRE \addr_reg[47] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[48]_0 [6]),
        .Q(m_axi_gmem_AWADDR[47]),
        .R(1'b0));
  FDRE \addr_reg[48] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[48]_0 [7]),
        .Q(m_axi_gmem_AWADDR[48]),
        .R(1'b0));
  FDRE \addr_reg[49] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[56]_0 [0]),
        .Q(m_axi_gmem_AWADDR[49]),
        .R(1'b0));
  FDRE \addr_reg[4] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[4]_0 ),
        .Q(m_axi_gmem_AWADDR[4]),
        .R(1'b0));
  FDRE \addr_reg[50] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[56]_0 [1]),
        .Q(m_axi_gmem_AWADDR[50]),
        .R(1'b0));
  FDRE \addr_reg[51] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[56]_0 [2]),
        .Q(m_axi_gmem_AWADDR[51]),
        .R(1'b0));
  FDRE \addr_reg[52] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[56]_0 [3]),
        .Q(m_axi_gmem_AWADDR[52]),
        .R(1'b0));
  FDRE \addr_reg[53] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[56]_0 [4]),
        .Q(m_axi_gmem_AWADDR[53]),
        .R(1'b0));
  FDRE \addr_reg[54] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[56]_0 [5]),
        .Q(m_axi_gmem_AWADDR[54]),
        .R(1'b0));
  FDRE \addr_reg[55] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[56]_0 [6]),
        .Q(m_axi_gmem_AWADDR[55]),
        .R(1'b0));
  FDRE \addr_reg[56] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[56]_0 [7]),
        .Q(m_axi_gmem_AWADDR[56]),
        .R(1'b0));
  FDRE \addr_reg[57] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[63]_0 [0]),
        .Q(m_axi_gmem_AWADDR[57]),
        .R(1'b0));
  FDRE \addr_reg[58] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[63]_0 [1]),
        .Q(m_axi_gmem_AWADDR[58]),
        .R(1'b0));
  FDRE \addr_reg[59] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[63]_0 [2]),
        .Q(m_axi_gmem_AWADDR[59]),
        .R(1'b0));
  FDRE \addr_reg[5] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[5]_0 ),
        .Q(m_axi_gmem_AWADDR[5]),
        .R(1'b0));
  FDRE \addr_reg[60] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[63]_0 [3]),
        .Q(m_axi_gmem_AWADDR[60]),
        .R(1'b0));
  FDRE \addr_reg[61] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[63]_0 [4]),
        .Q(m_axi_gmem_AWADDR[61]),
        .R(1'b0));
  FDRE \addr_reg[62] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[63]_0 [5]),
        .Q(m_axi_gmem_AWADDR[62]),
        .R(1'b0));
  FDRE \addr_reg[63] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[63]_0 [6]),
        .Q(m_axi_gmem_AWADDR[63]),
        .R(1'b0));
  FDRE \addr_reg[6] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[6]_0 ),
        .Q(m_axi_gmem_AWADDR[6]),
        .R(1'b0));
  FDRE \addr_reg[7] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[7]_0 ),
        .Q(m_axi_gmem_AWADDR[7]),
        .R(1'b0));
  FDRE \addr_reg[8] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[8]_0 ),
        .Q(m_axi_gmem_AWADDR[8]),
        .R(1'b0));
  FDRE \addr_reg[9] 
       (.C(ap_clk),
        .CE(sel),
        .D(O[0]),
        .Q(m_axi_gmem_AWADDR[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    awvalid_r_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inst_w_to_aw_cntr_n_0),
        .Q(awvalid_r_reg_0),
        .R(areset));
  FDRE \final_burst_len_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(final_burst_len[0]),
        .R(1'b0));
  FDRE \final_burst_len_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(final_burst_len[1]),
        .R(1'b0));
  FDRE \final_burst_len_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(final_burst_len[2]),
        .R(1'b0));
  FDRE \final_burst_len_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(final_burst_len[3]),
        .R(1'b0));
  FDRE \final_burst_len_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(final_burst_len[4]),
        .R(1'b0));
  FDRE \final_burst_len_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(final_burst_len[5]),
        .R(1'b0));
  FDRE \final_burst_len_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(final_burst_len[6]),
        .R(1'b0));
  FDRE \final_burst_len_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(final_burst_len[7]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0 inst_aw_transaction_cntr
       (.Q(num_transactions),
        .ap_clk(ap_clk),
        .areset(areset),
        .is_zero_r_reg_0(awvalid_r_reg_0),
        .m_axi_gmem_AWLEN(m_axi_gmem_AWLEN),
        .\m_axi_gmem_AWLEN[7] (final_burst_len),
        .m_axi_gmem_AWLEN_0_sp_1(inst_burst_cntr_n_2),
        .m_axi_gmem_AWREADY(m_axi_gmem_AWREADY),
        .start(start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0_0 inst_b_transaction_cntr
       (.Q(num_transactions),
        .ap_clk(ap_clk),
        .ap_idle(ap_idle),
        .ap_start(ap_start),
        .ap_start_r(ap_start_r),
        .areset(areset),
        .is_zero_r_reg_0(is_zero_r_reg_0),
        .is_zero_r_reg_1(is_zero_r_reg_1),
        .is_zero_r_reg_2(inst_burst_cntr_n_2),
        .m_axi_gmem_BVALID(m_axi_gmem_BVALID),
        .start(start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter inst_burst_cntr
       (.Q(final_burst_len),
        .ap_clk(ap_clk),
        .areset(areset),
        .\count_r_reg[7]_0 (\count_r_reg[7] ),
        .is_zero_r_reg_0(is_zero_r_reg),
        .is_zero_r_reg_1(is_zero_r_reg_2),
        .\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 (num_transactions),
        .m_axi_gmem_WREADY(m_axi_gmem_WREADY),
        .\num_transactions_reg[16] (inst_burst_cntr_n_2),
        .start(start),
        .\state_reg[1] (inst_burst_cntr_n_1),
        .w_almost_final_transaction(w_almost_final_transaction),
        .wfirst(wfirst),
        .wfirst_reg(inst_burst_cntr_n_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized1 inst_w_to_aw_cntr
       (.ap_clk(ap_clk),
        .areset(areset),
        .awvalid_r_reg(inst_w_to_aw_cntr_n_0),
        .\count_r_reg[1]_0 (awvalid_r_reg_0),
        .m_axi_gmem_AWREADY(m_axi_gmem_AWREADY),
        .wfirst_pulse(wfirst_pulse));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0_1 inst_w_transaction_cntr
       (.Q(num_transactions),
        .ap_clk(ap_clk),
        .areset(areset),
        .\count_r_reg[14]_0 (inst_w_transaction_cntr_n_0),
        .\count_r_reg[23]_0 (inst_burst_cntr_n_1),
        .start(start));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 num_transactions1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({num_transactions1_carry_n_0,num_transactions1_carry_n_1,num_transactions1_carry_n_2,num_transactions1_carry_n_3,num_transactions1_carry_n_4,num_transactions1_carry_n_5,num_transactions1_carry_n_6,num_transactions1_carry_n_7}),
        .DI(Q[7:0]),
        .O(num_transactions0[7:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 num_transactions1_carry__0
       (.CI(num_transactions1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({num_transactions1_carry__0_n_0,num_transactions1_carry__0_n_1,num_transactions1_carry__0_n_2,num_transactions1_carry__0_n_3,num_transactions1_carry__0_n_4,num_transactions1_carry__0_n_5,num_transactions1_carry__0_n_6,num_transactions1_carry__0_n_7}),
        .DI(Q[15:8]),
        .O(num_transactions0[15:8]),
        .S(\num_transactions_reg[15]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 num_transactions1_carry__1
       (.CI(num_transactions1_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_num_transactions1_carry__1_CO_UNCONNECTED[7],num_transactions1_carry__1_n_1,num_transactions1_carry__1_n_2,num_transactions1_carry__1_n_3,num_transactions1_carry__1_n_4,num_transactions1_carry__1_n_5,num_transactions1_carry__1_n_6,num_transactions1_carry__1_n_7}),
        .DI({1'b0,Q[22:16]}),
        .O(num_transactions0[23:16]),
        .S(\num_transactions_reg[23]_0 ));
  FDRE \num_transactions_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[0]),
        .Q(num_transactions[0]),
        .R(1'b0));
  FDRE \num_transactions_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[10]),
        .Q(num_transactions[10]),
        .R(1'b0));
  FDRE \num_transactions_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[11]),
        .Q(num_transactions[11]),
        .R(1'b0));
  FDRE \num_transactions_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[12]),
        .Q(num_transactions[12]),
        .R(1'b0));
  FDRE \num_transactions_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[13]),
        .Q(num_transactions[13]),
        .R(1'b0));
  FDRE \num_transactions_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[14]),
        .Q(num_transactions[14]),
        .R(1'b0));
  FDRE \num_transactions_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[15]),
        .Q(num_transactions[15]),
        .R(1'b0));
  FDRE \num_transactions_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[16]),
        .Q(num_transactions[16]),
        .R(1'b0));
  FDRE \num_transactions_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[17]),
        .Q(num_transactions[17]),
        .R(1'b0));
  FDRE \num_transactions_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[18]),
        .Q(num_transactions[18]),
        .R(1'b0));
  FDRE \num_transactions_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[19]),
        .Q(num_transactions[19]),
        .R(1'b0));
  FDRE \num_transactions_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[1]),
        .Q(num_transactions[1]),
        .R(1'b0));
  FDRE \num_transactions_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[20]),
        .Q(num_transactions[20]),
        .R(1'b0));
  FDRE \num_transactions_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[21]),
        .Q(num_transactions[21]),
        .R(1'b0));
  FDRE \num_transactions_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[22]),
        .Q(num_transactions[22]),
        .R(1'b0));
  FDRE \num_transactions_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[23]),
        .Q(num_transactions[23]),
        .R(1'b0));
  FDRE \num_transactions_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[2]),
        .Q(num_transactions[2]),
        .R(1'b0));
  FDRE \num_transactions_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[3]),
        .Q(num_transactions[3]),
        .R(1'b0));
  FDRE \num_transactions_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[4]),
        .Q(num_transactions[4]),
        .R(1'b0));
  FDRE \num_transactions_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[5]),
        .Q(num_transactions[5]),
        .R(1'b0));
  FDRE \num_transactions_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[6]),
        .Q(num_transactions[6]),
        .R(1'b0));
  FDRE \num_transactions_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[7]),
        .Q(num_transactions[7]),
        .R(1'b0));
  FDRE \num_transactions_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[8]),
        .Q(num_transactions[8]),
        .R(1'b0));
  FDRE \num_transactions_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[9]),
        .Q(num_transactions[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_start_pulse),
        .Q(start),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    w_almost_final_transaction_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inst_w_transaction_cntr_n_0),
        .Q(w_almost_final_transaction),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wfirst_d1_i_1
       (.I0(wfirst),
        .I1(is_zero_r_reg_2),
        .O(wfirst_d10));
  FDRE #(
    .INIT(1'b0)) 
    wfirst_d1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(wfirst_d10),
        .Q(wfirst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    wfirst_pulse_i_1
       (.I0(is_zero_r_reg_2),
        .I1(wfirst),
        .I2(wfirst_d1),
        .O(wfirst_pulse0));
  FDRE #(
    .INIT(1'b0)) 
    wfirst_pulse_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(wfirst_pulse0),
        .Q(wfirst_pulse),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    wfirst_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inst_burst_cntr_n_3),
        .Q(wfirst),
        .S(areset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_control_s_axi
   (FSM_sequential_rstate_reg_0,
    D,
    Q,
    s_axi_control_ARREADY,
    s_axi_control_AWREADY,
    s_axi_control_BVALID,
    \FSM_onehot_wstate_reg[1]_0 ,
    ap_start,
    \addr_reg[8] ,
    \addr_reg[7] ,
    \addr_reg[6] ,
    \addr_reg[5] ,
    \addr_reg[4] ,
    \addr_reg[3] ,
    \addr_reg[2] ,
    \addr_reg[1] ,
    \addr_reg[0] ,
    ap_start_pulse,
    \int_size_reg[31]_0 ,
    \int_size_reg[23]_0 ,
    S,
    O,
    \addr_reg[24] ,
    \addr_reg[32] ,
    \addr_reg[40] ,
    \addr_reg[48] ,
    \addr_reg[56] ,
    \addr_reg[63] ,
    s_axi_control_RDATA,
    areset,
    ap_clk,
    s_axi_control_RREADY,
    s_axi_control_ARVALID,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    s_axi_control_WDATA,
    int_ap_start_reg_0,
    m_axi_gmem_BVALID,
    s_axi_control_ARADDR,
    ap_idle,
    m_axi_gmem_AWADDR,
    ap_start_r,
    s_axi_control_AWADDR);
  output FSM_sequential_rstate_reg_0;
  output [7:0]D;
  output [22:0]Q;
  output s_axi_control_ARREADY;
  output s_axi_control_AWREADY;
  output s_axi_control_BVALID;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output ap_start;
  output \addr_reg[8] ;
  output \addr_reg[7] ;
  output \addr_reg[6] ;
  output \addr_reg[5] ;
  output \addr_reg[4] ;
  output \addr_reg[3] ;
  output \addr_reg[2] ;
  output \addr_reg[1] ;
  output \addr_reg[0] ;
  output ap_start_pulse;
  output [7:0]\int_size_reg[31]_0 ;
  output [7:0]\int_size_reg[23]_0 ;
  output [7:0]S;
  output [7:0]O;
  output [7:0]\addr_reg[24] ;
  output [7:0]\addr_reg[32] ;
  output [7:0]\addr_reg[40] ;
  output [7:0]\addr_reg[48] ;
  output [7:0]\addr_reg[56] ;
  output [6:0]\addr_reg[63] ;
  output [31:0]s_axi_control_RDATA;
  input areset;
  input ap_clk;
  input s_axi_control_RREADY;
  input s_axi_control_ARVALID;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [31:0]s_axi_control_WDATA;
  input int_ap_start_reg_0;
  input m_axi_gmem_BVALID;
  input [5:0]s_axi_control_ARADDR;
  input ap_idle;
  input [63:0]m_axi_gmem_AWADDR;
  input ap_start_r;
  input [5:0]s_axi_control_AWADDR;

  wire [7:0]D;
  wire \FSM_onehot_wstate[0]_i_1_n_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg_n_0_[0] ;
  wire FSM_sequential_rstate_reg_0;
  wire [7:0]O;
  wire [22:0]Q;
  wire [7:0]S;
  wire \addr[16]_i_10_n_0 ;
  wire \addr[16]_i_2_n_0 ;
  wire \addr[16]_i_3_n_0 ;
  wire \addr[16]_i_4_n_0 ;
  wire \addr[16]_i_5_n_0 ;
  wire \addr[16]_i_6_n_0 ;
  wire \addr[16]_i_7_n_0 ;
  wire \addr[16]_i_8_n_0 ;
  wire \addr[16]_i_9_n_0 ;
  wire \addr[24]_i_2_n_0 ;
  wire \addr[24]_i_3_n_0 ;
  wire \addr[24]_i_4_n_0 ;
  wire \addr[24]_i_5_n_0 ;
  wire \addr[24]_i_6_n_0 ;
  wire \addr[24]_i_7_n_0 ;
  wire \addr[24]_i_8_n_0 ;
  wire \addr[24]_i_9_n_0 ;
  wire \addr[32]_i_2_n_0 ;
  wire \addr[32]_i_3_n_0 ;
  wire \addr[32]_i_4_n_0 ;
  wire \addr[32]_i_5_n_0 ;
  wire \addr[32]_i_6_n_0 ;
  wire \addr[32]_i_7_n_0 ;
  wire \addr[32]_i_8_n_0 ;
  wire \addr[32]_i_9_n_0 ;
  wire \addr[40]_i_2_n_0 ;
  wire \addr[40]_i_3_n_0 ;
  wire \addr[40]_i_4_n_0 ;
  wire \addr[40]_i_5_n_0 ;
  wire \addr[40]_i_6_n_0 ;
  wire \addr[40]_i_7_n_0 ;
  wire \addr[40]_i_8_n_0 ;
  wire \addr[40]_i_9_n_0 ;
  wire \addr[48]_i_2_n_0 ;
  wire \addr[48]_i_3_n_0 ;
  wire \addr[48]_i_4_n_0 ;
  wire \addr[48]_i_5_n_0 ;
  wire \addr[48]_i_6_n_0 ;
  wire \addr[48]_i_7_n_0 ;
  wire \addr[48]_i_8_n_0 ;
  wire \addr[48]_i_9_n_0 ;
  wire \addr[56]_i_2_n_0 ;
  wire \addr[56]_i_3_n_0 ;
  wire \addr[56]_i_4_n_0 ;
  wire \addr[56]_i_5_n_0 ;
  wire \addr[56]_i_6_n_0 ;
  wire \addr[56]_i_7_n_0 ;
  wire \addr[56]_i_8_n_0 ;
  wire \addr[56]_i_9_n_0 ;
  wire \addr[63]_i_3_n_0 ;
  wire \addr[63]_i_4_n_0 ;
  wire \addr[63]_i_5_n_0 ;
  wire \addr[63]_i_6_n_0 ;
  wire \addr[63]_i_7_n_0 ;
  wire \addr[63]_i_8_n_0 ;
  wire \addr[63]_i_9_n_0 ;
  wire \addr_reg[0] ;
  wire \addr_reg[16]_i_1_n_0 ;
  wire \addr_reg[16]_i_1_n_1 ;
  wire \addr_reg[16]_i_1_n_2 ;
  wire \addr_reg[16]_i_1_n_3 ;
  wire \addr_reg[16]_i_1_n_4 ;
  wire \addr_reg[16]_i_1_n_5 ;
  wire \addr_reg[16]_i_1_n_6 ;
  wire \addr_reg[16]_i_1_n_7 ;
  wire \addr_reg[1] ;
  wire [7:0]\addr_reg[24] ;
  wire \addr_reg[24]_i_1_n_0 ;
  wire \addr_reg[24]_i_1_n_1 ;
  wire \addr_reg[24]_i_1_n_2 ;
  wire \addr_reg[24]_i_1_n_3 ;
  wire \addr_reg[24]_i_1_n_4 ;
  wire \addr_reg[24]_i_1_n_5 ;
  wire \addr_reg[24]_i_1_n_6 ;
  wire \addr_reg[24]_i_1_n_7 ;
  wire \addr_reg[2] ;
  wire [7:0]\addr_reg[32] ;
  wire \addr_reg[32]_i_1_n_0 ;
  wire \addr_reg[32]_i_1_n_1 ;
  wire \addr_reg[32]_i_1_n_2 ;
  wire \addr_reg[32]_i_1_n_3 ;
  wire \addr_reg[32]_i_1_n_4 ;
  wire \addr_reg[32]_i_1_n_5 ;
  wire \addr_reg[32]_i_1_n_6 ;
  wire \addr_reg[32]_i_1_n_7 ;
  wire \addr_reg[3] ;
  wire [7:0]\addr_reg[40] ;
  wire \addr_reg[40]_i_1_n_0 ;
  wire \addr_reg[40]_i_1_n_1 ;
  wire \addr_reg[40]_i_1_n_2 ;
  wire \addr_reg[40]_i_1_n_3 ;
  wire \addr_reg[40]_i_1_n_4 ;
  wire \addr_reg[40]_i_1_n_5 ;
  wire \addr_reg[40]_i_1_n_6 ;
  wire \addr_reg[40]_i_1_n_7 ;
  wire [7:0]\addr_reg[48] ;
  wire \addr_reg[48]_i_1_n_0 ;
  wire \addr_reg[48]_i_1_n_1 ;
  wire \addr_reg[48]_i_1_n_2 ;
  wire \addr_reg[48]_i_1_n_3 ;
  wire \addr_reg[48]_i_1_n_4 ;
  wire \addr_reg[48]_i_1_n_5 ;
  wire \addr_reg[48]_i_1_n_6 ;
  wire \addr_reg[48]_i_1_n_7 ;
  wire \addr_reg[4] ;
  wire [7:0]\addr_reg[56] ;
  wire \addr_reg[56]_i_1_n_0 ;
  wire \addr_reg[56]_i_1_n_1 ;
  wire \addr_reg[56]_i_1_n_2 ;
  wire \addr_reg[56]_i_1_n_3 ;
  wire \addr_reg[56]_i_1_n_4 ;
  wire \addr_reg[56]_i_1_n_5 ;
  wire \addr_reg[56]_i_1_n_6 ;
  wire \addr_reg[56]_i_1_n_7 ;
  wire \addr_reg[5] ;
  wire [6:0]\addr_reg[63] ;
  wire \addr_reg[63]_i_2_n_2 ;
  wire \addr_reg[63]_i_2_n_3 ;
  wire \addr_reg[63]_i_2_n_4 ;
  wire \addr_reg[63]_i_2_n_5 ;
  wire \addr_reg[63]_i_2_n_6 ;
  wire \addr_reg[63]_i_2_n_7 ;
  wire \addr_reg[6] ;
  wire \addr_reg[7] ;
  wire \addr_reg[8] ;
  wire ap_clk;
  wire ap_idle;
  wire ap_start;
  wire ap_start_pulse;
  wire ap_start_r;
  wire ar_hs;
  wire areset;
  wire [31:0]ctrl_length;
  wire [63:0]ctrl_offset;
  wire \final_burst_len[7]_i_2_n_0 ;
  wire int_ap_done;
  wire int_ap_done_i_1_n_0;
  wire int_ap_start3_out;
  wire int_ap_start_i_1_n_0;
  wire int_ap_start_reg_0;
  wire int_auto_restart;
  wire int_auto_restart_i_1_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire int_ier9_out;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire int_isr6_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_output_r[31]_i_1_n_0 ;
  wire \int_output_r[31]_i_3_n_0 ;
  wire \int_output_r[63]_i_1_n_0 ;
  wire [31:0]int_output_r_reg0;
  wire [31:0]int_output_r_reg04_out;
  wire \int_p_xcl_gv_p1[31]_i_1_n_0 ;
  wire \int_p_xcl_gv_p1[31]_i_3_n_0 ;
  wire \int_p_xcl_gv_p1[63]_i_1_n_0 ;
  wire [31:0]int_p_xcl_gv_p1_reg0;
  wire [31:0]int_p_xcl_gv_p1_reg01_out;
  wire \int_p_xcl_gv_p1_reg_n_0_[0] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[10] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[11] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[12] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[13] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[14] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[15] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[16] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[17] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[18] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[19] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[1] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[20] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[21] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[22] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[23] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[24] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[25] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[26] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[27] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[28] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[29] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[2] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[30] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[31] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[32] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[33] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[34] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[35] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[36] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[37] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[38] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[39] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[3] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[40] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[41] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[42] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[43] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[44] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[45] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[46] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[47] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[48] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[49] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[4] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[50] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[51] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[52] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[53] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[54] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[55] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[56] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[57] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[58] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[59] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[5] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[60] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[61] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[62] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[63] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[6] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[7] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[8] ;
  wire \int_p_xcl_gv_p1_reg_n_0_[9] ;
  wire [31:0]int_size0;
  wire \int_size[31]_i_1_n_0 ;
  wire [7:0]\int_size_reg[23]_0 ;
  wire [7:0]\int_size_reg[31]_0 ;
  wire [63:0]m_axi_gmem_AWADDR;
  wire m_axi_gmem_BVALID;
  wire p_0_in;
  wire p_1_in;
  wire [31:0]rdata;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[0]_i_5_n_0 ;
  wire \rdata[10]_i_2_n_0 ;
  wire \rdata[11]_i_2_n_0 ;
  wire \rdata[12]_i_2_n_0 ;
  wire \rdata[13]_i_2_n_0 ;
  wire \rdata[14]_i_2_n_0 ;
  wire \rdata[15]_i_2_n_0 ;
  wire \rdata[16]_i_2_n_0 ;
  wire \rdata[17]_i_2_n_0 ;
  wire \rdata[18]_i_2_n_0 ;
  wire \rdata[19]_i_2_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[1]_i_4_n_0 ;
  wire \rdata[1]_i_5_n_0 ;
  wire \rdata[20]_i_2_n_0 ;
  wire \rdata[21]_i_2_n_0 ;
  wire \rdata[22]_i_2_n_0 ;
  wire \rdata[23]_i_2_n_0 ;
  wire \rdata[24]_i_2_n_0 ;
  wire \rdata[25]_i_2_n_0 ;
  wire \rdata[26]_i_2_n_0 ;
  wire \rdata[27]_i_2_n_0 ;
  wire \rdata[28]_i_2_n_0 ;
  wire \rdata[29]_i_2_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[2]_i_3_n_0 ;
  wire \rdata[30]_i_2_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[31]_i_4_n_0 ;
  wire \rdata[31]_i_5_n_0 ;
  wire \rdata[31]_i_6_n_0 ;
  wire \rdata[31]_i_7_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[3]_i_3_n_0 ;
  wire \rdata[3]_i_4_n_0 ;
  wire \rdata[4]_i_2_n_0 ;
  wire \rdata[5]_i_2_n_0 ;
  wire \rdata[6]_i_2_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[7]_i_3_n_0 ;
  wire \rdata[8]_i_2_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire rnext;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [5:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire [7:6]\NLW_addr_reg[63]_i_2_CO_UNCONNECTED ;
  wire [7:7]\NLW_addr_reg[63]_i_2_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[0]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg_n_0_[0] ),
        .I2(s_axi_control_BVALID),
        .I3(s_axi_control_BREADY),
        .O(\FSM_onehot_wstate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(\FSM_onehot_wstate_reg_n_0_[0] ),
        .I1(s_axi_control_AWVALID),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_control_BREADY),
        .I1(s_axi_control_BVALID),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_control_WVALID),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:010,WRRESP:100,WRIDLE:001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_wstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[0]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg_n_0_[0] ),
        .S(areset));
  (* FSM_ENCODED_STATES = "WRDATA:010,WRRESP:100,WRIDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(areset));
  (* FSM_ENCODED_STATES = "WRDATA:010,WRRESP:100,WRIDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(s_axi_control_BVALID),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h74)) 
    FSM_sequential_rstate_i_1
       (.I0(s_axi_control_RREADY),
        .I1(FSM_sequential_rstate_reg_0),
        .I2(s_axi_control_ARVALID),
        .O(rnext));
  (* FSM_ENCODED_STATES = "RDIDLE:0,RDDATA:1" *) 
  FDRE FSM_sequential_rstate_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext),
        .Q(FSM_sequential_rstate_reg_0),
        .R(areset));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0]_i_1 
       (.I0(m_axi_gmem_AWADDR[0]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[0]),
        .O(\addr_reg[0] ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[16]_i_10 
       (.I0(m_axi_gmem_AWADDR[9]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[9]),
        .O(\addr[16]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \addr[16]_i_2 
       (.I0(ap_start_r),
        .I1(ap_start),
        .O(\addr[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[16]_i_3 
       (.I0(m_axi_gmem_AWADDR[16]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[16]),
        .O(\addr[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[16]_i_4 
       (.I0(m_axi_gmem_AWADDR[15]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[15]),
        .O(\addr[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[16]_i_5 
       (.I0(m_axi_gmem_AWADDR[14]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[14]),
        .O(\addr[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[16]_i_6 
       (.I0(m_axi_gmem_AWADDR[13]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[13]),
        .O(\addr[16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[16]_i_7 
       (.I0(m_axi_gmem_AWADDR[12]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[12]),
        .O(\addr[16]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[16]_i_8 
       (.I0(m_axi_gmem_AWADDR[11]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[11]),
        .O(\addr[16]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h33A3)) 
    \addr[16]_i_9 
       (.I0(ctrl_offset[10]),
        .I1(m_axi_gmem_AWADDR[10]),
        .I2(ap_start),
        .I3(ap_start_r),
        .O(\addr[16]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[1]_i_1 
       (.I0(m_axi_gmem_AWADDR[1]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[1]),
        .O(\addr_reg[1] ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[24]_i_2 
       (.I0(m_axi_gmem_AWADDR[24]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[24]),
        .O(\addr[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[24]_i_3 
       (.I0(m_axi_gmem_AWADDR[23]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[23]),
        .O(\addr[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[24]_i_4 
       (.I0(m_axi_gmem_AWADDR[22]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[22]),
        .O(\addr[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[24]_i_5 
       (.I0(m_axi_gmem_AWADDR[21]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[21]),
        .O(\addr[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[24]_i_6 
       (.I0(m_axi_gmem_AWADDR[20]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[20]),
        .O(\addr[24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[24]_i_7 
       (.I0(m_axi_gmem_AWADDR[19]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[19]),
        .O(\addr[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[24]_i_8 
       (.I0(m_axi_gmem_AWADDR[18]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[18]),
        .O(\addr[24]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[24]_i_9 
       (.I0(m_axi_gmem_AWADDR[17]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[17]),
        .O(\addr[24]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[2]_i_1 
       (.I0(m_axi_gmem_AWADDR[2]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[2]),
        .O(\addr_reg[2] ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[32]_i_2 
       (.I0(m_axi_gmem_AWADDR[32]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[32]),
        .O(\addr[32]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[32]_i_3 
       (.I0(m_axi_gmem_AWADDR[31]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[31]),
        .O(\addr[32]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[32]_i_4 
       (.I0(m_axi_gmem_AWADDR[30]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[30]),
        .O(\addr[32]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[32]_i_5 
       (.I0(m_axi_gmem_AWADDR[29]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[29]),
        .O(\addr[32]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[32]_i_6 
       (.I0(m_axi_gmem_AWADDR[28]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[28]),
        .O(\addr[32]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[32]_i_7 
       (.I0(m_axi_gmem_AWADDR[27]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[27]),
        .O(\addr[32]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[32]_i_8 
       (.I0(m_axi_gmem_AWADDR[26]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[26]),
        .O(\addr[32]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[32]_i_9 
       (.I0(m_axi_gmem_AWADDR[25]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[25]),
        .O(\addr[32]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[3]_i_1 
       (.I0(m_axi_gmem_AWADDR[3]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[3]),
        .O(\addr_reg[3] ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[40]_i_2 
       (.I0(m_axi_gmem_AWADDR[40]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[40]),
        .O(\addr[40]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[40]_i_3 
       (.I0(m_axi_gmem_AWADDR[39]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[39]),
        .O(\addr[40]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[40]_i_4 
       (.I0(m_axi_gmem_AWADDR[38]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[38]),
        .O(\addr[40]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[40]_i_5 
       (.I0(m_axi_gmem_AWADDR[37]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[37]),
        .O(\addr[40]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[40]_i_6 
       (.I0(m_axi_gmem_AWADDR[36]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[36]),
        .O(\addr[40]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[40]_i_7 
       (.I0(m_axi_gmem_AWADDR[35]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[35]),
        .O(\addr[40]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[40]_i_8 
       (.I0(m_axi_gmem_AWADDR[34]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[34]),
        .O(\addr[40]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[40]_i_9 
       (.I0(m_axi_gmem_AWADDR[33]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[33]),
        .O(\addr[40]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[48]_i_2 
       (.I0(m_axi_gmem_AWADDR[48]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[48]),
        .O(\addr[48]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[48]_i_3 
       (.I0(m_axi_gmem_AWADDR[47]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[47]),
        .O(\addr[48]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[48]_i_4 
       (.I0(m_axi_gmem_AWADDR[46]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[46]),
        .O(\addr[48]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[48]_i_5 
       (.I0(m_axi_gmem_AWADDR[45]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[45]),
        .O(\addr[48]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[48]_i_6 
       (.I0(m_axi_gmem_AWADDR[44]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[44]),
        .O(\addr[48]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[48]_i_7 
       (.I0(m_axi_gmem_AWADDR[43]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[43]),
        .O(\addr[48]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[48]_i_8 
       (.I0(m_axi_gmem_AWADDR[42]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[42]),
        .O(\addr[48]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[48]_i_9 
       (.I0(m_axi_gmem_AWADDR[41]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[41]),
        .O(\addr[48]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[4]_i_1 
       (.I0(m_axi_gmem_AWADDR[4]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[4]),
        .O(\addr_reg[4] ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[56]_i_2 
       (.I0(m_axi_gmem_AWADDR[56]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[56]),
        .O(\addr[56]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[56]_i_3 
       (.I0(m_axi_gmem_AWADDR[55]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[55]),
        .O(\addr[56]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[56]_i_4 
       (.I0(m_axi_gmem_AWADDR[54]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[54]),
        .O(\addr[56]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[56]_i_5 
       (.I0(m_axi_gmem_AWADDR[53]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[53]),
        .O(\addr[56]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[56]_i_6 
       (.I0(m_axi_gmem_AWADDR[52]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[52]),
        .O(\addr[56]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[56]_i_7 
       (.I0(m_axi_gmem_AWADDR[51]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[51]),
        .O(\addr[56]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[56]_i_8 
       (.I0(m_axi_gmem_AWADDR[50]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[50]),
        .O(\addr[56]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[56]_i_9 
       (.I0(m_axi_gmem_AWADDR[49]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[49]),
        .O(\addr[56]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[5]_i_1 
       (.I0(m_axi_gmem_AWADDR[5]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[5]),
        .O(\addr_reg[5] ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[63]_i_3 
       (.I0(m_axi_gmem_AWADDR[63]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[63]),
        .O(\addr[63]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[63]_i_4 
       (.I0(m_axi_gmem_AWADDR[62]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[62]),
        .O(\addr[63]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[63]_i_5 
       (.I0(m_axi_gmem_AWADDR[61]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[61]),
        .O(\addr[63]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[63]_i_6 
       (.I0(m_axi_gmem_AWADDR[60]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[60]),
        .O(\addr[63]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[63]_i_7 
       (.I0(m_axi_gmem_AWADDR[59]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[59]),
        .O(\addr[63]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[63]_i_8 
       (.I0(m_axi_gmem_AWADDR[58]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[58]),
        .O(\addr[63]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[63]_i_9 
       (.I0(m_axi_gmem_AWADDR[57]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[57]),
        .O(\addr[63]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[6]_i_1 
       (.I0(m_axi_gmem_AWADDR[6]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[6]),
        .O(\addr_reg[6] ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[7]_i_1 
       (.I0(m_axi_gmem_AWADDR[7]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[7]),
        .O(\addr_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[8]_i_1 
       (.I0(m_axi_gmem_AWADDR[8]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[8]),
        .O(\addr_reg[8] ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[16]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\addr_reg[16]_i_1_n_0 ,\addr_reg[16]_i_1_n_1 ,\addr_reg[16]_i_1_n_2 ,\addr_reg[16]_i_1_n_3 ,\addr_reg[16]_i_1_n_4 ,\addr_reg[16]_i_1_n_5 ,\addr_reg[16]_i_1_n_6 ,\addr_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\addr[16]_i_2_n_0 ,1'b0}),
        .O(O),
        .S({\addr[16]_i_3_n_0 ,\addr[16]_i_4_n_0 ,\addr[16]_i_5_n_0 ,\addr[16]_i_6_n_0 ,\addr[16]_i_7_n_0 ,\addr[16]_i_8_n_0 ,\addr[16]_i_9_n_0 ,\addr[16]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[24]_i_1 
       (.CI(\addr_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[24]_i_1_n_0 ,\addr_reg[24]_i_1_n_1 ,\addr_reg[24]_i_1_n_2 ,\addr_reg[24]_i_1_n_3 ,\addr_reg[24]_i_1_n_4 ,\addr_reg[24]_i_1_n_5 ,\addr_reg[24]_i_1_n_6 ,\addr_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\addr_reg[24] ),
        .S({\addr[24]_i_2_n_0 ,\addr[24]_i_3_n_0 ,\addr[24]_i_4_n_0 ,\addr[24]_i_5_n_0 ,\addr[24]_i_6_n_0 ,\addr[24]_i_7_n_0 ,\addr[24]_i_8_n_0 ,\addr[24]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[32]_i_1 
       (.CI(\addr_reg[24]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[32]_i_1_n_0 ,\addr_reg[32]_i_1_n_1 ,\addr_reg[32]_i_1_n_2 ,\addr_reg[32]_i_1_n_3 ,\addr_reg[32]_i_1_n_4 ,\addr_reg[32]_i_1_n_5 ,\addr_reg[32]_i_1_n_6 ,\addr_reg[32]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\addr_reg[32] ),
        .S({\addr[32]_i_2_n_0 ,\addr[32]_i_3_n_0 ,\addr[32]_i_4_n_0 ,\addr[32]_i_5_n_0 ,\addr[32]_i_6_n_0 ,\addr[32]_i_7_n_0 ,\addr[32]_i_8_n_0 ,\addr[32]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[40]_i_1 
       (.CI(\addr_reg[32]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[40]_i_1_n_0 ,\addr_reg[40]_i_1_n_1 ,\addr_reg[40]_i_1_n_2 ,\addr_reg[40]_i_1_n_3 ,\addr_reg[40]_i_1_n_4 ,\addr_reg[40]_i_1_n_5 ,\addr_reg[40]_i_1_n_6 ,\addr_reg[40]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\addr_reg[40] ),
        .S({\addr[40]_i_2_n_0 ,\addr[40]_i_3_n_0 ,\addr[40]_i_4_n_0 ,\addr[40]_i_5_n_0 ,\addr[40]_i_6_n_0 ,\addr[40]_i_7_n_0 ,\addr[40]_i_8_n_0 ,\addr[40]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[48]_i_1 
       (.CI(\addr_reg[40]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[48]_i_1_n_0 ,\addr_reg[48]_i_1_n_1 ,\addr_reg[48]_i_1_n_2 ,\addr_reg[48]_i_1_n_3 ,\addr_reg[48]_i_1_n_4 ,\addr_reg[48]_i_1_n_5 ,\addr_reg[48]_i_1_n_6 ,\addr_reg[48]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\addr_reg[48] ),
        .S({\addr[48]_i_2_n_0 ,\addr[48]_i_3_n_0 ,\addr[48]_i_4_n_0 ,\addr[48]_i_5_n_0 ,\addr[48]_i_6_n_0 ,\addr[48]_i_7_n_0 ,\addr[48]_i_8_n_0 ,\addr[48]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[56]_i_1 
       (.CI(\addr_reg[48]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[56]_i_1_n_0 ,\addr_reg[56]_i_1_n_1 ,\addr_reg[56]_i_1_n_2 ,\addr_reg[56]_i_1_n_3 ,\addr_reg[56]_i_1_n_4 ,\addr_reg[56]_i_1_n_5 ,\addr_reg[56]_i_1_n_6 ,\addr_reg[56]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\addr_reg[56] ),
        .S({\addr[56]_i_2_n_0 ,\addr[56]_i_3_n_0 ,\addr[56]_i_4_n_0 ,\addr[56]_i_5_n_0 ,\addr[56]_i_6_n_0 ,\addr[56]_i_7_n_0 ,\addr[56]_i_8_n_0 ,\addr[56]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[63]_i_2 
       (.CI(\addr_reg[56]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_addr_reg[63]_i_2_CO_UNCONNECTED [7:6],\addr_reg[63]_i_2_n_2 ,\addr_reg[63]_i_2_n_3 ,\addr_reg[63]_i_2_n_4 ,\addr_reg[63]_i_2_n_5 ,\addr_reg[63]_i_2_n_6 ,\addr_reg[63]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_addr_reg[63]_i_2_O_UNCONNECTED [7],\addr_reg[63] }),
        .S({1'b0,\addr[63]_i_3_n_0 ,\addr[63]_i_4_n_0 ,\addr[63]_i_5_n_0 ,\addr[63]_i_6_n_0 ,\addr[63]_i_7_n_0 ,\addr[63]_i_8_n_0 ,\addr[63]_i_9_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \final_burst_len[0]_i_1 
       (.I0(ctrl_length[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \final_burst_len[1]_i_1 
       (.I0(ctrl_length[0]),
        .I1(ctrl_length[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \final_burst_len[2]_i_1 
       (.I0(ctrl_length[1]),
        .I1(ctrl_length[0]),
        .I2(ctrl_length[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \final_burst_len[3]_i_1 
       (.I0(ctrl_length[2]),
        .I1(ctrl_length[0]),
        .I2(ctrl_length[1]),
        .I3(ctrl_length[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \final_burst_len[4]_i_1 
       (.I0(ctrl_length[3]),
        .I1(ctrl_length[1]),
        .I2(ctrl_length[0]),
        .I3(ctrl_length[2]),
        .I4(ctrl_length[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \final_burst_len[5]_i_1 
       (.I0(ctrl_length[4]),
        .I1(ctrl_length[2]),
        .I2(ctrl_length[0]),
        .I3(ctrl_length[1]),
        .I4(ctrl_length[3]),
        .I5(ctrl_length[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \final_burst_len[6]_i_1 
       (.I0(\final_burst_len[7]_i_2_n_0 ),
        .I1(ctrl_length[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \final_burst_len[7]_i_1 
       (.I0(ctrl_length[6]),
        .I1(\final_burst_len[7]_i_2_n_0 ),
        .I2(ctrl_length[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \final_burst_len[7]_i_2 
       (.I0(ctrl_length[4]),
        .I1(ctrl_length[2]),
        .I2(ctrl_length[0]),
        .I3(ctrl_length[1]),
        .I4(ctrl_length[3]),
        .I5(ctrl_length[5]),
        .O(\final_burst_len[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF777F000)) 
    int_ap_done_i_1
       (.I0(\rdata[0]_i_5_n_0 ),
        .I1(ar_hs),
        .I2(m_axi_gmem_BVALID),
        .I3(int_ap_start_reg_0),
        .I4(int_ap_done),
        .O(int_ap_done_i_1_n_0));
  FDRE int_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_done_i_1_n_0),
        .Q(int_ap_done),
        .R(areset));
  LUT5 #(
    .INIT(32'hFFBFFF80)) 
    int_ap_start_i_1
       (.I0(int_auto_restart),
        .I1(m_axi_gmem_BVALID),
        .I2(int_ap_start_reg_0),
        .I3(int_ap_start3_out),
        .I4(ap_start),
        .O(int_ap_start_i_1_n_0));
  LUT5 #(
    .INIT(32'h10000000)) 
    int_ap_start_i_2
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(s_axi_control_WDATA[0]),
        .I3(s_axi_control_WSTRB[0]),
        .I4(\int_output_r[31]_i_3_n_0 ),
        .O(int_ap_start3_out));
  FDRE int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(areset));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\int_output_r[31]_i_3_n_0 ),
        .I5(int_auto_restart),
        .O(int_auto_restart_i_1_n_0));
  FDRE int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(int_auto_restart),
        .R(areset));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(s_axi_control_WSTRB[0]),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\int_output_r[31]_i_3_n_0 ),
        .I5(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(areset));
  LUT5 #(
    .INIT(32'h10000000)) 
    \int_ier[1]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(s_axi_control_WSTRB[0]),
        .I4(\int_ier[1]_i_2_n_0 ),
        .O(int_ier9_out));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \int_ier[1]_i_2 
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(\waddr_reg_n_0_[0] ),
        .I3(\waddr_reg_n_0_[1] ),
        .I4(\waddr_reg_n_0_[5] ),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(int_ier9_out),
        .D(s_axi_control_WDATA[0]),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(areset));
  FDRE \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(int_ier9_out),
        .D(s_axi_control_WDATA[1]),
        .Q(p_0_in),
        .R(areset));
  LUT6 #(
    .INIT(64'hF7777777F8888888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_isr6_out),
        .I2(\int_ier_reg_n_0_[0] ),
        .I3(int_ap_start_reg_0),
        .I4(m_axi_gmem_BVALID),
        .I5(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \int_isr[0]_i_2 
       (.I0(s_axi_control_WSTRB[0]),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\int_ier[1]_i_2_n_0 ),
        .O(int_isr6_out));
  LUT6 #(
    .INIT(64'hF7777777F8888888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_isr6_out),
        .I2(p_0_in),
        .I3(int_ap_start_reg_0),
        .I4(m_axi_gmem_BVALID),
        .I5(p_1_in),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(areset));
  FDRE \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[0]_i_1 
       (.I0(ctrl_offset[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_output_r_reg04_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[10]_i_1 
       (.I0(ctrl_offset[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[10]),
        .O(int_output_r_reg04_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[11]_i_1 
       (.I0(ctrl_offset[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[11]),
        .O(int_output_r_reg04_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[12]_i_1 
       (.I0(ctrl_offset[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[12]),
        .O(int_output_r_reg04_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[13]_i_1 
       (.I0(ctrl_offset[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[13]),
        .O(int_output_r_reg04_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[14]_i_1 
       (.I0(ctrl_offset[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[14]),
        .O(int_output_r_reg04_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[15]_i_1 
       (.I0(ctrl_offset[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[15]),
        .O(int_output_r_reg04_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[16]_i_1 
       (.I0(ctrl_offset[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[16]),
        .O(int_output_r_reg04_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[17]_i_1 
       (.I0(ctrl_offset[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[17]),
        .O(int_output_r_reg04_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[18]_i_1 
       (.I0(ctrl_offset[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[18]),
        .O(int_output_r_reg04_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[19]_i_1 
       (.I0(ctrl_offset[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[19]),
        .O(int_output_r_reg04_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[1]_i_1 
       (.I0(ctrl_offset[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_output_r_reg04_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[20]_i_1 
       (.I0(ctrl_offset[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[20]),
        .O(int_output_r_reg04_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[21]_i_1 
       (.I0(ctrl_offset[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[21]),
        .O(int_output_r_reg04_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[22]_i_1 
       (.I0(ctrl_offset[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[22]),
        .O(int_output_r_reg04_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[23]_i_1 
       (.I0(ctrl_offset[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[23]),
        .O(int_output_r_reg04_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[24]_i_1 
       (.I0(ctrl_offset[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[24]),
        .O(int_output_r_reg04_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[25]_i_1 
       (.I0(ctrl_offset[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[25]),
        .O(int_output_r_reg04_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[26]_i_1 
       (.I0(ctrl_offset[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[26]),
        .O(int_output_r_reg04_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[27]_i_1 
       (.I0(ctrl_offset[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[27]),
        .O(int_output_r_reg04_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[28]_i_1 
       (.I0(ctrl_offset[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[28]),
        .O(int_output_r_reg04_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[29]_i_1 
       (.I0(ctrl_offset[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[29]),
        .O(int_output_r_reg04_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[2]_i_1 
       (.I0(ctrl_offset[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_output_r_reg04_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[30]_i_1 
       (.I0(ctrl_offset[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[30]),
        .O(int_output_r_reg04_out[30]));
  LUT3 #(
    .INIT(8'h40)) 
    \int_output_r[31]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\int_output_r[31]_i_3_n_0 ),
        .O(\int_output_r[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[31]_i_2 
       (.I0(ctrl_offset[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[31]),
        .O(int_output_r_reg04_out[31]));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \int_output_r[31]_i_3 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[1] ),
        .I2(\waddr_reg_n_0_[0] ),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .I4(s_axi_control_WVALID),
        .I5(\waddr_reg_n_0_[3] ),
        .O(\int_output_r[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[32]_i_1 
       (.I0(ctrl_offset[32]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_output_r_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[33]_i_1 
       (.I0(ctrl_offset[33]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_output_r_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[34]_i_1 
       (.I0(ctrl_offset[34]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_output_r_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[35]_i_1 
       (.I0(ctrl_offset[35]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_output_r_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[36]_i_1 
       (.I0(ctrl_offset[36]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_output_r_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[37]_i_1 
       (.I0(ctrl_offset[37]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_output_r_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[38]_i_1 
       (.I0(ctrl_offset[38]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_output_r_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[39]_i_1 
       (.I0(ctrl_offset[39]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_output_r_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[3]_i_1 
       (.I0(ctrl_offset[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_output_r_reg04_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[40]_i_1 
       (.I0(ctrl_offset[40]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[8]),
        .O(int_output_r_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[41]_i_1 
       (.I0(ctrl_offset[41]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[9]),
        .O(int_output_r_reg0[9]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[42]_i_1 
       (.I0(ctrl_offset[42]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[10]),
        .O(int_output_r_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[43]_i_1 
       (.I0(ctrl_offset[43]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[11]),
        .O(int_output_r_reg0[11]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[44]_i_1 
       (.I0(ctrl_offset[44]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[12]),
        .O(int_output_r_reg0[12]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[45]_i_1 
       (.I0(ctrl_offset[45]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[13]),
        .O(int_output_r_reg0[13]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[46]_i_1 
       (.I0(ctrl_offset[46]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[14]),
        .O(int_output_r_reg0[14]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[47]_i_1 
       (.I0(ctrl_offset[47]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[15]),
        .O(int_output_r_reg0[15]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[48]_i_1 
       (.I0(ctrl_offset[48]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[16]),
        .O(int_output_r_reg0[16]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[49]_i_1 
       (.I0(ctrl_offset[49]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[17]),
        .O(int_output_r_reg0[17]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[4]_i_1 
       (.I0(ctrl_offset[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_output_r_reg04_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[50]_i_1 
       (.I0(ctrl_offset[50]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[18]),
        .O(int_output_r_reg0[18]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[51]_i_1 
       (.I0(ctrl_offset[51]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[19]),
        .O(int_output_r_reg0[19]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[52]_i_1 
       (.I0(ctrl_offset[52]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[20]),
        .O(int_output_r_reg0[20]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[53]_i_1 
       (.I0(ctrl_offset[53]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[21]),
        .O(int_output_r_reg0[21]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[54]_i_1 
       (.I0(ctrl_offset[54]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[22]),
        .O(int_output_r_reg0[22]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[55]_i_1 
       (.I0(ctrl_offset[55]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[23]),
        .O(int_output_r_reg0[23]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[56]_i_1 
       (.I0(ctrl_offset[56]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[24]),
        .O(int_output_r_reg0[24]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[57]_i_1 
       (.I0(ctrl_offset[57]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[25]),
        .O(int_output_r_reg0[25]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[58]_i_1 
       (.I0(ctrl_offset[58]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[26]),
        .O(int_output_r_reg0[26]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[59]_i_1 
       (.I0(ctrl_offset[59]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[27]),
        .O(int_output_r_reg0[27]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[5]_i_1 
       (.I0(ctrl_offset[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_output_r_reg04_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[60]_i_1 
       (.I0(ctrl_offset[60]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[28]),
        .O(int_output_r_reg0[28]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[61]_i_1 
       (.I0(ctrl_offset[61]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[29]),
        .O(int_output_r_reg0[29]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[62]_i_1 
       (.I0(ctrl_offset[62]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[30]),
        .O(int_output_r_reg0[30]));
  LUT3 #(
    .INIT(8'h80)) 
    \int_output_r[63]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\int_output_r[31]_i_3_n_0 ),
        .O(\int_output_r[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[63]_i_2 
       (.I0(ctrl_offset[63]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[31]),
        .O(int_output_r_reg0[31]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[6]_i_1 
       (.I0(ctrl_offset[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_output_r_reg04_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[7]_i_1 
       (.I0(ctrl_offset[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_output_r_reg04_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[8]_i_1 
       (.I0(ctrl_offset[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[8]),
        .O(int_output_r_reg04_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_output_r[9]_i_1 
       (.I0(ctrl_offset[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[9]),
        .O(int_output_r_reg04_out[9]));
  FDRE \int_output_r_reg[0] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[0]),
        .Q(ctrl_offset[0]),
        .R(areset));
  FDRE \int_output_r_reg[10] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[10]),
        .Q(ctrl_offset[10]),
        .R(areset));
  FDRE \int_output_r_reg[11] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[11]),
        .Q(ctrl_offset[11]),
        .R(areset));
  FDRE \int_output_r_reg[12] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[12]),
        .Q(ctrl_offset[12]),
        .R(areset));
  FDRE \int_output_r_reg[13] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[13]),
        .Q(ctrl_offset[13]),
        .R(areset));
  FDRE \int_output_r_reg[14] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[14]),
        .Q(ctrl_offset[14]),
        .R(areset));
  FDRE \int_output_r_reg[15] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[15]),
        .Q(ctrl_offset[15]),
        .R(areset));
  FDRE \int_output_r_reg[16] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[16]),
        .Q(ctrl_offset[16]),
        .R(areset));
  FDRE \int_output_r_reg[17] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[17]),
        .Q(ctrl_offset[17]),
        .R(areset));
  FDRE \int_output_r_reg[18] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[18]),
        .Q(ctrl_offset[18]),
        .R(areset));
  FDRE \int_output_r_reg[19] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[19]),
        .Q(ctrl_offset[19]),
        .R(areset));
  FDRE \int_output_r_reg[1] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[1]),
        .Q(ctrl_offset[1]),
        .R(areset));
  FDRE \int_output_r_reg[20] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[20]),
        .Q(ctrl_offset[20]),
        .R(areset));
  FDRE \int_output_r_reg[21] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[21]),
        .Q(ctrl_offset[21]),
        .R(areset));
  FDRE \int_output_r_reg[22] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[22]),
        .Q(ctrl_offset[22]),
        .R(areset));
  FDRE \int_output_r_reg[23] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[23]),
        .Q(ctrl_offset[23]),
        .R(areset));
  FDRE \int_output_r_reg[24] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[24]),
        .Q(ctrl_offset[24]),
        .R(areset));
  FDRE \int_output_r_reg[25] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[25]),
        .Q(ctrl_offset[25]),
        .R(areset));
  FDRE \int_output_r_reg[26] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[26]),
        .Q(ctrl_offset[26]),
        .R(areset));
  FDRE \int_output_r_reg[27] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[27]),
        .Q(ctrl_offset[27]),
        .R(areset));
  FDRE \int_output_r_reg[28] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[28]),
        .Q(ctrl_offset[28]),
        .R(areset));
  FDRE \int_output_r_reg[29] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[29]),
        .Q(ctrl_offset[29]),
        .R(areset));
  FDRE \int_output_r_reg[2] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[2]),
        .Q(ctrl_offset[2]),
        .R(areset));
  FDRE \int_output_r_reg[30] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[30]),
        .Q(ctrl_offset[30]),
        .R(areset));
  FDRE \int_output_r_reg[31] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[31]),
        .Q(ctrl_offset[31]),
        .R(areset));
  FDRE \int_output_r_reg[32] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[0]),
        .Q(ctrl_offset[32]),
        .R(areset));
  FDRE \int_output_r_reg[33] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[1]),
        .Q(ctrl_offset[33]),
        .R(areset));
  FDRE \int_output_r_reg[34] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[2]),
        .Q(ctrl_offset[34]),
        .R(areset));
  FDRE \int_output_r_reg[35] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[3]),
        .Q(ctrl_offset[35]),
        .R(areset));
  FDRE \int_output_r_reg[36] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[4]),
        .Q(ctrl_offset[36]),
        .R(areset));
  FDRE \int_output_r_reg[37] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[5]),
        .Q(ctrl_offset[37]),
        .R(areset));
  FDRE \int_output_r_reg[38] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[6]),
        .Q(ctrl_offset[38]),
        .R(areset));
  FDRE \int_output_r_reg[39] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[7]),
        .Q(ctrl_offset[39]),
        .R(areset));
  FDRE \int_output_r_reg[3] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[3]),
        .Q(ctrl_offset[3]),
        .R(areset));
  FDRE \int_output_r_reg[40] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[8]),
        .Q(ctrl_offset[40]),
        .R(areset));
  FDRE \int_output_r_reg[41] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[9]),
        .Q(ctrl_offset[41]),
        .R(areset));
  FDRE \int_output_r_reg[42] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[10]),
        .Q(ctrl_offset[42]),
        .R(areset));
  FDRE \int_output_r_reg[43] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[11]),
        .Q(ctrl_offset[43]),
        .R(areset));
  FDRE \int_output_r_reg[44] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[12]),
        .Q(ctrl_offset[44]),
        .R(areset));
  FDRE \int_output_r_reg[45] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[13]),
        .Q(ctrl_offset[45]),
        .R(areset));
  FDRE \int_output_r_reg[46] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[14]),
        .Q(ctrl_offset[46]),
        .R(areset));
  FDRE \int_output_r_reg[47] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[15]),
        .Q(ctrl_offset[47]),
        .R(areset));
  FDRE \int_output_r_reg[48] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[16]),
        .Q(ctrl_offset[48]),
        .R(areset));
  FDRE \int_output_r_reg[49] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[17]),
        .Q(ctrl_offset[49]),
        .R(areset));
  FDRE \int_output_r_reg[4] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[4]),
        .Q(ctrl_offset[4]),
        .R(areset));
  FDRE \int_output_r_reg[50] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[18]),
        .Q(ctrl_offset[50]),
        .R(areset));
  FDRE \int_output_r_reg[51] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[19]),
        .Q(ctrl_offset[51]),
        .R(areset));
  FDRE \int_output_r_reg[52] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[20]),
        .Q(ctrl_offset[52]),
        .R(areset));
  FDRE \int_output_r_reg[53] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[21]),
        .Q(ctrl_offset[53]),
        .R(areset));
  FDRE \int_output_r_reg[54] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[22]),
        .Q(ctrl_offset[54]),
        .R(areset));
  FDRE \int_output_r_reg[55] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[23]),
        .Q(ctrl_offset[55]),
        .R(areset));
  FDRE \int_output_r_reg[56] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[24]),
        .Q(ctrl_offset[56]),
        .R(areset));
  FDRE \int_output_r_reg[57] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[25]),
        .Q(ctrl_offset[57]),
        .R(areset));
  FDRE \int_output_r_reg[58] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[26]),
        .Q(ctrl_offset[58]),
        .R(areset));
  FDRE \int_output_r_reg[59] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[27]),
        .Q(ctrl_offset[59]),
        .R(areset));
  FDRE \int_output_r_reg[5] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[5]),
        .Q(ctrl_offset[5]),
        .R(areset));
  FDRE \int_output_r_reg[60] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[28]),
        .Q(ctrl_offset[60]),
        .R(areset));
  FDRE \int_output_r_reg[61] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[29]),
        .Q(ctrl_offset[61]),
        .R(areset));
  FDRE \int_output_r_reg[62] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[30]),
        .Q(ctrl_offset[62]),
        .R(areset));
  FDRE \int_output_r_reg[63] 
       (.C(ap_clk),
        .CE(\int_output_r[63]_i_1_n_0 ),
        .D(int_output_r_reg0[31]),
        .Q(ctrl_offset[63]),
        .R(areset));
  FDRE \int_output_r_reg[6] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[6]),
        .Q(ctrl_offset[6]),
        .R(areset));
  FDRE \int_output_r_reg[7] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[7]),
        .Q(ctrl_offset[7]),
        .R(areset));
  FDRE \int_output_r_reg[8] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[8]),
        .Q(ctrl_offset[8]),
        .R(areset));
  FDRE \int_output_r_reg[9] 
       (.C(ap_clk),
        .CE(\int_output_r[31]_i_1_n_0 ),
        .D(int_output_r_reg04_out[9]),
        .Q(ctrl_offset[9]),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[0]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[0] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_p_xcl_gv_p1_reg01_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[10]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[10] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[10]),
        .O(int_p_xcl_gv_p1_reg01_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[11]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[11] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[11]),
        .O(int_p_xcl_gv_p1_reg01_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[12]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[12] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[12]),
        .O(int_p_xcl_gv_p1_reg01_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[13]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[13] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[13]),
        .O(int_p_xcl_gv_p1_reg01_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[14]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[14] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[14]),
        .O(int_p_xcl_gv_p1_reg01_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[15]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[15] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[15]),
        .O(int_p_xcl_gv_p1_reg01_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[16]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[16] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[16]),
        .O(int_p_xcl_gv_p1_reg01_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[17]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[17] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[17]),
        .O(int_p_xcl_gv_p1_reg01_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[18]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[18] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[18]),
        .O(int_p_xcl_gv_p1_reg01_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[19]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[19] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[19]),
        .O(int_p_xcl_gv_p1_reg01_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[1]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[1] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_p_xcl_gv_p1_reg01_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[20]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[20] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[20]),
        .O(int_p_xcl_gv_p1_reg01_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[21]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[21] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[21]),
        .O(int_p_xcl_gv_p1_reg01_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[22]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[22] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[22]),
        .O(int_p_xcl_gv_p1_reg01_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[23]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[23] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[23]),
        .O(int_p_xcl_gv_p1_reg01_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[24]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[24] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[24]),
        .O(int_p_xcl_gv_p1_reg01_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[25]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[25] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[25]),
        .O(int_p_xcl_gv_p1_reg01_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[26]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[26] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[26]),
        .O(int_p_xcl_gv_p1_reg01_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[27]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[27] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[27]),
        .O(int_p_xcl_gv_p1_reg01_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[28]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[28] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[28]),
        .O(int_p_xcl_gv_p1_reg01_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[29]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[29] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[29]),
        .O(int_p_xcl_gv_p1_reg01_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[2]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[2] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_p_xcl_gv_p1_reg01_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[30]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[30] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[30]),
        .O(int_p_xcl_gv_p1_reg01_out[30]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \int_p_xcl_gv_p1[31]_i_1 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\int_p_xcl_gv_p1[31]_i_3_n_0 ),
        .O(\int_p_xcl_gv_p1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[31]_i_2 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[31] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[31]),
        .O(int_p_xcl_gv_p1_reg01_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \int_p_xcl_gv_p1[31]_i_3 
       (.I0(\waddr_reg_n_0_[1] ),
        .I1(\waddr_reg_n_0_[0] ),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_control_WVALID),
        .O(\int_p_xcl_gv_p1[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[32]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[32] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_p_xcl_gv_p1_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[33]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[33] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_p_xcl_gv_p1_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[34]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[34] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_p_xcl_gv_p1_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[35]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[35] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_p_xcl_gv_p1_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[36]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[36] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_p_xcl_gv_p1_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[37]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[37] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_p_xcl_gv_p1_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[38]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[38] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_p_xcl_gv_p1_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[39]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[39] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_p_xcl_gv_p1_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[3]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[3] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_p_xcl_gv_p1_reg01_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[40]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[40] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[8]),
        .O(int_p_xcl_gv_p1_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[41]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[41] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[9]),
        .O(int_p_xcl_gv_p1_reg0[9]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[42]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[42] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[10]),
        .O(int_p_xcl_gv_p1_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[43]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[43] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[11]),
        .O(int_p_xcl_gv_p1_reg0[11]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[44]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[44] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[12]),
        .O(int_p_xcl_gv_p1_reg0[12]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[45]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[45] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[13]),
        .O(int_p_xcl_gv_p1_reg0[13]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[46]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[46] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[14]),
        .O(int_p_xcl_gv_p1_reg0[14]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[47]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[47] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[15]),
        .O(int_p_xcl_gv_p1_reg0[15]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[48]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[48] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[16]),
        .O(int_p_xcl_gv_p1_reg0[16]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[49]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[49] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[17]),
        .O(int_p_xcl_gv_p1_reg0[17]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[4]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[4] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_p_xcl_gv_p1_reg01_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[50]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[50] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[18]),
        .O(int_p_xcl_gv_p1_reg0[18]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[51]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[51] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[19]),
        .O(int_p_xcl_gv_p1_reg0[19]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[52]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[52] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[20]),
        .O(int_p_xcl_gv_p1_reg0[20]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[53]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[53] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[21]),
        .O(int_p_xcl_gv_p1_reg0[21]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[54]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[54] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[22]),
        .O(int_p_xcl_gv_p1_reg0[22]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[55]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[55] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[23]),
        .O(int_p_xcl_gv_p1_reg0[23]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[56]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[56] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[24]),
        .O(int_p_xcl_gv_p1_reg0[24]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[57]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[57] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[25]),
        .O(int_p_xcl_gv_p1_reg0[25]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[58]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[58] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[26]),
        .O(int_p_xcl_gv_p1_reg0[26]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[59]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[59] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[27]),
        .O(int_p_xcl_gv_p1_reg0[27]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[5]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[5] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_p_xcl_gv_p1_reg01_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[60]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[60] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[28]),
        .O(int_p_xcl_gv_p1_reg0[28]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[61]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[61] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[29]),
        .O(int_p_xcl_gv_p1_reg0[29]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[62]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[62] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[30]),
        .O(int_p_xcl_gv_p1_reg0[30]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \int_p_xcl_gv_p1[63]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[5] ),
        .I4(\int_p_xcl_gv_p1[31]_i_3_n_0 ),
        .O(\int_p_xcl_gv_p1[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[63]_i_2 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[63] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[31]),
        .O(int_p_xcl_gv_p1_reg0[31]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[6]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[6] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_p_xcl_gv_p1_reg01_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[7]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[7] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_p_xcl_gv_p1_reg01_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[8]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[8] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[8]),
        .O(int_p_xcl_gv_p1_reg01_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p1[9]_i_1 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[9] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[9]),
        .O(int_p_xcl_gv_p1_reg01_out[9]));
  FDRE \int_p_xcl_gv_p1_reg[0] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[0]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[0] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[10] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[10]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[10] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[11] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[11]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[11] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[12] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[12]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[12] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[13] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[13]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[13] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[14] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[14]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[14] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[15] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[15]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[15] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[16] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[16]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[16] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[17] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[17]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[17] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[18] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[18]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[18] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[19] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[19]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[19] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[1] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[1]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[1] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[20] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[20]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[20] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[21] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[21]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[21] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[22] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[22]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[22] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[23] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[23]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[23] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[24] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[24]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[24] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[25] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[25]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[25] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[26] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[26]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[26] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[27] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[27]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[27] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[28] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[28]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[28] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[29] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[29]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[29] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[2] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[2]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[2] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[30] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[30]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[30] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[31] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[31]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[31] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[32] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[0]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[32] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[33] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[1]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[33] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[34] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[2]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[34] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[35] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[3]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[35] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[36] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[4]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[36] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[37] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[5]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[37] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[38] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[6]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[38] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[39] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[7]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[39] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[3] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[3]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[3] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[40] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[8]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[40] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[41] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[9]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[41] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[42] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[10]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[42] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[43] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[11]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[43] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[44] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[12]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[44] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[45] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[13]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[45] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[46] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[14]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[46] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[47] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[15]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[47] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[48] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[16]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[48] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[49] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[17]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[49] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[4] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[4]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[4] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[50] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[18]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[50] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[51] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[19]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[51] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[52] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[20]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[52] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[53] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[21]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[53] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[54] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[22]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[54] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[55] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[23]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[55] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[56] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[24]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[56] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[57] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[25]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[57] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[58] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[26]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[58] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[59] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[27]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[59] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[5] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[5]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[5] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[60] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[28]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[60] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[61] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[29]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[61] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[62] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[30]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[62] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[63] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg0[31]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[63] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[6] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[6]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[6] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[7] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[7]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[7] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[8] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[8]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[8] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p1_reg[9] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p1[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p1_reg01_out[9]),
        .Q(\int_p_xcl_gv_p1_reg_n_0_[9] ),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[0]_i_1 
       (.I0(ctrl_length[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_size0[0]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[10]_i_1 
       (.I0(Q[2]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[10]),
        .O(int_size0[10]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[11]_i_1 
       (.I0(Q[3]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[11]),
        .O(int_size0[11]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[12]_i_1 
       (.I0(Q[4]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[12]),
        .O(int_size0[12]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[13]_i_1 
       (.I0(Q[5]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[13]),
        .O(int_size0[13]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[14]_i_1 
       (.I0(Q[6]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[14]),
        .O(int_size0[14]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[15]_i_1 
       (.I0(Q[7]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[15]),
        .O(int_size0[15]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[16]_i_1 
       (.I0(Q[8]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[16]),
        .O(int_size0[16]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[17]_i_1 
       (.I0(Q[9]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[17]),
        .O(int_size0[17]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[18]_i_1 
       (.I0(Q[10]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[18]),
        .O(int_size0[18]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[19]_i_1 
       (.I0(Q[11]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[19]),
        .O(int_size0[19]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[1]_i_1 
       (.I0(ctrl_length[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_size0[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[20]_i_1 
       (.I0(Q[12]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[20]),
        .O(int_size0[20]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[21]_i_1 
       (.I0(Q[13]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[21]),
        .O(int_size0[21]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[22]_i_1 
       (.I0(Q[14]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[22]),
        .O(int_size0[22]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[23]_i_1 
       (.I0(Q[15]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[23]),
        .O(int_size0[23]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[24]_i_1 
       (.I0(Q[16]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[24]),
        .O(int_size0[24]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[25]_i_1 
       (.I0(Q[17]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[25]),
        .O(int_size0[25]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[26]_i_1 
       (.I0(Q[18]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[26]),
        .O(int_size0[26]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[27]_i_1 
       (.I0(Q[19]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[27]),
        .O(int_size0[27]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[28]_i_1 
       (.I0(Q[20]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[28]),
        .O(int_size0[28]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[29]_i_1 
       (.I0(Q[21]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[29]),
        .O(int_size0[29]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[2]_i_1 
       (.I0(ctrl_length[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_size0[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[30]_i_1 
       (.I0(Q[22]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[30]),
        .O(int_size0[30]));
  LUT4 #(
    .INIT(16'h8000)) 
    \int_size[31]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .O(\int_size[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[31]_i_2 
       (.I0(ctrl_length[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[31]),
        .O(int_size0[31]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[3]_i_1 
       (.I0(ctrl_length[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_size0[3]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[4]_i_1 
       (.I0(ctrl_length[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_size0[4]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[5]_i_1 
       (.I0(ctrl_length[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_size0[5]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[6]_i_1 
       (.I0(ctrl_length[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_size0[6]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[7]_i_1 
       (.I0(ctrl_length[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_size0[7]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[8]_i_1 
       (.I0(Q[0]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[8]),
        .O(int_size0[8]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[9]_i_1 
       (.I0(Q[1]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[9]),
        .O(int_size0[9]));
  FDRE \int_size_reg[0] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[0]),
        .Q(ctrl_length[0]),
        .R(areset));
  FDRE \int_size_reg[10] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[10]),
        .Q(Q[2]),
        .R(areset));
  FDRE \int_size_reg[11] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[11]),
        .Q(Q[3]),
        .R(areset));
  FDRE \int_size_reg[12] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[12]),
        .Q(Q[4]),
        .R(areset));
  FDRE \int_size_reg[13] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[13]),
        .Q(Q[5]),
        .R(areset));
  FDRE \int_size_reg[14] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[14]),
        .Q(Q[6]),
        .R(areset));
  FDRE \int_size_reg[15] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[15]),
        .Q(Q[7]),
        .R(areset));
  FDRE \int_size_reg[16] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[16]),
        .Q(Q[8]),
        .R(areset));
  FDRE \int_size_reg[17] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[17]),
        .Q(Q[9]),
        .R(areset));
  FDRE \int_size_reg[18] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[18]),
        .Q(Q[10]),
        .R(areset));
  FDRE \int_size_reg[19] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[19]),
        .Q(Q[11]),
        .R(areset));
  FDRE \int_size_reg[1] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[1]),
        .Q(ctrl_length[1]),
        .R(areset));
  FDRE \int_size_reg[20] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[20]),
        .Q(Q[12]),
        .R(areset));
  FDRE \int_size_reg[21] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[21]),
        .Q(Q[13]),
        .R(areset));
  FDRE \int_size_reg[22] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[22]),
        .Q(Q[14]),
        .R(areset));
  FDRE \int_size_reg[23] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[23]),
        .Q(Q[15]),
        .R(areset));
  FDRE \int_size_reg[24] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[24]),
        .Q(Q[16]),
        .R(areset));
  FDRE \int_size_reg[25] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[25]),
        .Q(Q[17]),
        .R(areset));
  FDRE \int_size_reg[26] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[26]),
        .Q(Q[18]),
        .R(areset));
  FDRE \int_size_reg[27] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[27]),
        .Q(Q[19]),
        .R(areset));
  FDRE \int_size_reg[28] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[28]),
        .Q(Q[20]),
        .R(areset));
  FDRE \int_size_reg[29] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[29]),
        .Q(Q[21]),
        .R(areset));
  FDRE \int_size_reg[2] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[2]),
        .Q(ctrl_length[2]),
        .R(areset));
  FDRE \int_size_reg[30] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[30]),
        .Q(Q[22]),
        .R(areset));
  FDRE \int_size_reg[31] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[31]),
        .Q(ctrl_length[31]),
        .R(areset));
  FDRE \int_size_reg[3] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[3]),
        .Q(ctrl_length[3]),
        .R(areset));
  FDRE \int_size_reg[4] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[4]),
        .Q(ctrl_length[4]),
        .R(areset));
  FDRE \int_size_reg[5] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[5]),
        .Q(ctrl_length[5]),
        .R(areset));
  FDRE \int_size_reg[6] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[6]),
        .Q(ctrl_length[6]),
        .R(areset));
  FDRE \int_size_reg[7] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[7]),
        .Q(ctrl_length[7]),
        .R(areset));
  FDRE \int_size_reg[8] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[8]),
        .Q(Q[0]),
        .R(areset));
  FDRE \int_size_reg[9] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(int_size0[9]),
        .Q(Q[1]),
        .R(areset));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__0_i_1
       (.I0(Q[15]),
        .O(\int_size_reg[23]_0 [7]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__0_i_2
       (.I0(Q[14]),
        .O(\int_size_reg[23]_0 [6]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__0_i_3
       (.I0(Q[13]),
        .O(\int_size_reg[23]_0 [5]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__0_i_4
       (.I0(Q[12]),
        .O(\int_size_reg[23]_0 [4]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__0_i_5
       (.I0(Q[11]),
        .O(\int_size_reg[23]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__0_i_6
       (.I0(Q[10]),
        .O(\int_size_reg[23]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__0_i_7
       (.I0(Q[9]),
        .O(\int_size_reg[23]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__0_i_8
       (.I0(Q[8]),
        .O(\int_size_reg[23]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__1_i_1
       (.I0(ctrl_length[31]),
        .O(\int_size_reg[31]_0 [7]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__1_i_2
       (.I0(Q[22]),
        .O(\int_size_reg[31]_0 [6]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__1_i_3
       (.I0(Q[21]),
        .O(\int_size_reg[31]_0 [5]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__1_i_4
       (.I0(Q[20]),
        .O(\int_size_reg[31]_0 [4]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__1_i_5
       (.I0(Q[19]),
        .O(\int_size_reg[31]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__1_i_6
       (.I0(Q[18]),
        .O(\int_size_reg[31]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__1_i_7
       (.I0(Q[17]),
        .O(\int_size_reg[31]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__1_i_8
       (.I0(Q[16]),
        .O(\int_size_reg[31]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry_i_1
       (.I0(Q[7]),
        .O(S[7]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry_i_2
       (.I0(Q[6]),
        .O(S[6]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry_i_3
       (.I0(Q[5]),
        .O(S[5]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry_i_4
       (.I0(Q[4]),
        .O(S[4]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry_i_5
       (.I0(Q[3]),
        .O(S[3]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry_i_6
       (.I0(Q[2]),
        .O(S[2]));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry_i_7
       (.I0(Q[1]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h5556)) 
    num_transactions1_carry_i_8
       (.I0(Q[0]),
        .I1(\final_burst_len[7]_i_2_n_0 ),
        .I2(ctrl_length[6]),
        .I3(ctrl_length[7]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(\rdata[0]_i_3_n_0 ),
        .I2(\rdata[0]_i_4_n_0 ),
        .I3(ap_start),
        .I4(\rdata[0]_i_5_n_0 ),
        .O(rdata[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[0]_i_2 
       (.I0(\int_p_xcl_gv_p1_reg_n_0_[32] ),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[0] ),
        .I3(\rdata[31]_i_4_n_0 ),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[0]_i_3 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(ctrl_length[0]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[32]),
        .I4(ctrl_offset[0]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFC00000A0C00000)) 
    \rdata[0]_i_4 
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(\int_ier_reg_n_0_[0] ),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(\rdata[1]_i_5_n_0 ),
        .I5(int_gie_reg_n_0),
        .O(\rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rdata[0]_i_5 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[1]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[10]_i_1 
       (.I0(\rdata[10]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[10] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[42] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[10]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[2]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[42]),
        .I4(ctrl_offset[10]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[11]_i_1 
       (.I0(\rdata[11]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[11] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[43] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[11]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[3]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[43]),
        .I4(ctrl_offset[11]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[12]_i_1 
       (.I0(\rdata[12]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[12] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[44] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[12]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[4]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[44]),
        .I4(ctrl_offset[12]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[13]_i_1 
       (.I0(\rdata[13]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[13] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[45] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[13]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[5]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[45]),
        .I4(ctrl_offset[13]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[14]_i_1 
       (.I0(\rdata[14]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[14] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[46] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[14]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[6]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[46]),
        .I4(ctrl_offset[14]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[15]_i_1 
       (.I0(\rdata[15]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[15] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[47] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[15]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[7]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[47]),
        .I4(ctrl_offset[15]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[16]_i_1 
       (.I0(\rdata[16]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[16] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[48] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[16]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[8]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[48]),
        .I4(ctrl_offset[16]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[17]_i_1 
       (.I0(\rdata[17]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[17] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[49] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[17]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[9]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[49]),
        .I4(ctrl_offset[17]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[18]_i_1 
       (.I0(\rdata[18]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[18] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[50] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[18]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[10]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[50]),
        .I4(ctrl_offset[18]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[19]_i_1 
       (.I0(\rdata[19]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[19] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[51] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[19]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[11]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[51]),
        .I4(ctrl_offset[19]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \rdata[1]_i_1 
       (.I0(\rdata[1]_i_2_n_0 ),
        .I1(\rdata[1]_i_3_n_0 ),
        .I2(\rdata[1]_i_4_n_0 ),
        .O(rdata[1]));
  LUT5 #(
    .INIT(32'h8C008000)) 
    \rdata[1]_i_2 
       (.I0(p_1_in),
        .I1(\rdata[1]_i_5_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(p_0_in),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[1]_i_3 
       (.I0(\rdata[0]_i_5_n_0 ),
        .I1(int_ap_done),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(ctrl_length[1]),
        .I4(ctrl_offset[33]),
        .I5(\rdata[3]_i_3_n_0 ),
        .O(\rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[1]_i_4 
       (.I0(\rdata[31]_i_7_n_0 ),
        .I1(ctrl_offset[1]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[1] ),
        .I4(\int_p_xcl_gv_p1_reg_n_0_[33] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rdata[1]_i_5 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[4]),
        .O(\rdata[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[20]_i_1 
       (.I0(\rdata[20]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[20] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[52] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[20]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[12]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[52]),
        .I4(ctrl_offset[20]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[21]_i_1 
       (.I0(\rdata[21]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[21] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[53] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[21]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[13]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[53]),
        .I4(ctrl_offset[21]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[22]_i_1 
       (.I0(\rdata[22]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[22] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[54] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[22]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[14]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[54]),
        .I4(ctrl_offset[22]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[23]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[23] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[55] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[23]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[15]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[55]),
        .I4(ctrl_offset[23]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[24]_i_1 
       (.I0(\rdata[24]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[24] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[56] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[24]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[16]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[56]),
        .I4(ctrl_offset[24]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[25]_i_1 
       (.I0(\rdata[25]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[25] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[57] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[25]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[17]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[57]),
        .I4(ctrl_offset[25]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[26]_i_1 
       (.I0(\rdata[26]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[26] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[58] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[26]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[18]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[58]),
        .I4(ctrl_offset[26]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[27]_i_1 
       (.I0(\rdata[27]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[27] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[59] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[27]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[19]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[59]),
        .I4(ctrl_offset[27]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[28]_i_1 
       (.I0(\rdata[28]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[28] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[60] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[28]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[20]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[60]),
        .I4(ctrl_offset[28]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[29]_i_1 
       (.I0(\rdata[29]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[29] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[61] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[29]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[21]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[61]),
        .I4(ctrl_offset[29]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[29]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[2]_i_1 
       (.I0(\rdata[2]_i_2_n_0 ),
        .I1(\rdata[2]_i_3_n_0 ),
        .O(rdata[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[2]_i_2 
       (.I0(\rdata[31]_i_7_n_0 ),
        .I1(ctrl_offset[2]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[2] ),
        .I4(\int_p_xcl_gv_p1_reg_n_0_[34] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[2]_i_3 
       (.I0(\rdata[0]_i_5_n_0 ),
        .I1(ap_idle),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(ctrl_length[2]),
        .I4(ctrl_offset[34]),
        .I5(\rdata[3]_i_3_n_0 ),
        .O(\rdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[30]_i_1 
       (.I0(\rdata[30]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[30] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[62] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[30]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[22]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[62]),
        .I4(ctrl_offset[30]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[30]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \rdata[31]_i_1 
       (.I0(FSM_sequential_rstate_reg_0),
        .I1(s_axi_control_ARVALID),
        .I2(areset),
        .O(ar_hs));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[31]_i_2 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[31] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[63] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[31]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[31]_i_3 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(ctrl_length[31]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[63]),
        .I4(ctrl_offset[31]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \rdata[31]_i_4 
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARADDR[1]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \rdata[31]_i_5 
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[5]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \rdata[31]_i_6 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \rdata[31]_i_7 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \rdata[3]_i_1 
       (.I0(\rdata[3]_i_2_n_0 ),
        .I1(\rdata[3]_i_3_n_0 ),
        .I2(ctrl_offset[35]),
        .I3(\rdata[3]_i_4_n_0 ),
        .O(rdata[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[3]_i_2 
       (.I0(\rdata[31]_i_7_n_0 ),
        .I1(ctrl_offset[3]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[3] ),
        .I4(\int_p_xcl_gv_p1_reg_n_0_[35] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \rdata[3]_i_3 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \rdata[3]_i_4 
       (.I0(ctrl_length[3]),
        .I1(\rdata[31]_i_6_n_0 ),
        .I2(int_ap_start_reg_0),
        .I3(m_axi_gmem_BVALID),
        .I4(\rdata[0]_i_5_n_0 ),
        .O(\rdata[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[4]_i_1 
       (.I0(\rdata[4]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[4] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[36] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[4]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(ctrl_length[4]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[36]),
        .I4(ctrl_offset[4]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[5]_i_1 
       (.I0(\rdata[5]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[5] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[37] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[5]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(ctrl_length[5]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[37]),
        .I4(ctrl_offset[5]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[6]_i_1 
       (.I0(\rdata[6]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[6] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[38] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[6]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(ctrl_length[6]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[38]),
        .I4(ctrl_offset[6]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[7]_i_1 
       (.I0(\rdata[7]_i_2_n_0 ),
        .I1(\rdata[7]_i_3_n_0 ),
        .O(rdata[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[7]_i_2 
       (.I0(\rdata[31]_i_7_n_0 ),
        .I1(ctrl_offset[7]),
        .I2(\rdata[31]_i_4_n_0 ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[7] ),
        .I4(\int_p_xcl_gv_p1_reg_n_0_[39] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[7]_i_3 
       (.I0(\rdata[0]_i_5_n_0 ),
        .I1(int_auto_restart),
        .I2(\rdata[31]_i_6_n_0 ),
        .I3(ctrl_length[7]),
        .I4(ctrl_offset[39]),
        .I5(\rdata[3]_i_3_n_0 ),
        .O(\rdata[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[8]_i_1 
       (.I0(\rdata[8]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[8] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[40] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[8]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[0]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[40]),
        .I4(ctrl_offset[8]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[9]_i_1 
       (.I0(\rdata[9]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p1_reg_n_0_[9] ),
        .I3(\int_p_xcl_gv_p1_reg_n_0_[41] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .O(rdata[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata[9]_i_2 
       (.I0(\rdata[31]_i_6_n_0 ),
        .I1(Q[1]),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(ctrl_offset[41]),
        .I4(ctrl_offset[9]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[9]_i_2_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[10]),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[11]),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[12]),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[13]),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[14]),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[15]),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[16]),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[17]),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[18]),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[19]),
        .Q(s_axi_control_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[20]),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[21]),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[22]),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[23]),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[24]),
        .Q(s_axi_control_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[25]),
        .Q(s_axi_control_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[26]),
        .Q(s_axi_control_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[27]),
        .Q(s_axi_control_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[28]),
        .Q(s_axi_control_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[29]),
        .Q(s_axi_control_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[2]),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[30]),
        .Q(s_axi_control_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[31]),
        .Q(s_axi_control_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[4]),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[5]),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[6]),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[8]),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[9]),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_ARREADY_INST_0
       (.I0(areset),
        .I1(FSM_sequential_rstate_reg_0),
        .O(s_axi_control_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_control_AWREADY_INST_0
       (.I0(\FSM_onehot_wstate_reg_n_0_[0] ),
        .I1(areset),
        .O(s_axi_control_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    start_i_1
       (.I0(ap_start),
        .I1(ap_start_r),
        .O(ap_start_pulse));
  LUT3 #(
    .INIT(8'h08)) 
    \waddr[5]_i_1 
       (.I0(\FSM_onehot_wstate_reg_n_0_[0] ),
        .I1(s_axi_control_AWVALID),
        .I2(areset),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[5]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter
   (is_zero_r_reg_0,
    \state_reg[1] ,
    \num_transactions_reg[16] ,
    wfirst_reg,
    areset,
    ap_clk,
    is_zero_r_reg_1,
    m_axi_gmem_WREADY,
    start,
    Q,
    w_almost_final_transaction,
    \count_r_reg[7]_0 ,
    \m_axi_gmem_AWLEN[7]_INST_0_i_1_0 ,
    wfirst);
  output is_zero_r_reg_0;
  output \state_reg[1] ;
  output \num_transactions_reg[16] ;
  output wfirst_reg;
  input areset;
  input ap_clk;
  input [0:0]is_zero_r_reg_1;
  input m_axi_gmem_WREADY;
  input start;
  input [7:0]Q;
  input w_almost_final_transaction;
  input \count_r_reg[7]_0 ;
  input [23:0]\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 ;
  input wfirst;

  wire [7:0]Q;
  wire ap_clk;
  wire areset;
  wire \count_r[1]_i_2_n_0 ;
  wire \count_r[3]_i_2_n_0 ;
  wire \count_r[4]_i_2_n_0 ;
  wire \count_r[5]_i_2__0_n_0 ;
  wire \count_r[6]_i_2__0_n_0 ;
  wire \count_r[7]_i_2__0_n_0 ;
  wire \count_r_reg[7]_0 ;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[1] ;
  wire \count_r_reg_n_0_[2] ;
  wire \count_r_reg_n_0_[3] ;
  wire \count_r_reg_n_0_[4] ;
  wire \count_r_reg_n_0_[5] ;
  wire \count_r_reg_n_0_[6] ;
  wire \count_r_reg_n_0_[7] ;
  wire is_zero_r;
  wire is_zero_r_i_2_n_0;
  wire is_zero_r_i_3_n_0;
  wire is_zero_r_i_4_n_0;
  wire is_zero_r_i_5_n_0;
  wire is_zero_r_i_6_n_0;
  wire is_zero_r_reg_0;
  wire [0:0]is_zero_r_reg_1;
  wire [23:0]\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 ;
  wire \m_axi_gmem_AWLEN[7]_INST_0_i_2_n_0 ;
  wire \m_axi_gmem_AWLEN[7]_INST_0_i_3_n_0 ;
  wire \m_axi_gmem_AWLEN[7]_INST_0_i_4_n_0 ;
  wire \m_axi_gmem_AWLEN[7]_INST_0_i_5_n_0 ;
  wire \m_axi_gmem_AWLEN[7]_INST_0_i_6_n_0 ;
  wire \m_axi_gmem_AWLEN[7]_INST_0_i_7_n_0 ;
  wire m_axi_gmem_WREADY;
  wire \num_transactions_reg[16] ;
  wire [7:0]p_0_in;
  wire start;
  wire \state_reg[1] ;
  wire w_almost_final_transaction;
  wire wfirst;
  wire wfirst_reg;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \count_r[0]_i_1 
       (.I0(is_zero_r_reg_1),
        .I1(m_axi_gmem_WREADY),
        .I2(is_zero_r_reg_0),
        .I3(start),
        .O(\state_reg[1] ));
  LUT6 #(
    .INIT(64'h5C5C5C5CCC5C5C5C)) 
    \count_r[0]_i_1__0 
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\num_transactions_reg[16] ),
        .I3(w_almost_final_transaction),
        .I4(is_zero_r_reg_0),
        .I5(\count_r_reg[7]_0 ),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h99F099F099F0F0F0)) 
    \count_r[1]_i_1 
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(\count_r_reg_n_0_[1] ),
        .I2(Q[1]),
        .I3(\num_transactions_reg[16] ),
        .I4(\count_r[1]_i_2_n_0 ),
        .I5(\count_r_reg[7]_0 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count_r[1]_i_2 
       (.I0(w_almost_final_transaction),
        .I1(is_zero_r_reg_0),
        .O(\count_r[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC9C9FF00FF00FF00)) 
    \count_r[2]_i_1 
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(\count_r_reg_n_0_[2] ),
        .I2(\count_r_reg_n_0_[1] ),
        .I3(Q[2]),
        .I4(\num_transactions_reg[16] ),
        .I5(is_zero_r_i_3_n_0),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hACACACACCCACACAC)) 
    \count_r[3]_i_1 
       (.I0(\count_r[3]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\num_transactions_reg[16] ),
        .I3(w_almost_final_transaction),
        .I4(is_zero_r_reg_0),
        .I5(\count_r_reg[7]_0 ),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hF0E1)) 
    \count_r[3]_i_2 
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(\count_r_reg_n_0_[1] ),
        .I2(\count_r_reg_n_0_[3] ),
        .I3(\count_r_reg_n_0_[2] ),
        .O(\count_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hACACACACCCACACAC)) 
    \count_r[4]_i_1 
       (.I0(\count_r[4]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\num_transactions_reg[16] ),
        .I3(w_almost_final_transaction),
        .I4(is_zero_r_reg_0),
        .I5(\count_r_reg[7]_0 ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF00FE01)) 
    \count_r[4]_i_2 
       (.I0(\count_r_reg_n_0_[1] ),
        .I1(\count_r_reg_n_0_[0] ),
        .I2(\count_r_reg_n_0_[2] ),
        .I3(\count_r_reg_n_0_[4] ),
        .I4(\count_r_reg_n_0_[3] ),
        .O(\count_r[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hACACACACCCACACAC)) 
    \count_r[5]_i_1 
       (.I0(\count_r[5]_i_2__0_n_0 ),
        .I1(Q[5]),
        .I2(\num_transactions_reg[16] ),
        .I3(w_almost_final_transaction),
        .I4(is_zero_r_reg_0),
        .I5(\count_r_reg[7]_0 ),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0001)) 
    \count_r[5]_i_2__0 
       (.I0(\count_r_reg_n_0_[2] ),
        .I1(\count_r_reg_n_0_[0] ),
        .I2(\count_r_reg_n_0_[1] ),
        .I3(\count_r_reg_n_0_[3] ),
        .I4(\count_r_reg_n_0_[5] ),
        .I5(\count_r_reg_n_0_[4] ),
        .O(\count_r[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hC9C9FF00FF00FF00)) 
    \count_r[6]_i_1 
       (.I0(\count_r[6]_i_2__0_n_0 ),
        .I1(\count_r_reg_n_0_[6] ),
        .I2(\count_r_reg_n_0_[5] ),
        .I3(Q[6]),
        .I4(\num_transactions_reg[16] ),
        .I5(is_zero_r_i_3_n_0),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count_r[6]_i_2__0 
       (.I0(\count_r_reg_n_0_[3] ),
        .I1(\count_r_reg_n_0_[1] ),
        .I2(\count_r_reg_n_0_[0] ),
        .I3(\count_r_reg_n_0_[2] ),
        .I4(\count_r_reg_n_0_[4] ),
        .O(\count_r[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hACACACACCCACACAC)) 
    \count_r[7]_i_1 
       (.I0(\count_r[7]_i_2__0_n_0 ),
        .I1(Q[7]),
        .I2(\num_transactions_reg[16] ),
        .I3(w_almost_final_transaction),
        .I4(is_zero_r_reg_0),
        .I5(\count_r_reg[7]_0 ),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hF0E1)) 
    \count_r[7]_i_2__0 
       (.I0(\count_r_reg_n_0_[5] ),
        .I1(\count_r[6]_i_2__0_n_0 ),
        .I2(\count_r_reg_n_0_[7] ),
        .I3(\count_r_reg_n_0_[6] ),
        .O(\count_r[7]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[0] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(p_0_in[0]),
        .Q(\count_r_reg_n_0_[0] ),
        .S(areset));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[1] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(p_0_in[1]),
        .Q(\count_r_reg_n_0_[1] ),
        .S(areset));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[2] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(p_0_in[2]),
        .Q(\count_r_reg_n_0_[2] ),
        .S(areset));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[3] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(p_0_in[3]),
        .Q(\count_r_reg_n_0_[3] ),
        .S(areset));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[4] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(p_0_in[4]),
        .Q(\count_r_reg_n_0_[4] ),
        .S(areset));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[5] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(p_0_in[5]),
        .Q(\count_r_reg_n_0_[5] ),
        .S(areset));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[6] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(p_0_in[6]),
        .Q(\count_r_reg_n_0_[6] ),
        .S(areset));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[7] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(p_0_in[7]),
        .Q(\count_r_reg_n_0_[7] ),
        .S(areset));
  LUT3 #(
    .INIT(8'hD5)) 
    is_zero_r_i_1
       (.I0(\num_transactions_reg[16] ),
        .I1(m_axi_gmem_WREADY),
        .I2(is_zero_r_reg_1),
        .O(is_zero_r));
  LUT6 #(
    .INIT(64'hFFFF030001000300)) 
    is_zero_r_i_2
       (.I0(is_zero_r_i_3_n_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(is_zero_r_i_4_n_0),
        .I4(\num_transactions_reg[16] ),
        .I5(is_zero_r_i_5_n_0),
        .O(is_zero_r_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    is_zero_r_i_3
       (.I0(m_axi_gmem_WREADY),
        .I1(is_zero_r_reg_1),
        .I2(is_zero_r_reg_0),
        .I3(w_almost_final_transaction),
        .O(is_zero_r_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_4
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[7]),
        .I5(Q[6]),
        .O(is_zero_r_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    is_zero_r_i_5
       (.I0(w_almost_final_transaction),
        .I1(is_zero_r_reg_0),
        .I2(\count_r_reg_n_0_[1] ),
        .I3(\count_r_reg_n_0_[0] ),
        .I4(\count_r_reg[7]_0 ),
        .I5(is_zero_r_i_6_n_0),
        .O(is_zero_r_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_6
       (.I0(\count_r_reg_n_0_[4] ),
        .I1(\count_r_reg_n_0_[5] ),
        .I2(\count_r_reg_n_0_[2] ),
        .I3(\count_r_reg_n_0_[3] ),
        .I4(\count_r_reg_n_0_[7] ),
        .I5(\count_r_reg_n_0_[6] ),
        .O(is_zero_r_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_zero_r_reg
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(is_zero_r_i_2_n_0),
        .Q(is_zero_r_reg_0),
        .R(areset));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axi_gmem_AWLEN[7]_INST_0_i_1 
       (.I0(\m_axi_gmem_AWLEN[7]_INST_0_i_2_n_0 ),
        .I1(\m_axi_gmem_AWLEN[7]_INST_0_i_3_n_0 ),
        .I2(\m_axi_gmem_AWLEN[7]_INST_0_i_4_n_0 ),
        .I3(\m_axi_gmem_AWLEN[7]_INST_0_i_5_n_0 ),
        .I4(\m_axi_gmem_AWLEN[7]_INST_0_i_6_n_0 ),
        .I5(\m_axi_gmem_AWLEN[7]_INST_0_i_7_n_0 ),
        .O(\num_transactions_reg[16] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_AWLEN[7]_INST_0_i_2 
       (.I0(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [16]),
        .I1(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [15]),
        .I2(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [18]),
        .I3(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [17]),
        .O(\m_axi_gmem_AWLEN[7]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_AWLEN[7]_INST_0_i_3 
       (.I0(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [20]),
        .I1(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [19]),
        .I2(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [22]),
        .I3(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [21]),
        .O(\m_axi_gmem_AWLEN[7]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_AWLEN[7]_INST_0_i_4 
       (.I0(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [8]),
        .I1(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [7]),
        .I2(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [10]),
        .I3(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [9]),
        .O(\m_axi_gmem_AWLEN[7]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_AWLEN[7]_INST_0_i_5 
       (.I0(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [12]),
        .I1(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [11]),
        .I2(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [14]),
        .I3(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [13]),
        .O(\m_axi_gmem_AWLEN[7]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_AWLEN[7]_INST_0_i_6 
       (.I0(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [4]),
        .I1(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [3]),
        .I2(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [6]),
        .I3(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [5]),
        .O(\m_axi_gmem_AWLEN[7]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \m_axi_gmem_AWLEN[7]_INST_0_i_7 
       (.I0(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [0]),
        .I1(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [23]),
        .I2(start),
        .I3(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [2]),
        .I4(\m_axi_gmem_AWLEN[7]_INST_0_i_1_0 [1]),
        .O(\m_axi_gmem_AWLEN[7]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    wfirst_i_1
       (.I0(wfirst),
        .I1(is_zero_r_reg_1),
        .I2(m_axi_gmem_WREADY),
        .I3(is_zero_r_reg_0),
        .O(wfirst_reg));
endmodule

(* ORIG_REF_NAME = "krnl_output_stage_rtl_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0
   (m_axi_gmem_AWLEN,
    areset,
    ap_clk,
    Q,
    start,
    m_axi_gmem_AWLEN_0_sp_1,
    \m_axi_gmem_AWLEN[7] ,
    m_axi_gmem_AWREADY,
    is_zero_r_reg_0);
  output [7:0]m_axi_gmem_AWLEN;
  input areset;
  input ap_clk;
  input [23:0]Q;
  input start;
  input m_axi_gmem_AWLEN_0_sp_1;
  input [7:0]\m_axi_gmem_AWLEN[7] ;
  input m_axi_gmem_AWREADY;
  input is_zero_r_reg_0;

  wire [23:0]Q;
  wire ap_clk;
  wire areset;
  wire \count_r[0]_i_10__0_n_0 ;
  wire \count_r[0]_i_11__0_n_0 ;
  wire \count_r[0]_i_12__0_n_0 ;
  wire \count_r[0]_i_13__0_n_0 ;
  wire \count_r[0]_i_14__0_n_0 ;
  wire \count_r[0]_i_15__0_n_0 ;
  wire \count_r[0]_i_16__0_n_0 ;
  wire \count_r[0]_i_17__0_n_0 ;
  wire \count_r[0]_i_18__0_n_0 ;
  wire \count_r[0]_i_3__0_n_0 ;
  wire \count_r[0]_i_4__0_n_0 ;
  wire \count_r[0]_i_5__0_n_0 ;
  wire \count_r[0]_i_6__0_n_0 ;
  wire \count_r[0]_i_7__0_n_0 ;
  wire \count_r[0]_i_8__0_n_0 ;
  wire \count_r[0]_i_9__0_n_0 ;
  wire \count_r[16]_i_10__0_n_0 ;
  wire \count_r[16]_i_11__0_n_0 ;
  wire \count_r[16]_i_12__0_n_0 ;
  wire \count_r[16]_i_13__0_n_0 ;
  wire \count_r[16]_i_14__0_n_0 ;
  wire \count_r[16]_i_15__0_n_0 ;
  wire \count_r[16]_i_16__0_n_0 ;
  wire \count_r[16]_i_2__1_n_0 ;
  wire \count_r[16]_i_3__0_n_0 ;
  wire \count_r[16]_i_4__0_n_0 ;
  wire \count_r[16]_i_5__0_n_0 ;
  wire \count_r[16]_i_6__0_n_0 ;
  wire \count_r[16]_i_7__0_n_0 ;
  wire \count_r[16]_i_8__0_n_0 ;
  wire \count_r[16]_i_9__0_n_0 ;
  wire \count_r[8]_i_10__0_n_0 ;
  wire \count_r[8]_i_11__0_n_0 ;
  wire \count_r[8]_i_12__0_n_0 ;
  wire \count_r[8]_i_13__0_n_0 ;
  wire \count_r[8]_i_14__0_n_0 ;
  wire \count_r[8]_i_15__0_n_0 ;
  wire \count_r[8]_i_16__0_n_0 ;
  wire \count_r[8]_i_17__0_n_0 ;
  wire \count_r[8]_i_2__0_n_0 ;
  wire \count_r[8]_i_3__0_n_0 ;
  wire \count_r[8]_i_4__0_n_0 ;
  wire \count_r[8]_i_5__0_n_0 ;
  wire \count_r[8]_i_6__0_n_0 ;
  wire \count_r[8]_i_7__0_n_0 ;
  wire \count_r[8]_i_8__0_n_0 ;
  wire \count_r[8]_i_9__0_n_0 ;
  wire [23:0]count_r_reg;
  wire \count_r_reg[0]_i_2__0_n_0 ;
  wire \count_r_reg[0]_i_2__0_n_1 ;
  wire \count_r_reg[0]_i_2__0_n_10 ;
  wire \count_r_reg[0]_i_2__0_n_11 ;
  wire \count_r_reg[0]_i_2__0_n_12 ;
  wire \count_r_reg[0]_i_2__0_n_13 ;
  wire \count_r_reg[0]_i_2__0_n_14 ;
  wire \count_r_reg[0]_i_2__0_n_15 ;
  wire \count_r_reg[0]_i_2__0_n_2 ;
  wire \count_r_reg[0]_i_2__0_n_3 ;
  wire \count_r_reg[0]_i_2__0_n_4 ;
  wire \count_r_reg[0]_i_2__0_n_5 ;
  wire \count_r_reg[0]_i_2__0_n_6 ;
  wire \count_r_reg[0]_i_2__0_n_7 ;
  wire \count_r_reg[0]_i_2__0_n_8 ;
  wire \count_r_reg[0]_i_2__0_n_9 ;
  wire \count_r_reg[16]_i_1__0_n_1 ;
  wire \count_r_reg[16]_i_1__0_n_10 ;
  wire \count_r_reg[16]_i_1__0_n_11 ;
  wire \count_r_reg[16]_i_1__0_n_12 ;
  wire \count_r_reg[16]_i_1__0_n_13 ;
  wire \count_r_reg[16]_i_1__0_n_14 ;
  wire \count_r_reg[16]_i_1__0_n_15 ;
  wire \count_r_reg[16]_i_1__0_n_2 ;
  wire \count_r_reg[16]_i_1__0_n_3 ;
  wire \count_r_reg[16]_i_1__0_n_4 ;
  wire \count_r_reg[16]_i_1__0_n_5 ;
  wire \count_r_reg[16]_i_1__0_n_6 ;
  wire \count_r_reg[16]_i_1__0_n_7 ;
  wire \count_r_reg[16]_i_1__0_n_8 ;
  wire \count_r_reg[16]_i_1__0_n_9 ;
  wire \count_r_reg[8]_i_1__0_n_0 ;
  wire \count_r_reg[8]_i_1__0_n_1 ;
  wire \count_r_reg[8]_i_1__0_n_10 ;
  wire \count_r_reg[8]_i_1__0_n_11 ;
  wire \count_r_reg[8]_i_1__0_n_12 ;
  wire \count_r_reg[8]_i_1__0_n_13 ;
  wire \count_r_reg[8]_i_1__0_n_14 ;
  wire \count_r_reg[8]_i_1__0_n_15 ;
  wire \count_r_reg[8]_i_1__0_n_2 ;
  wire \count_r_reg[8]_i_1__0_n_3 ;
  wire \count_r_reg[8]_i_1__0_n_4 ;
  wire \count_r_reg[8]_i_1__0_n_5 ;
  wire \count_r_reg[8]_i_1__0_n_6 ;
  wire \count_r_reg[8]_i_1__0_n_7 ;
  wire \count_r_reg[8]_i_1__0_n_8 ;
  wire \count_r_reg[8]_i_1__0_n_9 ;
  wire is_zero_r;
  wire is_zero_r_i_2__0_n_0;
  wire is_zero_r_i_3__2_n_0;
  wire is_zero_r_i_4__2_n_0;
  wire is_zero_r_i_5__2_n_0;
  wire is_zero_r_i_6__1_n_0;
  wire is_zero_r_reg_0;
  wire is_zero_r_reg_n_0;
  wire [7:0]m_axi_gmem_AWLEN;
  wire [7:0]\m_axi_gmem_AWLEN[7] ;
  wire m_axi_gmem_AWLEN_0_sn_1;
  wire m_axi_gmem_AWREADY;
  wire p_0_in_0;
  wire start;
  wire [7:7]\NLW_count_r_reg[16]_i_1__0_CO_UNCONNECTED ;

  assign m_axi_gmem_AWLEN_0_sn_1 = m_axi_gmem_AWLEN_0_sp_1;
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_10__0 
       (.I0(start),
        .O(\count_r[0]_i_10__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_11__0 
       (.I0(count_r_reg[7]),
        .I1(Q[7]),
        .I2(start),
        .O(\count_r[0]_i_11__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_12__0 
       (.I0(count_r_reg[6]),
        .I1(Q[6]),
        .I2(start),
        .O(\count_r[0]_i_12__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_13__0 
       (.I0(count_r_reg[5]),
        .I1(Q[5]),
        .I2(start),
        .O(\count_r[0]_i_13__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_14__0 
       (.I0(count_r_reg[4]),
        .I1(Q[4]),
        .I2(start),
        .O(\count_r[0]_i_14__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_15__0 
       (.I0(count_r_reg[3]),
        .I1(Q[3]),
        .I2(start),
        .O(\count_r[0]_i_15__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_16__0 
       (.I0(count_r_reg[2]),
        .I1(Q[2]),
        .I2(start),
        .O(\count_r[0]_i_16__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_17__0 
       (.I0(count_r_reg[1]),
        .I1(Q[1]),
        .I2(start),
        .O(\count_r[0]_i_17__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_18__0 
       (.I0(count_r_reg[0]),
        .I1(Q[0]),
        .I2(start),
        .O(\count_r[0]_i_18__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \count_r[0]_i_1__1 
       (.I0(start),
        .I1(is_zero_r_reg_0),
        .I2(m_axi_gmem_AWREADY),
        .O(is_zero_r));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_3__0 
       (.I0(start),
        .O(\count_r[0]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_4__0 
       (.I0(start),
        .O(\count_r[0]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_5__0 
       (.I0(start),
        .O(\count_r[0]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_6__0 
       (.I0(start),
        .O(\count_r[0]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_7__0 
       (.I0(start),
        .O(\count_r[0]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_8__0 
       (.I0(start),
        .O(\count_r[0]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_9__0 
       (.I0(start),
        .O(\count_r[0]_i_9__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_10__0 
       (.I0(count_r_reg[22]),
        .I1(Q[22]),
        .I2(start),
        .O(\count_r[16]_i_10__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_11__0 
       (.I0(count_r_reg[21]),
        .I1(Q[21]),
        .I2(start),
        .O(\count_r[16]_i_11__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_12__0 
       (.I0(count_r_reg[20]),
        .I1(Q[20]),
        .I2(start),
        .O(\count_r[16]_i_12__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_13__0 
       (.I0(count_r_reg[19]),
        .I1(Q[19]),
        .I2(start),
        .O(\count_r[16]_i_13__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_14__0 
       (.I0(count_r_reg[18]),
        .I1(Q[18]),
        .I2(start),
        .O(\count_r[16]_i_14__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_15__0 
       (.I0(count_r_reg[17]),
        .I1(Q[17]),
        .I2(start),
        .O(\count_r[16]_i_15__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_16__0 
       (.I0(count_r_reg[16]),
        .I1(Q[16]),
        .I2(start),
        .O(\count_r[16]_i_16__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_2__1 
       (.I0(start),
        .O(\count_r[16]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_3__0 
       (.I0(start),
        .O(\count_r[16]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_4__0 
       (.I0(start),
        .O(\count_r[16]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_5__0 
       (.I0(start),
        .O(\count_r[16]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_6__0 
       (.I0(start),
        .O(\count_r[16]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_7__0 
       (.I0(start),
        .O(\count_r[16]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_8__0 
       (.I0(start),
        .O(\count_r[16]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_9__0 
       (.I0(count_r_reg[23]),
        .I1(Q[23]),
        .I2(start),
        .O(\count_r[16]_i_9__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_10__0 
       (.I0(count_r_reg[15]),
        .I1(Q[15]),
        .I2(start),
        .O(\count_r[8]_i_10__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_11__0 
       (.I0(count_r_reg[14]),
        .I1(Q[14]),
        .I2(start),
        .O(\count_r[8]_i_11__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_12__0 
       (.I0(count_r_reg[13]),
        .I1(Q[13]),
        .I2(start),
        .O(\count_r[8]_i_12__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_13__0 
       (.I0(count_r_reg[12]),
        .I1(Q[12]),
        .I2(start),
        .O(\count_r[8]_i_13__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_14__0 
       (.I0(count_r_reg[11]),
        .I1(Q[11]),
        .I2(start),
        .O(\count_r[8]_i_14__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_15__0 
       (.I0(count_r_reg[10]),
        .I1(Q[10]),
        .I2(start),
        .O(\count_r[8]_i_15__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_16__0 
       (.I0(count_r_reg[9]),
        .I1(Q[9]),
        .I2(start),
        .O(\count_r[8]_i_16__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_17__0 
       (.I0(count_r_reg[8]),
        .I1(Q[8]),
        .I2(start),
        .O(\count_r[8]_i_17__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_2__0 
       (.I0(start),
        .O(\count_r[8]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_3__0 
       (.I0(start),
        .O(\count_r[8]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_4__0 
       (.I0(start),
        .O(\count_r[8]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_5__0 
       (.I0(start),
        .O(\count_r[8]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_6__0 
       (.I0(start),
        .O(\count_r[8]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_7__0 
       (.I0(start),
        .O(\count_r[8]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_8__0 
       (.I0(start),
        .O(\count_r[8]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_9__0 
       (.I0(start),
        .O(\count_r[8]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2__0_n_15 ),
        .Q(count_r_reg[0]),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[0]_i_2__0 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[0]_i_2__0_n_0 ,\count_r_reg[0]_i_2__0_n_1 ,\count_r_reg[0]_i_2__0_n_2 ,\count_r_reg[0]_i_2__0_n_3 ,\count_r_reg[0]_i_2__0_n_4 ,\count_r_reg[0]_i_2__0_n_5 ,\count_r_reg[0]_i_2__0_n_6 ,\count_r_reg[0]_i_2__0_n_7 }),
        .DI({\count_r[0]_i_3__0_n_0 ,\count_r[0]_i_4__0_n_0 ,\count_r[0]_i_5__0_n_0 ,\count_r[0]_i_6__0_n_0 ,\count_r[0]_i_7__0_n_0 ,\count_r[0]_i_8__0_n_0 ,\count_r[0]_i_9__0_n_0 ,\count_r[0]_i_10__0_n_0 }),
        .O({\count_r_reg[0]_i_2__0_n_8 ,\count_r_reg[0]_i_2__0_n_9 ,\count_r_reg[0]_i_2__0_n_10 ,\count_r_reg[0]_i_2__0_n_11 ,\count_r_reg[0]_i_2__0_n_12 ,\count_r_reg[0]_i_2__0_n_13 ,\count_r_reg[0]_i_2__0_n_14 ,\count_r_reg[0]_i_2__0_n_15 }),
        .S({\count_r[0]_i_11__0_n_0 ,\count_r[0]_i_12__0_n_0 ,\count_r[0]_i_13__0_n_0 ,\count_r[0]_i_14__0_n_0 ,\count_r[0]_i_15__0_n_0 ,\count_r[0]_i_16__0_n_0 ,\count_r[0]_i_17__0_n_0 ,\count_r[0]_i_18__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[10] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1__0_n_13 ),
        .Q(count_r_reg[10]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[11] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1__0_n_12 ),
        .Q(count_r_reg[11]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[12] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1__0_n_11 ),
        .Q(count_r_reg[12]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[13] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1__0_n_10 ),
        .Q(count_r_reg[13]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[14] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1__0_n_9 ),
        .Q(count_r_reg[14]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[15] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1__0_n_8 ),
        .Q(count_r_reg[15]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[16] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1__0_n_15 ),
        .Q(count_r_reg[16]),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[16]_i_1__0 
       (.CI(\count_r_reg[8]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_r_reg[16]_i_1__0_CO_UNCONNECTED [7],\count_r_reg[16]_i_1__0_n_1 ,\count_r_reg[16]_i_1__0_n_2 ,\count_r_reg[16]_i_1__0_n_3 ,\count_r_reg[16]_i_1__0_n_4 ,\count_r_reg[16]_i_1__0_n_5 ,\count_r_reg[16]_i_1__0_n_6 ,\count_r_reg[16]_i_1__0_n_7 }),
        .DI({1'b0,\count_r[16]_i_2__1_n_0 ,\count_r[16]_i_3__0_n_0 ,\count_r[16]_i_4__0_n_0 ,\count_r[16]_i_5__0_n_0 ,\count_r[16]_i_6__0_n_0 ,\count_r[16]_i_7__0_n_0 ,\count_r[16]_i_8__0_n_0 }),
        .O({\count_r_reg[16]_i_1__0_n_8 ,\count_r_reg[16]_i_1__0_n_9 ,\count_r_reg[16]_i_1__0_n_10 ,\count_r_reg[16]_i_1__0_n_11 ,\count_r_reg[16]_i_1__0_n_12 ,\count_r_reg[16]_i_1__0_n_13 ,\count_r_reg[16]_i_1__0_n_14 ,\count_r_reg[16]_i_1__0_n_15 }),
        .S({\count_r[16]_i_9__0_n_0 ,\count_r[16]_i_10__0_n_0 ,\count_r[16]_i_11__0_n_0 ,\count_r[16]_i_12__0_n_0 ,\count_r[16]_i_13__0_n_0 ,\count_r[16]_i_14__0_n_0 ,\count_r[16]_i_15__0_n_0 ,\count_r[16]_i_16__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[17] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1__0_n_14 ),
        .Q(count_r_reg[17]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[18] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1__0_n_13 ),
        .Q(count_r_reg[18]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[19] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1__0_n_12 ),
        .Q(count_r_reg[19]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2__0_n_14 ),
        .Q(count_r_reg[1]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[20] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1__0_n_11 ),
        .Q(count_r_reg[20]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[21] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1__0_n_10 ),
        .Q(count_r_reg[21]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[22] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1__0_n_9 ),
        .Q(count_r_reg[22]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[23] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1__0_n_8 ),
        .Q(count_r_reg[23]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2__0_n_13 ),
        .Q(count_r_reg[2]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2__0_n_12 ),
        .Q(count_r_reg[3]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2__0_n_11 ),
        .Q(count_r_reg[4]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2__0_n_10 ),
        .Q(count_r_reg[5]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2__0_n_9 ),
        .Q(count_r_reg[6]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2__0_n_8 ),
        .Q(count_r_reg[7]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[8] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1__0_n_15 ),
        .Q(count_r_reg[8]),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[8]_i_1__0 
       (.CI(\count_r_reg[0]_i_2__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[8]_i_1__0_n_0 ,\count_r_reg[8]_i_1__0_n_1 ,\count_r_reg[8]_i_1__0_n_2 ,\count_r_reg[8]_i_1__0_n_3 ,\count_r_reg[8]_i_1__0_n_4 ,\count_r_reg[8]_i_1__0_n_5 ,\count_r_reg[8]_i_1__0_n_6 ,\count_r_reg[8]_i_1__0_n_7 }),
        .DI({\count_r[8]_i_2__0_n_0 ,\count_r[8]_i_3__0_n_0 ,\count_r[8]_i_4__0_n_0 ,\count_r[8]_i_5__0_n_0 ,\count_r[8]_i_6__0_n_0 ,\count_r[8]_i_7__0_n_0 ,\count_r[8]_i_8__0_n_0 ,\count_r[8]_i_9__0_n_0 }),
        .O({\count_r_reg[8]_i_1__0_n_8 ,\count_r_reg[8]_i_1__0_n_9 ,\count_r_reg[8]_i_1__0_n_10 ,\count_r_reg[8]_i_1__0_n_11 ,\count_r_reg[8]_i_1__0_n_12 ,\count_r_reg[8]_i_1__0_n_13 ,\count_r_reg[8]_i_1__0_n_14 ,\count_r_reg[8]_i_1__0_n_15 }),
        .S({\count_r[8]_i_10__0_n_0 ,\count_r[8]_i_11__0_n_0 ,\count_r[8]_i_12__0_n_0 ,\count_r[8]_i_13__0_n_0 ,\count_r[8]_i_14__0_n_0 ,\count_r[8]_i_15__0_n_0 ,\count_r[8]_i_16__0_n_0 ,\count_r[8]_i_17__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[9] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1__0_n_14 ),
        .Q(count_r_reg[9]),
        .R(areset));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    is_zero_r_i_1__0
       (.I0(is_zero_r_i_2__0_n_0),
        .I1(is_zero_r_i_3__2_n_0),
        .I2(is_zero_r_i_4__2_n_0),
        .I3(is_zero_r_i_5__2_n_0),
        .I4(m_axi_gmem_AWLEN_0_sn_1),
        .O(p_0_in_0));
  LUT4 #(
    .INIT(16'h8000)) 
    is_zero_r_i_2__0
       (.I0(m_axi_gmem_AWREADY),
        .I1(is_zero_r_reg_0),
        .I2(count_r_reg[0]),
        .I3(is_zero_r_i_6__1_n_0),
        .O(is_zero_r_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_3__2
       (.I0(count_r_reg[15]),
        .I1(count_r_reg[16]),
        .I2(count_r_reg[13]),
        .I3(count_r_reg[14]),
        .I4(count_r_reg[18]),
        .I5(count_r_reg[17]),
        .O(is_zero_r_i_3__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_4__2
       (.I0(count_r_reg[21]),
        .I1(count_r_reg[22]),
        .I2(count_r_reg[19]),
        .I3(count_r_reg[20]),
        .I4(start),
        .I5(count_r_reg[23]),
        .O(is_zero_r_i_4__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_5__2
       (.I0(count_r_reg[3]),
        .I1(count_r_reg[4]),
        .I2(count_r_reg[1]),
        .I3(count_r_reg[2]),
        .I4(count_r_reg[6]),
        .I5(count_r_reg[5]),
        .O(is_zero_r_i_5__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_6__1
       (.I0(count_r_reg[9]),
        .I1(count_r_reg[10]),
        .I2(count_r_reg[7]),
        .I3(count_r_reg[8]),
        .I4(count_r_reg[12]),
        .I5(count_r_reg[11]),
        .O(is_zero_r_i_6__1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(p_0_in_0),
        .Q(is_zero_r_reg_n_0),
        .S(areset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_gmem_AWLEN[0]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(m_axi_gmem_AWLEN_0_sn_1),
        .I2(\m_axi_gmem_AWLEN[7] [0]),
        .O(m_axi_gmem_AWLEN[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_gmem_AWLEN[1]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(m_axi_gmem_AWLEN_0_sn_1),
        .I2(\m_axi_gmem_AWLEN[7] [1]),
        .O(m_axi_gmem_AWLEN[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_gmem_AWLEN[2]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(m_axi_gmem_AWLEN_0_sn_1),
        .I2(\m_axi_gmem_AWLEN[7] [2]),
        .O(m_axi_gmem_AWLEN[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_gmem_AWLEN[3]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(m_axi_gmem_AWLEN_0_sn_1),
        .I2(\m_axi_gmem_AWLEN[7] [3]),
        .O(m_axi_gmem_AWLEN[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_gmem_AWLEN[4]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(m_axi_gmem_AWLEN_0_sn_1),
        .I2(\m_axi_gmem_AWLEN[7] [4]),
        .O(m_axi_gmem_AWLEN[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_gmem_AWLEN[5]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(m_axi_gmem_AWLEN_0_sn_1),
        .I2(\m_axi_gmem_AWLEN[7] [5]),
        .O(m_axi_gmem_AWLEN[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_gmem_AWLEN[6]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(m_axi_gmem_AWLEN_0_sn_1),
        .I2(\m_axi_gmem_AWLEN[7] [6]),
        .O(m_axi_gmem_AWLEN[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_gmem_AWLEN[7]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(m_axi_gmem_AWLEN_0_sn_1),
        .I2(\m_axi_gmem_AWLEN[7] [7]),
        .O(m_axi_gmem_AWLEN[7]));
endmodule

(* ORIG_REF_NAME = "krnl_output_stage_rtl_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0_0
   (is_zero_r_reg_0,
    is_zero_r_reg_1,
    areset,
    ap_clk,
    Q,
    start,
    m_axi_gmem_BVALID,
    ap_idle,
    ap_start_r,
    ap_start,
    is_zero_r_reg_2);
  output is_zero_r_reg_0;
  output is_zero_r_reg_1;
  input areset;
  input ap_clk;
  input [23:0]Q;
  input start;
  input m_axi_gmem_BVALID;
  input ap_idle;
  input ap_start_r;
  input ap_start;
  input is_zero_r_reg_2;

  wire [23:0]Q;
  wire ap_clk;
  wire ap_idle;
  wire ap_start;
  wire ap_start_r;
  wire areset;
  wire \count_r[0]_i_10_n_0 ;
  wire \count_r[0]_i_11_n_0 ;
  wire \count_r[0]_i_12_n_0 ;
  wire \count_r[0]_i_13_n_0 ;
  wire \count_r[0]_i_14_n_0 ;
  wire \count_r[0]_i_15_n_0 ;
  wire \count_r[0]_i_16_n_0 ;
  wire \count_r[0]_i_17_n_0 ;
  wire \count_r[0]_i_18_n_0 ;
  wire \count_r[0]_i_1__2_n_0 ;
  wire \count_r[0]_i_3_n_0 ;
  wire \count_r[0]_i_4_n_0 ;
  wire \count_r[0]_i_5_n_0 ;
  wire \count_r[0]_i_6_n_0 ;
  wire \count_r[0]_i_7_n_0 ;
  wire \count_r[0]_i_8_n_0 ;
  wire \count_r[0]_i_9_n_0 ;
  wire \count_r[16]_i_10_n_0 ;
  wire \count_r[16]_i_11_n_0 ;
  wire \count_r[16]_i_12_n_0 ;
  wire \count_r[16]_i_13_n_0 ;
  wire \count_r[16]_i_14_n_0 ;
  wire \count_r[16]_i_15_n_0 ;
  wire \count_r[16]_i_16_n_0 ;
  wire \count_r[16]_i_2__0_n_0 ;
  wire \count_r[16]_i_3_n_0 ;
  wire \count_r[16]_i_4_n_0 ;
  wire \count_r[16]_i_5_n_0 ;
  wire \count_r[16]_i_6_n_0 ;
  wire \count_r[16]_i_7_n_0 ;
  wire \count_r[16]_i_8_n_0 ;
  wire \count_r[16]_i_9_n_0 ;
  wire \count_r[8]_i_10_n_0 ;
  wire \count_r[8]_i_11_n_0 ;
  wire \count_r[8]_i_12_n_0 ;
  wire \count_r[8]_i_13_n_0 ;
  wire \count_r[8]_i_14_n_0 ;
  wire \count_r[8]_i_15_n_0 ;
  wire \count_r[8]_i_16_n_0 ;
  wire \count_r[8]_i_17_n_0 ;
  wire \count_r[8]_i_2_n_0 ;
  wire \count_r[8]_i_3_n_0 ;
  wire \count_r[8]_i_4_n_0 ;
  wire \count_r[8]_i_5_n_0 ;
  wire \count_r[8]_i_6_n_0 ;
  wire \count_r[8]_i_7_n_0 ;
  wire \count_r[8]_i_8_n_0 ;
  wire \count_r[8]_i_9_n_0 ;
  wire [23:0]count_r_reg;
  wire \count_r_reg[0]_i_2_n_0 ;
  wire \count_r_reg[0]_i_2_n_1 ;
  wire \count_r_reg[0]_i_2_n_10 ;
  wire \count_r_reg[0]_i_2_n_11 ;
  wire \count_r_reg[0]_i_2_n_12 ;
  wire \count_r_reg[0]_i_2_n_13 ;
  wire \count_r_reg[0]_i_2_n_14 ;
  wire \count_r_reg[0]_i_2_n_15 ;
  wire \count_r_reg[0]_i_2_n_2 ;
  wire \count_r_reg[0]_i_2_n_3 ;
  wire \count_r_reg[0]_i_2_n_4 ;
  wire \count_r_reg[0]_i_2_n_5 ;
  wire \count_r_reg[0]_i_2_n_6 ;
  wire \count_r_reg[0]_i_2_n_7 ;
  wire \count_r_reg[0]_i_2_n_8 ;
  wire \count_r_reg[0]_i_2_n_9 ;
  wire \count_r_reg[16]_i_1_n_1 ;
  wire \count_r_reg[16]_i_1_n_10 ;
  wire \count_r_reg[16]_i_1_n_11 ;
  wire \count_r_reg[16]_i_1_n_12 ;
  wire \count_r_reg[16]_i_1_n_13 ;
  wire \count_r_reg[16]_i_1_n_14 ;
  wire \count_r_reg[16]_i_1_n_15 ;
  wire \count_r_reg[16]_i_1_n_2 ;
  wire \count_r_reg[16]_i_1_n_3 ;
  wire \count_r_reg[16]_i_1_n_4 ;
  wire \count_r_reg[16]_i_1_n_5 ;
  wire \count_r_reg[16]_i_1_n_6 ;
  wire \count_r_reg[16]_i_1_n_7 ;
  wire \count_r_reg[16]_i_1_n_8 ;
  wire \count_r_reg[16]_i_1_n_9 ;
  wire \count_r_reg[8]_i_1_n_0 ;
  wire \count_r_reg[8]_i_1_n_1 ;
  wire \count_r_reg[8]_i_1_n_10 ;
  wire \count_r_reg[8]_i_1_n_11 ;
  wire \count_r_reg[8]_i_1_n_12 ;
  wire \count_r_reg[8]_i_1_n_13 ;
  wire \count_r_reg[8]_i_1_n_14 ;
  wire \count_r_reg[8]_i_1_n_15 ;
  wire \count_r_reg[8]_i_1_n_2 ;
  wire \count_r_reg[8]_i_1_n_3 ;
  wire \count_r_reg[8]_i_1_n_4 ;
  wire \count_r_reg[8]_i_1_n_5 ;
  wire \count_r_reg[8]_i_1_n_6 ;
  wire \count_r_reg[8]_i_1_n_7 ;
  wire \count_r_reg[8]_i_1_n_8 ;
  wire \count_r_reg[8]_i_1_n_9 ;
  wire is_zero_r_i_1__2_n_0;
  wire is_zero_r_i_2__2_n_0;
  wire is_zero_r_i_3__1_n_0;
  wire is_zero_r_i_4__1_n_0;
  wire is_zero_r_i_5__1_n_0;
  wire is_zero_r_i_6__0_n_0;
  wire is_zero_r_reg_0;
  wire is_zero_r_reg_1;
  wire is_zero_r_reg_2;
  wire m_axi_gmem_BVALID;
  wire start;
  wire [7:7]\NLW_count_r_reg[16]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFF8F8F8FFF8FFF8)) 
    ap_idle_i_1
       (.I0(is_zero_r_reg_0),
        .I1(m_axi_gmem_BVALID),
        .I2(areset),
        .I3(ap_idle),
        .I4(ap_start_r),
        .I5(ap_start),
        .O(is_zero_r_reg_1));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_10 
       (.I0(start),
        .O(\count_r[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_11 
       (.I0(count_r_reg[7]),
        .I1(Q[7]),
        .I2(start),
        .O(\count_r[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_12 
       (.I0(count_r_reg[6]),
        .I1(Q[6]),
        .I2(start),
        .O(\count_r[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_13 
       (.I0(count_r_reg[5]),
        .I1(Q[5]),
        .I2(start),
        .O(\count_r[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_14 
       (.I0(count_r_reg[4]),
        .I1(Q[4]),
        .I2(start),
        .O(\count_r[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_15 
       (.I0(count_r_reg[3]),
        .I1(Q[3]),
        .I2(start),
        .O(\count_r[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_16 
       (.I0(count_r_reg[2]),
        .I1(Q[2]),
        .I2(start),
        .O(\count_r[0]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_17 
       (.I0(count_r_reg[1]),
        .I1(Q[1]),
        .I2(start),
        .O(\count_r[0]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_18 
       (.I0(count_r_reg[0]),
        .I1(Q[0]),
        .I2(start),
        .O(\count_r[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count_r[0]_i_1__2 
       (.I0(m_axi_gmem_BVALID),
        .I1(start),
        .O(\count_r[0]_i_1__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_3 
       (.I0(start),
        .O(\count_r[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_4 
       (.I0(start),
        .O(\count_r[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_5 
       (.I0(start),
        .O(\count_r[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_6 
       (.I0(start),
        .O(\count_r[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_7 
       (.I0(start),
        .O(\count_r[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_8 
       (.I0(start),
        .O(\count_r[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_9 
       (.I0(start),
        .O(\count_r[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_10 
       (.I0(count_r_reg[22]),
        .I1(Q[22]),
        .I2(start),
        .O(\count_r[16]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_11 
       (.I0(count_r_reg[21]),
        .I1(Q[21]),
        .I2(start),
        .O(\count_r[16]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_12 
       (.I0(count_r_reg[20]),
        .I1(Q[20]),
        .I2(start),
        .O(\count_r[16]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_13 
       (.I0(count_r_reg[19]),
        .I1(Q[19]),
        .I2(start),
        .O(\count_r[16]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_14 
       (.I0(count_r_reg[18]),
        .I1(Q[18]),
        .I2(start),
        .O(\count_r[16]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_15 
       (.I0(count_r_reg[17]),
        .I1(Q[17]),
        .I2(start),
        .O(\count_r[16]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_16 
       (.I0(count_r_reg[16]),
        .I1(Q[16]),
        .I2(start),
        .O(\count_r[16]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_2__0 
       (.I0(start),
        .O(\count_r[16]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_3 
       (.I0(start),
        .O(\count_r[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_4 
       (.I0(start),
        .O(\count_r[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_5 
       (.I0(start),
        .O(\count_r[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_6 
       (.I0(start),
        .O(\count_r[16]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_7 
       (.I0(start),
        .O(\count_r[16]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_8 
       (.I0(start),
        .O(\count_r[16]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_9 
       (.I0(count_r_reg[23]),
        .I1(Q[23]),
        .I2(start),
        .O(\count_r[16]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_10 
       (.I0(count_r_reg[15]),
        .I1(Q[15]),
        .I2(start),
        .O(\count_r[8]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_11 
       (.I0(count_r_reg[14]),
        .I1(Q[14]),
        .I2(start),
        .O(\count_r[8]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_12 
       (.I0(count_r_reg[13]),
        .I1(Q[13]),
        .I2(start),
        .O(\count_r[8]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_13 
       (.I0(count_r_reg[12]),
        .I1(Q[12]),
        .I2(start),
        .O(\count_r[8]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_14 
       (.I0(count_r_reg[11]),
        .I1(Q[11]),
        .I2(start),
        .O(\count_r[8]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_15 
       (.I0(count_r_reg[10]),
        .I1(Q[10]),
        .I2(start),
        .O(\count_r[8]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_16 
       (.I0(count_r_reg[9]),
        .I1(Q[9]),
        .I2(start),
        .O(\count_r[8]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_17 
       (.I0(count_r_reg[8]),
        .I1(Q[8]),
        .I2(start),
        .O(\count_r[8]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_2 
       (.I0(start),
        .O(\count_r[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_3 
       (.I0(start),
        .O(\count_r[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_4 
       (.I0(start),
        .O(\count_r[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_5 
       (.I0(start),
        .O(\count_r[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_6 
       (.I0(start),
        .O(\count_r[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_7 
       (.I0(start),
        .O(\count_r[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_8 
       (.I0(start),
        .O(\count_r[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_9 
       (.I0(start),
        .O(\count_r[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[0]_i_2_n_15 ),
        .Q(count_r_reg[0]),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[0]_i_2_n_0 ,\count_r_reg[0]_i_2_n_1 ,\count_r_reg[0]_i_2_n_2 ,\count_r_reg[0]_i_2_n_3 ,\count_r_reg[0]_i_2_n_4 ,\count_r_reg[0]_i_2_n_5 ,\count_r_reg[0]_i_2_n_6 ,\count_r_reg[0]_i_2_n_7 }),
        .DI({\count_r[0]_i_3_n_0 ,\count_r[0]_i_4_n_0 ,\count_r[0]_i_5_n_0 ,\count_r[0]_i_6_n_0 ,\count_r[0]_i_7_n_0 ,\count_r[0]_i_8_n_0 ,\count_r[0]_i_9_n_0 ,\count_r[0]_i_10_n_0 }),
        .O({\count_r_reg[0]_i_2_n_8 ,\count_r_reg[0]_i_2_n_9 ,\count_r_reg[0]_i_2_n_10 ,\count_r_reg[0]_i_2_n_11 ,\count_r_reg[0]_i_2_n_12 ,\count_r_reg[0]_i_2_n_13 ,\count_r_reg[0]_i_2_n_14 ,\count_r_reg[0]_i_2_n_15 }),
        .S({\count_r[0]_i_11_n_0 ,\count_r[0]_i_12_n_0 ,\count_r[0]_i_13_n_0 ,\count_r[0]_i_14_n_0 ,\count_r[0]_i_15_n_0 ,\count_r[0]_i_16_n_0 ,\count_r[0]_i_17_n_0 ,\count_r[0]_i_18_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[10] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[8]_i_1_n_13 ),
        .Q(count_r_reg[10]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[11] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[8]_i_1_n_12 ),
        .Q(count_r_reg[11]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[12] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[8]_i_1_n_11 ),
        .Q(count_r_reg[12]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[13] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[8]_i_1_n_10 ),
        .Q(count_r_reg[13]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[14] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[8]_i_1_n_9 ),
        .Q(count_r_reg[14]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[15] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[8]_i_1_n_8 ),
        .Q(count_r_reg[15]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[16] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[16]_i_1_n_15 ),
        .Q(count_r_reg[16]),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[16]_i_1 
       (.CI(\count_r_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_r_reg[16]_i_1_CO_UNCONNECTED [7],\count_r_reg[16]_i_1_n_1 ,\count_r_reg[16]_i_1_n_2 ,\count_r_reg[16]_i_1_n_3 ,\count_r_reg[16]_i_1_n_4 ,\count_r_reg[16]_i_1_n_5 ,\count_r_reg[16]_i_1_n_6 ,\count_r_reg[16]_i_1_n_7 }),
        .DI({1'b0,\count_r[16]_i_2__0_n_0 ,\count_r[16]_i_3_n_0 ,\count_r[16]_i_4_n_0 ,\count_r[16]_i_5_n_0 ,\count_r[16]_i_6_n_0 ,\count_r[16]_i_7_n_0 ,\count_r[16]_i_8_n_0 }),
        .O({\count_r_reg[16]_i_1_n_8 ,\count_r_reg[16]_i_1_n_9 ,\count_r_reg[16]_i_1_n_10 ,\count_r_reg[16]_i_1_n_11 ,\count_r_reg[16]_i_1_n_12 ,\count_r_reg[16]_i_1_n_13 ,\count_r_reg[16]_i_1_n_14 ,\count_r_reg[16]_i_1_n_15 }),
        .S({\count_r[16]_i_9_n_0 ,\count_r[16]_i_10_n_0 ,\count_r[16]_i_11_n_0 ,\count_r[16]_i_12_n_0 ,\count_r[16]_i_13_n_0 ,\count_r[16]_i_14_n_0 ,\count_r[16]_i_15_n_0 ,\count_r[16]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[17] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[16]_i_1_n_14 ),
        .Q(count_r_reg[17]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[18] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[16]_i_1_n_13 ),
        .Q(count_r_reg[18]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[19] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[16]_i_1_n_12 ),
        .Q(count_r_reg[19]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[0]_i_2_n_14 ),
        .Q(count_r_reg[1]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[20] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[16]_i_1_n_11 ),
        .Q(count_r_reg[20]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[21] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[16]_i_1_n_10 ),
        .Q(count_r_reg[21]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[22] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[16]_i_1_n_9 ),
        .Q(count_r_reg[22]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[23] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[16]_i_1_n_8 ),
        .Q(count_r_reg[23]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[0]_i_2_n_13 ),
        .Q(count_r_reg[2]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[0]_i_2_n_12 ),
        .Q(count_r_reg[3]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[0]_i_2_n_11 ),
        .Q(count_r_reg[4]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[0]_i_2_n_10 ),
        .Q(count_r_reg[5]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[0]_i_2_n_9 ),
        .Q(count_r_reg[6]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[0]_i_2_n_8 ),
        .Q(count_r_reg[7]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[8] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[8]_i_1_n_15 ),
        .Q(count_r_reg[8]),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[8]_i_1 
       (.CI(\count_r_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[8]_i_1_n_0 ,\count_r_reg[8]_i_1_n_1 ,\count_r_reg[8]_i_1_n_2 ,\count_r_reg[8]_i_1_n_3 ,\count_r_reg[8]_i_1_n_4 ,\count_r_reg[8]_i_1_n_5 ,\count_r_reg[8]_i_1_n_6 ,\count_r_reg[8]_i_1_n_7 }),
        .DI({\count_r[8]_i_2_n_0 ,\count_r[8]_i_3_n_0 ,\count_r[8]_i_4_n_0 ,\count_r[8]_i_5_n_0 ,\count_r[8]_i_6_n_0 ,\count_r[8]_i_7_n_0 ,\count_r[8]_i_8_n_0 ,\count_r[8]_i_9_n_0 }),
        .O({\count_r_reg[8]_i_1_n_8 ,\count_r_reg[8]_i_1_n_9 ,\count_r_reg[8]_i_1_n_10 ,\count_r_reg[8]_i_1_n_11 ,\count_r_reg[8]_i_1_n_12 ,\count_r_reg[8]_i_1_n_13 ,\count_r_reg[8]_i_1_n_14 ,\count_r_reg[8]_i_1_n_15 }),
        .S({\count_r[8]_i_10_n_0 ,\count_r[8]_i_11_n_0 ,\count_r[8]_i_12_n_0 ,\count_r[8]_i_13_n_0 ,\count_r[8]_i_14_n_0 ,\count_r[8]_i_15_n_0 ,\count_r[8]_i_16_n_0 ,\count_r[8]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[9] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__2_n_0 ),
        .D(\count_r_reg[8]_i_1_n_14 ),
        .Q(count_r_reg[9]),
        .R(areset));
  LUT5 #(
    .INIT(32'hBBBFBBB0)) 
    is_zero_r_i_1__2
       (.I0(is_zero_r_i_2__2_n_0),
        .I1(is_zero_r_reg_2),
        .I2(m_axi_gmem_BVALID),
        .I3(start),
        .I4(is_zero_r_reg_0),
        .O(is_zero_r_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    is_zero_r_i_2__2
       (.I0(is_zero_r_i_3__1_n_0),
        .I1(is_zero_r_i_4__1_n_0),
        .I2(is_zero_r_i_5__1_n_0),
        .I3(is_zero_r_i_6__0_n_0),
        .I4(count_r_reg[0]),
        .I5(count_r_reg[1]),
        .O(is_zero_r_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_3__1
       (.I0(count_r_reg[4]),
        .I1(count_r_reg[5]),
        .I2(count_r_reg[2]),
        .I3(count_r_reg[3]),
        .I4(count_r_reg[7]),
        .I5(count_r_reg[6]),
        .O(is_zero_r_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    is_zero_r_i_4__1
       (.I0(count_r_reg[22]),
        .I1(count_r_reg[23]),
        .I2(count_r_reg[20]),
        .I3(count_r_reg[21]),
        .I4(start),
        .I5(m_axi_gmem_BVALID),
        .O(is_zero_r_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_5__1
       (.I0(count_r_reg[16]),
        .I1(count_r_reg[17]),
        .I2(count_r_reg[14]),
        .I3(count_r_reg[15]),
        .I4(count_r_reg[19]),
        .I5(count_r_reg[18]),
        .O(is_zero_r_i_5__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_6__0
       (.I0(count_r_reg[10]),
        .I1(count_r_reg[11]),
        .I2(count_r_reg[8]),
        .I3(count_r_reg[9]),
        .I4(count_r_reg[13]),
        .I5(count_r_reg[12]),
        .O(is_zero_r_i_6__0_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(is_zero_r_i_1__2_n_0),
        .Q(is_zero_r_reg_0),
        .S(areset));
endmodule

(* ORIG_REF_NAME = "krnl_output_stage_rtl_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0_1
   (\count_r_reg[14]_0 ,
    areset,
    \count_r_reg[23]_0 ,
    ap_clk,
    Q,
    start);
  output \count_r_reg[14]_0 ;
  input areset;
  input \count_r_reg[23]_0 ;
  input ap_clk;
  input [23:0]Q;
  input start;

  wire [23:0]Q;
  wire ap_clk;
  wire areset;
  wire \count_r[0]_i_10__1_n_0 ;
  wire \count_r[0]_i_11__1_n_0 ;
  wire \count_r[0]_i_12__1_n_0 ;
  wire \count_r[0]_i_13__1_n_0 ;
  wire \count_r[0]_i_14__1_n_0 ;
  wire \count_r[0]_i_15__1_n_0 ;
  wire \count_r[0]_i_16__1_n_0 ;
  wire \count_r[0]_i_17__1_n_0 ;
  wire \count_r[0]_i_18__1_n_0 ;
  wire \count_r[0]_i_3__1_n_0 ;
  wire \count_r[0]_i_4__1_n_0 ;
  wire \count_r[0]_i_5__1_n_0 ;
  wire \count_r[0]_i_6__1_n_0 ;
  wire \count_r[0]_i_7__1_n_0 ;
  wire \count_r[0]_i_8__1_n_0 ;
  wire \count_r[0]_i_9__1_n_0 ;
  wire \count_r[16]_i_10__1_n_0 ;
  wire \count_r[16]_i_11__1_n_0 ;
  wire \count_r[16]_i_12__1_n_0 ;
  wire \count_r[16]_i_13__1_n_0 ;
  wire \count_r[16]_i_14__1_n_0 ;
  wire \count_r[16]_i_15__1_n_0 ;
  wire \count_r[16]_i_16__1_n_0 ;
  wire \count_r[16]_i_2_n_0 ;
  wire \count_r[16]_i_3__1_n_0 ;
  wire \count_r[16]_i_4__1_n_0 ;
  wire \count_r[16]_i_5__1_n_0 ;
  wire \count_r[16]_i_6__1_n_0 ;
  wire \count_r[16]_i_7__1_n_0 ;
  wire \count_r[16]_i_8__1_n_0 ;
  wire \count_r[16]_i_9__1_n_0 ;
  wire \count_r[8]_i_10__1_n_0 ;
  wire \count_r[8]_i_11__1_n_0 ;
  wire \count_r[8]_i_12__1_n_0 ;
  wire \count_r[8]_i_13__1_n_0 ;
  wire \count_r[8]_i_14__1_n_0 ;
  wire \count_r[8]_i_15__1_n_0 ;
  wire \count_r[8]_i_16__1_n_0 ;
  wire \count_r[8]_i_17__1_n_0 ;
  wire \count_r[8]_i_2__1_n_0 ;
  wire \count_r[8]_i_3__1_n_0 ;
  wire \count_r[8]_i_4__1_n_0 ;
  wire \count_r[8]_i_5__1_n_0 ;
  wire \count_r[8]_i_6__1_n_0 ;
  wire \count_r[8]_i_7__1_n_0 ;
  wire \count_r[8]_i_8__1_n_0 ;
  wire \count_r[8]_i_9__1_n_0 ;
  wire [23:0]count_r_reg;
  wire \count_r_reg[0]_i_2__1_n_0 ;
  wire \count_r_reg[0]_i_2__1_n_1 ;
  wire \count_r_reg[0]_i_2__1_n_10 ;
  wire \count_r_reg[0]_i_2__1_n_11 ;
  wire \count_r_reg[0]_i_2__1_n_12 ;
  wire \count_r_reg[0]_i_2__1_n_13 ;
  wire \count_r_reg[0]_i_2__1_n_14 ;
  wire \count_r_reg[0]_i_2__1_n_15 ;
  wire \count_r_reg[0]_i_2__1_n_2 ;
  wire \count_r_reg[0]_i_2__1_n_3 ;
  wire \count_r_reg[0]_i_2__1_n_4 ;
  wire \count_r_reg[0]_i_2__1_n_5 ;
  wire \count_r_reg[0]_i_2__1_n_6 ;
  wire \count_r_reg[0]_i_2__1_n_7 ;
  wire \count_r_reg[0]_i_2__1_n_8 ;
  wire \count_r_reg[0]_i_2__1_n_9 ;
  wire \count_r_reg[14]_0 ;
  wire \count_r_reg[16]_i_1__1_n_1 ;
  wire \count_r_reg[16]_i_1__1_n_10 ;
  wire \count_r_reg[16]_i_1__1_n_11 ;
  wire \count_r_reg[16]_i_1__1_n_12 ;
  wire \count_r_reg[16]_i_1__1_n_13 ;
  wire \count_r_reg[16]_i_1__1_n_14 ;
  wire \count_r_reg[16]_i_1__1_n_15 ;
  wire \count_r_reg[16]_i_1__1_n_2 ;
  wire \count_r_reg[16]_i_1__1_n_3 ;
  wire \count_r_reg[16]_i_1__1_n_4 ;
  wire \count_r_reg[16]_i_1__1_n_5 ;
  wire \count_r_reg[16]_i_1__1_n_6 ;
  wire \count_r_reg[16]_i_1__1_n_7 ;
  wire \count_r_reg[16]_i_1__1_n_8 ;
  wire \count_r_reg[16]_i_1__1_n_9 ;
  wire \count_r_reg[23]_0 ;
  wire \count_r_reg[8]_i_1__1_n_0 ;
  wire \count_r_reg[8]_i_1__1_n_1 ;
  wire \count_r_reg[8]_i_1__1_n_10 ;
  wire \count_r_reg[8]_i_1__1_n_11 ;
  wire \count_r_reg[8]_i_1__1_n_12 ;
  wire \count_r_reg[8]_i_1__1_n_13 ;
  wire \count_r_reg[8]_i_1__1_n_14 ;
  wire \count_r_reg[8]_i_1__1_n_15 ;
  wire \count_r_reg[8]_i_1__1_n_2 ;
  wire \count_r_reg[8]_i_1__1_n_3 ;
  wire \count_r_reg[8]_i_1__1_n_4 ;
  wire \count_r_reg[8]_i_1__1_n_5 ;
  wire \count_r_reg[8]_i_1__1_n_6 ;
  wire \count_r_reg[8]_i_1__1_n_7 ;
  wire \count_r_reg[8]_i_1__1_n_8 ;
  wire \count_r_reg[8]_i_1__1_n_9 ;
  wire start;
  wire w_almost_final_transaction_i_2_n_0;
  wire w_almost_final_transaction_i_3_n_0;
  wire w_almost_final_transaction_i_4_n_0;
  wire w_almost_final_transaction_i_5_n_0;
  wire [7:7]\NLW_count_r_reg[16]_i_1__1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_10__1 
       (.I0(start),
        .O(\count_r[0]_i_10__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_11__1 
       (.I0(count_r_reg[7]),
        .I1(Q[7]),
        .I2(start),
        .O(\count_r[0]_i_11__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_12__1 
       (.I0(count_r_reg[6]),
        .I1(Q[6]),
        .I2(start),
        .O(\count_r[0]_i_12__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_13__1 
       (.I0(count_r_reg[5]),
        .I1(Q[5]),
        .I2(start),
        .O(\count_r[0]_i_13__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_14__1 
       (.I0(count_r_reg[4]),
        .I1(Q[4]),
        .I2(start),
        .O(\count_r[0]_i_14__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_15__1 
       (.I0(count_r_reg[3]),
        .I1(Q[3]),
        .I2(start),
        .O(\count_r[0]_i_15__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_16__1 
       (.I0(count_r_reg[2]),
        .I1(Q[2]),
        .I2(start),
        .O(\count_r[0]_i_16__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_17__1 
       (.I0(count_r_reg[1]),
        .I1(Q[1]),
        .I2(start),
        .O(\count_r[0]_i_17__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_18__1 
       (.I0(count_r_reg[0]),
        .I1(Q[0]),
        .I2(start),
        .O(\count_r[0]_i_18__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_3__1 
       (.I0(start),
        .O(\count_r[0]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_4__1 
       (.I0(start),
        .O(\count_r[0]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_5__1 
       (.I0(start),
        .O(\count_r[0]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_6__1 
       (.I0(start),
        .O(\count_r[0]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_7__1 
       (.I0(start),
        .O(\count_r[0]_i_7__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_8__1 
       (.I0(start),
        .O(\count_r[0]_i_8__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_9__1 
       (.I0(start),
        .O(\count_r[0]_i_9__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_10__1 
       (.I0(count_r_reg[22]),
        .I1(Q[22]),
        .I2(start),
        .O(\count_r[16]_i_10__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_11__1 
       (.I0(count_r_reg[21]),
        .I1(Q[21]),
        .I2(start),
        .O(\count_r[16]_i_11__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_12__1 
       (.I0(count_r_reg[20]),
        .I1(Q[20]),
        .I2(start),
        .O(\count_r[16]_i_12__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_13__1 
       (.I0(count_r_reg[19]),
        .I1(Q[19]),
        .I2(start),
        .O(\count_r[16]_i_13__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_14__1 
       (.I0(count_r_reg[18]),
        .I1(Q[18]),
        .I2(start),
        .O(\count_r[16]_i_14__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_15__1 
       (.I0(count_r_reg[17]),
        .I1(Q[17]),
        .I2(start),
        .O(\count_r[16]_i_15__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_16__1 
       (.I0(count_r_reg[16]),
        .I1(Q[16]),
        .I2(start),
        .O(\count_r[16]_i_16__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_2 
       (.I0(start),
        .O(\count_r[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_3__1 
       (.I0(start),
        .O(\count_r[16]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_4__1 
       (.I0(start),
        .O(\count_r[16]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_5__1 
       (.I0(start),
        .O(\count_r[16]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_6__1 
       (.I0(start),
        .O(\count_r[16]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_7__1 
       (.I0(start),
        .O(\count_r[16]_i_7__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_8__1 
       (.I0(start),
        .O(\count_r[16]_i_8__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_9__1 
       (.I0(count_r_reg[23]),
        .I1(Q[23]),
        .I2(start),
        .O(\count_r[16]_i_9__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_10__1 
       (.I0(count_r_reg[15]),
        .I1(Q[15]),
        .I2(start),
        .O(\count_r[8]_i_10__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_11__1 
       (.I0(count_r_reg[14]),
        .I1(Q[14]),
        .I2(start),
        .O(\count_r[8]_i_11__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_12__1 
       (.I0(count_r_reg[13]),
        .I1(Q[13]),
        .I2(start),
        .O(\count_r[8]_i_12__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_13__1 
       (.I0(count_r_reg[12]),
        .I1(Q[12]),
        .I2(start),
        .O(\count_r[8]_i_13__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_14__1 
       (.I0(count_r_reg[11]),
        .I1(Q[11]),
        .I2(start),
        .O(\count_r[8]_i_14__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_15__1 
       (.I0(count_r_reg[10]),
        .I1(Q[10]),
        .I2(start),
        .O(\count_r[8]_i_15__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_16__1 
       (.I0(count_r_reg[9]),
        .I1(Q[9]),
        .I2(start),
        .O(\count_r[8]_i_16__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_17__1 
       (.I0(count_r_reg[8]),
        .I1(Q[8]),
        .I2(start),
        .O(\count_r[8]_i_17__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_2__1 
       (.I0(start),
        .O(\count_r[8]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_3__1 
       (.I0(start),
        .O(\count_r[8]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_4__1 
       (.I0(start),
        .O(\count_r[8]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_5__1 
       (.I0(start),
        .O(\count_r[8]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_6__1 
       (.I0(start),
        .O(\count_r[8]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_7__1 
       (.I0(start),
        .O(\count_r[8]_i_7__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_8__1 
       (.I0(start),
        .O(\count_r[8]_i_8__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_9__1 
       (.I0(start),
        .O(\count_r[8]_i_9__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[0]_i_2__1_n_15 ),
        .Q(count_r_reg[0]),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[0]_i_2__1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[0]_i_2__1_n_0 ,\count_r_reg[0]_i_2__1_n_1 ,\count_r_reg[0]_i_2__1_n_2 ,\count_r_reg[0]_i_2__1_n_3 ,\count_r_reg[0]_i_2__1_n_4 ,\count_r_reg[0]_i_2__1_n_5 ,\count_r_reg[0]_i_2__1_n_6 ,\count_r_reg[0]_i_2__1_n_7 }),
        .DI({\count_r[0]_i_3__1_n_0 ,\count_r[0]_i_4__1_n_0 ,\count_r[0]_i_5__1_n_0 ,\count_r[0]_i_6__1_n_0 ,\count_r[0]_i_7__1_n_0 ,\count_r[0]_i_8__1_n_0 ,\count_r[0]_i_9__1_n_0 ,\count_r[0]_i_10__1_n_0 }),
        .O({\count_r_reg[0]_i_2__1_n_8 ,\count_r_reg[0]_i_2__1_n_9 ,\count_r_reg[0]_i_2__1_n_10 ,\count_r_reg[0]_i_2__1_n_11 ,\count_r_reg[0]_i_2__1_n_12 ,\count_r_reg[0]_i_2__1_n_13 ,\count_r_reg[0]_i_2__1_n_14 ,\count_r_reg[0]_i_2__1_n_15 }),
        .S({\count_r[0]_i_11__1_n_0 ,\count_r[0]_i_12__1_n_0 ,\count_r[0]_i_13__1_n_0 ,\count_r[0]_i_14__1_n_0 ,\count_r[0]_i_15__1_n_0 ,\count_r[0]_i_16__1_n_0 ,\count_r[0]_i_17__1_n_0 ,\count_r[0]_i_18__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[10] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_13 ),
        .Q(count_r_reg[10]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[11] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_12 ),
        .Q(count_r_reg[11]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[12] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_11 ),
        .Q(count_r_reg[12]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[13] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_10 ),
        .Q(count_r_reg[13]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[14] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_9 ),
        .Q(count_r_reg[14]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[15] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_8 ),
        .Q(count_r_reg[15]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[16] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_15 ),
        .Q(count_r_reg[16]),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[16]_i_1__1 
       (.CI(\count_r_reg[8]_i_1__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_r_reg[16]_i_1__1_CO_UNCONNECTED [7],\count_r_reg[16]_i_1__1_n_1 ,\count_r_reg[16]_i_1__1_n_2 ,\count_r_reg[16]_i_1__1_n_3 ,\count_r_reg[16]_i_1__1_n_4 ,\count_r_reg[16]_i_1__1_n_5 ,\count_r_reg[16]_i_1__1_n_6 ,\count_r_reg[16]_i_1__1_n_7 }),
        .DI({1'b0,\count_r[16]_i_2_n_0 ,\count_r[16]_i_3__1_n_0 ,\count_r[16]_i_4__1_n_0 ,\count_r[16]_i_5__1_n_0 ,\count_r[16]_i_6__1_n_0 ,\count_r[16]_i_7__1_n_0 ,\count_r[16]_i_8__1_n_0 }),
        .O({\count_r_reg[16]_i_1__1_n_8 ,\count_r_reg[16]_i_1__1_n_9 ,\count_r_reg[16]_i_1__1_n_10 ,\count_r_reg[16]_i_1__1_n_11 ,\count_r_reg[16]_i_1__1_n_12 ,\count_r_reg[16]_i_1__1_n_13 ,\count_r_reg[16]_i_1__1_n_14 ,\count_r_reg[16]_i_1__1_n_15 }),
        .S({\count_r[16]_i_9__1_n_0 ,\count_r[16]_i_10__1_n_0 ,\count_r[16]_i_11__1_n_0 ,\count_r[16]_i_12__1_n_0 ,\count_r[16]_i_13__1_n_0 ,\count_r[16]_i_14__1_n_0 ,\count_r[16]_i_15__1_n_0 ,\count_r[16]_i_16__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[17] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_14 ),
        .Q(count_r_reg[17]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[18] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_13 ),
        .Q(count_r_reg[18]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[19] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_12 ),
        .Q(count_r_reg[19]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[0]_i_2__1_n_14 ),
        .Q(count_r_reg[1]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[20] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_11 ),
        .Q(count_r_reg[20]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[21] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_10 ),
        .Q(count_r_reg[21]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[22] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_9 ),
        .Q(count_r_reg[22]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[23] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_8 ),
        .Q(count_r_reg[23]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[0]_i_2__1_n_13 ),
        .Q(count_r_reg[2]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[0]_i_2__1_n_12 ),
        .Q(count_r_reg[3]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[0]_i_2__1_n_11 ),
        .Q(count_r_reg[4]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[0]_i_2__1_n_10 ),
        .Q(count_r_reg[5]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[0]_i_2__1_n_9 ),
        .Q(count_r_reg[6]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[0]_i_2__1_n_8 ),
        .Q(count_r_reg[7]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[8] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_15 ),
        .Q(count_r_reg[8]),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[8]_i_1__1 
       (.CI(\count_r_reg[0]_i_2__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[8]_i_1__1_n_0 ,\count_r_reg[8]_i_1__1_n_1 ,\count_r_reg[8]_i_1__1_n_2 ,\count_r_reg[8]_i_1__1_n_3 ,\count_r_reg[8]_i_1__1_n_4 ,\count_r_reg[8]_i_1__1_n_5 ,\count_r_reg[8]_i_1__1_n_6 ,\count_r_reg[8]_i_1__1_n_7 }),
        .DI({\count_r[8]_i_2__1_n_0 ,\count_r[8]_i_3__1_n_0 ,\count_r[8]_i_4__1_n_0 ,\count_r[8]_i_5__1_n_0 ,\count_r[8]_i_6__1_n_0 ,\count_r[8]_i_7__1_n_0 ,\count_r[8]_i_8__1_n_0 ,\count_r[8]_i_9__1_n_0 }),
        .O({\count_r_reg[8]_i_1__1_n_8 ,\count_r_reg[8]_i_1__1_n_9 ,\count_r_reg[8]_i_1__1_n_10 ,\count_r_reg[8]_i_1__1_n_11 ,\count_r_reg[8]_i_1__1_n_12 ,\count_r_reg[8]_i_1__1_n_13 ,\count_r_reg[8]_i_1__1_n_14 ,\count_r_reg[8]_i_1__1_n_15 }),
        .S({\count_r[8]_i_10__1_n_0 ,\count_r[8]_i_11__1_n_0 ,\count_r[8]_i_12__1_n_0 ,\count_r[8]_i_13__1_n_0 ,\count_r[8]_i_14__1_n_0 ,\count_r[8]_i_15__1_n_0 ,\count_r[8]_i_16__1_n_0 ,\count_r[8]_i_17__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[9] 
       (.C(ap_clk),
        .CE(\count_r_reg[23]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_14 ),
        .Q(count_r_reg[9]),
        .R(areset));
  LUT4 #(
    .INIT(16'h8000)) 
    w_almost_final_transaction_i_1
       (.I0(w_almost_final_transaction_i_2_n_0),
        .I1(w_almost_final_transaction_i_3_n_0),
        .I2(w_almost_final_transaction_i_4_n_0),
        .I3(w_almost_final_transaction_i_5_n_0),
        .O(\count_r_reg[14]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    w_almost_final_transaction_i_2
       (.I0(count_r_reg[14]),
        .I1(count_r_reg[15]),
        .I2(count_r_reg[12]),
        .I3(count_r_reg[13]),
        .I4(count_r_reg[17]),
        .I5(count_r_reg[16]),
        .O(w_almost_final_transaction_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    w_almost_final_transaction_i_3
       (.I0(count_r_reg[2]),
        .I1(count_r_reg[3]),
        .I2(count_r_reg[0]),
        .I3(count_r_reg[1]),
        .I4(count_r_reg[5]),
        .I5(count_r_reg[4]),
        .O(w_almost_final_transaction_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    w_almost_final_transaction_i_4
       (.I0(count_r_reg[8]),
        .I1(count_r_reg[9]),
        .I2(count_r_reg[6]),
        .I3(count_r_reg[7]),
        .I4(count_r_reg[11]),
        .I5(count_r_reg[10]),
        .O(w_almost_final_transaction_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    w_almost_final_transaction_i_5
       (.I0(count_r_reg[20]),
        .I1(count_r_reg[21]),
        .I2(count_r_reg[18]),
        .I3(count_r_reg[19]),
        .I4(count_r_reg[23]),
        .I5(count_r_reg[22]),
        .O(w_almost_final_transaction_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "krnl_output_stage_rtl_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized1
   (awvalid_r_reg,
    areset,
    ap_clk,
    \count_r_reg[1]_0 ,
    m_axi_gmem_AWREADY,
    wfirst_pulse);
  output awvalid_r_reg;
  input areset;
  input ap_clk;
  input \count_r_reg[1]_0 ;
  input m_axi_gmem_AWREADY;
  input wfirst_pulse;

  wire ap_clk;
  wire areset;
  wire awvalid_r_reg;
  wire \count_r[0]_i_1__3_n_0 ;
  wire \count_r[1]_i_1__0_n_0 ;
  wire \count_r[2]_i_1__0_n_0 ;
  wire \count_r[3]_i_1__0_n_0 ;
  wire \count_r[4]_i_1__0_n_0 ;
  wire \count_r[5]_i_1__0_n_0 ;
  wire \count_r[5]_i_2_n_0 ;
  wire \count_r[6]_i_1__0_n_0 ;
  wire \count_r[6]_i_2_n_0 ;
  wire \count_r[6]_i_3_n_0 ;
  wire \count_r[7]_i_1__0_n_0 ;
  wire \count_r[7]_i_2_n_0 ;
  wire \count_r[7]_i_3__0_n_0 ;
  wire \count_r[7]_i_4_n_0 ;
  wire \count_r_reg[1]_0 ;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[1] ;
  wire \count_r_reg_n_0_[2] ;
  wire \count_r_reg_n_0_[3] ;
  wire \count_r_reg_n_0_[4] ;
  wire \count_r_reg_n_0_[5] ;
  wire \count_r_reg_n_0_[6] ;
  wire \count_r_reg_n_0_[7] ;
  wire idle_aw;
  wire is_zero_r_i_1__1_n_0;
  wire is_zero_r_i_2__1_n_0;
  wire is_zero_r_i_3__0_n_0;
  wire is_zero_r_i_4__0_n_0;
  wire is_zero_r_i_5__0_n_0;
  wire m_axi_gmem_AWREADY;
  wire wfirst_pulse;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h1B)) 
    awvalid_r_i_1
       (.I0(\count_r_reg[1]_0 ),
        .I1(idle_aw),
        .I2(m_axi_gmem_AWREADY),
        .O(awvalid_r_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_1__3 
       (.I0(\count_r_reg_n_0_[0] ),
        .O(\count_r[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h95AA6A55)) 
    \count_r[1]_i_1__0 
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(\count_r_reg[1]_0 ),
        .I2(m_axi_gmem_AWREADY),
        .I3(wfirst_pulse),
        .I4(\count_r_reg_n_0_[1] ),
        .O(\count_r[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF7770888AEEE5111)) 
    \count_r[2]_i_1__0 
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(wfirst_pulse),
        .I2(m_axi_gmem_AWREADY),
        .I3(\count_r_reg[1]_0 ),
        .I4(\count_r_reg_n_0_[2] ),
        .I5(\count_r_reg_n_0_[1] ),
        .O(\count_r[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF708EF10)) 
    \count_r[3]_i_1__0 
       (.I0(\count_r_reg_n_0_[1] ),
        .I1(\count_r_reg_n_0_[0] ),
        .I2(\count_r[6]_i_2_n_0 ),
        .I3(\count_r_reg_n_0_[3] ),
        .I4(\count_r_reg_n_0_[2] ),
        .O(\count_r[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F0080FEFF0100)) 
    \count_r[4]_i_1__0 
       (.I0(\count_r_reg_n_0_[2] ),
        .I1(\count_r_reg_n_0_[0] ),
        .I2(\count_r_reg_n_0_[1] ),
        .I3(\count_r[6]_i_2_n_0 ),
        .I4(\count_r_reg_n_0_[4] ),
        .I5(\count_r_reg_n_0_[3] ),
        .O(\count_r[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDDD2222FFF2000D)) 
    \count_r[5]_i_1__0 
       (.I0(\count_r[6]_i_3_n_0 ),
        .I1(\count_r[6]_i_2_n_0 ),
        .I2(\count_r_reg_n_0_[3] ),
        .I3(\count_r[5]_i_2_n_0 ),
        .I4(\count_r_reg_n_0_[5] ),
        .I5(\count_r_reg_n_0_[4] ),
        .O(\count_r[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEFEFEFE)) 
    \count_r[5]_i_2 
       (.I0(\count_r_reg_n_0_[1] ),
        .I1(\count_r_reg_n_0_[0] ),
        .I2(wfirst_pulse),
        .I3(m_axi_gmem_AWREADY),
        .I4(\count_r_reg[1]_0 ),
        .I5(\count_r_reg_n_0_[2] ),
        .O(\count_r[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFBF4040FF4000BF)) 
    \count_r[6]_i_1__0 
       (.I0(\count_r[6]_i_2_n_0 ),
        .I1(\count_r_reg_n_0_[4] ),
        .I2(\count_r[6]_i_3_n_0 ),
        .I3(\count_r[7]_i_3__0_n_0 ),
        .I4(\count_r_reg_n_0_[6] ),
        .I5(\count_r_reg_n_0_[5] ),
        .O(\count_r[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \count_r[6]_i_2 
       (.I0(\count_r_reg[1]_0 ),
        .I1(m_axi_gmem_AWREADY),
        .I2(wfirst_pulse),
        .O(\count_r[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \count_r[6]_i_3 
       (.I0(\count_r_reg_n_0_[2] ),
        .I1(\count_r_reg_n_0_[0] ),
        .I2(\count_r_reg_n_0_[1] ),
        .I3(\count_r_reg_n_0_[3] ),
        .O(\count_r[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \count_r[7]_i_1__0 
       (.I0(wfirst_pulse),
        .I1(m_axi_gmem_AWREADY),
        .I2(\count_r_reg[1]_0 ),
        .O(\count_r[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0FF0FE01)) 
    \count_r[7]_i_2 
       (.I0(\count_r[7]_i_3__0_n_0 ),
        .I1(\count_r_reg_n_0_[5] ),
        .I2(\count_r[7]_i_4_n_0 ),
        .I3(\count_r_reg_n_0_[7] ),
        .I4(\count_r_reg_n_0_[6] ),
        .O(\count_r[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \count_r[7]_i_3__0 
       (.I0(\count_r_reg_n_0_[3] ),
        .I1(\count_r_reg_n_0_[1] ),
        .I2(\count_r_reg_n_0_[0] ),
        .I3(\count_r[6]_i_2_n_0 ),
        .I4(\count_r_reg_n_0_[2] ),
        .I5(\count_r_reg_n_0_[4] ),
        .O(\count_r[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h7000000000000000)) 
    \count_r[7]_i_4 
       (.I0(\count_r_reg[1]_0 ),
        .I1(m_axi_gmem_AWREADY),
        .I2(wfirst_pulse),
        .I3(\count_r_reg_n_0_[5] ),
        .I4(\count_r_reg_n_0_[4] ),
        .I5(\count_r[6]_i_3_n_0 ),
        .O(\count_r[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(ap_clk),
        .CE(\count_r[7]_i_1__0_n_0 ),
        .D(\count_r[0]_i_1__3_n_0 ),
        .Q(\count_r_reg_n_0_[0] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(ap_clk),
        .CE(\count_r[7]_i_1__0_n_0 ),
        .D(\count_r[1]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[1] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(ap_clk),
        .CE(\count_r[7]_i_1__0_n_0 ),
        .D(\count_r[2]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[2] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(ap_clk),
        .CE(\count_r[7]_i_1__0_n_0 ),
        .D(\count_r[3]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[3] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(ap_clk),
        .CE(\count_r[7]_i_1__0_n_0 ),
        .D(\count_r[4]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[4] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(ap_clk),
        .CE(\count_r[7]_i_1__0_n_0 ),
        .D(\count_r[5]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[5] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(ap_clk),
        .CE(\count_r[7]_i_1__0_n_0 ),
        .D(\count_r[6]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[6] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(ap_clk),
        .CE(\count_r[7]_i_1__0_n_0 ),
        .D(\count_r[7]_i_2_n_0 ),
        .Q(\count_r_reg_n_0_[7] ),
        .R(areset));
  LUT6 #(
    .INIT(64'hF8FFFFF8F80000F8)) 
    is_zero_r_i_1__1
       (.I0(is_zero_r_i_2__1_n_0),
        .I1(is_zero_r_i_3__0_n_0),
        .I2(is_zero_r_i_4__0_n_0),
        .I3(is_zero_r_i_5__0_n_0),
        .I4(wfirst_pulse),
        .I5(idle_aw),
        .O(is_zero_r_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    is_zero_r_i_2__1
       (.I0(is_zero_r_i_5__0_n_0),
        .I1(\count_r_reg_n_0_[3] ),
        .I2(\count_r_reg_n_0_[7] ),
        .I3(\count_r_reg_n_0_[0] ),
        .I4(\count_r_reg_n_0_[1] ),
        .I5(\count_r_reg_n_0_[2] ),
        .O(is_zero_r_i_2__1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    is_zero_r_i_3__0
       (.I0(\count_r_reg_n_0_[6] ),
        .I1(\count_r_reg_n_0_[5] ),
        .I2(\count_r_reg_n_0_[4] ),
        .O(is_zero_r_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    is_zero_r_i_4__0
       (.I0(\count_r_reg_n_0_[7] ),
        .I1(wfirst_pulse),
        .I2(\count_r_reg_n_0_[6] ),
        .I3(\count_r_reg_n_0_[5] ),
        .I4(\count_r_reg_n_0_[4] ),
        .I5(\count_r[6]_i_3_n_0 ),
        .O(is_zero_r_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    is_zero_r_i_5__0
       (.I0(m_axi_gmem_AWREADY),
        .I1(\count_r_reg[1]_0 ),
        .O(is_zero_r_i_5__0_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(is_zero_r_i_1__1_n_0),
        .Q(idle_aw),
        .S(areset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_int
   (awvalid_r_reg,
    p1_TREADY,
    m_axi_gmem_WVALID,
    s_axi_control_ARREADY,
    FSM_sequential_rstate_reg,
    s_axi_control_BVALID,
    \FSM_onehot_wstate_reg[1] ,
    s_axi_control_RDATA,
    m_axi_gmem_WDATA,
    m_axi_gmem_AWADDR,
    s_axi_control_AWREADY,
    is_zero_r_reg,
    m_axi_gmem_AWLEN,
    m_axi_gmem_AWREADY,
    ap_clk,
    s_axi_control_AWADDR,
    m_axi_gmem_BVALID,
    s_axi_control_WDATA,
    p1_TDATA,
    s_axi_control_RREADY,
    s_axi_control_ARVALID,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    s_axi_control_ARADDR,
    m_axi_gmem_WREADY,
    p1_TVALID,
    ap_rst_n);
  output awvalid_r_reg;
  output p1_TREADY;
  output m_axi_gmem_WVALID;
  output s_axi_control_ARREADY;
  output FSM_sequential_rstate_reg;
  output s_axi_control_BVALID;
  output \FSM_onehot_wstate_reg[1] ;
  output [31:0]s_axi_control_RDATA;
  output [31:0]m_axi_gmem_WDATA;
  output [63:0]m_axi_gmem_AWADDR;
  output s_axi_control_AWREADY;
  output is_zero_r_reg;
  output [7:0]m_axi_gmem_AWLEN;
  input m_axi_gmem_AWREADY;
  input ap_clk;
  input [5:0]s_axi_control_AWADDR;
  input m_axi_gmem_BVALID;
  input [31:0]s_axi_control_WDATA;
  input [31:0]p1_TDATA;
  input s_axi_control_RREADY;
  input s_axi_control_ARVALID;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [5:0]s_axi_control_ARADDR;
  input m_axi_gmem_WREADY;
  input p1_TVALID;
  input ap_rst_n;

  wire \FSM_onehot_wstate_reg[1] ;
  wire FSM_sequential_rstate_reg;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_start;
  wire ap_start_pulse;
  wire ap_start_r;
  wire areset;
  wire areset_i_1_n_0;
  wire awvalid_r_reg;
  wire [30:8]ctrl_length;
  wire [0:0]final_burst_len0;
  wire inst_axi_write_master_n_65;
  wire inst_axi_write_master_n_67;
  wire inst_krnl_output_stage_control_s_axi_n_1;
  wire inst_krnl_output_stage_control_s_axi_n_100;
  wire inst_krnl_output_stage_control_s_axi_n_101;
  wire inst_krnl_output_stage_control_s_axi_n_102;
  wire inst_krnl_output_stage_control_s_axi_n_103;
  wire inst_krnl_output_stage_control_s_axi_n_104;
  wire inst_krnl_output_stage_control_s_axi_n_105;
  wire inst_krnl_output_stage_control_s_axi_n_106;
  wire inst_krnl_output_stage_control_s_axi_n_107;
  wire inst_krnl_output_stage_control_s_axi_n_108;
  wire inst_krnl_output_stage_control_s_axi_n_109;
  wire inst_krnl_output_stage_control_s_axi_n_110;
  wire inst_krnl_output_stage_control_s_axi_n_111;
  wire inst_krnl_output_stage_control_s_axi_n_112;
  wire inst_krnl_output_stage_control_s_axi_n_113;
  wire inst_krnl_output_stage_control_s_axi_n_114;
  wire inst_krnl_output_stage_control_s_axi_n_115;
  wire inst_krnl_output_stage_control_s_axi_n_116;
  wire inst_krnl_output_stage_control_s_axi_n_117;
  wire inst_krnl_output_stage_control_s_axi_n_118;
  wire inst_krnl_output_stage_control_s_axi_n_119;
  wire inst_krnl_output_stage_control_s_axi_n_120;
  wire inst_krnl_output_stage_control_s_axi_n_121;
  wire inst_krnl_output_stage_control_s_axi_n_122;
  wire inst_krnl_output_stage_control_s_axi_n_123;
  wire inst_krnl_output_stage_control_s_axi_n_124;
  wire inst_krnl_output_stage_control_s_axi_n_125;
  wire inst_krnl_output_stage_control_s_axi_n_2;
  wire inst_krnl_output_stage_control_s_axi_n_3;
  wire inst_krnl_output_stage_control_s_axi_n_37;
  wire inst_krnl_output_stage_control_s_axi_n_38;
  wire inst_krnl_output_stage_control_s_axi_n_39;
  wire inst_krnl_output_stage_control_s_axi_n_4;
  wire inst_krnl_output_stage_control_s_axi_n_40;
  wire inst_krnl_output_stage_control_s_axi_n_41;
  wire inst_krnl_output_stage_control_s_axi_n_42;
  wire inst_krnl_output_stage_control_s_axi_n_43;
  wire inst_krnl_output_stage_control_s_axi_n_44;
  wire inst_krnl_output_stage_control_s_axi_n_45;
  wire inst_krnl_output_stage_control_s_axi_n_47;
  wire inst_krnl_output_stage_control_s_axi_n_48;
  wire inst_krnl_output_stage_control_s_axi_n_49;
  wire inst_krnl_output_stage_control_s_axi_n_5;
  wire inst_krnl_output_stage_control_s_axi_n_50;
  wire inst_krnl_output_stage_control_s_axi_n_51;
  wire inst_krnl_output_stage_control_s_axi_n_52;
  wire inst_krnl_output_stage_control_s_axi_n_53;
  wire inst_krnl_output_stage_control_s_axi_n_54;
  wire inst_krnl_output_stage_control_s_axi_n_55;
  wire inst_krnl_output_stage_control_s_axi_n_56;
  wire inst_krnl_output_stage_control_s_axi_n_57;
  wire inst_krnl_output_stage_control_s_axi_n_58;
  wire inst_krnl_output_stage_control_s_axi_n_59;
  wire inst_krnl_output_stage_control_s_axi_n_6;
  wire inst_krnl_output_stage_control_s_axi_n_60;
  wire inst_krnl_output_stage_control_s_axi_n_61;
  wire inst_krnl_output_stage_control_s_axi_n_62;
  wire inst_krnl_output_stage_control_s_axi_n_63;
  wire inst_krnl_output_stage_control_s_axi_n_64;
  wire inst_krnl_output_stage_control_s_axi_n_65;
  wire inst_krnl_output_stage_control_s_axi_n_66;
  wire inst_krnl_output_stage_control_s_axi_n_67;
  wire inst_krnl_output_stage_control_s_axi_n_68;
  wire inst_krnl_output_stage_control_s_axi_n_69;
  wire inst_krnl_output_stage_control_s_axi_n_7;
  wire inst_krnl_output_stage_control_s_axi_n_70;
  wire inst_krnl_output_stage_control_s_axi_n_71;
  wire inst_krnl_output_stage_control_s_axi_n_72;
  wire inst_krnl_output_stage_control_s_axi_n_73;
  wire inst_krnl_output_stage_control_s_axi_n_74;
  wire inst_krnl_output_stage_control_s_axi_n_75;
  wire inst_krnl_output_stage_control_s_axi_n_76;
  wire inst_krnl_output_stage_control_s_axi_n_77;
  wire inst_krnl_output_stage_control_s_axi_n_78;
  wire inst_krnl_output_stage_control_s_axi_n_79;
  wire inst_krnl_output_stage_control_s_axi_n_80;
  wire inst_krnl_output_stage_control_s_axi_n_81;
  wire inst_krnl_output_stage_control_s_axi_n_82;
  wire inst_krnl_output_stage_control_s_axi_n_83;
  wire inst_krnl_output_stage_control_s_axi_n_84;
  wire inst_krnl_output_stage_control_s_axi_n_85;
  wire inst_krnl_output_stage_control_s_axi_n_86;
  wire inst_krnl_output_stage_control_s_axi_n_87;
  wire inst_krnl_output_stage_control_s_axi_n_88;
  wire inst_krnl_output_stage_control_s_axi_n_89;
  wire inst_krnl_output_stage_control_s_axi_n_90;
  wire inst_krnl_output_stage_control_s_axi_n_91;
  wire inst_krnl_output_stage_control_s_axi_n_92;
  wire inst_krnl_output_stage_control_s_axi_n_93;
  wire inst_krnl_output_stage_control_s_axi_n_94;
  wire inst_krnl_output_stage_control_s_axi_n_95;
  wire inst_krnl_output_stage_control_s_axi_n_96;
  wire inst_krnl_output_stage_control_s_axi_n_97;
  wire inst_krnl_output_stage_control_s_axi_n_98;
  wire inst_krnl_output_stage_control_s_axi_n_99;
  wire inst_register_slice_n_2;
  wire is_zero_r_reg;
  wire [63:0]m_axi_gmem_AWADDR;
  wire [7:0]m_axi_gmem_AWLEN;
  wire m_axi_gmem_AWREADY;
  wire m_axi_gmem_BVALID;
  wire [31:0]m_axi_gmem_WDATA;
  wire m_axi_gmem_WREADY;
  wire m_axi_gmem_WVALID;
  wire [31:0]p1_TDATA;
  wire p1_TREADY;
  wire p1_TVALID;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [5:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;

  FDRE #(
    .INIT(1'b1)) 
    ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inst_axi_write_master_n_67),
        .Q(ap_idle),
        .R(1'b0));
  FDRE ap_start_r_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_start),
        .Q(ap_start_r),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    areset_i_1
       (.I0(ap_rst_n),
        .O(areset_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    areset_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(areset_i_1_n_0),
        .Q(areset),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_axi_write_master inst_axi_write_master
       (.D({inst_krnl_output_stage_control_s_axi_n_1,inst_krnl_output_stage_control_s_axi_n_2,inst_krnl_output_stage_control_s_axi_n_3,inst_krnl_output_stage_control_s_axi_n_4,inst_krnl_output_stage_control_s_axi_n_5,inst_krnl_output_stage_control_s_axi_n_6,inst_krnl_output_stage_control_s_axi_n_7,final_burst_len0}),
        .O({inst_krnl_output_stage_control_s_axi_n_71,inst_krnl_output_stage_control_s_axi_n_72,inst_krnl_output_stage_control_s_axi_n_73,inst_krnl_output_stage_control_s_axi_n_74,inst_krnl_output_stage_control_s_axi_n_75,inst_krnl_output_stage_control_s_axi_n_76,inst_krnl_output_stage_control_s_axi_n_77,inst_krnl_output_stage_control_s_axi_n_78}),
        .Q(ctrl_length),
        .S({inst_krnl_output_stage_control_s_axi_n_63,inst_krnl_output_stage_control_s_axi_n_64,inst_krnl_output_stage_control_s_axi_n_65,inst_krnl_output_stage_control_s_axi_n_66,inst_krnl_output_stage_control_s_axi_n_67,inst_krnl_output_stage_control_s_axi_n_68,inst_krnl_output_stage_control_s_axi_n_69,inst_krnl_output_stage_control_s_axi_n_70}),
        .\addr_reg[0]_0 (inst_krnl_output_stage_control_s_axi_n_45),
        .\addr_reg[1]_0 (inst_krnl_output_stage_control_s_axi_n_44),
        .\addr_reg[24]_0 ({inst_krnl_output_stage_control_s_axi_n_79,inst_krnl_output_stage_control_s_axi_n_80,inst_krnl_output_stage_control_s_axi_n_81,inst_krnl_output_stage_control_s_axi_n_82,inst_krnl_output_stage_control_s_axi_n_83,inst_krnl_output_stage_control_s_axi_n_84,inst_krnl_output_stage_control_s_axi_n_85,inst_krnl_output_stage_control_s_axi_n_86}),
        .\addr_reg[2]_0 (inst_krnl_output_stage_control_s_axi_n_43),
        .\addr_reg[32]_0 ({inst_krnl_output_stage_control_s_axi_n_87,inst_krnl_output_stage_control_s_axi_n_88,inst_krnl_output_stage_control_s_axi_n_89,inst_krnl_output_stage_control_s_axi_n_90,inst_krnl_output_stage_control_s_axi_n_91,inst_krnl_output_stage_control_s_axi_n_92,inst_krnl_output_stage_control_s_axi_n_93,inst_krnl_output_stage_control_s_axi_n_94}),
        .\addr_reg[3]_0 (inst_krnl_output_stage_control_s_axi_n_42),
        .\addr_reg[40]_0 ({inst_krnl_output_stage_control_s_axi_n_95,inst_krnl_output_stage_control_s_axi_n_96,inst_krnl_output_stage_control_s_axi_n_97,inst_krnl_output_stage_control_s_axi_n_98,inst_krnl_output_stage_control_s_axi_n_99,inst_krnl_output_stage_control_s_axi_n_100,inst_krnl_output_stage_control_s_axi_n_101,inst_krnl_output_stage_control_s_axi_n_102}),
        .\addr_reg[48]_0 ({inst_krnl_output_stage_control_s_axi_n_103,inst_krnl_output_stage_control_s_axi_n_104,inst_krnl_output_stage_control_s_axi_n_105,inst_krnl_output_stage_control_s_axi_n_106,inst_krnl_output_stage_control_s_axi_n_107,inst_krnl_output_stage_control_s_axi_n_108,inst_krnl_output_stage_control_s_axi_n_109,inst_krnl_output_stage_control_s_axi_n_110}),
        .\addr_reg[4]_0 (inst_krnl_output_stage_control_s_axi_n_41),
        .\addr_reg[56]_0 ({inst_krnl_output_stage_control_s_axi_n_111,inst_krnl_output_stage_control_s_axi_n_112,inst_krnl_output_stage_control_s_axi_n_113,inst_krnl_output_stage_control_s_axi_n_114,inst_krnl_output_stage_control_s_axi_n_115,inst_krnl_output_stage_control_s_axi_n_116,inst_krnl_output_stage_control_s_axi_n_117,inst_krnl_output_stage_control_s_axi_n_118}),
        .\addr_reg[5]_0 (inst_krnl_output_stage_control_s_axi_n_40),
        .\addr_reg[63]_0 ({inst_krnl_output_stage_control_s_axi_n_119,inst_krnl_output_stage_control_s_axi_n_120,inst_krnl_output_stage_control_s_axi_n_121,inst_krnl_output_stage_control_s_axi_n_122,inst_krnl_output_stage_control_s_axi_n_123,inst_krnl_output_stage_control_s_axi_n_124,inst_krnl_output_stage_control_s_axi_n_125}),
        .\addr_reg[6]_0 (inst_krnl_output_stage_control_s_axi_n_39),
        .\addr_reg[7]_0 (inst_krnl_output_stage_control_s_axi_n_38),
        .\addr_reg[8]_0 (inst_krnl_output_stage_control_s_axi_n_37),
        .ap_clk(ap_clk),
        .ap_idle(ap_idle),
        .ap_start(ap_start),
        .ap_start_pulse(ap_start_pulse),
        .ap_start_r(ap_start_r),
        .areset(areset),
        .awvalid_r_reg_0(awvalid_r_reg),
        .\count_r_reg[7] (inst_register_slice_n_2),
        .is_zero_r_reg(is_zero_r_reg),
        .is_zero_r_reg_0(inst_axi_write_master_n_65),
        .is_zero_r_reg_1(inst_axi_write_master_n_67),
        .is_zero_r_reg_2(m_axi_gmem_WVALID),
        .m_axi_gmem_AWADDR(m_axi_gmem_AWADDR),
        .m_axi_gmem_AWLEN(m_axi_gmem_AWLEN),
        .m_axi_gmem_AWREADY(m_axi_gmem_AWREADY),
        .m_axi_gmem_BVALID(m_axi_gmem_BVALID),
        .m_axi_gmem_WREADY(m_axi_gmem_WREADY),
        .\num_transactions_reg[15]_0 ({inst_krnl_output_stage_control_s_axi_n_55,inst_krnl_output_stage_control_s_axi_n_56,inst_krnl_output_stage_control_s_axi_n_57,inst_krnl_output_stage_control_s_axi_n_58,inst_krnl_output_stage_control_s_axi_n_59,inst_krnl_output_stage_control_s_axi_n_60,inst_krnl_output_stage_control_s_axi_n_61,inst_krnl_output_stage_control_s_axi_n_62}),
        .\num_transactions_reg[23]_0 ({inst_krnl_output_stage_control_s_axi_n_47,inst_krnl_output_stage_control_s_axi_n_48,inst_krnl_output_stage_control_s_axi_n_49,inst_krnl_output_stage_control_s_axi_n_50,inst_krnl_output_stage_control_s_axi_n_51,inst_krnl_output_stage_control_s_axi_n_52,inst_krnl_output_stage_control_s_axi_n_53,inst_krnl_output_stage_control_s_axi_n_54}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_control_s_axi inst_krnl_output_stage_control_s_axi
       (.D({inst_krnl_output_stage_control_s_axi_n_1,inst_krnl_output_stage_control_s_axi_n_2,inst_krnl_output_stage_control_s_axi_n_3,inst_krnl_output_stage_control_s_axi_n_4,inst_krnl_output_stage_control_s_axi_n_5,inst_krnl_output_stage_control_s_axi_n_6,inst_krnl_output_stage_control_s_axi_n_7,final_burst_len0}),
        .\FSM_onehot_wstate_reg[1]_0 (\FSM_onehot_wstate_reg[1] ),
        .FSM_sequential_rstate_reg_0(FSM_sequential_rstate_reg),
        .O({inst_krnl_output_stage_control_s_axi_n_71,inst_krnl_output_stage_control_s_axi_n_72,inst_krnl_output_stage_control_s_axi_n_73,inst_krnl_output_stage_control_s_axi_n_74,inst_krnl_output_stage_control_s_axi_n_75,inst_krnl_output_stage_control_s_axi_n_76,inst_krnl_output_stage_control_s_axi_n_77,inst_krnl_output_stage_control_s_axi_n_78}),
        .Q(ctrl_length),
        .S({inst_krnl_output_stage_control_s_axi_n_63,inst_krnl_output_stage_control_s_axi_n_64,inst_krnl_output_stage_control_s_axi_n_65,inst_krnl_output_stage_control_s_axi_n_66,inst_krnl_output_stage_control_s_axi_n_67,inst_krnl_output_stage_control_s_axi_n_68,inst_krnl_output_stage_control_s_axi_n_69,inst_krnl_output_stage_control_s_axi_n_70}),
        .\addr_reg[0] (inst_krnl_output_stage_control_s_axi_n_45),
        .\addr_reg[1] (inst_krnl_output_stage_control_s_axi_n_44),
        .\addr_reg[24] ({inst_krnl_output_stage_control_s_axi_n_79,inst_krnl_output_stage_control_s_axi_n_80,inst_krnl_output_stage_control_s_axi_n_81,inst_krnl_output_stage_control_s_axi_n_82,inst_krnl_output_stage_control_s_axi_n_83,inst_krnl_output_stage_control_s_axi_n_84,inst_krnl_output_stage_control_s_axi_n_85,inst_krnl_output_stage_control_s_axi_n_86}),
        .\addr_reg[2] (inst_krnl_output_stage_control_s_axi_n_43),
        .\addr_reg[32] ({inst_krnl_output_stage_control_s_axi_n_87,inst_krnl_output_stage_control_s_axi_n_88,inst_krnl_output_stage_control_s_axi_n_89,inst_krnl_output_stage_control_s_axi_n_90,inst_krnl_output_stage_control_s_axi_n_91,inst_krnl_output_stage_control_s_axi_n_92,inst_krnl_output_stage_control_s_axi_n_93,inst_krnl_output_stage_control_s_axi_n_94}),
        .\addr_reg[3] (inst_krnl_output_stage_control_s_axi_n_42),
        .\addr_reg[40] ({inst_krnl_output_stage_control_s_axi_n_95,inst_krnl_output_stage_control_s_axi_n_96,inst_krnl_output_stage_control_s_axi_n_97,inst_krnl_output_stage_control_s_axi_n_98,inst_krnl_output_stage_control_s_axi_n_99,inst_krnl_output_stage_control_s_axi_n_100,inst_krnl_output_stage_control_s_axi_n_101,inst_krnl_output_stage_control_s_axi_n_102}),
        .\addr_reg[48] ({inst_krnl_output_stage_control_s_axi_n_103,inst_krnl_output_stage_control_s_axi_n_104,inst_krnl_output_stage_control_s_axi_n_105,inst_krnl_output_stage_control_s_axi_n_106,inst_krnl_output_stage_control_s_axi_n_107,inst_krnl_output_stage_control_s_axi_n_108,inst_krnl_output_stage_control_s_axi_n_109,inst_krnl_output_stage_control_s_axi_n_110}),
        .\addr_reg[4] (inst_krnl_output_stage_control_s_axi_n_41),
        .\addr_reg[56] ({inst_krnl_output_stage_control_s_axi_n_111,inst_krnl_output_stage_control_s_axi_n_112,inst_krnl_output_stage_control_s_axi_n_113,inst_krnl_output_stage_control_s_axi_n_114,inst_krnl_output_stage_control_s_axi_n_115,inst_krnl_output_stage_control_s_axi_n_116,inst_krnl_output_stage_control_s_axi_n_117,inst_krnl_output_stage_control_s_axi_n_118}),
        .\addr_reg[5] (inst_krnl_output_stage_control_s_axi_n_40),
        .\addr_reg[63] ({inst_krnl_output_stage_control_s_axi_n_119,inst_krnl_output_stage_control_s_axi_n_120,inst_krnl_output_stage_control_s_axi_n_121,inst_krnl_output_stage_control_s_axi_n_122,inst_krnl_output_stage_control_s_axi_n_123,inst_krnl_output_stage_control_s_axi_n_124,inst_krnl_output_stage_control_s_axi_n_125}),
        .\addr_reg[6] (inst_krnl_output_stage_control_s_axi_n_39),
        .\addr_reg[7] (inst_krnl_output_stage_control_s_axi_n_38),
        .\addr_reg[8] (inst_krnl_output_stage_control_s_axi_n_37),
        .ap_clk(ap_clk),
        .ap_idle(ap_idle),
        .ap_start(ap_start),
        .ap_start_pulse(ap_start_pulse),
        .ap_start_r(ap_start_r),
        .areset(areset),
        .int_ap_start_reg_0(inst_axi_write_master_n_65),
        .\int_size_reg[23]_0 ({inst_krnl_output_stage_control_s_axi_n_55,inst_krnl_output_stage_control_s_axi_n_56,inst_krnl_output_stage_control_s_axi_n_57,inst_krnl_output_stage_control_s_axi_n_58,inst_krnl_output_stage_control_s_axi_n_59,inst_krnl_output_stage_control_s_axi_n_60,inst_krnl_output_stage_control_s_axi_n_61,inst_krnl_output_stage_control_s_axi_n_62}),
        .\int_size_reg[31]_0 ({inst_krnl_output_stage_control_s_axi_n_47,inst_krnl_output_stage_control_s_axi_n_48,inst_krnl_output_stage_control_s_axi_n_49,inst_krnl_output_stage_control_s_axi_n_50,inst_krnl_output_stage_control_s_axi_n_51,inst_krnl_output_stage_control_s_axi_n_52,inst_krnl_output_stage_control_s_axi_n_53,inst_krnl_output_stage_control_s_axi_n_54}),
        .m_axi_gmem_AWADDR(m_axi_gmem_AWADDR),
        .m_axi_gmem_BVALID(m_axi_gmem_BVALID),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_register_slice inst_register_slice
       (.Q({m_axi_gmem_WVALID,p1_TREADY}),
        .ap_clk(ap_clk),
        .ap_idle(ap_idle),
        .areset(areset),
        .m_axi_gmem_WDATA(m_axi_gmem_WDATA),
        .m_axi_gmem_WREADY(m_axi_gmem_WREADY),
        .p1_TDATA(p1_TDATA),
        .p1_TVALID(p1_TVALID),
        .\state_reg[1]_0 (inst_register_slice_n_2));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_register_slice
   (Q,
    \state_reg[1]_0 ,
    m_axi_gmem_WDATA,
    m_axi_gmem_WREADY,
    areset,
    ap_idle,
    p1_TVALID,
    p1_TDATA,
    ap_clk);
  output [1:0]Q;
  output \state_reg[1]_0 ;
  output [31:0]m_axi_gmem_WDATA;
  input m_axi_gmem_WREADY;
  input areset;
  input ap_idle;
  input p1_TVALID;
  input [31:0]p1_TDATA;
  input ap_clk;

  wire [1:0]Q;
  wire ap_clk;
  wire ap_idle;
  wire areset;
  wire [31:0]m_axi_gmem_WDATA;
  wire m_axi_gmem_WREADY;
  wire [31:0]p1_TDATA;
  wire p1_TVALID;
  wire [31:0]p_1_in;
  wire \primary_data[31]_i_1_n_0 ;
  wire [31:0]secondary_data;
  wire \secondary_data[31]_i_1_n_0 ;
  wire [1:0]state;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg[1]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count_r[7]_i_3 
       (.I0(Q[1]),
        .I1(m_axi_gmem_WREADY),
        .O(\state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[0]_i_1 
       (.I0(secondary_data[0]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[10]_i_1 
       (.I0(secondary_data[10]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[10]),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[11]_i_1 
       (.I0(secondary_data[11]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[11]),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[12]_i_1 
       (.I0(secondary_data[12]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[12]),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[13]_i_1 
       (.I0(secondary_data[13]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[13]),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[14]_i_1 
       (.I0(secondary_data[14]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[14]),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[15]_i_1 
       (.I0(secondary_data[15]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[15]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[16]_i_1 
       (.I0(secondary_data[16]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[16]),
        .O(p_1_in[16]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[17]_i_1 
       (.I0(secondary_data[17]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[17]),
        .O(p_1_in[17]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[18]_i_1 
       (.I0(secondary_data[18]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[18]),
        .O(p_1_in[18]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[19]_i_1 
       (.I0(secondary_data[19]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[19]),
        .O(p_1_in[19]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[1]_i_1 
       (.I0(secondary_data[1]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[1]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[20]_i_1 
       (.I0(secondary_data[20]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[20]),
        .O(p_1_in[20]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[21]_i_1 
       (.I0(secondary_data[21]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[21]),
        .O(p_1_in[21]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[22]_i_1 
       (.I0(secondary_data[22]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[22]),
        .O(p_1_in[22]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[23]_i_1 
       (.I0(secondary_data[23]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[23]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[24]_i_1 
       (.I0(secondary_data[24]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[24]),
        .O(p_1_in[24]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[25]_i_1 
       (.I0(secondary_data[25]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[25]),
        .O(p_1_in[25]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[26]_i_1 
       (.I0(secondary_data[26]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[26]),
        .O(p_1_in[26]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[27]_i_1 
       (.I0(secondary_data[27]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[27]),
        .O(p_1_in[27]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[28]_i_1 
       (.I0(secondary_data[28]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[28]),
        .O(p_1_in[28]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[29]_i_1 
       (.I0(secondary_data[29]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[29]),
        .O(p_1_in[29]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[2]_i_1 
       (.I0(secondary_data[2]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[2]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[30]_i_1 
       (.I0(secondary_data[30]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[30]),
        .O(p_1_in[30]));
  LUT3 #(
    .INIT(8'hCA)) 
    \primary_data[31]_i_1 
       (.I0(Q[0]),
        .I1(m_axi_gmem_WREADY),
        .I2(Q[1]),
        .O(\primary_data[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[31]_i_2 
       (.I0(secondary_data[31]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[31]),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[3]_i_1 
       (.I0(secondary_data[3]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[4]_i_1 
       (.I0(secondary_data[4]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[4]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[5]_i_1 
       (.I0(secondary_data[5]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[5]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[6]_i_1 
       (.I0(secondary_data[6]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[6]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[7]_i_1 
       (.I0(secondary_data[7]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[7]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[8]_i_1 
       (.I0(secondary_data[8]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[8]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hFBAA08AA)) 
    \primary_data[9]_i_1 
       (.I0(secondary_data[9]),
        .I1(Q[1]),
        .I2(m_axi_gmem_WREADY),
        .I3(Q[0]),
        .I4(p1_TDATA[9]),
        .O(p_1_in[9]));
  FDRE \primary_data_reg[0] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(m_axi_gmem_WDATA[0]),
        .R(1'b0));
  FDRE \primary_data_reg[10] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(m_axi_gmem_WDATA[10]),
        .R(1'b0));
  FDRE \primary_data_reg[11] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(m_axi_gmem_WDATA[11]),
        .R(1'b0));
  FDRE \primary_data_reg[12] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(m_axi_gmem_WDATA[12]),
        .R(1'b0));
  FDRE \primary_data_reg[13] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(m_axi_gmem_WDATA[13]),
        .R(1'b0));
  FDRE \primary_data_reg[14] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(m_axi_gmem_WDATA[14]),
        .R(1'b0));
  FDRE \primary_data_reg[15] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(m_axi_gmem_WDATA[15]),
        .R(1'b0));
  FDRE \primary_data_reg[16] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(m_axi_gmem_WDATA[16]),
        .R(1'b0));
  FDRE \primary_data_reg[17] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(m_axi_gmem_WDATA[17]),
        .R(1'b0));
  FDRE \primary_data_reg[18] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(m_axi_gmem_WDATA[18]),
        .R(1'b0));
  FDRE \primary_data_reg[19] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[19]),
        .Q(m_axi_gmem_WDATA[19]),
        .R(1'b0));
  FDRE \primary_data_reg[1] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(m_axi_gmem_WDATA[1]),
        .R(1'b0));
  FDRE \primary_data_reg[20] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[20]),
        .Q(m_axi_gmem_WDATA[20]),
        .R(1'b0));
  FDRE \primary_data_reg[21] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[21]),
        .Q(m_axi_gmem_WDATA[21]),
        .R(1'b0));
  FDRE \primary_data_reg[22] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[22]),
        .Q(m_axi_gmem_WDATA[22]),
        .R(1'b0));
  FDRE \primary_data_reg[23] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[23]),
        .Q(m_axi_gmem_WDATA[23]),
        .R(1'b0));
  FDRE \primary_data_reg[24] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[24]),
        .Q(m_axi_gmem_WDATA[24]),
        .R(1'b0));
  FDRE \primary_data_reg[25] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[25]),
        .Q(m_axi_gmem_WDATA[25]),
        .R(1'b0));
  FDRE \primary_data_reg[26] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[26]),
        .Q(m_axi_gmem_WDATA[26]),
        .R(1'b0));
  FDRE \primary_data_reg[27] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[27]),
        .Q(m_axi_gmem_WDATA[27]),
        .R(1'b0));
  FDRE \primary_data_reg[28] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[28]),
        .Q(m_axi_gmem_WDATA[28]),
        .R(1'b0));
  FDRE \primary_data_reg[29] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[29]),
        .Q(m_axi_gmem_WDATA[29]),
        .R(1'b0));
  FDRE \primary_data_reg[2] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(m_axi_gmem_WDATA[2]),
        .R(1'b0));
  FDRE \primary_data_reg[30] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[30]),
        .Q(m_axi_gmem_WDATA[30]),
        .R(1'b0));
  FDRE \primary_data_reg[31] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[31]),
        .Q(m_axi_gmem_WDATA[31]),
        .R(1'b0));
  FDRE \primary_data_reg[3] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(m_axi_gmem_WDATA[3]),
        .R(1'b0));
  FDRE \primary_data_reg[4] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(m_axi_gmem_WDATA[4]),
        .R(1'b0));
  FDRE \primary_data_reg[5] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(m_axi_gmem_WDATA[5]),
        .R(1'b0));
  FDRE \primary_data_reg[6] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(m_axi_gmem_WDATA[6]),
        .R(1'b0));
  FDRE \primary_data_reg[7] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(m_axi_gmem_WDATA[7]),
        .R(1'b0));
  FDRE \primary_data_reg[8] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(m_axi_gmem_WDATA[8]),
        .R(1'b0));
  FDRE \primary_data_reg[9] 
       (.C(ap_clk),
        .CE(\primary_data[31]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(m_axi_gmem_WDATA[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \secondary_data[31]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\secondary_data[31]_i_1_n_0 ));
  FDRE \secondary_data_reg[0] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[0]),
        .Q(secondary_data[0]),
        .R(1'b0));
  FDRE \secondary_data_reg[10] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[10]),
        .Q(secondary_data[10]),
        .R(1'b0));
  FDRE \secondary_data_reg[11] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[11]),
        .Q(secondary_data[11]),
        .R(1'b0));
  FDRE \secondary_data_reg[12] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[12]),
        .Q(secondary_data[12]),
        .R(1'b0));
  FDRE \secondary_data_reg[13] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[13]),
        .Q(secondary_data[13]),
        .R(1'b0));
  FDRE \secondary_data_reg[14] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[14]),
        .Q(secondary_data[14]),
        .R(1'b0));
  FDRE \secondary_data_reg[15] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[15]),
        .Q(secondary_data[15]),
        .R(1'b0));
  FDRE \secondary_data_reg[16] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[16]),
        .Q(secondary_data[16]),
        .R(1'b0));
  FDRE \secondary_data_reg[17] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[17]),
        .Q(secondary_data[17]),
        .R(1'b0));
  FDRE \secondary_data_reg[18] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[18]),
        .Q(secondary_data[18]),
        .R(1'b0));
  FDRE \secondary_data_reg[19] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[19]),
        .Q(secondary_data[19]),
        .R(1'b0));
  FDRE \secondary_data_reg[1] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[1]),
        .Q(secondary_data[1]),
        .R(1'b0));
  FDRE \secondary_data_reg[20] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[20]),
        .Q(secondary_data[20]),
        .R(1'b0));
  FDRE \secondary_data_reg[21] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[21]),
        .Q(secondary_data[21]),
        .R(1'b0));
  FDRE \secondary_data_reg[22] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[22]),
        .Q(secondary_data[22]),
        .R(1'b0));
  FDRE \secondary_data_reg[23] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[23]),
        .Q(secondary_data[23]),
        .R(1'b0));
  FDRE \secondary_data_reg[24] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[24]),
        .Q(secondary_data[24]),
        .R(1'b0));
  FDRE \secondary_data_reg[25] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[25]),
        .Q(secondary_data[25]),
        .R(1'b0));
  FDRE \secondary_data_reg[26] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[26]),
        .Q(secondary_data[26]),
        .R(1'b0));
  FDRE \secondary_data_reg[27] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[27]),
        .Q(secondary_data[27]),
        .R(1'b0));
  FDRE \secondary_data_reg[28] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[28]),
        .Q(secondary_data[28]),
        .R(1'b0));
  FDRE \secondary_data_reg[29] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[29]),
        .Q(secondary_data[29]),
        .R(1'b0));
  FDRE \secondary_data_reg[2] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[2]),
        .Q(secondary_data[2]),
        .R(1'b0));
  FDRE \secondary_data_reg[30] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[30]),
        .Q(secondary_data[30]),
        .R(1'b0));
  FDRE \secondary_data_reg[31] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[31]),
        .Q(secondary_data[31]),
        .R(1'b0));
  FDRE \secondary_data_reg[3] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[3]),
        .Q(secondary_data[3]),
        .R(1'b0));
  FDRE \secondary_data_reg[4] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[4]),
        .Q(secondary_data[4]),
        .R(1'b0));
  FDRE \secondary_data_reg[5] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[5]),
        .Q(secondary_data[5]),
        .R(1'b0));
  FDRE \secondary_data_reg[6] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[6]),
        .Q(secondary_data[6]),
        .R(1'b0));
  FDRE \secondary_data_reg[7] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[7]),
        .Q(secondary_data[7]),
        .R(1'b0));
  FDRE \secondary_data_reg[8] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[8]),
        .Q(secondary_data[8]),
        .R(1'b0));
  FDRE \secondary_data_reg[9] 
       (.C(ap_clk),
        .CE(\secondary_data[31]_i_1_n_0 ),
        .D(p1_TDATA[9]),
        .Q(secondary_data[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \state[0]_i_1 
       (.I0(p1_TVALID),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(m_axi_gmem_WREADY),
        .O(state[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \state[1]_i_1 
       (.I0(areset),
        .I1(ap_idle),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hFC4C)) 
    \state[1]_i_2 
       (.I0(m_axi_gmem_WREADY),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p1_TVALID),
        .O(state[1]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(state[0]),
        .Q(Q[0]),
        .R(\state[1]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(state[1]),
        .Q(Q[1]),
        .R(\state[1]_i_1_n_0 ));
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
