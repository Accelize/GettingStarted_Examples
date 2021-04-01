// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Mar 30 13:12:48 2021
// Host        : ip-172-31-9-235.eu-west-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cl_k1_0_sim_netlist.v
// Design      : cl_k1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flgb2104-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cl_k1_0,krnl_input_stage_rtl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "krnl_input_stage_rtl,Vivado 2020.2" *) 
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
    p0_TDATA,
    p0_TVALID,
    p0_TREADY,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst_n, ASSOCIATED_BUSIF m_axi_gmem:s_axi_control:p0, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, INSERT_VIP 0" *) input ap_clk;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 p0 TDATA" *) output [31:0]p0_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 p0 TVALID" *) output p0_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 p0 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, LAYERED_METADATA undef, INSERT_VIP 0" *) input p0_TREADY;
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
  wire [63:0]m_axi_gmem_ARADDR;
  wire [7:0]m_axi_gmem_ARLEN;
  wire m_axi_gmem_ARREADY;
  wire m_axi_gmem_ARVALID;
  wire [31:0]m_axi_gmem_RDATA;
  wire [0:0]m_axi_gmem_RID;
  wire m_axi_gmem_RLAST;
  wire m_axi_gmem_RVALID;
  wire [31:0]p0_TDATA;
  wire p0_TREADY;
  wire p0_TVALID;
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

  assign m_axi_gmem_ARBURST[1] = \<const0> ;
  assign m_axi_gmem_ARBURST[0] = \<const1> ;
  assign m_axi_gmem_ARCACHE[3] = \<const0> ;
  assign m_axi_gmem_ARCACHE[2] = \<const0> ;
  assign m_axi_gmem_ARCACHE[1] = \<const1> ;
  assign m_axi_gmem_ARCACHE[0] = \<const1> ;
  assign m_axi_gmem_ARID[0] = \<const0> ;
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
  assign m_axi_gmem_ARSIZE[1] = \<const1> ;
  assign m_axi_gmem_ARSIZE[0] = \<const0> ;
  assign m_axi_gmem_AWADDR[63] = \<const0> ;
  assign m_axi_gmem_AWADDR[62] = \<const0> ;
  assign m_axi_gmem_AWADDR[61] = \<const0> ;
  assign m_axi_gmem_AWADDR[60] = \<const0> ;
  assign m_axi_gmem_AWADDR[59] = \<const0> ;
  assign m_axi_gmem_AWADDR[58] = \<const0> ;
  assign m_axi_gmem_AWADDR[57] = \<const0> ;
  assign m_axi_gmem_AWADDR[56] = \<const0> ;
  assign m_axi_gmem_AWADDR[55] = \<const0> ;
  assign m_axi_gmem_AWADDR[54] = \<const0> ;
  assign m_axi_gmem_AWADDR[53] = \<const0> ;
  assign m_axi_gmem_AWADDR[52] = \<const0> ;
  assign m_axi_gmem_AWADDR[51] = \<const0> ;
  assign m_axi_gmem_AWADDR[50] = \<const0> ;
  assign m_axi_gmem_AWADDR[49] = \<const0> ;
  assign m_axi_gmem_AWADDR[48] = \<const0> ;
  assign m_axi_gmem_AWADDR[47] = \<const0> ;
  assign m_axi_gmem_AWADDR[46] = \<const0> ;
  assign m_axi_gmem_AWADDR[45] = \<const0> ;
  assign m_axi_gmem_AWADDR[44] = \<const0> ;
  assign m_axi_gmem_AWADDR[43] = \<const0> ;
  assign m_axi_gmem_AWADDR[42] = \<const0> ;
  assign m_axi_gmem_AWADDR[41] = \<const0> ;
  assign m_axi_gmem_AWADDR[40] = \<const0> ;
  assign m_axi_gmem_AWADDR[39] = \<const0> ;
  assign m_axi_gmem_AWADDR[38] = \<const0> ;
  assign m_axi_gmem_AWADDR[37] = \<const0> ;
  assign m_axi_gmem_AWADDR[36] = \<const0> ;
  assign m_axi_gmem_AWADDR[35] = \<const0> ;
  assign m_axi_gmem_AWADDR[34] = \<const0> ;
  assign m_axi_gmem_AWADDR[33] = \<const0> ;
  assign m_axi_gmem_AWADDR[32] = \<const0> ;
  assign m_axi_gmem_AWADDR[31] = \<const0> ;
  assign m_axi_gmem_AWADDR[30] = \<const0> ;
  assign m_axi_gmem_AWADDR[29] = \<const0> ;
  assign m_axi_gmem_AWADDR[28] = \<const0> ;
  assign m_axi_gmem_AWADDR[27] = \<const0> ;
  assign m_axi_gmem_AWADDR[26] = \<const0> ;
  assign m_axi_gmem_AWADDR[25] = \<const0> ;
  assign m_axi_gmem_AWADDR[24] = \<const0> ;
  assign m_axi_gmem_AWADDR[23] = \<const0> ;
  assign m_axi_gmem_AWADDR[22] = \<const0> ;
  assign m_axi_gmem_AWADDR[21] = \<const0> ;
  assign m_axi_gmem_AWADDR[20] = \<const0> ;
  assign m_axi_gmem_AWADDR[19] = \<const0> ;
  assign m_axi_gmem_AWADDR[18] = \<const0> ;
  assign m_axi_gmem_AWADDR[17] = \<const0> ;
  assign m_axi_gmem_AWADDR[16] = \<const0> ;
  assign m_axi_gmem_AWADDR[15] = \<const0> ;
  assign m_axi_gmem_AWADDR[14] = \<const0> ;
  assign m_axi_gmem_AWADDR[13] = \<const0> ;
  assign m_axi_gmem_AWADDR[12] = \<const0> ;
  assign m_axi_gmem_AWADDR[11] = \<const0> ;
  assign m_axi_gmem_AWADDR[10] = \<const0> ;
  assign m_axi_gmem_AWADDR[9] = \<const0> ;
  assign m_axi_gmem_AWADDR[8] = \<const0> ;
  assign m_axi_gmem_AWADDR[7] = \<const0> ;
  assign m_axi_gmem_AWADDR[6] = \<const0> ;
  assign m_axi_gmem_AWADDR[5] = \<const0> ;
  assign m_axi_gmem_AWADDR[4] = \<const0> ;
  assign m_axi_gmem_AWADDR[3] = \<const0> ;
  assign m_axi_gmem_AWADDR[2] = \<const0> ;
  assign m_axi_gmem_AWADDR[1] = \<const0> ;
  assign m_axi_gmem_AWADDR[0] = \<const0> ;
  assign m_axi_gmem_AWBURST[1] = \<const0> ;
  assign m_axi_gmem_AWBURST[0] = \<const1> ;
  assign m_axi_gmem_AWCACHE[3] = \<const0> ;
  assign m_axi_gmem_AWCACHE[2] = \<const0> ;
  assign m_axi_gmem_AWCACHE[1] = \<const1> ;
  assign m_axi_gmem_AWCACHE[0] = \<const1> ;
  assign m_axi_gmem_AWID[0] = \<const0> ;
  assign m_axi_gmem_AWLEN[7] = \<const0> ;
  assign m_axi_gmem_AWLEN[6] = \<const0> ;
  assign m_axi_gmem_AWLEN[5] = \<const0> ;
  assign m_axi_gmem_AWLEN[4] = \<const0> ;
  assign m_axi_gmem_AWLEN[3] = \<const0> ;
  assign m_axi_gmem_AWLEN[2] = \<const0> ;
  assign m_axi_gmem_AWLEN[1] = \<const0> ;
  assign m_axi_gmem_AWLEN[0] = \<const0> ;
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
  assign m_axi_gmem_AWSIZE[1] = \<const0> ;
  assign m_axi_gmem_AWSIZE[0] = \<const0> ;
  assign m_axi_gmem_AWVALID = \<const0> ;
  assign m_axi_gmem_BREADY = \<const0> ;
  assign m_axi_gmem_RREADY = \<const1> ;
  assign m_axi_gmem_WDATA[31] = \<const0> ;
  assign m_axi_gmem_WDATA[30] = \<const0> ;
  assign m_axi_gmem_WDATA[29] = \<const0> ;
  assign m_axi_gmem_WDATA[28] = \<const0> ;
  assign m_axi_gmem_WDATA[27] = \<const0> ;
  assign m_axi_gmem_WDATA[26] = \<const0> ;
  assign m_axi_gmem_WDATA[25] = \<const0> ;
  assign m_axi_gmem_WDATA[24] = \<const0> ;
  assign m_axi_gmem_WDATA[23] = \<const0> ;
  assign m_axi_gmem_WDATA[22] = \<const0> ;
  assign m_axi_gmem_WDATA[21] = \<const0> ;
  assign m_axi_gmem_WDATA[20] = \<const0> ;
  assign m_axi_gmem_WDATA[19] = \<const0> ;
  assign m_axi_gmem_WDATA[18] = \<const0> ;
  assign m_axi_gmem_WDATA[17] = \<const0> ;
  assign m_axi_gmem_WDATA[16] = \<const0> ;
  assign m_axi_gmem_WDATA[15] = \<const0> ;
  assign m_axi_gmem_WDATA[14] = \<const0> ;
  assign m_axi_gmem_WDATA[13] = \<const0> ;
  assign m_axi_gmem_WDATA[12] = \<const0> ;
  assign m_axi_gmem_WDATA[11] = \<const0> ;
  assign m_axi_gmem_WDATA[10] = \<const0> ;
  assign m_axi_gmem_WDATA[9] = \<const0> ;
  assign m_axi_gmem_WDATA[8] = \<const0> ;
  assign m_axi_gmem_WDATA[7] = \<const0> ;
  assign m_axi_gmem_WDATA[6] = \<const0> ;
  assign m_axi_gmem_WDATA[5] = \<const0> ;
  assign m_axi_gmem_WDATA[4] = \<const0> ;
  assign m_axi_gmem_WDATA[3] = \<const0> ;
  assign m_axi_gmem_WDATA[2] = \<const0> ;
  assign m_axi_gmem_WDATA[1] = \<const0> ;
  assign m_axi_gmem_WDATA[0] = \<const0> ;
  assign m_axi_gmem_WLAST = \<const0> ;
  assign m_axi_gmem_WSTRB[3] = \<const0> ;
  assign m_axi_gmem_WSTRB[2] = \<const0> ;
  assign m_axi_gmem_WSTRB[1] = \<const0> ;
  assign m_axi_gmem_WSTRB[0] = \<const0> ;
  assign m_axi_gmem_WVALID = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl inst
       (.\FSM_onehot_wstate_reg[1] (s_axi_control_WREADY),
        .FSM_sequential_rstate_reg(s_axi_control_RVALID),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .arvalid_r_reg(m_axi_gmem_ARVALID),
        .m_axi_gmem_ARADDR(m_axi_gmem_ARADDR),
        .m_axi_gmem_ARLEN(m_axi_gmem_ARLEN),
        .m_axi_gmem_ARREADY(m_axi_gmem_ARREADY),
        .m_axi_gmem_RDATA(m_axi_gmem_RDATA),
        .m_axi_gmem_RID(m_axi_gmem_RID),
        .m_axi_gmem_RLAST(m_axi_gmem_RLAST),
        .m_axi_gmem_RVALID(m_axi_gmem_RVALID),
        .p0_TDATA(p0_TDATA),
        .p0_TREADY(p0_TREADY),
        .p0_TVALID(p0_TVALID),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl
   (s_axi_control_BVALID,
    \FSM_onehot_wstate_reg[1] ,
    p0_TDATA,
    s_axi_control_RDATA,
    m_axi_gmem_ARADDR,
    s_axi_control_AWREADY,
    FSM_sequential_rstate_reg,
    s_axi_control_ARREADY,
    arvalid_r_reg,
    p0_TVALID,
    m_axi_gmem_ARLEN,
    ap_clk,
    m_axi_gmem_RDATA,
    p0_TREADY,
    s_axi_control_AWADDR,
    s_axi_control_WDATA,
    s_axi_control_RREADY,
    s_axi_control_ARVALID,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    s_axi_control_ARADDR,
    m_axi_gmem_ARREADY,
    m_axi_gmem_RVALID,
    m_axi_gmem_RID,
    m_axi_gmem_RLAST,
    ap_rst_n);
  output s_axi_control_BVALID;
  output \FSM_onehot_wstate_reg[1] ;
  output [31:0]p0_TDATA;
  output [31:0]s_axi_control_RDATA;
  output [63:0]m_axi_gmem_ARADDR;
  output s_axi_control_AWREADY;
  output FSM_sequential_rstate_reg;
  output s_axi_control_ARREADY;
  output arvalid_r_reg;
  output p0_TVALID;
  output [7:0]m_axi_gmem_ARLEN;
  input ap_clk;
  input [31:0]m_axi_gmem_RDATA;
  input p0_TREADY;
  input [5:0]s_axi_control_AWADDR;
  input [31:0]s_axi_control_WDATA;
  input s_axi_control_RREADY;
  input s_axi_control_ARVALID;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [5:0]s_axi_control_ARADDR;
  input m_axi_gmem_ARREADY;
  input m_axi_gmem_RVALID;
  input [0:0]m_axi_gmem_RID;
  input m_axi_gmem_RLAST;
  input ap_rst_n;

  wire \FSM_onehot_wstate_reg[1] ;
  wire FSM_sequential_rstate_reg;
  wire ap_clk;
  wire ap_rst_n;
  wire arvalid_r_reg;
  wire [63:0]m_axi_gmem_ARADDR;
  wire [7:0]m_axi_gmem_ARLEN;
  wire m_axi_gmem_ARREADY;
  wire [31:0]m_axi_gmem_RDATA;
  wire [0:0]m_axi_gmem_RID;
  wire m_axi_gmem_RLAST;
  wire m_axi_gmem_RVALID;
  wire [31:0]p0_TDATA;
  wire p0_TREADY;
  wire p0_TVALID;
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_int inst_krnl_input_stage_rtl_int
       (.\FSM_onehot_wstate_reg[1] (\FSM_onehot_wstate_reg[1] ),
        .FSM_sequential_rstate_reg(FSM_sequential_rstate_reg),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .arvalid_r_reg(arvalid_r_reg),
        .m_axi_gmem_ARADDR(m_axi_gmem_ARADDR),
        .m_axi_gmem_ARLEN(m_axi_gmem_ARLEN),
        .m_axi_gmem_ARREADY(m_axi_gmem_ARREADY),
        .m_axi_gmem_RDATA(m_axi_gmem_RDATA),
        .m_axi_gmem_RID(m_axi_gmem_RID),
        .m_axi_gmem_RLAST(m_axi_gmem_RLAST),
        .m_axi_gmem_RVALID(m_axi_gmem_RVALID),
        .p0_TDATA(p0_TDATA),
        .p0_TREADY(p0_TREADY),
        .p0_TVALID(p0_TVALID),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_axi_read_master
   (m_axi_gmem_ARADDR,
    arvalid_r_reg_0,
    m_axi_gmem_ARLEN,
    \gen_fwft.empty_fwft_i_reg ,
    ap_start_pulse,
    ap_clk,
    areset,
    \addr_reg[0][0]_0 ,
    \addr_reg[0][1]_0 ,
    \addr_reg[0][2]_0 ,
    \addr_reg[0][3]_0 ,
    \addr_reg[0][4]_0 ,
    \addr_reg[0][5]_0 ,
    \addr_reg[0][6]_0 ,
    \addr_reg[0][7]_0 ,
    \addr_reg[0][8]_0 ,
    O,
    \addr_reg[0][24]_0 ,
    \addr_reg[0][32]_0 ,
    \addr_reg[0][40]_0 ,
    \addr_reg[0][48]_0 ,
    \addr_reg[0][56]_0 ,
    \addr_reg[0][63]_0 ,
    Q,
    S,
    \num_transactions_reg[15]_0 ,
    \num_transactions_reg[23]_0 ,
    m_axi_gmem_ARREADY,
    ap_start,
    ap_start_r,
    m_axi_gmem_RVALID,
    m_axi_gmem_RID,
    m_axi_gmem_RLAST,
    prog_full,
    empty,
    done,
    D);
  output [63:0]m_axi_gmem_ARADDR;
  output arvalid_r_reg_0;
  output [7:0]m_axi_gmem_ARLEN;
  output \gen_fwft.empty_fwft_i_reg ;
  input ap_start_pulse;
  input ap_clk;
  input areset;
  input \addr_reg[0][0]_0 ;
  input \addr_reg[0][1]_0 ;
  input \addr_reg[0][2]_0 ;
  input \addr_reg[0][3]_0 ;
  input \addr_reg[0][4]_0 ;
  input \addr_reg[0][5]_0 ;
  input \addr_reg[0][6]_0 ;
  input \addr_reg[0][7]_0 ;
  input \addr_reg[0][8]_0 ;
  input [7:0]O;
  input [7:0]\addr_reg[0][24]_0 ;
  input [7:0]\addr_reg[0][32]_0 ;
  input [7:0]\addr_reg[0][40]_0 ;
  input [7:0]\addr_reg[0][48]_0 ;
  input [7:0]\addr_reg[0][56]_0 ;
  input [6:0]\addr_reg[0][63]_0 ;
  input [22:0]Q;
  input [7:0]S;
  input [7:0]\num_transactions_reg[15]_0 ;
  input [7:0]\num_transactions_reg[23]_0 ;
  input m_axi_gmem_ARREADY;
  input ap_start;
  input ap_start_r;
  input m_axi_gmem_RVALID;
  input [0:0]m_axi_gmem_RID;
  input m_axi_gmem_RLAST;
  input prog_full;
  input empty;
  input done;
  input [7:0]D;

  wire [7:0]D;
  wire [7:0]O;
  wire [22:0]Q;
  wire [7:0]S;
  wire \addr_reg[0][0]_0 ;
  wire \addr_reg[0][1]_0 ;
  wire [7:0]\addr_reg[0][24]_0 ;
  wire \addr_reg[0][2]_0 ;
  wire [7:0]\addr_reg[0][32]_0 ;
  wire \addr_reg[0][3]_0 ;
  wire [7:0]\addr_reg[0][40]_0 ;
  wire [7:0]\addr_reg[0][48]_0 ;
  wire \addr_reg[0][4]_0 ;
  wire [7:0]\addr_reg[0][56]_0 ;
  wire \addr_reg[0][5]_0 ;
  wire [6:0]\addr_reg[0][63]_0 ;
  wire \addr_reg[0][6]_0 ;
  wire \addr_reg[0][7]_0 ;
  wire \addr_reg[0][8]_0 ;
  wire ap_clk;
  wire ap_start;
  wire ap_start_pulse;
  wire ap_start_r;
  wire ar_idle;
  wire areset;
  wire arvalid_r_reg_0;
  wire done;
  wire empty;
  wire [7:0]final_burst_len;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \inst_ar_to_r_transaction_cntr_n_0_[0] ;
  wire inst_ar_transaction_cntr_n_8;
  wire \inst_r_transaction_cntr_n_0_[0] ;
  wire \inst_r_transaction_cntr_n_1_[0] ;
  wire [63:0]m_axi_gmem_ARADDR;
  wire [7:0]m_axi_gmem_ARLEN;
  wire m_axi_gmem_ARREADY;
  wire [0:0]m_axi_gmem_RID;
  wire m_axi_gmem_RLAST;
  wire m_axi_gmem_RVALID;
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
  wire prog_full;
  wire read_done;
  wire sel;
  wire start;
  wire [7:7]NLW_num_transactions1_carry__1_CO_UNCONNECTED;

  LUT4 #(
    .INIT(16'h88F8)) 
    \addr[0][63]_i_1 
       (.I0(arvalid_r_reg_0),
        .I1(m_axi_gmem_ARREADY),
        .I2(ap_start),
        .I3(ap_start_r),
        .O(sel));
  FDRE \addr_reg[0][0] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][0]_0 ),
        .Q(m_axi_gmem_ARADDR[0]),
        .R(1'b0));
  FDRE \addr_reg[0][10] 
       (.C(ap_clk),
        .CE(sel),
        .D(O[1]),
        .Q(m_axi_gmem_ARADDR[10]),
        .R(1'b0));
  FDRE \addr_reg[0][11] 
       (.C(ap_clk),
        .CE(sel),
        .D(O[2]),
        .Q(m_axi_gmem_ARADDR[11]),
        .R(1'b0));
  FDRE \addr_reg[0][12] 
       (.C(ap_clk),
        .CE(sel),
        .D(O[3]),
        .Q(m_axi_gmem_ARADDR[12]),
        .R(1'b0));
  FDRE \addr_reg[0][13] 
       (.C(ap_clk),
        .CE(sel),
        .D(O[4]),
        .Q(m_axi_gmem_ARADDR[13]),
        .R(1'b0));
  FDRE \addr_reg[0][14] 
       (.C(ap_clk),
        .CE(sel),
        .D(O[5]),
        .Q(m_axi_gmem_ARADDR[14]),
        .R(1'b0));
  FDRE \addr_reg[0][15] 
       (.C(ap_clk),
        .CE(sel),
        .D(O[6]),
        .Q(m_axi_gmem_ARADDR[15]),
        .R(1'b0));
  FDRE \addr_reg[0][16] 
       (.C(ap_clk),
        .CE(sel),
        .D(O[7]),
        .Q(m_axi_gmem_ARADDR[16]),
        .R(1'b0));
  FDRE \addr_reg[0][17] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][24]_0 [0]),
        .Q(m_axi_gmem_ARADDR[17]),
        .R(1'b0));
  FDRE \addr_reg[0][18] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][24]_0 [1]),
        .Q(m_axi_gmem_ARADDR[18]),
        .R(1'b0));
  FDRE \addr_reg[0][19] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][24]_0 [2]),
        .Q(m_axi_gmem_ARADDR[19]),
        .R(1'b0));
  FDRE \addr_reg[0][1] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][1]_0 ),
        .Q(m_axi_gmem_ARADDR[1]),
        .R(1'b0));
  FDRE \addr_reg[0][20] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][24]_0 [3]),
        .Q(m_axi_gmem_ARADDR[20]),
        .R(1'b0));
  FDRE \addr_reg[0][21] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][24]_0 [4]),
        .Q(m_axi_gmem_ARADDR[21]),
        .R(1'b0));
  FDRE \addr_reg[0][22] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][24]_0 [5]),
        .Q(m_axi_gmem_ARADDR[22]),
        .R(1'b0));
  FDRE \addr_reg[0][23] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][24]_0 [6]),
        .Q(m_axi_gmem_ARADDR[23]),
        .R(1'b0));
  FDRE \addr_reg[0][24] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][24]_0 [7]),
        .Q(m_axi_gmem_ARADDR[24]),
        .R(1'b0));
  FDRE \addr_reg[0][25] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][32]_0 [0]),
        .Q(m_axi_gmem_ARADDR[25]),
        .R(1'b0));
  FDRE \addr_reg[0][26] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][32]_0 [1]),
        .Q(m_axi_gmem_ARADDR[26]),
        .R(1'b0));
  FDRE \addr_reg[0][27] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][32]_0 [2]),
        .Q(m_axi_gmem_ARADDR[27]),
        .R(1'b0));
  FDRE \addr_reg[0][28] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][32]_0 [3]),
        .Q(m_axi_gmem_ARADDR[28]),
        .R(1'b0));
  FDRE \addr_reg[0][29] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][32]_0 [4]),
        .Q(m_axi_gmem_ARADDR[29]),
        .R(1'b0));
  FDRE \addr_reg[0][2] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][2]_0 ),
        .Q(m_axi_gmem_ARADDR[2]),
        .R(1'b0));
  FDRE \addr_reg[0][30] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][32]_0 [5]),
        .Q(m_axi_gmem_ARADDR[30]),
        .R(1'b0));
  FDRE \addr_reg[0][31] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][32]_0 [6]),
        .Q(m_axi_gmem_ARADDR[31]),
        .R(1'b0));
  FDRE \addr_reg[0][32] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][32]_0 [7]),
        .Q(m_axi_gmem_ARADDR[32]),
        .R(1'b0));
  FDRE \addr_reg[0][33] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][40]_0 [0]),
        .Q(m_axi_gmem_ARADDR[33]),
        .R(1'b0));
  FDRE \addr_reg[0][34] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][40]_0 [1]),
        .Q(m_axi_gmem_ARADDR[34]),
        .R(1'b0));
  FDRE \addr_reg[0][35] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][40]_0 [2]),
        .Q(m_axi_gmem_ARADDR[35]),
        .R(1'b0));
  FDRE \addr_reg[0][36] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][40]_0 [3]),
        .Q(m_axi_gmem_ARADDR[36]),
        .R(1'b0));
  FDRE \addr_reg[0][37] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][40]_0 [4]),
        .Q(m_axi_gmem_ARADDR[37]),
        .R(1'b0));
  FDRE \addr_reg[0][38] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][40]_0 [5]),
        .Q(m_axi_gmem_ARADDR[38]),
        .R(1'b0));
  FDRE \addr_reg[0][39] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][40]_0 [6]),
        .Q(m_axi_gmem_ARADDR[39]),
        .R(1'b0));
  FDRE \addr_reg[0][3] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][3]_0 ),
        .Q(m_axi_gmem_ARADDR[3]),
        .R(1'b0));
  FDRE \addr_reg[0][40] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][40]_0 [7]),
        .Q(m_axi_gmem_ARADDR[40]),
        .R(1'b0));
  FDRE \addr_reg[0][41] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][48]_0 [0]),
        .Q(m_axi_gmem_ARADDR[41]),
        .R(1'b0));
  FDRE \addr_reg[0][42] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][48]_0 [1]),
        .Q(m_axi_gmem_ARADDR[42]),
        .R(1'b0));
  FDRE \addr_reg[0][43] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][48]_0 [2]),
        .Q(m_axi_gmem_ARADDR[43]),
        .R(1'b0));
  FDRE \addr_reg[0][44] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][48]_0 [3]),
        .Q(m_axi_gmem_ARADDR[44]),
        .R(1'b0));
  FDRE \addr_reg[0][45] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][48]_0 [4]),
        .Q(m_axi_gmem_ARADDR[45]),
        .R(1'b0));
  FDRE \addr_reg[0][46] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][48]_0 [5]),
        .Q(m_axi_gmem_ARADDR[46]),
        .R(1'b0));
  FDRE \addr_reg[0][47] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][48]_0 [6]),
        .Q(m_axi_gmem_ARADDR[47]),
        .R(1'b0));
  FDRE \addr_reg[0][48] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][48]_0 [7]),
        .Q(m_axi_gmem_ARADDR[48]),
        .R(1'b0));
  FDRE \addr_reg[0][49] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][56]_0 [0]),
        .Q(m_axi_gmem_ARADDR[49]),
        .R(1'b0));
  FDRE \addr_reg[0][4] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][4]_0 ),
        .Q(m_axi_gmem_ARADDR[4]),
        .R(1'b0));
  FDRE \addr_reg[0][50] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][56]_0 [1]),
        .Q(m_axi_gmem_ARADDR[50]),
        .R(1'b0));
  FDRE \addr_reg[0][51] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][56]_0 [2]),
        .Q(m_axi_gmem_ARADDR[51]),
        .R(1'b0));
  FDRE \addr_reg[0][52] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][56]_0 [3]),
        .Q(m_axi_gmem_ARADDR[52]),
        .R(1'b0));
  FDRE \addr_reg[0][53] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][56]_0 [4]),
        .Q(m_axi_gmem_ARADDR[53]),
        .R(1'b0));
  FDRE \addr_reg[0][54] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][56]_0 [5]),
        .Q(m_axi_gmem_ARADDR[54]),
        .R(1'b0));
  FDRE \addr_reg[0][55] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][56]_0 [6]),
        .Q(m_axi_gmem_ARADDR[55]),
        .R(1'b0));
  FDRE \addr_reg[0][56] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][56]_0 [7]),
        .Q(m_axi_gmem_ARADDR[56]),
        .R(1'b0));
  FDRE \addr_reg[0][57] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][63]_0 [0]),
        .Q(m_axi_gmem_ARADDR[57]),
        .R(1'b0));
  FDRE \addr_reg[0][58] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][63]_0 [1]),
        .Q(m_axi_gmem_ARADDR[58]),
        .R(1'b0));
  FDRE \addr_reg[0][59] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][63]_0 [2]),
        .Q(m_axi_gmem_ARADDR[59]),
        .R(1'b0));
  FDRE \addr_reg[0][5] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][5]_0 ),
        .Q(m_axi_gmem_ARADDR[5]),
        .R(1'b0));
  FDRE \addr_reg[0][60] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][63]_0 [3]),
        .Q(m_axi_gmem_ARADDR[60]),
        .R(1'b0));
  FDRE \addr_reg[0][61] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][63]_0 [4]),
        .Q(m_axi_gmem_ARADDR[61]),
        .R(1'b0));
  FDRE \addr_reg[0][62] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][63]_0 [5]),
        .Q(m_axi_gmem_ARADDR[62]),
        .R(1'b0));
  FDRE \addr_reg[0][63] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][63]_0 [6]),
        .Q(m_axi_gmem_ARADDR[63]),
        .R(1'b0));
  FDRE \addr_reg[0][6] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][6]_0 ),
        .Q(m_axi_gmem_ARADDR[6]),
        .R(1'b0));
  FDRE \addr_reg[0][7] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][7]_0 ),
        .Q(m_axi_gmem_ARADDR[7]),
        .R(1'b0));
  FDRE \addr_reg[0][8] 
       (.C(ap_clk),
        .CE(sel),
        .D(\addr_reg[0][8]_0 ),
        .Q(m_axi_gmem_ARADDR[8]),
        .R(1'b0));
  FDRE \addr_reg[0][9] 
       (.C(ap_clk),
        .CE(sel),
        .D(O[0]),
        .Q(m_axi_gmem_ARADDR[9]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    ar_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inst_ar_transaction_cntr_n_8),
        .Q(ar_idle),
        .S(areset));
  FDRE #(
    .INIT(1'b0)) 
    arvalid_r_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inst_ar_to_r_transaction_cntr_n_0_[0] ),
        .Q(arvalid_r_reg_0),
        .R(areset));
  LUT3 #(
    .INIT(8'hF4)) 
    done_i_1
       (.I0(empty),
        .I1(done),
        .I2(read_done),
        .O(\gen_fwft.empty_fwft_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inst_r_transaction_cntr_n_1_[0] ),
        .Q(read_done),
        .R(1'b0));
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter__parameterized0 \inst_ar_to_r_transaction_cntr[0] 
       (.ap_clk(ap_clk),
        .ar_idle(ar_idle),
        .areset(areset),
        .\count_r_reg[1]_0 (arvalid_r_reg_0),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg (\inst_ar_to_r_transaction_cntr_n_0_[0] ),
        .m_axi_gmem_ARREADY(m_axi_gmem_ARREADY),
        .m_axi_gmem_RID(m_axi_gmem_RID),
        .m_axi_gmem_RLAST(m_axi_gmem_RLAST),
        .m_axi_gmem_RVALID(m_axi_gmem_RVALID),
        .prog_full(prog_full));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter inst_ar_transaction_cntr
       (.Q(num_transactions),
        .ap_clk(ap_clk),
        .ar_idle(ar_idle),
        .areset(areset),
        .is_zero_r_reg_0(\inst_r_transaction_cntr_n_0_[0] ),
        .is_zero_r_reg_1(arvalid_r_reg_0),
        .m_axi_gmem_ARLEN(m_axi_gmem_ARLEN),
        .\m_axi_gmem_ARLEN[7] (final_burst_len),
        .m_axi_gmem_ARREADY(m_axi_gmem_ARREADY),
        .m_axi_gmem_ARREADY_0(inst_ar_transaction_cntr_n_8),
        .start(start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter_0 \inst_r_transaction_cntr[0] 
       (.Q(num_transactions),
        .ap_clk(ap_clk),
        .areset(areset),
        .is_zero_r_reg_0(\inst_r_transaction_cntr_n_1_[0] ),
        .m_axi_gmem_RID(m_axi_gmem_RID),
        .m_axi_gmem_RLAST(m_axi_gmem_RLAST),
        .m_axi_gmem_RVALID(m_axi_gmem_RVALID),
        .\num_transactions_reg[16] (\inst_r_transaction_cntr_n_0_[0] ),
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
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_control_s_axi
   (FSM_sequential_rstate_reg_0,
    s_axi_control_AWREADY,
    s_axi_control_ARREADY,
    s_axi_control_BVALID,
    \FSM_onehot_wstate_reg[1]_0 ,
    Q,
    done_reg,
    ap_start,
    \addr_reg[0][8] ,
    \addr_reg[0][7] ,
    \addr_reg[0][6] ,
    \addr_reg[0][5] ,
    \addr_reg[0][4] ,
    \addr_reg[0][3] ,
    \addr_reg[0][2] ,
    \addr_reg[0][1] ,
    \addr_reg[0][0] ,
    ap_start_pulse,
    \int_size_reg[31]_0 ,
    \int_size_reg[23]_0 ,
    S,
    D,
    O,
    \addr_reg[0][24] ,
    \addr_reg[0][32] ,
    \addr_reg[0][40] ,
    \addr_reg[0][48] ,
    \addr_reg[0][56] ,
    \addr_reg[0][63] ,
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
    done,
    empty,
    ap_idle,
    ap_start_r,
    s_axi_control_ARADDR,
    m_axi_gmem_ARADDR,
    s_axi_control_AWADDR);
  output FSM_sequential_rstate_reg_0;
  output s_axi_control_AWREADY;
  output s_axi_control_ARREADY;
  output s_axi_control_BVALID;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output [22:0]Q;
  output done_reg;
  output ap_start;
  output \addr_reg[0][8] ;
  output \addr_reg[0][7] ;
  output \addr_reg[0][6] ;
  output \addr_reg[0][5] ;
  output \addr_reg[0][4] ;
  output \addr_reg[0][3] ;
  output \addr_reg[0][2] ;
  output \addr_reg[0][1] ;
  output \addr_reg[0][0] ;
  output ap_start_pulse;
  output [7:0]\int_size_reg[31]_0 ;
  output [7:0]\int_size_reg[23]_0 ;
  output [7:0]S;
  output [7:0]D;
  output [7:0]O;
  output [7:0]\addr_reg[0][24] ;
  output [7:0]\addr_reg[0][32] ;
  output [7:0]\addr_reg[0][40] ;
  output [7:0]\addr_reg[0][48] ;
  output [7:0]\addr_reg[0][56] ;
  output [6:0]\addr_reg[0][63] ;
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
  input done;
  input empty;
  input ap_idle;
  input ap_start_r;
  input [5:0]s_axi_control_ARADDR;
  input [63:0]m_axi_gmem_ARADDR;
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
  wire \addr[0][16]_i_10_n_0 ;
  wire \addr[0][16]_i_2_n_0 ;
  wire \addr[0][16]_i_3_n_0 ;
  wire \addr[0][16]_i_4_n_0 ;
  wire \addr[0][16]_i_5_n_0 ;
  wire \addr[0][16]_i_6_n_0 ;
  wire \addr[0][16]_i_7_n_0 ;
  wire \addr[0][16]_i_8_n_0 ;
  wire \addr[0][16]_i_9_n_0 ;
  wire \addr[0][24]_i_2_n_0 ;
  wire \addr[0][24]_i_3_n_0 ;
  wire \addr[0][24]_i_4_n_0 ;
  wire \addr[0][24]_i_5_n_0 ;
  wire \addr[0][24]_i_6_n_0 ;
  wire \addr[0][24]_i_7_n_0 ;
  wire \addr[0][24]_i_8_n_0 ;
  wire \addr[0][24]_i_9_n_0 ;
  wire \addr[0][32]_i_2_n_0 ;
  wire \addr[0][32]_i_3_n_0 ;
  wire \addr[0][32]_i_4_n_0 ;
  wire \addr[0][32]_i_5_n_0 ;
  wire \addr[0][32]_i_6_n_0 ;
  wire \addr[0][32]_i_7_n_0 ;
  wire \addr[0][32]_i_8_n_0 ;
  wire \addr[0][32]_i_9_n_0 ;
  wire \addr[0][40]_i_2_n_0 ;
  wire \addr[0][40]_i_3_n_0 ;
  wire \addr[0][40]_i_4_n_0 ;
  wire \addr[0][40]_i_5_n_0 ;
  wire \addr[0][40]_i_6_n_0 ;
  wire \addr[0][40]_i_7_n_0 ;
  wire \addr[0][40]_i_8_n_0 ;
  wire \addr[0][40]_i_9_n_0 ;
  wire \addr[0][48]_i_2_n_0 ;
  wire \addr[0][48]_i_3_n_0 ;
  wire \addr[0][48]_i_4_n_0 ;
  wire \addr[0][48]_i_5_n_0 ;
  wire \addr[0][48]_i_6_n_0 ;
  wire \addr[0][48]_i_7_n_0 ;
  wire \addr[0][48]_i_8_n_0 ;
  wire \addr[0][48]_i_9_n_0 ;
  wire \addr[0][56]_i_2_n_0 ;
  wire \addr[0][56]_i_3_n_0 ;
  wire \addr[0][56]_i_4_n_0 ;
  wire \addr[0][56]_i_5_n_0 ;
  wire \addr[0][56]_i_6_n_0 ;
  wire \addr[0][56]_i_7_n_0 ;
  wire \addr[0][56]_i_8_n_0 ;
  wire \addr[0][56]_i_9_n_0 ;
  wire \addr[0][63]_i_3_n_0 ;
  wire \addr[0][63]_i_4_n_0 ;
  wire \addr[0][63]_i_5_n_0 ;
  wire \addr[0][63]_i_6_n_0 ;
  wire \addr[0][63]_i_7_n_0 ;
  wire \addr[0][63]_i_8_n_0 ;
  wire \addr[0][63]_i_9_n_0 ;
  wire \addr_reg[0][0] ;
  wire \addr_reg[0][16]_i_1_n_0 ;
  wire \addr_reg[0][16]_i_1_n_1 ;
  wire \addr_reg[0][16]_i_1_n_2 ;
  wire \addr_reg[0][16]_i_1_n_3 ;
  wire \addr_reg[0][16]_i_1_n_4 ;
  wire \addr_reg[0][16]_i_1_n_5 ;
  wire \addr_reg[0][16]_i_1_n_6 ;
  wire \addr_reg[0][16]_i_1_n_7 ;
  wire \addr_reg[0][1] ;
  wire [7:0]\addr_reg[0][24] ;
  wire \addr_reg[0][24]_i_1_n_0 ;
  wire \addr_reg[0][24]_i_1_n_1 ;
  wire \addr_reg[0][24]_i_1_n_2 ;
  wire \addr_reg[0][24]_i_1_n_3 ;
  wire \addr_reg[0][24]_i_1_n_4 ;
  wire \addr_reg[0][24]_i_1_n_5 ;
  wire \addr_reg[0][24]_i_1_n_6 ;
  wire \addr_reg[0][24]_i_1_n_7 ;
  wire \addr_reg[0][2] ;
  wire [7:0]\addr_reg[0][32] ;
  wire \addr_reg[0][32]_i_1_n_0 ;
  wire \addr_reg[0][32]_i_1_n_1 ;
  wire \addr_reg[0][32]_i_1_n_2 ;
  wire \addr_reg[0][32]_i_1_n_3 ;
  wire \addr_reg[0][32]_i_1_n_4 ;
  wire \addr_reg[0][32]_i_1_n_5 ;
  wire \addr_reg[0][32]_i_1_n_6 ;
  wire \addr_reg[0][32]_i_1_n_7 ;
  wire \addr_reg[0][3] ;
  wire [7:0]\addr_reg[0][40] ;
  wire \addr_reg[0][40]_i_1_n_0 ;
  wire \addr_reg[0][40]_i_1_n_1 ;
  wire \addr_reg[0][40]_i_1_n_2 ;
  wire \addr_reg[0][40]_i_1_n_3 ;
  wire \addr_reg[0][40]_i_1_n_4 ;
  wire \addr_reg[0][40]_i_1_n_5 ;
  wire \addr_reg[0][40]_i_1_n_6 ;
  wire \addr_reg[0][40]_i_1_n_7 ;
  wire [7:0]\addr_reg[0][48] ;
  wire \addr_reg[0][48]_i_1_n_0 ;
  wire \addr_reg[0][48]_i_1_n_1 ;
  wire \addr_reg[0][48]_i_1_n_2 ;
  wire \addr_reg[0][48]_i_1_n_3 ;
  wire \addr_reg[0][48]_i_1_n_4 ;
  wire \addr_reg[0][48]_i_1_n_5 ;
  wire \addr_reg[0][48]_i_1_n_6 ;
  wire \addr_reg[0][48]_i_1_n_7 ;
  wire \addr_reg[0][4] ;
  wire [7:0]\addr_reg[0][56] ;
  wire \addr_reg[0][56]_i_1_n_0 ;
  wire \addr_reg[0][56]_i_1_n_1 ;
  wire \addr_reg[0][56]_i_1_n_2 ;
  wire \addr_reg[0][56]_i_1_n_3 ;
  wire \addr_reg[0][56]_i_1_n_4 ;
  wire \addr_reg[0][56]_i_1_n_5 ;
  wire \addr_reg[0][56]_i_1_n_6 ;
  wire \addr_reg[0][56]_i_1_n_7 ;
  wire \addr_reg[0][5] ;
  wire [6:0]\addr_reg[0][63] ;
  wire \addr_reg[0][63]_i_2_n_2 ;
  wire \addr_reg[0][63]_i_2_n_3 ;
  wire \addr_reg[0][63]_i_2_n_4 ;
  wire \addr_reg[0][63]_i_2_n_5 ;
  wire \addr_reg[0][63]_i_2_n_6 ;
  wire \addr_reg[0][63]_i_2_n_7 ;
  wire \addr_reg[0][6] ;
  wire \addr_reg[0][7] ;
  wire \addr_reg[0][8] ;
  wire ap_clk;
  wire ap_idle;
  wire ap_start;
  wire ap_start_pulse;
  wire ap_start_r;
  wire ar_hs;
  wire areset;
  wire [31:0]ctrl_length;
  wire [63:0]ctrl_offset;
  wire done;
  wire done_reg;
  wire empty;
  wire \final_burst_len[7]_i_2_n_0 ;
  wire int_ap_done;
  wire int_ap_done_i_1_n_0;
  wire int_ap_start3_out;
  wire int_ap_start_i_1_n_0;
  wire int_auto_restart;
  wire int_auto_restart_i_1_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire int_ier9_out;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire \int_input_r[31]_i_1_n_0 ;
  wire \int_input_r[31]_i_3_n_0 ;
  wire \int_input_r[63]_i_1_n_0 ;
  wire [31:0]int_input_r_reg0;
  wire [31:0]int_input_r_reg04_out;
  wire int_isr6_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_p_xcl_gv_p0[31]_i_1_n_0 ;
  wire \int_p_xcl_gv_p0[31]_i_3_n_0 ;
  wire \int_p_xcl_gv_p0[63]_i_1_n_0 ;
  wire [31:0]int_p_xcl_gv_p0_reg0;
  wire [31:0]int_p_xcl_gv_p0_reg01_out;
  wire \int_p_xcl_gv_p0_reg_n_0_[0] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[10] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[11] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[12] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[13] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[14] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[15] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[16] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[17] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[18] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[19] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[1] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[20] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[21] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[22] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[23] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[24] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[25] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[26] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[27] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[28] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[29] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[2] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[30] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[31] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[32] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[33] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[34] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[35] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[36] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[37] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[38] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[39] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[3] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[40] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[41] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[42] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[43] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[44] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[45] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[46] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[47] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[48] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[49] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[4] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[50] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[51] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[52] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[53] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[54] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[55] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[56] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[57] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[58] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[59] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[5] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[60] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[61] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[62] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[63] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[6] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[7] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[8] ;
  wire \int_p_xcl_gv_p0_reg_n_0_[9] ;
  wire [31:0]int_size0;
  wire \int_size[31]_i_1_n_0 ;
  wire [7:0]\int_size_reg[23]_0 ;
  wire [7:0]\int_size_reg[31]_0 ;
  wire [63:0]m_axi_gmem_ARADDR;
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
  wire [7:6]\NLW_addr_reg[0][63]_i_2_CO_UNCONNECTED ;
  wire [7:7]\NLW_addr_reg[0][63]_i_2_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[0]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg_n_0_[0] ),
        .I2(s_axi_control_BVALID),
        .I3(s_axi_control_BREADY),
        .O(\FSM_onehot_wstate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
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
    \addr[0][0]_i_1 
       (.I0(m_axi_gmem_ARADDR[0]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[0]),
        .O(\addr_reg[0][0] ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][16]_i_10 
       (.I0(m_axi_gmem_ARADDR[9]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[9]),
        .O(\addr[0][16]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \addr[0][16]_i_2 
       (.I0(ap_start_r),
        .I1(ap_start),
        .O(\addr[0][16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][16]_i_3 
       (.I0(m_axi_gmem_ARADDR[16]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[16]),
        .O(\addr[0][16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][16]_i_4 
       (.I0(m_axi_gmem_ARADDR[15]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[15]),
        .O(\addr[0][16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][16]_i_5 
       (.I0(m_axi_gmem_ARADDR[14]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[14]),
        .O(\addr[0][16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][16]_i_6 
       (.I0(m_axi_gmem_ARADDR[13]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[13]),
        .O(\addr[0][16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][16]_i_7 
       (.I0(m_axi_gmem_ARADDR[12]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[12]),
        .O(\addr[0][16]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][16]_i_8 
       (.I0(m_axi_gmem_ARADDR[11]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[11]),
        .O(\addr[0][16]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h33A3)) 
    \addr[0][16]_i_9 
       (.I0(ctrl_offset[10]),
        .I1(m_axi_gmem_ARADDR[10]),
        .I2(ap_start),
        .I3(ap_start_r),
        .O(\addr[0][16]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][1]_i_1 
       (.I0(m_axi_gmem_ARADDR[1]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[1]),
        .O(\addr_reg[0][1] ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][24]_i_2 
       (.I0(m_axi_gmem_ARADDR[24]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[24]),
        .O(\addr[0][24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][24]_i_3 
       (.I0(m_axi_gmem_ARADDR[23]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[23]),
        .O(\addr[0][24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][24]_i_4 
       (.I0(m_axi_gmem_ARADDR[22]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[22]),
        .O(\addr[0][24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][24]_i_5 
       (.I0(m_axi_gmem_ARADDR[21]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[21]),
        .O(\addr[0][24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][24]_i_6 
       (.I0(m_axi_gmem_ARADDR[20]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[20]),
        .O(\addr[0][24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][24]_i_7 
       (.I0(m_axi_gmem_ARADDR[19]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[19]),
        .O(\addr[0][24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][24]_i_8 
       (.I0(m_axi_gmem_ARADDR[18]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[18]),
        .O(\addr[0][24]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][24]_i_9 
       (.I0(m_axi_gmem_ARADDR[17]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[17]),
        .O(\addr[0][24]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][2]_i_1 
       (.I0(m_axi_gmem_ARADDR[2]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[2]),
        .O(\addr_reg[0][2] ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][32]_i_2 
       (.I0(m_axi_gmem_ARADDR[32]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[32]),
        .O(\addr[0][32]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][32]_i_3 
       (.I0(m_axi_gmem_ARADDR[31]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[31]),
        .O(\addr[0][32]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][32]_i_4 
       (.I0(m_axi_gmem_ARADDR[30]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[30]),
        .O(\addr[0][32]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][32]_i_5 
       (.I0(m_axi_gmem_ARADDR[29]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[29]),
        .O(\addr[0][32]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][32]_i_6 
       (.I0(m_axi_gmem_ARADDR[28]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[28]),
        .O(\addr[0][32]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][32]_i_7 
       (.I0(m_axi_gmem_ARADDR[27]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[27]),
        .O(\addr[0][32]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][32]_i_8 
       (.I0(m_axi_gmem_ARADDR[26]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[26]),
        .O(\addr[0][32]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][32]_i_9 
       (.I0(m_axi_gmem_ARADDR[25]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[25]),
        .O(\addr[0][32]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][3]_i_1 
       (.I0(m_axi_gmem_ARADDR[3]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[3]),
        .O(\addr_reg[0][3] ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][40]_i_2 
       (.I0(m_axi_gmem_ARADDR[40]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[40]),
        .O(\addr[0][40]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][40]_i_3 
       (.I0(m_axi_gmem_ARADDR[39]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[39]),
        .O(\addr[0][40]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][40]_i_4 
       (.I0(m_axi_gmem_ARADDR[38]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[38]),
        .O(\addr[0][40]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][40]_i_5 
       (.I0(m_axi_gmem_ARADDR[37]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[37]),
        .O(\addr[0][40]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][40]_i_6 
       (.I0(m_axi_gmem_ARADDR[36]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[36]),
        .O(\addr[0][40]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][40]_i_7 
       (.I0(m_axi_gmem_ARADDR[35]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[35]),
        .O(\addr[0][40]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][40]_i_8 
       (.I0(m_axi_gmem_ARADDR[34]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[34]),
        .O(\addr[0][40]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][40]_i_9 
       (.I0(m_axi_gmem_ARADDR[33]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[33]),
        .O(\addr[0][40]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][48]_i_2 
       (.I0(m_axi_gmem_ARADDR[48]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[48]),
        .O(\addr[0][48]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][48]_i_3 
       (.I0(m_axi_gmem_ARADDR[47]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[47]),
        .O(\addr[0][48]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][48]_i_4 
       (.I0(m_axi_gmem_ARADDR[46]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[46]),
        .O(\addr[0][48]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][48]_i_5 
       (.I0(m_axi_gmem_ARADDR[45]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[45]),
        .O(\addr[0][48]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][48]_i_6 
       (.I0(m_axi_gmem_ARADDR[44]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[44]),
        .O(\addr[0][48]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][48]_i_7 
       (.I0(m_axi_gmem_ARADDR[43]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[43]),
        .O(\addr[0][48]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][48]_i_8 
       (.I0(m_axi_gmem_ARADDR[42]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[42]),
        .O(\addr[0][48]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][48]_i_9 
       (.I0(m_axi_gmem_ARADDR[41]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[41]),
        .O(\addr[0][48]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][4]_i_1 
       (.I0(m_axi_gmem_ARADDR[4]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[4]),
        .O(\addr_reg[0][4] ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][56]_i_2 
       (.I0(m_axi_gmem_ARADDR[56]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[56]),
        .O(\addr[0][56]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][56]_i_3 
       (.I0(m_axi_gmem_ARADDR[55]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[55]),
        .O(\addr[0][56]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][56]_i_4 
       (.I0(m_axi_gmem_ARADDR[54]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[54]),
        .O(\addr[0][56]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][56]_i_5 
       (.I0(m_axi_gmem_ARADDR[53]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[53]),
        .O(\addr[0][56]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][56]_i_6 
       (.I0(m_axi_gmem_ARADDR[52]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[52]),
        .O(\addr[0][56]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][56]_i_7 
       (.I0(m_axi_gmem_ARADDR[51]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[51]),
        .O(\addr[0][56]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][56]_i_8 
       (.I0(m_axi_gmem_ARADDR[50]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[50]),
        .O(\addr[0][56]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][56]_i_9 
       (.I0(m_axi_gmem_ARADDR[49]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[49]),
        .O(\addr[0][56]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][5]_i_1 
       (.I0(m_axi_gmem_ARADDR[5]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[5]),
        .O(\addr_reg[0][5] ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][63]_i_3 
       (.I0(m_axi_gmem_ARADDR[63]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[63]),
        .O(\addr[0][63]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][63]_i_4 
       (.I0(m_axi_gmem_ARADDR[62]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[62]),
        .O(\addr[0][63]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][63]_i_5 
       (.I0(m_axi_gmem_ARADDR[61]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[61]),
        .O(\addr[0][63]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][63]_i_6 
       (.I0(m_axi_gmem_ARADDR[60]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[60]),
        .O(\addr[0][63]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][63]_i_7 
       (.I0(m_axi_gmem_ARADDR[59]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[59]),
        .O(\addr[0][63]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][63]_i_8 
       (.I0(m_axi_gmem_ARADDR[58]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[58]),
        .O(\addr[0][63]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][63]_i_9 
       (.I0(m_axi_gmem_ARADDR[57]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[57]),
        .O(\addr[0][63]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][6]_i_1 
       (.I0(m_axi_gmem_ARADDR[6]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[6]),
        .O(\addr_reg[0][6] ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][7]_i_1 
       (.I0(m_axi_gmem_ARADDR[7]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[7]),
        .O(\addr_reg[0][7] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \addr[0][8]_i_1 
       (.I0(m_axi_gmem_ARADDR[8]),
        .I1(ap_start_r),
        .I2(ap_start),
        .I3(ctrl_offset[8]),
        .O(\addr_reg[0][8] ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[0][16]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\addr_reg[0][16]_i_1_n_0 ,\addr_reg[0][16]_i_1_n_1 ,\addr_reg[0][16]_i_1_n_2 ,\addr_reg[0][16]_i_1_n_3 ,\addr_reg[0][16]_i_1_n_4 ,\addr_reg[0][16]_i_1_n_5 ,\addr_reg[0][16]_i_1_n_6 ,\addr_reg[0][16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\addr[0][16]_i_2_n_0 ,1'b0}),
        .O(O),
        .S({\addr[0][16]_i_3_n_0 ,\addr[0][16]_i_4_n_0 ,\addr[0][16]_i_5_n_0 ,\addr[0][16]_i_6_n_0 ,\addr[0][16]_i_7_n_0 ,\addr[0][16]_i_8_n_0 ,\addr[0][16]_i_9_n_0 ,\addr[0][16]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[0][24]_i_1 
       (.CI(\addr_reg[0][16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[0][24]_i_1_n_0 ,\addr_reg[0][24]_i_1_n_1 ,\addr_reg[0][24]_i_1_n_2 ,\addr_reg[0][24]_i_1_n_3 ,\addr_reg[0][24]_i_1_n_4 ,\addr_reg[0][24]_i_1_n_5 ,\addr_reg[0][24]_i_1_n_6 ,\addr_reg[0][24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\addr_reg[0][24] ),
        .S({\addr[0][24]_i_2_n_0 ,\addr[0][24]_i_3_n_0 ,\addr[0][24]_i_4_n_0 ,\addr[0][24]_i_5_n_0 ,\addr[0][24]_i_6_n_0 ,\addr[0][24]_i_7_n_0 ,\addr[0][24]_i_8_n_0 ,\addr[0][24]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[0][32]_i_1 
       (.CI(\addr_reg[0][24]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[0][32]_i_1_n_0 ,\addr_reg[0][32]_i_1_n_1 ,\addr_reg[0][32]_i_1_n_2 ,\addr_reg[0][32]_i_1_n_3 ,\addr_reg[0][32]_i_1_n_4 ,\addr_reg[0][32]_i_1_n_5 ,\addr_reg[0][32]_i_1_n_6 ,\addr_reg[0][32]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\addr_reg[0][32] ),
        .S({\addr[0][32]_i_2_n_0 ,\addr[0][32]_i_3_n_0 ,\addr[0][32]_i_4_n_0 ,\addr[0][32]_i_5_n_0 ,\addr[0][32]_i_6_n_0 ,\addr[0][32]_i_7_n_0 ,\addr[0][32]_i_8_n_0 ,\addr[0][32]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[0][40]_i_1 
       (.CI(\addr_reg[0][32]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[0][40]_i_1_n_0 ,\addr_reg[0][40]_i_1_n_1 ,\addr_reg[0][40]_i_1_n_2 ,\addr_reg[0][40]_i_1_n_3 ,\addr_reg[0][40]_i_1_n_4 ,\addr_reg[0][40]_i_1_n_5 ,\addr_reg[0][40]_i_1_n_6 ,\addr_reg[0][40]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\addr_reg[0][40] ),
        .S({\addr[0][40]_i_2_n_0 ,\addr[0][40]_i_3_n_0 ,\addr[0][40]_i_4_n_0 ,\addr[0][40]_i_5_n_0 ,\addr[0][40]_i_6_n_0 ,\addr[0][40]_i_7_n_0 ,\addr[0][40]_i_8_n_0 ,\addr[0][40]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[0][48]_i_1 
       (.CI(\addr_reg[0][40]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[0][48]_i_1_n_0 ,\addr_reg[0][48]_i_1_n_1 ,\addr_reg[0][48]_i_1_n_2 ,\addr_reg[0][48]_i_1_n_3 ,\addr_reg[0][48]_i_1_n_4 ,\addr_reg[0][48]_i_1_n_5 ,\addr_reg[0][48]_i_1_n_6 ,\addr_reg[0][48]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\addr_reg[0][48] ),
        .S({\addr[0][48]_i_2_n_0 ,\addr[0][48]_i_3_n_0 ,\addr[0][48]_i_4_n_0 ,\addr[0][48]_i_5_n_0 ,\addr[0][48]_i_6_n_0 ,\addr[0][48]_i_7_n_0 ,\addr[0][48]_i_8_n_0 ,\addr[0][48]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[0][56]_i_1 
       (.CI(\addr_reg[0][48]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[0][56]_i_1_n_0 ,\addr_reg[0][56]_i_1_n_1 ,\addr_reg[0][56]_i_1_n_2 ,\addr_reg[0][56]_i_1_n_3 ,\addr_reg[0][56]_i_1_n_4 ,\addr_reg[0][56]_i_1_n_5 ,\addr_reg[0][56]_i_1_n_6 ,\addr_reg[0][56]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\addr_reg[0][56] ),
        .S({\addr[0][56]_i_2_n_0 ,\addr[0][56]_i_3_n_0 ,\addr[0][56]_i_4_n_0 ,\addr[0][56]_i_5_n_0 ,\addr[0][56]_i_6_n_0 ,\addr[0][56]_i_7_n_0 ,\addr[0][56]_i_8_n_0 ,\addr[0][56]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[0][63]_i_2 
       (.CI(\addr_reg[0][56]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_addr_reg[0][63]_i_2_CO_UNCONNECTED [7:6],\addr_reg[0][63]_i_2_n_2 ,\addr_reg[0][63]_i_2_n_3 ,\addr_reg[0][63]_i_2_n_4 ,\addr_reg[0][63]_i_2_n_5 ,\addr_reg[0][63]_i_2_n_6 ,\addr_reg[0][63]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_addr_reg[0][63]_i_2_O_UNCONNECTED [7],\addr_reg[0][63] }),
        .S({1'b0,\addr[0][63]_i_3_n_0 ,\addr[0][63]_i_4_n_0 ,\addr[0][63]_i_5_n_0 ,\addr[0][63]_i_6_n_0 ,\addr[0][63]_i_7_n_0 ,\addr[0][63]_i_8_n_0 ,\addr[0][63]_i_9_n_0 }));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF8FFF8)) 
    ap_idle_i_1
       (.I0(done),
        .I1(empty),
        .I2(areset),
        .I3(ap_idle),
        .I4(ap_start_r),
        .I5(ap_start),
        .O(done_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \final_burst_len[0]_i_1 
       (.I0(ctrl_length[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \final_burst_len[1]_i_1 
       (.I0(ctrl_length[1]),
        .I1(ctrl_length[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \final_burst_len[2]_i_1 
       (.I0(ctrl_length[2]),
        .I1(ctrl_length[0]),
        .I2(ctrl_length[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \final_burst_len[3]_i_1 
       (.I0(ctrl_length[3]),
        .I1(ctrl_length[1]),
        .I2(ctrl_length[0]),
        .I3(ctrl_length[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \final_burst_len[4]_i_1 
       (.I0(ctrl_length[4]),
        .I1(ctrl_length[2]),
        .I2(ctrl_length[0]),
        .I3(ctrl_length[1]),
        .I4(ctrl_length[3]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \final_burst_len[5]_i_1 
       (.I0(ctrl_length[5]),
        .I1(ctrl_length[3]),
        .I2(ctrl_length[1]),
        .I3(ctrl_length[0]),
        .I4(ctrl_length[2]),
        .I5(ctrl_length[4]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \final_burst_len[6]_i_1 
       (.I0(ctrl_length[6]),
        .I1(\final_burst_len[7]_i_2_n_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
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
        .I2(empty),
        .I3(done),
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
        .I1(empty),
        .I2(done),
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
        .I4(\int_input_r[31]_i_3_n_0 ),
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
        .I4(\int_input_r[31]_i_3_n_0 ),
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
        .I4(\int_input_r[31]_i_3_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[0]_i_1 
       (.I0(ctrl_offset[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_input_r_reg04_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[10]_i_1 
       (.I0(ctrl_offset[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[10]),
        .O(int_input_r_reg04_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[11]_i_1 
       (.I0(ctrl_offset[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[11]),
        .O(int_input_r_reg04_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[12]_i_1 
       (.I0(ctrl_offset[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[12]),
        .O(int_input_r_reg04_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[13]_i_1 
       (.I0(ctrl_offset[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[13]),
        .O(int_input_r_reg04_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[14]_i_1 
       (.I0(ctrl_offset[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[14]),
        .O(int_input_r_reg04_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[15]_i_1 
       (.I0(ctrl_offset[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[15]),
        .O(int_input_r_reg04_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[16]_i_1 
       (.I0(ctrl_offset[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[16]),
        .O(int_input_r_reg04_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[17]_i_1 
       (.I0(ctrl_offset[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[17]),
        .O(int_input_r_reg04_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[18]_i_1 
       (.I0(ctrl_offset[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[18]),
        .O(int_input_r_reg04_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[19]_i_1 
       (.I0(ctrl_offset[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[19]),
        .O(int_input_r_reg04_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[1]_i_1 
       (.I0(ctrl_offset[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_input_r_reg04_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[20]_i_1 
       (.I0(ctrl_offset[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[20]),
        .O(int_input_r_reg04_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[21]_i_1 
       (.I0(ctrl_offset[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[21]),
        .O(int_input_r_reg04_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[22]_i_1 
       (.I0(ctrl_offset[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[22]),
        .O(int_input_r_reg04_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[23]_i_1 
       (.I0(ctrl_offset[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[23]),
        .O(int_input_r_reg04_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[24]_i_1 
       (.I0(ctrl_offset[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[24]),
        .O(int_input_r_reg04_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[25]_i_1 
       (.I0(ctrl_offset[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[25]),
        .O(int_input_r_reg04_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[26]_i_1 
       (.I0(ctrl_offset[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[26]),
        .O(int_input_r_reg04_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[27]_i_1 
       (.I0(ctrl_offset[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[27]),
        .O(int_input_r_reg04_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[28]_i_1 
       (.I0(ctrl_offset[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[28]),
        .O(int_input_r_reg04_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[29]_i_1 
       (.I0(ctrl_offset[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[29]),
        .O(int_input_r_reg04_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[2]_i_1 
       (.I0(ctrl_offset[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_input_r_reg04_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[30]_i_1 
       (.I0(ctrl_offset[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[30]),
        .O(int_input_r_reg04_out[30]));
  LUT3 #(
    .INIT(8'h40)) 
    \int_input_r[31]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\int_input_r[31]_i_3_n_0 ),
        .O(\int_input_r[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[31]_i_2 
       (.I0(ctrl_offset[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[31]),
        .O(int_input_r_reg04_out[31]));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \int_input_r[31]_i_3 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[1] ),
        .I2(\waddr_reg_n_0_[0] ),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .I4(s_axi_control_WVALID),
        .I5(\waddr_reg_n_0_[3] ),
        .O(\int_input_r[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[32]_i_1 
       (.I0(ctrl_offset[32]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_input_r_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[33]_i_1 
       (.I0(ctrl_offset[33]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_input_r_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[34]_i_1 
       (.I0(ctrl_offset[34]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_input_r_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[35]_i_1 
       (.I0(ctrl_offset[35]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_input_r_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[36]_i_1 
       (.I0(ctrl_offset[36]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_input_r_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[37]_i_1 
       (.I0(ctrl_offset[37]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_input_r_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[38]_i_1 
       (.I0(ctrl_offset[38]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_input_r_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[39]_i_1 
       (.I0(ctrl_offset[39]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_input_r_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[3]_i_1 
       (.I0(ctrl_offset[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_input_r_reg04_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[40]_i_1 
       (.I0(ctrl_offset[40]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[8]),
        .O(int_input_r_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[41]_i_1 
       (.I0(ctrl_offset[41]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[9]),
        .O(int_input_r_reg0[9]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[42]_i_1 
       (.I0(ctrl_offset[42]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[10]),
        .O(int_input_r_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[43]_i_1 
       (.I0(ctrl_offset[43]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[11]),
        .O(int_input_r_reg0[11]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[44]_i_1 
       (.I0(ctrl_offset[44]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[12]),
        .O(int_input_r_reg0[12]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[45]_i_1 
       (.I0(ctrl_offset[45]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[13]),
        .O(int_input_r_reg0[13]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[46]_i_1 
       (.I0(ctrl_offset[46]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[14]),
        .O(int_input_r_reg0[14]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[47]_i_1 
       (.I0(ctrl_offset[47]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[15]),
        .O(int_input_r_reg0[15]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[48]_i_1 
       (.I0(ctrl_offset[48]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[16]),
        .O(int_input_r_reg0[16]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[49]_i_1 
       (.I0(ctrl_offset[49]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[17]),
        .O(int_input_r_reg0[17]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[4]_i_1 
       (.I0(ctrl_offset[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_input_r_reg04_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[50]_i_1 
       (.I0(ctrl_offset[50]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[18]),
        .O(int_input_r_reg0[18]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[51]_i_1 
       (.I0(ctrl_offset[51]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[19]),
        .O(int_input_r_reg0[19]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[52]_i_1 
       (.I0(ctrl_offset[52]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[20]),
        .O(int_input_r_reg0[20]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[53]_i_1 
       (.I0(ctrl_offset[53]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[21]),
        .O(int_input_r_reg0[21]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[54]_i_1 
       (.I0(ctrl_offset[54]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[22]),
        .O(int_input_r_reg0[22]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[55]_i_1 
       (.I0(ctrl_offset[55]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[23]),
        .O(int_input_r_reg0[23]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[56]_i_1 
       (.I0(ctrl_offset[56]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[24]),
        .O(int_input_r_reg0[24]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[57]_i_1 
       (.I0(ctrl_offset[57]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[25]),
        .O(int_input_r_reg0[25]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[58]_i_1 
       (.I0(ctrl_offset[58]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[26]),
        .O(int_input_r_reg0[26]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[59]_i_1 
       (.I0(ctrl_offset[59]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[27]),
        .O(int_input_r_reg0[27]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[5]_i_1 
       (.I0(ctrl_offset[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_input_r_reg04_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[60]_i_1 
       (.I0(ctrl_offset[60]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[28]),
        .O(int_input_r_reg0[28]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[61]_i_1 
       (.I0(ctrl_offset[61]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[29]),
        .O(int_input_r_reg0[29]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[62]_i_1 
       (.I0(ctrl_offset[62]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[30]),
        .O(int_input_r_reg0[30]));
  LUT3 #(
    .INIT(8'h80)) 
    \int_input_r[63]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\int_input_r[31]_i_3_n_0 ),
        .O(\int_input_r[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[63]_i_2 
       (.I0(ctrl_offset[63]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[31]),
        .O(int_input_r_reg0[31]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[6]_i_1 
       (.I0(ctrl_offset[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_input_r_reg04_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[7]_i_1 
       (.I0(ctrl_offset[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_input_r_reg04_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[8]_i_1 
       (.I0(ctrl_offset[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[8]),
        .O(int_input_r_reg04_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_r[9]_i_1 
       (.I0(ctrl_offset[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[9]),
        .O(int_input_r_reg04_out[9]));
  FDRE \int_input_r_reg[0] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[0]),
        .Q(ctrl_offset[0]),
        .R(areset));
  FDRE \int_input_r_reg[10] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[10]),
        .Q(ctrl_offset[10]),
        .R(areset));
  FDRE \int_input_r_reg[11] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[11]),
        .Q(ctrl_offset[11]),
        .R(areset));
  FDRE \int_input_r_reg[12] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[12]),
        .Q(ctrl_offset[12]),
        .R(areset));
  FDRE \int_input_r_reg[13] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[13]),
        .Q(ctrl_offset[13]),
        .R(areset));
  FDRE \int_input_r_reg[14] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[14]),
        .Q(ctrl_offset[14]),
        .R(areset));
  FDRE \int_input_r_reg[15] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[15]),
        .Q(ctrl_offset[15]),
        .R(areset));
  FDRE \int_input_r_reg[16] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[16]),
        .Q(ctrl_offset[16]),
        .R(areset));
  FDRE \int_input_r_reg[17] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[17]),
        .Q(ctrl_offset[17]),
        .R(areset));
  FDRE \int_input_r_reg[18] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[18]),
        .Q(ctrl_offset[18]),
        .R(areset));
  FDRE \int_input_r_reg[19] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[19]),
        .Q(ctrl_offset[19]),
        .R(areset));
  FDRE \int_input_r_reg[1] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[1]),
        .Q(ctrl_offset[1]),
        .R(areset));
  FDRE \int_input_r_reg[20] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[20]),
        .Q(ctrl_offset[20]),
        .R(areset));
  FDRE \int_input_r_reg[21] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[21]),
        .Q(ctrl_offset[21]),
        .R(areset));
  FDRE \int_input_r_reg[22] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[22]),
        .Q(ctrl_offset[22]),
        .R(areset));
  FDRE \int_input_r_reg[23] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[23]),
        .Q(ctrl_offset[23]),
        .R(areset));
  FDRE \int_input_r_reg[24] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[24]),
        .Q(ctrl_offset[24]),
        .R(areset));
  FDRE \int_input_r_reg[25] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[25]),
        .Q(ctrl_offset[25]),
        .R(areset));
  FDRE \int_input_r_reg[26] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[26]),
        .Q(ctrl_offset[26]),
        .R(areset));
  FDRE \int_input_r_reg[27] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[27]),
        .Q(ctrl_offset[27]),
        .R(areset));
  FDRE \int_input_r_reg[28] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[28]),
        .Q(ctrl_offset[28]),
        .R(areset));
  FDRE \int_input_r_reg[29] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[29]),
        .Q(ctrl_offset[29]),
        .R(areset));
  FDRE \int_input_r_reg[2] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[2]),
        .Q(ctrl_offset[2]),
        .R(areset));
  FDRE \int_input_r_reg[30] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[30]),
        .Q(ctrl_offset[30]),
        .R(areset));
  FDRE \int_input_r_reg[31] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[31]),
        .Q(ctrl_offset[31]),
        .R(areset));
  FDRE \int_input_r_reg[32] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[0]),
        .Q(ctrl_offset[32]),
        .R(areset));
  FDRE \int_input_r_reg[33] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[1]),
        .Q(ctrl_offset[33]),
        .R(areset));
  FDRE \int_input_r_reg[34] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[2]),
        .Q(ctrl_offset[34]),
        .R(areset));
  FDRE \int_input_r_reg[35] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[3]),
        .Q(ctrl_offset[35]),
        .R(areset));
  FDRE \int_input_r_reg[36] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[4]),
        .Q(ctrl_offset[36]),
        .R(areset));
  FDRE \int_input_r_reg[37] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[5]),
        .Q(ctrl_offset[37]),
        .R(areset));
  FDRE \int_input_r_reg[38] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[6]),
        .Q(ctrl_offset[38]),
        .R(areset));
  FDRE \int_input_r_reg[39] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[7]),
        .Q(ctrl_offset[39]),
        .R(areset));
  FDRE \int_input_r_reg[3] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[3]),
        .Q(ctrl_offset[3]),
        .R(areset));
  FDRE \int_input_r_reg[40] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[8]),
        .Q(ctrl_offset[40]),
        .R(areset));
  FDRE \int_input_r_reg[41] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[9]),
        .Q(ctrl_offset[41]),
        .R(areset));
  FDRE \int_input_r_reg[42] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[10]),
        .Q(ctrl_offset[42]),
        .R(areset));
  FDRE \int_input_r_reg[43] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[11]),
        .Q(ctrl_offset[43]),
        .R(areset));
  FDRE \int_input_r_reg[44] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[12]),
        .Q(ctrl_offset[44]),
        .R(areset));
  FDRE \int_input_r_reg[45] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[13]),
        .Q(ctrl_offset[45]),
        .R(areset));
  FDRE \int_input_r_reg[46] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[14]),
        .Q(ctrl_offset[46]),
        .R(areset));
  FDRE \int_input_r_reg[47] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[15]),
        .Q(ctrl_offset[47]),
        .R(areset));
  FDRE \int_input_r_reg[48] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[16]),
        .Q(ctrl_offset[48]),
        .R(areset));
  FDRE \int_input_r_reg[49] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[17]),
        .Q(ctrl_offset[49]),
        .R(areset));
  FDRE \int_input_r_reg[4] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[4]),
        .Q(ctrl_offset[4]),
        .R(areset));
  FDRE \int_input_r_reg[50] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[18]),
        .Q(ctrl_offset[50]),
        .R(areset));
  FDRE \int_input_r_reg[51] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[19]),
        .Q(ctrl_offset[51]),
        .R(areset));
  FDRE \int_input_r_reg[52] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[20]),
        .Q(ctrl_offset[52]),
        .R(areset));
  FDRE \int_input_r_reg[53] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[21]),
        .Q(ctrl_offset[53]),
        .R(areset));
  FDRE \int_input_r_reg[54] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[22]),
        .Q(ctrl_offset[54]),
        .R(areset));
  FDRE \int_input_r_reg[55] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[23]),
        .Q(ctrl_offset[55]),
        .R(areset));
  FDRE \int_input_r_reg[56] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[24]),
        .Q(ctrl_offset[56]),
        .R(areset));
  FDRE \int_input_r_reg[57] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[25]),
        .Q(ctrl_offset[57]),
        .R(areset));
  FDRE \int_input_r_reg[58] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[26]),
        .Q(ctrl_offset[58]),
        .R(areset));
  FDRE \int_input_r_reg[59] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[27]),
        .Q(ctrl_offset[59]),
        .R(areset));
  FDRE \int_input_r_reg[5] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[5]),
        .Q(ctrl_offset[5]),
        .R(areset));
  FDRE \int_input_r_reg[60] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[28]),
        .Q(ctrl_offset[60]),
        .R(areset));
  FDRE \int_input_r_reg[61] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[29]),
        .Q(ctrl_offset[61]),
        .R(areset));
  FDRE \int_input_r_reg[62] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[30]),
        .Q(ctrl_offset[62]),
        .R(areset));
  FDRE \int_input_r_reg[63] 
       (.C(ap_clk),
        .CE(\int_input_r[63]_i_1_n_0 ),
        .D(int_input_r_reg0[31]),
        .Q(ctrl_offset[63]),
        .R(areset));
  FDRE \int_input_r_reg[6] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[6]),
        .Q(ctrl_offset[6]),
        .R(areset));
  FDRE \int_input_r_reg[7] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[7]),
        .Q(ctrl_offset[7]),
        .R(areset));
  FDRE \int_input_r_reg[8] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[8]),
        .Q(ctrl_offset[8]),
        .R(areset));
  FDRE \int_input_r_reg[9] 
       (.C(ap_clk),
        .CE(\int_input_r[31]_i_1_n_0 ),
        .D(int_input_r_reg04_out[9]),
        .Q(ctrl_offset[9]),
        .R(areset));
  LUT6 #(
    .INIT(64'hF7777777F8888888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_isr6_out),
        .I2(\int_ier_reg_n_0_[0] ),
        .I3(done),
        .I4(empty),
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
        .I3(done),
        .I4(empty),
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
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[0]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[0] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_p_xcl_gv_p0_reg01_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[10]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[10] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[10]),
        .O(int_p_xcl_gv_p0_reg01_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[11]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[11] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[11]),
        .O(int_p_xcl_gv_p0_reg01_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[12]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[12] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[12]),
        .O(int_p_xcl_gv_p0_reg01_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[13]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[13] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[13]),
        .O(int_p_xcl_gv_p0_reg01_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[14]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[14] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[14]),
        .O(int_p_xcl_gv_p0_reg01_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[15]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[15] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[15]),
        .O(int_p_xcl_gv_p0_reg01_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[16]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[16] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[16]),
        .O(int_p_xcl_gv_p0_reg01_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[17]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[17] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[17]),
        .O(int_p_xcl_gv_p0_reg01_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[18]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[18] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[18]),
        .O(int_p_xcl_gv_p0_reg01_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[19]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[19] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[19]),
        .O(int_p_xcl_gv_p0_reg01_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[1]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[1] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_p_xcl_gv_p0_reg01_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[20]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[20] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[20]),
        .O(int_p_xcl_gv_p0_reg01_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[21]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[21] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[21]),
        .O(int_p_xcl_gv_p0_reg01_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[22]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[22] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[22]),
        .O(int_p_xcl_gv_p0_reg01_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[23]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[23] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[23]),
        .O(int_p_xcl_gv_p0_reg01_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[24]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[24] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[24]),
        .O(int_p_xcl_gv_p0_reg01_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[25]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[25] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[25]),
        .O(int_p_xcl_gv_p0_reg01_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[26]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[26] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[26]),
        .O(int_p_xcl_gv_p0_reg01_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[27]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[27] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[27]),
        .O(int_p_xcl_gv_p0_reg01_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[28]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[28] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[28]),
        .O(int_p_xcl_gv_p0_reg01_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[29]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[29] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[29]),
        .O(int_p_xcl_gv_p0_reg01_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[2]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[2] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_p_xcl_gv_p0_reg01_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[30]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[30] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[30]),
        .O(int_p_xcl_gv_p0_reg01_out[30]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \int_p_xcl_gv_p0[31]_i_1 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\int_p_xcl_gv_p0[31]_i_3_n_0 ),
        .O(\int_p_xcl_gv_p0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[31]_i_2 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[31] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[31]),
        .O(int_p_xcl_gv_p0_reg01_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \int_p_xcl_gv_p0[31]_i_3 
       (.I0(\waddr_reg_n_0_[1] ),
        .I1(\waddr_reg_n_0_[0] ),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_control_WVALID),
        .O(\int_p_xcl_gv_p0[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[32]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[32] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_p_xcl_gv_p0_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[33]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[33] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_p_xcl_gv_p0_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[34]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[34] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_p_xcl_gv_p0_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[35]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[35] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_p_xcl_gv_p0_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[36]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[36] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_p_xcl_gv_p0_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[37]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[37] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_p_xcl_gv_p0_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[38]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[38] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_p_xcl_gv_p0_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[39]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[39] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_p_xcl_gv_p0_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[3]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[3] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_p_xcl_gv_p0_reg01_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[40]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[40] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[8]),
        .O(int_p_xcl_gv_p0_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[41]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[41] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[9]),
        .O(int_p_xcl_gv_p0_reg0[9]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[42]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[42] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[10]),
        .O(int_p_xcl_gv_p0_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[43]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[43] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[11]),
        .O(int_p_xcl_gv_p0_reg0[11]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[44]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[44] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[12]),
        .O(int_p_xcl_gv_p0_reg0[12]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[45]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[45] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[13]),
        .O(int_p_xcl_gv_p0_reg0[13]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[46]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[46] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[14]),
        .O(int_p_xcl_gv_p0_reg0[14]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[47]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[47] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[15]),
        .O(int_p_xcl_gv_p0_reg0[15]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[48]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[48] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[16]),
        .O(int_p_xcl_gv_p0_reg0[16]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[49]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[49] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[17]),
        .O(int_p_xcl_gv_p0_reg0[17]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[4]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[4] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_p_xcl_gv_p0_reg01_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[50]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[50] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[18]),
        .O(int_p_xcl_gv_p0_reg0[18]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[51]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[51] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[19]),
        .O(int_p_xcl_gv_p0_reg0[19]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[52]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[52] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[20]),
        .O(int_p_xcl_gv_p0_reg0[20]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[53]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[53] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[21]),
        .O(int_p_xcl_gv_p0_reg0[21]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[54]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[54] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[22]),
        .O(int_p_xcl_gv_p0_reg0[22]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[55]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[55] ),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[23]),
        .O(int_p_xcl_gv_p0_reg0[23]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[56]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[56] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[24]),
        .O(int_p_xcl_gv_p0_reg0[24]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[57]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[57] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[25]),
        .O(int_p_xcl_gv_p0_reg0[25]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[58]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[58] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[26]),
        .O(int_p_xcl_gv_p0_reg0[26]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[59]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[59] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[27]),
        .O(int_p_xcl_gv_p0_reg0[27]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[5]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[5] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_p_xcl_gv_p0_reg01_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[60]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[60] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[28]),
        .O(int_p_xcl_gv_p0_reg0[28]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[61]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[61] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[29]),
        .O(int_p_xcl_gv_p0_reg0[29]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[62]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[62] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[30]),
        .O(int_p_xcl_gv_p0_reg0[30]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \int_p_xcl_gv_p0[63]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[5] ),
        .I4(\int_p_xcl_gv_p0[31]_i_3_n_0 ),
        .O(\int_p_xcl_gv_p0[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[63]_i_2 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[63] ),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[31]),
        .O(int_p_xcl_gv_p0_reg0[31]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[6]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[6] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_p_xcl_gv_p0_reg01_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[7]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[7] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_p_xcl_gv_p0_reg01_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[8]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[8] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[8]),
        .O(int_p_xcl_gv_p0_reg01_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_p_xcl_gv_p0[9]_i_1 
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[9] ),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[9]),
        .O(int_p_xcl_gv_p0_reg01_out[9]));
  FDRE \int_p_xcl_gv_p0_reg[0] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[0]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[0] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[10] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[10]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[10] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[11] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[11]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[11] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[12] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[12]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[12] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[13] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[13]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[13] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[14] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[14]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[14] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[15] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[15]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[15] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[16] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[16]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[16] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[17] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[17]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[17] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[18] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[18]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[18] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[19] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[19]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[19] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[1] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[1]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[1] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[20] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[20]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[20] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[21] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[21]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[21] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[22] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[22]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[22] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[23] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[23]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[23] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[24] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[24]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[24] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[25] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[25]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[25] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[26] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[26]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[26] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[27] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[27]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[27] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[28] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[28]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[28] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[29] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[29]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[29] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[2] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[2]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[2] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[30] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[30]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[30] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[31] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[31]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[31] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[32] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[0]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[32] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[33] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[1]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[33] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[34] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[2]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[34] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[35] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[3]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[35] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[36] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[4]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[36] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[37] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[5]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[37] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[38] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[6]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[38] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[39] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[7]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[39] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[3] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[3]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[3] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[40] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[8]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[40] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[41] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[9]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[41] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[42] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[10]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[42] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[43] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[11]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[43] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[44] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[12]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[44] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[45] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[13]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[45] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[46] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[14]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[46] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[47] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[15]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[47] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[48] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[16]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[48] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[49] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[17]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[49] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[4] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[4]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[4] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[50] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[18]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[50] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[51] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[19]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[51] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[52] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[20]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[52] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[53] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[21]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[53] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[54] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[22]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[54] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[55] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[23]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[55] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[56] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[24]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[56] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[57] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[25]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[57] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[58] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[26]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[58] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[59] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[27]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[59] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[5] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[5]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[5] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[60] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[28]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[60] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[61] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[29]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[61] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[62] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[30]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[62] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[63] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[63]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg0[31]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[63] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[6] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[6]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[6] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[7] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[7]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[7] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[8] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[8]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[8] ),
        .R(areset));
  FDRE \int_p_xcl_gv_p0_reg[9] 
       (.C(ap_clk),
        .CE(\int_p_xcl_gv_p0[31]_i_1_n_0 ),
        .D(int_p_xcl_gv_p0_reg01_out[9]),
        .Q(\int_p_xcl_gv_p0_reg_n_0_[9] ),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[0]_i_1 
       (.I0(ctrl_length[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_size0[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[10]_i_1 
       (.I0(Q[2]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[10]),
        .O(int_size0[10]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[11]_i_1 
       (.I0(Q[3]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[11]),
        .O(int_size0[11]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[12]_i_1 
       (.I0(Q[4]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[12]),
        .O(int_size0[12]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[13]_i_1 
       (.I0(Q[5]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[13]),
        .O(int_size0[13]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[14]_i_1 
       (.I0(Q[6]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[14]),
        .O(int_size0[14]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[15]_i_1 
       (.I0(Q[7]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[15]),
        .O(int_size0[15]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[16]_i_1 
       (.I0(Q[8]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[16]),
        .O(int_size0[16]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[17]_i_1 
       (.I0(Q[9]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[17]),
        .O(int_size0[17]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[18]_i_1 
       (.I0(Q[10]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[18]),
        .O(int_size0[18]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[19]_i_1 
       (.I0(Q[11]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[19]),
        .O(int_size0[19]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[1]_i_1 
       (.I0(ctrl_length[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_size0[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[20]_i_1 
       (.I0(Q[12]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[20]),
        .O(int_size0[20]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[21]_i_1 
       (.I0(Q[13]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[21]),
        .O(int_size0[21]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[22]_i_1 
       (.I0(Q[14]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[22]),
        .O(int_size0[22]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[23]_i_1 
       (.I0(Q[15]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(s_axi_control_WDATA[23]),
        .O(int_size0[23]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[24]_i_1 
       (.I0(Q[16]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[24]),
        .O(int_size0[24]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[25]_i_1 
       (.I0(Q[17]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[25]),
        .O(int_size0[25]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[26]_i_1 
       (.I0(Q[18]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[26]),
        .O(int_size0[26]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[27]_i_1 
       (.I0(Q[19]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[27]),
        .O(int_size0[27]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[28]_i_1 
       (.I0(Q[20]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[28]),
        .O(int_size0[28]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[29]_i_1 
       (.I0(Q[21]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[29]),
        .O(int_size0[29]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[2]_i_1 
       (.I0(ctrl_length[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_size0[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[31]_i_2 
       (.I0(ctrl_length[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(s_axi_control_WDATA[31]),
        .O(int_size0[31]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[3]_i_1 
       (.I0(ctrl_length[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_size0[3]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[4]_i_1 
       (.I0(ctrl_length[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[4]),
        .O(int_size0[4]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[5]_i_1 
       (.I0(ctrl_length[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[5]),
        .O(int_size0[5]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[6]_i_1 
       (.I0(ctrl_length[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[6]),
        .O(int_size0[6]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[7]_i_1 
       (.I0(ctrl_length[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[7]),
        .O(int_size0[7]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_size[8]_i_1 
       (.I0(Q[0]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(s_axi_control_WDATA[8]),
        .O(int_size0[8]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
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
        .I1(ctrl_length[7]),
        .I2(\final_burst_len[7]_i_2_n_0 ),
        .I3(ctrl_length[6]),
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
       (.I0(\int_p_xcl_gv_p0_reg_n_0_[32] ),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_p_xcl_gv_p0_reg_n_0_[0] ),
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
    .INIT(64'hFAC000000AC00000)) 
    \rdata[0]_i_4 
       (.I0(int_gie_reg_n_0),
        .I1(\int_ier_reg_n_0_[0] ),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(\rdata[1]_i_5_n_0 ),
        .I5(\int_isr_reg_n_0_[0] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[10] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[42] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[11] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[43] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[12] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[44] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[13] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[45] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[14] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[46] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[15] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[47] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[16] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[48] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[17] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[49] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[18] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[50] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[19] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[51] ),
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
        .I3(\int_p_xcl_gv_p0_reg_n_0_[1] ),
        .I4(\int_p_xcl_gv_p0_reg_n_0_[33] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[20] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[52] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[21] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[53] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[22] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[54] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[23] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[55] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[24] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[56] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[25] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[57] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[26] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[58] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[27] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[59] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[28] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[60] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[29] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[61] ),
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
        .I3(\int_p_xcl_gv_p0_reg_n_0_[2] ),
        .I4(\int_p_xcl_gv_p0_reg_n_0_[34] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[30] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[62] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[31] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[63] ),
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
        .I3(\int_p_xcl_gv_p0_reg_n_0_[3] ),
        .I4(\int_p_xcl_gv_p0_reg_n_0_[35] ),
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
        .I2(done),
        .I3(empty),
        .I4(\rdata[0]_i_5_n_0 ),
        .O(\rdata[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \rdata[4]_i_1 
       (.I0(\rdata[4]_i_2_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\int_p_xcl_gv_p0_reg_n_0_[4] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[36] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[5] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[37] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[6] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[38] ),
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
        .I3(\int_p_xcl_gv_p0_reg_n_0_[7] ),
        .I4(\int_p_xcl_gv_p0_reg_n_0_[39] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[8] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[40] ),
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
        .I2(\int_p_xcl_gv_p0_reg_n_0_[9] ),
        .I3(\int_p_xcl_gv_p0_reg_n_0_[41] ),
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
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_ARREADY_INST_0
       (.I0(areset),
        .I1(FSM_sequential_rstate_reg_0),
        .O(s_axi_control_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_control_AWREADY_INST_0
       (.I0(\FSM_onehot_wstate_reg_n_0_[0] ),
        .I1(areset),
        .O(s_axi_control_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter
   (m_axi_gmem_ARLEN,
    m_axi_gmem_ARREADY_0,
    areset,
    ap_clk,
    Q,
    start,
    is_zero_r_reg_0,
    m_axi_gmem_ARREADY,
    is_zero_r_reg_1,
    \m_axi_gmem_ARLEN[7] ,
    ar_idle);
  output [7:0]m_axi_gmem_ARLEN;
  output m_axi_gmem_ARREADY_0;
  input areset;
  input ap_clk;
  input [23:0]Q;
  input start;
  input is_zero_r_reg_0;
  input m_axi_gmem_ARREADY;
  input is_zero_r_reg_1;
  input [7:0]\m_axi_gmem_ARLEN[7] ;
  input ar_idle;

  wire [23:0]Q;
  wire ap_clk;
  wire ar_idle;
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
  wire \count_r[16]_i_2_n_0 ;
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
  wire is_zero_r_i_2_n_0;
  wire is_zero_r_i_3__0_n_0;
  wire is_zero_r_i_4__0_n_0;
  wire is_zero_r_i_5__0_n_0;
  wire is_zero_r_i_6__0_n_0;
  wire is_zero_r_reg_0;
  wire is_zero_r_reg_1;
  wire is_zero_r_reg_n_0;
  wire [7:0]m_axi_gmem_ARLEN;
  wire [7:0]\m_axi_gmem_ARLEN[7] ;
  wire m_axi_gmem_ARREADY;
  wire m_axi_gmem_ARREADY_0;
  wire p_0_in;
  wire start;
  wire [7:7]\NLW_count_r_reg[16]_i_1__0_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00FF0080)) 
    ar_idle_i_1
       (.I0(m_axi_gmem_ARREADY),
        .I1(is_zero_r_reg_1),
        .I2(is_zero_r_reg_n_0),
        .I3(start),
        .I4(ar_idle),
        .O(m_axi_gmem_ARREADY_0));
  LUT3 #(
    .INIT(8'hEA)) 
    \count_r[0]_i_1 
       (.I0(start),
        .I1(is_zero_r_reg_1),
        .I2(m_axi_gmem_ARREADY),
        .O(is_zero_r));
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
    \count_r[16]_i_2 
       (.I0(start),
        .O(\count_r[16]_i_2_n_0 ));
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
    .INIT(8'h8B)) 
    \count_r[16]_i_9__0 
       (.I0(Q[23]),
        .I1(start),
        .I2(count_r_reg[23]),
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
        .DI({1'b0,\count_r[16]_i_2_n_0 ,\count_r[16]_i_3__0_n_0 ,\count_r[16]_i_4__0_n_0 ,\count_r[16]_i_5__0_n_0 ,\count_r[16]_i_6__0_n_0 ,\count_r[16]_i_7__0_n_0 ,\count_r[16]_i_8__0_n_0 }),
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
    is_zero_r_i_1
       (.I0(is_zero_r_i_2_n_0),
        .I1(is_zero_r_i_3__0_n_0),
        .I2(is_zero_r_i_4__0_n_0),
        .I3(is_zero_r_i_5__0_n_0),
        .I4(is_zero_r_reg_0),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h8000)) 
    is_zero_r_i_2
       (.I0(m_axi_gmem_ARREADY),
        .I1(is_zero_r_reg_1),
        .I2(count_r_reg[0]),
        .I3(is_zero_r_i_6__0_n_0),
        .O(is_zero_r_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_3__0
       (.I0(count_r_reg[15]),
        .I1(count_r_reg[16]),
        .I2(count_r_reg[13]),
        .I3(count_r_reg[14]),
        .I4(count_r_reg[18]),
        .I5(count_r_reg[17]),
        .O(is_zero_r_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_4__0
       (.I0(count_r_reg[21]),
        .I1(count_r_reg[22]),
        .I2(count_r_reg[19]),
        .I3(count_r_reg[20]),
        .I4(start),
        .I5(count_r_reg[23]),
        .O(is_zero_r_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_5__0
       (.I0(count_r_reg[3]),
        .I1(count_r_reg[4]),
        .I2(count_r_reg[1]),
        .I3(count_r_reg[2]),
        .I4(count_r_reg[6]),
        .I5(count_r_reg[5]),
        .O(is_zero_r_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_6__0
       (.I0(count_r_reg[9]),
        .I1(count_r_reg[10]),
        .I2(count_r_reg[7]),
        .I3(count_r_reg[8]),
        .I4(count_r_reg[12]),
        .I5(count_r_reg[11]),
        .O(is_zero_r_i_6__0_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(p_0_in),
        .Q(is_zero_r_reg_n_0),
        .S(areset));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_gmem_ARLEN[0]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(is_zero_r_reg_0),
        .I2(\m_axi_gmem_ARLEN[7] [0]),
        .O(m_axi_gmem_ARLEN[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_gmem_ARLEN[1]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(is_zero_r_reg_0),
        .I2(\m_axi_gmem_ARLEN[7] [1]),
        .O(m_axi_gmem_ARLEN[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_gmem_ARLEN[2]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(is_zero_r_reg_0),
        .I2(\m_axi_gmem_ARLEN[7] [2]),
        .O(m_axi_gmem_ARLEN[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_gmem_ARLEN[3]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(is_zero_r_reg_0),
        .I2(\m_axi_gmem_ARLEN[7] [3]),
        .O(m_axi_gmem_ARLEN[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_gmem_ARLEN[4]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(is_zero_r_reg_0),
        .I2(\m_axi_gmem_ARLEN[7] [4]),
        .O(m_axi_gmem_ARLEN[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_gmem_ARLEN[5]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(is_zero_r_reg_0),
        .I2(\m_axi_gmem_ARLEN[7] [5]),
        .O(m_axi_gmem_ARLEN[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_gmem_ARLEN[6]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(is_zero_r_reg_0),
        .I2(\m_axi_gmem_ARLEN[7] [6]),
        .O(m_axi_gmem_ARLEN[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_gmem_ARLEN[7]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(is_zero_r_reg_0),
        .I2(\m_axi_gmem_ARLEN[7] [7]),
        .O(m_axi_gmem_ARLEN[7]));
endmodule

(* ORIG_REF_NAME = "krnl_input_stage_rtl_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter_0
   (\num_transactions_reg[16] ,
    is_zero_r_reg_0,
    areset,
    ap_clk,
    Q,
    start,
    m_axi_gmem_RVALID,
    m_axi_gmem_RID,
    m_axi_gmem_RLAST);
  output \num_transactions_reg[16] ;
  output is_zero_r_reg_0;
  input areset;
  input ap_clk;
  input [23:0]Q;
  input start;
  input m_axi_gmem_RVALID;
  input [0:0]m_axi_gmem_RID;
  input m_axi_gmem_RLAST;

  wire [23:0]Q;
  wire ap_clk;
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
  wire \count_r[0]_i_1__0_n_0 ;
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
  wire is_zero_r_i_1__0_n_0;
  wire is_zero_r_i_2__0_n_0;
  wire is_zero_r_i_3_n_0;
  wire is_zero_r_i_4_n_0;
  wire is_zero_r_i_5_n_0;
  wire is_zero_r_i_6_n_0;
  wire is_zero_r_reg_0;
  wire is_zero_r_reg_n_0;
  wire \m_axi_gmem_ARLEN[7]_INST_0_i_2_n_0 ;
  wire \m_axi_gmem_ARLEN[7]_INST_0_i_3_n_0 ;
  wire \m_axi_gmem_ARLEN[7]_INST_0_i_4_n_0 ;
  wire \m_axi_gmem_ARLEN[7]_INST_0_i_5_n_0 ;
  wire \m_axi_gmem_ARLEN[7]_INST_0_i_6_n_0 ;
  wire \m_axi_gmem_ARLEN[7]_INST_0_i_7_n_0 ;
  wire [0:0]m_axi_gmem_RID;
  wire m_axi_gmem_RLAST;
  wire m_axi_gmem_RVALID;
  wire \num_transactions_reg[16] ;
  wire start;
  wire [7:7]\NLW_count_r_reg[16]_i_1_CO_UNCONNECTED ;

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
  LUT4 #(
    .INIT(16'hAEAA)) 
    \count_r[0]_i_1__0 
       (.I0(start),
        .I1(m_axi_gmem_RLAST),
        .I2(m_axi_gmem_RID),
        .I3(m_axi_gmem_RVALID),
        .O(\count_r[0]_i_1__0_n_0 ));
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
    .INIT(8'h8B)) 
    \count_r[16]_i_9 
       (.I0(Q[23]),
        .I1(start),
        .I2(count_r_reg[23]),
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
        .CE(\count_r[0]_i_1__0_n_0 ),
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
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_13 ),
        .Q(count_r_reg[10]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[11] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_12 ),
        .Q(count_r_reg[11]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[12] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_11 ),
        .Q(count_r_reg[12]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[13] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_10 ),
        .Q(count_r_reg[13]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[14] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_9 ),
        .Q(count_r_reg[14]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[15] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_8 ),
        .Q(count_r_reg[15]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[16] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
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
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_14 ),
        .Q(count_r_reg[17]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[18] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_13 ),
        .Q(count_r_reg[18]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[19] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_12 ),
        .Q(count_r_reg[19]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_14 ),
        .Q(count_r_reg[1]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[20] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_11 ),
        .Q(count_r_reg[20]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[21] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_10 ),
        .Q(count_r_reg[21]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[22] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_9 ),
        .Q(count_r_reg[22]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[23] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_8 ),
        .Q(count_r_reg[23]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_13 ),
        .Q(count_r_reg[2]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_12 ),
        .Q(count_r_reg[3]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_11 ),
        .Q(count_r_reg[4]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_10 ),
        .Q(count_r_reg[5]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_9 ),
        .Q(count_r_reg[6]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_8 ),
        .Q(count_r_reg[7]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[8] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
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
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_14 ),
        .Q(count_r_reg[9]),
        .R(areset));
  LUT4 #(
    .INIT(16'h0800)) 
    \done[0]_i_1 
       (.I0(is_zero_r_reg_n_0),
        .I1(m_axi_gmem_RLAST),
        .I2(m_axi_gmem_RID),
        .I3(m_axi_gmem_RVALID),
        .O(is_zero_r_reg_0));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    is_zero_r_i_1__0
       (.I0(is_zero_r_i_2__0_n_0),
        .I1(is_zero_r_i_3_n_0),
        .I2(is_zero_r_i_4_n_0),
        .I3(is_zero_r_i_5_n_0),
        .I4(\num_transactions_reg[16] ),
        .O(is_zero_r_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    is_zero_r_i_2__0
       (.I0(m_axi_gmem_RVALID),
        .I1(m_axi_gmem_RID),
        .I2(m_axi_gmem_RLAST),
        .I3(count_r_reg[0]),
        .I4(is_zero_r_i_6_n_0),
        .O(is_zero_r_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_3
       (.I0(count_r_reg[15]),
        .I1(count_r_reg[16]),
        .I2(count_r_reg[13]),
        .I3(count_r_reg[14]),
        .I4(count_r_reg[18]),
        .I5(count_r_reg[17]),
        .O(is_zero_r_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_4
       (.I0(count_r_reg[21]),
        .I1(count_r_reg[22]),
        .I2(count_r_reg[19]),
        .I3(count_r_reg[20]),
        .I4(start),
        .I5(count_r_reg[23]),
        .O(is_zero_r_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_5
       (.I0(count_r_reg[3]),
        .I1(count_r_reg[4]),
        .I2(count_r_reg[1]),
        .I3(count_r_reg[2]),
        .I4(count_r_reg[6]),
        .I5(count_r_reg[5]),
        .O(is_zero_r_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_6
       (.I0(count_r_reg[9]),
        .I1(count_r_reg[10]),
        .I2(count_r_reg[7]),
        .I3(count_r_reg[8]),
        .I4(count_r_reg[12]),
        .I5(count_r_reg[11]),
        .O(is_zero_r_i_6_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(is_zero_r_i_1__0_n_0),
        .Q(is_zero_r_reg_n_0),
        .S(areset));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axi_gmem_ARLEN[7]_INST_0_i_1 
       (.I0(\m_axi_gmem_ARLEN[7]_INST_0_i_2_n_0 ),
        .I1(\m_axi_gmem_ARLEN[7]_INST_0_i_3_n_0 ),
        .I2(\m_axi_gmem_ARLEN[7]_INST_0_i_4_n_0 ),
        .I3(\m_axi_gmem_ARLEN[7]_INST_0_i_5_n_0 ),
        .I4(\m_axi_gmem_ARLEN[7]_INST_0_i_6_n_0 ),
        .I5(\m_axi_gmem_ARLEN[7]_INST_0_i_7_n_0 ),
        .O(\num_transactions_reg[16] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_ARLEN[7]_INST_0_i_2 
       (.I0(Q[16]),
        .I1(Q[15]),
        .I2(Q[18]),
        .I3(Q[17]),
        .O(\m_axi_gmem_ARLEN[7]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_ARLEN[7]_INST_0_i_3 
       (.I0(Q[20]),
        .I1(Q[19]),
        .I2(Q[22]),
        .I3(Q[21]),
        .O(\m_axi_gmem_ARLEN[7]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_ARLEN[7]_INST_0_i_4 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[10]),
        .I3(Q[9]),
        .O(\m_axi_gmem_ARLEN[7]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_ARLEN[7]_INST_0_i_5 
       (.I0(Q[12]),
        .I1(Q[11]),
        .I2(Q[14]),
        .I3(Q[13]),
        .O(\m_axi_gmem_ARLEN[7]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_ARLEN[7]_INST_0_i_6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[6]),
        .I3(Q[5]),
        .O(\m_axi_gmem_ARLEN[7]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \m_axi_gmem_ARLEN[7]_INST_0_i_7 
       (.I0(Q[0]),
        .I1(Q[23]),
        .I2(start),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\m_axi_gmem_ARLEN[7]_INST_0_i_7_n_0 ));
endmodule

(* ORIG_REF_NAME = "krnl_input_stage_rtl_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter__parameterized0
   (\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ,
    areset,
    ap_clk,
    m_axi_gmem_ARREADY,
    \count_r_reg[1]_0 ,
    m_axi_gmem_RVALID,
    m_axi_gmem_RID,
    m_axi_gmem_RLAST,
    prog_full,
    ar_idle);
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ;
  input areset;
  input ap_clk;
  input m_axi_gmem_ARREADY;
  input \count_r_reg[1]_0 ;
  input m_axi_gmem_RVALID;
  input [0:0]m_axi_gmem_RID;
  input m_axi_gmem_RLAST;
  input prog_full;
  input ar_idle;

  wire ap_clk;
  wire ar_idle;
  wire areset;
  wire \count_r[0]_i_1__1_n_0 ;
  wire \count_r[1]_i_1_n_0 ;
  wire \count_r[1]_i_2_n_0 ;
  wire \count_r[1]_i_3_n_0 ;
  wire \count_r_reg[1]_0 ;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[1] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ;
  wire is_zero_r_i_1__1_n_0;
  wire is_zero_r_i_2__1_n_0;
  wire m_axi_gmem_ARREADY;
  wire [0:0]m_axi_gmem_RID;
  wire m_axi_gmem_RLAST;
  wire m_axi_gmem_RVALID;
  wire prog_full;
  wire stall_ar;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0001CCCD)) 
    arvalid_r_i_1
       (.I0(prog_full),
        .I1(\count_r_reg[1]_0 ),
        .I2(stall_ar),
        .I3(ar_idle),
        .I4(m_axi_gmem_ARREADY),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_1__1 
       (.I0(\count_r_reg_n_0_[0] ),
        .O(\count_r[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h88788888)) 
    \count_r[1]_i_1 
       (.I0(m_axi_gmem_ARREADY),
        .I1(\count_r_reg[1]_0 ),
        .I2(m_axi_gmem_RVALID),
        .I3(m_axi_gmem_RID),
        .I4(m_axi_gmem_RLAST),
        .O(\count_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF08000800F7FF)) 
    \count_r[1]_i_2 
       (.I0(\count_r[1]_i_3_n_0 ),
        .I1(m_axi_gmem_RVALID),
        .I2(m_axi_gmem_RID),
        .I3(m_axi_gmem_RLAST),
        .I4(\count_r_reg_n_0_[1] ),
        .I5(\count_r_reg_n_0_[0] ),
        .O(\count_r[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count_r[1]_i_3 
       (.I0(m_axi_gmem_ARREADY),
        .I1(\count_r_reg[1]_0 ),
        .O(\count_r[1]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[0] 
       (.C(ap_clk),
        .CE(\count_r[1]_i_1_n_0 ),
        .D(\count_r[0]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[0] ),
        .S(areset));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[1] 
       (.C(ap_clk),
        .CE(\count_r[1]_i_1_n_0 ),
        .D(\count_r[1]_i_2_n_0 ),
        .Q(\count_r_reg_n_0_[1] ),
        .S(areset));
  LUT6 #(
    .INIT(64'h2FFFF88820000888)) 
    is_zero_r_i_1__1
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(\count_r_reg_n_0_[1] ),
        .I2(m_axi_gmem_ARREADY),
        .I3(\count_r_reg[1]_0 ),
        .I4(is_zero_r_i_2__1_n_0),
        .I5(stall_ar),
        .O(is_zero_r_i_1__1_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    is_zero_r_i_2__1
       (.I0(m_axi_gmem_RVALID),
        .I1(m_axi_gmem_RID),
        .I2(m_axi_gmem_RLAST),
        .O(is_zero_r_i_2__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_zero_r_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(is_zero_r_i_1__1_n_0),
        .Q(stall_ar),
        .R(areset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_int
   (s_axi_control_BVALID,
    \FSM_onehot_wstate_reg[1] ,
    p0_TDATA,
    s_axi_control_RDATA,
    m_axi_gmem_ARADDR,
    s_axi_control_AWREADY,
    FSM_sequential_rstate_reg,
    s_axi_control_ARREADY,
    arvalid_r_reg,
    p0_TVALID,
    m_axi_gmem_ARLEN,
    ap_clk,
    m_axi_gmem_RDATA,
    p0_TREADY,
    s_axi_control_AWADDR,
    s_axi_control_WDATA,
    s_axi_control_RREADY,
    s_axi_control_ARVALID,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    s_axi_control_ARADDR,
    m_axi_gmem_ARREADY,
    m_axi_gmem_RVALID,
    m_axi_gmem_RID,
    m_axi_gmem_RLAST,
    ap_rst_n);
  output s_axi_control_BVALID;
  output \FSM_onehot_wstate_reg[1] ;
  output [31:0]p0_TDATA;
  output [31:0]s_axi_control_RDATA;
  output [63:0]m_axi_gmem_ARADDR;
  output s_axi_control_AWREADY;
  output FSM_sequential_rstate_reg;
  output s_axi_control_ARREADY;
  output arvalid_r_reg;
  output p0_TVALID;
  output [7:0]m_axi_gmem_ARLEN;
  input ap_clk;
  input [31:0]m_axi_gmem_RDATA;
  input p0_TREADY;
  input [5:0]s_axi_control_AWADDR;
  input [31:0]s_axi_control_WDATA;
  input s_axi_control_RREADY;
  input s_axi_control_ARVALID;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [5:0]s_axi_control_ARADDR;
  input m_axi_gmem_ARREADY;
  input m_axi_gmem_RVALID;
  input [0:0]m_axi_gmem_RID;
  input m_axi_gmem_RLAST;
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
  wire arvalid_r_reg;
  wire [30:8]ctrl_length;
  wire ctrl_rd_fifo_prog_full;
  wire done;
  wire [7:0]final_burst_len0;
  wire inst_axi_read_master_n_73;
  wire inst_krnl_input_stage_control_s_axi_n_100;
  wire inst_krnl_input_stage_control_s_axi_n_101;
  wire inst_krnl_input_stage_control_s_axi_n_102;
  wire inst_krnl_input_stage_control_s_axi_n_103;
  wire inst_krnl_input_stage_control_s_axi_n_104;
  wire inst_krnl_input_stage_control_s_axi_n_105;
  wire inst_krnl_input_stage_control_s_axi_n_106;
  wire inst_krnl_input_stage_control_s_axi_n_107;
  wire inst_krnl_input_stage_control_s_axi_n_108;
  wire inst_krnl_input_stage_control_s_axi_n_109;
  wire inst_krnl_input_stage_control_s_axi_n_110;
  wire inst_krnl_input_stage_control_s_axi_n_111;
  wire inst_krnl_input_stage_control_s_axi_n_112;
  wire inst_krnl_input_stage_control_s_axi_n_113;
  wire inst_krnl_input_stage_control_s_axi_n_114;
  wire inst_krnl_input_stage_control_s_axi_n_115;
  wire inst_krnl_input_stage_control_s_axi_n_116;
  wire inst_krnl_input_stage_control_s_axi_n_117;
  wire inst_krnl_input_stage_control_s_axi_n_118;
  wire inst_krnl_input_stage_control_s_axi_n_119;
  wire inst_krnl_input_stage_control_s_axi_n_120;
  wire inst_krnl_input_stage_control_s_axi_n_121;
  wire inst_krnl_input_stage_control_s_axi_n_122;
  wire inst_krnl_input_stage_control_s_axi_n_123;
  wire inst_krnl_input_stage_control_s_axi_n_124;
  wire inst_krnl_input_stage_control_s_axi_n_125;
  wire inst_krnl_input_stage_control_s_axi_n_126;
  wire inst_krnl_input_stage_control_s_axi_n_28;
  wire inst_krnl_input_stage_control_s_axi_n_30;
  wire inst_krnl_input_stage_control_s_axi_n_31;
  wire inst_krnl_input_stage_control_s_axi_n_32;
  wire inst_krnl_input_stage_control_s_axi_n_33;
  wire inst_krnl_input_stage_control_s_axi_n_34;
  wire inst_krnl_input_stage_control_s_axi_n_35;
  wire inst_krnl_input_stage_control_s_axi_n_36;
  wire inst_krnl_input_stage_control_s_axi_n_37;
  wire inst_krnl_input_stage_control_s_axi_n_38;
  wire inst_krnl_input_stage_control_s_axi_n_40;
  wire inst_krnl_input_stage_control_s_axi_n_41;
  wire inst_krnl_input_stage_control_s_axi_n_42;
  wire inst_krnl_input_stage_control_s_axi_n_43;
  wire inst_krnl_input_stage_control_s_axi_n_44;
  wire inst_krnl_input_stage_control_s_axi_n_45;
  wire inst_krnl_input_stage_control_s_axi_n_46;
  wire inst_krnl_input_stage_control_s_axi_n_47;
  wire inst_krnl_input_stage_control_s_axi_n_48;
  wire inst_krnl_input_stage_control_s_axi_n_49;
  wire inst_krnl_input_stage_control_s_axi_n_50;
  wire inst_krnl_input_stage_control_s_axi_n_51;
  wire inst_krnl_input_stage_control_s_axi_n_52;
  wire inst_krnl_input_stage_control_s_axi_n_53;
  wire inst_krnl_input_stage_control_s_axi_n_54;
  wire inst_krnl_input_stage_control_s_axi_n_55;
  wire inst_krnl_input_stage_control_s_axi_n_56;
  wire inst_krnl_input_stage_control_s_axi_n_57;
  wire inst_krnl_input_stage_control_s_axi_n_58;
  wire inst_krnl_input_stage_control_s_axi_n_59;
  wire inst_krnl_input_stage_control_s_axi_n_60;
  wire inst_krnl_input_stage_control_s_axi_n_61;
  wire inst_krnl_input_stage_control_s_axi_n_62;
  wire inst_krnl_input_stage_control_s_axi_n_63;
  wire inst_krnl_input_stage_control_s_axi_n_72;
  wire inst_krnl_input_stage_control_s_axi_n_73;
  wire inst_krnl_input_stage_control_s_axi_n_74;
  wire inst_krnl_input_stage_control_s_axi_n_75;
  wire inst_krnl_input_stage_control_s_axi_n_76;
  wire inst_krnl_input_stage_control_s_axi_n_77;
  wire inst_krnl_input_stage_control_s_axi_n_78;
  wire inst_krnl_input_stage_control_s_axi_n_79;
  wire inst_krnl_input_stage_control_s_axi_n_80;
  wire inst_krnl_input_stage_control_s_axi_n_81;
  wire inst_krnl_input_stage_control_s_axi_n_82;
  wire inst_krnl_input_stage_control_s_axi_n_83;
  wire inst_krnl_input_stage_control_s_axi_n_84;
  wire inst_krnl_input_stage_control_s_axi_n_85;
  wire inst_krnl_input_stage_control_s_axi_n_86;
  wire inst_krnl_input_stage_control_s_axi_n_87;
  wire inst_krnl_input_stage_control_s_axi_n_88;
  wire inst_krnl_input_stage_control_s_axi_n_89;
  wire inst_krnl_input_stage_control_s_axi_n_90;
  wire inst_krnl_input_stage_control_s_axi_n_91;
  wire inst_krnl_input_stage_control_s_axi_n_92;
  wire inst_krnl_input_stage_control_s_axi_n_93;
  wire inst_krnl_input_stage_control_s_axi_n_94;
  wire inst_krnl_input_stage_control_s_axi_n_95;
  wire inst_krnl_input_stage_control_s_axi_n_96;
  wire inst_krnl_input_stage_control_s_axi_n_97;
  wire inst_krnl_input_stage_control_s_axi_n_98;
  wire inst_krnl_input_stage_control_s_axi_n_99;
  wire [63:0]m_axi_gmem_ARADDR;
  wire [7:0]m_axi_gmem_ARLEN;
  wire m_axi_gmem_ARREADY;
  wire [31:0]m_axi_gmem_RDATA;
  wire [0:0]m_axi_gmem_RID;
  wire m_axi_gmem_RLAST;
  wire m_axi_gmem_RVALID;
  wire [31:0]p0_TDATA;
  wire p0_TREADY;
  wire p0_TVALID;
  wire p_0_in;
  wire rd_fifo_tvalid_n;
  wire rd_tvalid;
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
  wire \NLW_inst_rd_xpm_fifo_sync[0]_almost_empty_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_almost_full_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_data_valid_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_dbiterr_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_full_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_overflow_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_prog_empty_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_rd_rst_busy_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_sbiterr_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_underflow_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_wr_ack_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_wr_rst_busy_UNCONNECTED ;
  wire [10:0]\NLW_inst_rd_xpm_fifo_sync[0]_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_inst_rd_xpm_fifo_sync[0]_wr_data_count_UNCONNECTED ;

  FDRE #(
    .INIT(1'b1)) 
    ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inst_krnl_input_stage_control_s_axi_n_28),
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
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    areset_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(areset),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inst_axi_read_master_n_73),
        .Q(done),
        .R(areset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_axi_read_master inst_axi_read_master
       (.D(final_burst_len0),
        .O({inst_krnl_input_stage_control_s_axi_n_72,inst_krnl_input_stage_control_s_axi_n_73,inst_krnl_input_stage_control_s_axi_n_74,inst_krnl_input_stage_control_s_axi_n_75,inst_krnl_input_stage_control_s_axi_n_76,inst_krnl_input_stage_control_s_axi_n_77,inst_krnl_input_stage_control_s_axi_n_78,inst_krnl_input_stage_control_s_axi_n_79}),
        .Q(ctrl_length),
        .S({inst_krnl_input_stage_control_s_axi_n_56,inst_krnl_input_stage_control_s_axi_n_57,inst_krnl_input_stage_control_s_axi_n_58,inst_krnl_input_stage_control_s_axi_n_59,inst_krnl_input_stage_control_s_axi_n_60,inst_krnl_input_stage_control_s_axi_n_61,inst_krnl_input_stage_control_s_axi_n_62,inst_krnl_input_stage_control_s_axi_n_63}),
        .\addr_reg[0][0]_0 (inst_krnl_input_stage_control_s_axi_n_38),
        .\addr_reg[0][1]_0 (inst_krnl_input_stage_control_s_axi_n_37),
        .\addr_reg[0][24]_0 ({inst_krnl_input_stage_control_s_axi_n_80,inst_krnl_input_stage_control_s_axi_n_81,inst_krnl_input_stage_control_s_axi_n_82,inst_krnl_input_stage_control_s_axi_n_83,inst_krnl_input_stage_control_s_axi_n_84,inst_krnl_input_stage_control_s_axi_n_85,inst_krnl_input_stage_control_s_axi_n_86,inst_krnl_input_stage_control_s_axi_n_87}),
        .\addr_reg[0][2]_0 (inst_krnl_input_stage_control_s_axi_n_36),
        .\addr_reg[0][32]_0 ({inst_krnl_input_stage_control_s_axi_n_88,inst_krnl_input_stage_control_s_axi_n_89,inst_krnl_input_stage_control_s_axi_n_90,inst_krnl_input_stage_control_s_axi_n_91,inst_krnl_input_stage_control_s_axi_n_92,inst_krnl_input_stage_control_s_axi_n_93,inst_krnl_input_stage_control_s_axi_n_94,inst_krnl_input_stage_control_s_axi_n_95}),
        .\addr_reg[0][3]_0 (inst_krnl_input_stage_control_s_axi_n_35),
        .\addr_reg[0][40]_0 ({inst_krnl_input_stage_control_s_axi_n_96,inst_krnl_input_stage_control_s_axi_n_97,inst_krnl_input_stage_control_s_axi_n_98,inst_krnl_input_stage_control_s_axi_n_99,inst_krnl_input_stage_control_s_axi_n_100,inst_krnl_input_stage_control_s_axi_n_101,inst_krnl_input_stage_control_s_axi_n_102,inst_krnl_input_stage_control_s_axi_n_103}),
        .\addr_reg[0][48]_0 ({inst_krnl_input_stage_control_s_axi_n_104,inst_krnl_input_stage_control_s_axi_n_105,inst_krnl_input_stage_control_s_axi_n_106,inst_krnl_input_stage_control_s_axi_n_107,inst_krnl_input_stage_control_s_axi_n_108,inst_krnl_input_stage_control_s_axi_n_109,inst_krnl_input_stage_control_s_axi_n_110,inst_krnl_input_stage_control_s_axi_n_111}),
        .\addr_reg[0][4]_0 (inst_krnl_input_stage_control_s_axi_n_34),
        .\addr_reg[0][56]_0 ({inst_krnl_input_stage_control_s_axi_n_112,inst_krnl_input_stage_control_s_axi_n_113,inst_krnl_input_stage_control_s_axi_n_114,inst_krnl_input_stage_control_s_axi_n_115,inst_krnl_input_stage_control_s_axi_n_116,inst_krnl_input_stage_control_s_axi_n_117,inst_krnl_input_stage_control_s_axi_n_118,inst_krnl_input_stage_control_s_axi_n_119}),
        .\addr_reg[0][5]_0 (inst_krnl_input_stage_control_s_axi_n_33),
        .\addr_reg[0][63]_0 ({inst_krnl_input_stage_control_s_axi_n_120,inst_krnl_input_stage_control_s_axi_n_121,inst_krnl_input_stage_control_s_axi_n_122,inst_krnl_input_stage_control_s_axi_n_123,inst_krnl_input_stage_control_s_axi_n_124,inst_krnl_input_stage_control_s_axi_n_125,inst_krnl_input_stage_control_s_axi_n_126}),
        .\addr_reg[0][6]_0 (inst_krnl_input_stage_control_s_axi_n_32),
        .\addr_reg[0][7]_0 (inst_krnl_input_stage_control_s_axi_n_31),
        .\addr_reg[0][8]_0 (inst_krnl_input_stage_control_s_axi_n_30),
        .ap_clk(ap_clk),
        .ap_start(ap_start),
        .ap_start_pulse(ap_start_pulse),
        .ap_start_r(ap_start_r),
        .areset(areset),
        .arvalid_r_reg_0(arvalid_r_reg),
        .done(done),
        .empty(rd_fifo_tvalid_n),
        .\gen_fwft.empty_fwft_i_reg (inst_axi_read_master_n_73),
        .m_axi_gmem_ARADDR(m_axi_gmem_ARADDR),
        .m_axi_gmem_ARLEN(m_axi_gmem_ARLEN),
        .m_axi_gmem_ARREADY(m_axi_gmem_ARREADY),
        .m_axi_gmem_RID(m_axi_gmem_RID),
        .m_axi_gmem_RLAST(m_axi_gmem_RLAST),
        .m_axi_gmem_RVALID(m_axi_gmem_RVALID),
        .\num_transactions_reg[15]_0 ({inst_krnl_input_stage_control_s_axi_n_48,inst_krnl_input_stage_control_s_axi_n_49,inst_krnl_input_stage_control_s_axi_n_50,inst_krnl_input_stage_control_s_axi_n_51,inst_krnl_input_stage_control_s_axi_n_52,inst_krnl_input_stage_control_s_axi_n_53,inst_krnl_input_stage_control_s_axi_n_54,inst_krnl_input_stage_control_s_axi_n_55}),
        .\num_transactions_reg[23]_0 ({inst_krnl_input_stage_control_s_axi_n_40,inst_krnl_input_stage_control_s_axi_n_41,inst_krnl_input_stage_control_s_axi_n_42,inst_krnl_input_stage_control_s_axi_n_43,inst_krnl_input_stage_control_s_axi_n_44,inst_krnl_input_stage_control_s_axi_n_45,inst_krnl_input_stage_control_s_axi_n_46,inst_krnl_input_stage_control_s_axi_n_47}),
        .prog_full(ctrl_rd_fifo_prog_full));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_control_s_axi inst_krnl_input_stage_control_s_axi
       (.D(final_burst_len0),
        .\FSM_onehot_wstate_reg[1]_0 (\FSM_onehot_wstate_reg[1] ),
        .FSM_sequential_rstate_reg_0(FSM_sequential_rstate_reg),
        .O({inst_krnl_input_stage_control_s_axi_n_72,inst_krnl_input_stage_control_s_axi_n_73,inst_krnl_input_stage_control_s_axi_n_74,inst_krnl_input_stage_control_s_axi_n_75,inst_krnl_input_stage_control_s_axi_n_76,inst_krnl_input_stage_control_s_axi_n_77,inst_krnl_input_stage_control_s_axi_n_78,inst_krnl_input_stage_control_s_axi_n_79}),
        .Q(ctrl_length),
        .S({inst_krnl_input_stage_control_s_axi_n_56,inst_krnl_input_stage_control_s_axi_n_57,inst_krnl_input_stage_control_s_axi_n_58,inst_krnl_input_stage_control_s_axi_n_59,inst_krnl_input_stage_control_s_axi_n_60,inst_krnl_input_stage_control_s_axi_n_61,inst_krnl_input_stage_control_s_axi_n_62,inst_krnl_input_stage_control_s_axi_n_63}),
        .\addr_reg[0][0] (inst_krnl_input_stage_control_s_axi_n_38),
        .\addr_reg[0][1] (inst_krnl_input_stage_control_s_axi_n_37),
        .\addr_reg[0][24] ({inst_krnl_input_stage_control_s_axi_n_80,inst_krnl_input_stage_control_s_axi_n_81,inst_krnl_input_stage_control_s_axi_n_82,inst_krnl_input_stage_control_s_axi_n_83,inst_krnl_input_stage_control_s_axi_n_84,inst_krnl_input_stage_control_s_axi_n_85,inst_krnl_input_stage_control_s_axi_n_86,inst_krnl_input_stage_control_s_axi_n_87}),
        .\addr_reg[0][2] (inst_krnl_input_stage_control_s_axi_n_36),
        .\addr_reg[0][32] ({inst_krnl_input_stage_control_s_axi_n_88,inst_krnl_input_stage_control_s_axi_n_89,inst_krnl_input_stage_control_s_axi_n_90,inst_krnl_input_stage_control_s_axi_n_91,inst_krnl_input_stage_control_s_axi_n_92,inst_krnl_input_stage_control_s_axi_n_93,inst_krnl_input_stage_control_s_axi_n_94,inst_krnl_input_stage_control_s_axi_n_95}),
        .\addr_reg[0][3] (inst_krnl_input_stage_control_s_axi_n_35),
        .\addr_reg[0][40] ({inst_krnl_input_stage_control_s_axi_n_96,inst_krnl_input_stage_control_s_axi_n_97,inst_krnl_input_stage_control_s_axi_n_98,inst_krnl_input_stage_control_s_axi_n_99,inst_krnl_input_stage_control_s_axi_n_100,inst_krnl_input_stage_control_s_axi_n_101,inst_krnl_input_stage_control_s_axi_n_102,inst_krnl_input_stage_control_s_axi_n_103}),
        .\addr_reg[0][48] ({inst_krnl_input_stage_control_s_axi_n_104,inst_krnl_input_stage_control_s_axi_n_105,inst_krnl_input_stage_control_s_axi_n_106,inst_krnl_input_stage_control_s_axi_n_107,inst_krnl_input_stage_control_s_axi_n_108,inst_krnl_input_stage_control_s_axi_n_109,inst_krnl_input_stage_control_s_axi_n_110,inst_krnl_input_stage_control_s_axi_n_111}),
        .\addr_reg[0][4] (inst_krnl_input_stage_control_s_axi_n_34),
        .\addr_reg[0][56] ({inst_krnl_input_stage_control_s_axi_n_112,inst_krnl_input_stage_control_s_axi_n_113,inst_krnl_input_stage_control_s_axi_n_114,inst_krnl_input_stage_control_s_axi_n_115,inst_krnl_input_stage_control_s_axi_n_116,inst_krnl_input_stage_control_s_axi_n_117,inst_krnl_input_stage_control_s_axi_n_118,inst_krnl_input_stage_control_s_axi_n_119}),
        .\addr_reg[0][5] (inst_krnl_input_stage_control_s_axi_n_33),
        .\addr_reg[0][63] ({inst_krnl_input_stage_control_s_axi_n_120,inst_krnl_input_stage_control_s_axi_n_121,inst_krnl_input_stage_control_s_axi_n_122,inst_krnl_input_stage_control_s_axi_n_123,inst_krnl_input_stage_control_s_axi_n_124,inst_krnl_input_stage_control_s_axi_n_125,inst_krnl_input_stage_control_s_axi_n_126}),
        .\addr_reg[0][6] (inst_krnl_input_stage_control_s_axi_n_32),
        .\addr_reg[0][7] (inst_krnl_input_stage_control_s_axi_n_31),
        .\addr_reg[0][8] (inst_krnl_input_stage_control_s_axi_n_30),
        .ap_clk(ap_clk),
        .ap_idle(ap_idle),
        .ap_start(ap_start),
        .ap_start_pulse(ap_start_pulse),
        .ap_start_r(ap_start_r),
        .areset(areset),
        .done(done),
        .done_reg(inst_krnl_input_stage_control_s_axi_n_28),
        .empty(rd_fifo_tvalid_n),
        .\int_size_reg[23]_0 ({inst_krnl_input_stage_control_s_axi_n_48,inst_krnl_input_stage_control_s_axi_n_49,inst_krnl_input_stage_control_s_axi_n_50,inst_krnl_input_stage_control_s_axi_n_51,inst_krnl_input_stage_control_s_axi_n_52,inst_krnl_input_stage_control_s_axi_n_53,inst_krnl_input_stage_control_s_axi_n_54,inst_krnl_input_stage_control_s_axi_n_55}),
        .\int_size_reg[31]_0 ({inst_krnl_input_stage_control_s_axi_n_40,inst_krnl_input_stage_control_s_axi_n_41,inst_krnl_input_stage_control_s_axi_n_42,inst_krnl_input_stage_control_s_axi_n_43,inst_krnl_input_stage_control_s_axi_n_44,inst_krnl_input_stage_control_s_axi_n_45,inst_krnl_input_stage_control_s_axi_n_46,inst_krnl_input_stage_control_s_axi_n_47}),
        .m_axi_gmem_ARADDR(m_axi_gmem_ARADDR),
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
  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "254" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "fwft" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync \inst_rd_xpm_fifo_sync[0] 
       (.almost_empty(\NLW_inst_rd_xpm_fifo_sync[0]_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_inst_rd_xpm_fifo_sync[0]_almost_full_UNCONNECTED ),
        .data_valid(\NLW_inst_rd_xpm_fifo_sync[0]_data_valid_UNCONNECTED ),
        .dbiterr(\NLW_inst_rd_xpm_fifo_sync[0]_dbiterr_UNCONNECTED ),
        .din(m_axi_gmem_RDATA),
        .dout(p0_TDATA),
        .empty(rd_fifo_tvalid_n),
        .full(\NLW_inst_rd_xpm_fifo_sync[0]_full_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\NLW_inst_rd_xpm_fifo_sync[0]_overflow_UNCONNECTED ),
        .prog_empty(\NLW_inst_rd_xpm_fifo_sync[0]_prog_empty_UNCONNECTED ),
        .prog_full(ctrl_rd_fifo_prog_full),
        .rd_data_count(\NLW_inst_rd_xpm_fifo_sync[0]_rd_data_count_UNCONNECTED [10:0]),
        .rd_en(p0_TREADY),
        .rd_rst_busy(\NLW_inst_rd_xpm_fifo_sync[0]_rd_rst_busy_UNCONNECTED ),
        .rst(areset),
        .sbiterr(\NLW_inst_rd_xpm_fifo_sync[0]_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .underflow(\NLW_inst_rd_xpm_fifo_sync[0]_underflow_UNCONNECTED ),
        .wr_ack(\NLW_inst_rd_xpm_fifo_sync[0]_wr_ack_UNCONNECTED ),
        .wr_clk(ap_clk),
        .wr_data_count(\NLW_inst_rd_xpm_fifo_sync[0]_wr_data_count_UNCONNECTED [10:0]),
        .wr_en(rd_tvalid),
        .wr_rst_busy(\NLW_inst_rd_xpm_fifo_sync[0]_wr_rst_busy_UNCONNECTED ));
  LUT2 #(
    .INIT(4'h2)) 
    \inst_rd_xpm_fifo_sync[0]_i_1 
       (.I0(m_axi_gmem_RVALID),
        .I1(m_axi_gmem_RID),
        .O(rd_tvalid));
  LUT1 #(
    .INIT(2'h1)) 
    p0_TVALID_INST_0
       (.I0(rd_fifo_tvalid_n),
        .O(p0_TVALID));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0
   (DI,
    Q,
    S,
    leaving_empty0,
    \count_value_i_reg[6]_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \count_value_i_reg[0]_0 ,
    ram_wr_en_pf,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    clr_full,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [0:0]DI;
  output [9:0]Q;
  output [1:0]S;
  output leaving_empty0;
  output [5:0]\count_value_i_reg[6]_0 ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input \count_value_i_reg[0]_0 ;
  input ram_wr_en_pf;
  input [9:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input clr_full;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [0:0]DI;
  wire [9:0]Q;
  wire [1:0]S;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_2__1_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire [5:0]\count_value_i_reg[6]_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire [9:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__1_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[9]_i_1__1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000003B2A2A2A)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(leaving_empty0),
        .I3(going_full1),
        .I4(ram_wr_en_pf),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [9]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ),
        .O(leaving_empty0));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [9]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [0]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [6]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [3]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_3 
       (.I0(Q[8]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [8]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [9]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_4 
       (.I0(Q[7]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [7]),
        .I2(Q[8]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [8]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_10 
       (.I0(Q[5]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [5]),
        .I2(Q[6]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [6]),
        .O(\count_value_i_reg[6]_0 [4]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_11 
       (.I0(Q[4]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [4]),
        .I2(Q[5]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [5]),
        .O(\count_value_i_reg[6]_0 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_12 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [3]),
        .I2(Q[4]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [4]),
        .O(\count_value_i_reg[6]_0 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_13 
       (.I0(Q[2]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [2]),
        .I2(Q[3]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [3]),
        .O(\count_value_i_reg[6]_0 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_14 
       (.I0(Q[1]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [1]),
        .I2(Q[2]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [2]),
        .O(\count_value_i_reg[6]_0 [0]));
  LUT4 #(
    .INIT(16'h7510)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_8 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(ram_wr_en_pf),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [0]),
        .O(DI));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_9 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [6]),
        .I2(Q[7]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [7]),
        .O(\count_value_i_reg[6]_0 [5]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_1
   (ram_empty_i0,
    Q,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_wr_en_pf,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[9]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    wr_clk);
  output ram_empty_i0;
  output [9:0]Q;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_wr_en_pf;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[9]_0 ;
  input rst_d1;
  input [9:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input wr_clk;

  wire [9:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire [0:0]\count_value_i_reg[9]_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [9:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire going_empty1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[9]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[9]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(ram_wr_en_pf),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [9]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1
   (Q,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [9:0]Q;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [9:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_2__2_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__2 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[9]_i_1__2_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_2
   (Q,
    D,
    ram_wr_en_pf,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    DI,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ,
    S,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 ,
    wr_clk);
  output [9:0]Q;
  output [9:0]D;
  input ram_wr_en_pf;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input [0:0]DI;
  input [5:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ;
  input [1:0]S;
  input [7:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ;
  input \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 ;
  input wr_clk;

  wire [9:0]D;
  wire [0:0]DI;
  wire [9:0]Q;
  wire [1:0]S;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0 ;
  wire [7:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_n_7 ;
  wire [5:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7 ;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [7:1]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2 
       (.I0(Q[7]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [7]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF75108AE08AEF751)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15 
       (.I0(Q[0]),
        .I1(ram_wr_en_pf),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 ),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [0]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9969)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [0]),
        .I2(ram_wr_en_pf),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [6]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3 
       (.I0(Q[5]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [5]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4 
       (.I0(Q[4]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [4]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [3]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6 
       (.I0(Q[2]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [2]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7 
       (.I0(Q[1]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1 
       (.CI(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED [7:1],\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0 }),
        .O({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED [7:2],D[9:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7 }),
        .DI({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0 ,DI,1'b0}),
        .O(D[7:0]),
        .S({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0 }));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000011100000111" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "1024" *) 
(* FIFO_READ_LATENCY = "1" *) (* FIFO_SIZE = "32768" *) (* FIFO_WRITE_DEPTH = "1024" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* PE_THRESH_ADJ = "8" *) 
(* PE_THRESH_MAX = "1019" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "252" *) 
(* PF_THRESH_MAX = "1019" *) (* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "254" *) (* RD_DATA_COUNT_WIDTH = "11" *) (* RD_DC_WIDTH_EXT = "11" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "10" *) 
(* READ_DATA_WIDTH = "32" *) (* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) 
(* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "0707" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "32" *) (* WR_DATA_COUNT_WIDTH = "11" *) 
(* WR_DC_WIDTH_EXT = "11" *) (* WR_DEPTH_LOG = "10" *) (* WR_PNTR_WIDTH = "10" *) 
(* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "5" *) (* XPM_MODULE = "TRUE" *) 
(* both_stages_valid = "3" *) (* invalid = "0" *) (* keep_hierarchy = "soft" *) 
(* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output full_n;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [10:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [1:0]curr_fwft_state;
  wire [10:1]diff_pntr_pf_q;
  wire [10:1]diff_pntr_pf_q0;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire empty_fwft_i0;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire prog_full;
  wire prog_full_i217_in;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_rd_en_pf_q;
  wire ram_wr_en_pf;
  wire ram_wr_en_pf_q;
  wire rd_en;
  wire [9:0]rd_pntr_ext;
  wire rdp_inst_n_0;
  wire rdp_inst_n_11;
  wire rdp_inst_n_12;
  wire rdp_inst_n_14;
  wire rdp_inst_n_15;
  wire rdp_inst_n_16;
  wire rdp_inst_n_17;
  wire rdp_inst_n_18;
  wire rdp_inst_n_19;
  wire rdp_inst_n_20;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_10;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rdpp1_inst_n_9;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_2;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [9:0]wr_pntr_ext;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire wrpp1_inst_n_9;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [31:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign full = \<const0> ;
  assign full_n = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(empty),
        .O(empty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .Q(empty),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_20),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[10]),
        .Q(diff_pntr_pf_q[10]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[1]),
        .Q(diff_pntr_pf_q[1]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[2]),
        .Q(diff_pntr_pf_q[2]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[3]),
        .Q(diff_pntr_pf_q[3]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf_q[5]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[6]),
        .Q(diff_pntr_pf_q[6]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[7]),
        .Q(diff_pntr_pf_q[7]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[8]),
        .Q(diff_pntr_pf_q[8]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[9]),
        .Q(diff_pntr_pf_q[9]),
        .R(xpm_fifo_rst_inst_n_1));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3 
       (.I0(diff_pntr_pf_q[2]),
        .I1(diff_pntr_pf_q[1]),
        .I2(diff_pntr_pf_q[8]),
        .I3(diff_pntr_pf_q[10]),
        .I4(diff_pntr_pf_q[9]),
        .I5(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0 ),
        .O(prog_full_i217_in));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4 
       (.I0(diff_pntr_pf_q[7]),
        .I1(diff_pntr_pf_q[6]),
        .I2(diff_pntr_pf_q[3]),
        .I3(diff_pntr_pf_q[4]),
        .I4(diff_pntr_pf_q[5]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_2),
        .Q(prog_full),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdpp1_inst_n_10),
        .Q(ram_rd_en_pf_q),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_wr_en_pf),
        .Q(ram_wr_en_pf_q),
        .R(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "10" *) 
  (* ADDR_WIDTH_B = "10" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "32" *) 
  (* BYTE_WRITE_WIDTH_B = "32" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "31" *) 
  (* \MEM.ADDRESS_SPACE_END  = "1023" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "32" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "32768" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1024" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "32" *) 
  (* P_MIN_WIDTH_DATA_A = "32" *) 
  (* P_MIN_WIDTH_DATA_B = "32" *) 
  (* P_MIN_WIDTH_DATA_ECC = "32" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "32" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "10" *) 
  (* P_WIDTH_ADDR_READ_B = "10" *) 
  (* P_WIDTH_ADDR_WRITE_A = "10" *) 
  (* P_WIDTH_ADDR_WRITE_B = "10" *) 
  (* P_WIDTH_COL_WRITE_A = "32" *) 
  (* P_WIDTH_COL_WRITE_B = "32" *) 
  (* READ_DATA_WIDTH_A = "32" *) 
  (* READ_DATA_WIDTH_B = "32" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "32" *) 
  (* WRITE_DATA_WIDTH_B = "32" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "32" *) 
  (* rstb_loop_iter = "32" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [31:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdpp1_inst_n_10),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_pf),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0 rdp_inst
       (.DI(rdp_inst_n_0),
        .Q(rd_pntr_ext),
        .S({rdp_inst_n_11,rdp_inst_n_12}),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (rdpp1_inst_n_10),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\count_value_i_reg[6]_0 ({rdp_inst_n_14,rdp_inst_n_15,rdp_inst_n_16,rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_20),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (wr_pntr_ext),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1 rdpp1_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdpp1_inst_n_10),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9}),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg (rst_d1_inst_n_2),
        .prog_full(prog_full),
        .prog_full_i217_in(prog_full_i217_in),
        .ram_rd_en_pf_q(ram_rd_en_pf_q),
        .ram_wr_en_pf_q(ram_wr_en_pf_q),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_1 wrp_inst
       (.Q(wr_pntr_ext),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\count_value_i_reg[9]_0 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdpp1_inst_n_10),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_2 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .DI(rdp_inst_n_0),
        .Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9}),
        .S({rdp_inst_n_11,rdp_inst_n_12}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] (rd_pntr_ext[7:0]),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ({rdp_inst_n_14,rdp_inst_n_15,rdp_inst_n_16,rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19}),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 (rdpp1_inst_n_10),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[9] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
   (rst_d1,
    clr_full,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ,
    Q,
    wr_clk,
    rst,
    prog_full_i217_in,
    ram_wr_en_pf_q,
    ram_rd_en_pf_q,
    prog_full);
  output rst_d1;
  output clr_full;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ;
  input [0:0]Q;
  input wr_clk;
  input rst;
  input prog_full_i217_in;
  input ram_wr_en_pf_q;
  input ram_rd_en_pf_q;
  input prog_full;

  wire [0:0]Q;
  wire clr_full;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ;
  wire prog_full;
  wire prog_full_i217_in;
  wire ram_rd_en_pf_q;
  wire ram_wr_en_pf_q;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h51550040)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_1 
       (.I0(clr_full),
        .I1(prog_full_i217_in),
        .I2(ram_wr_en_pf_q),
        .I3(ram_rd_en_pf_q),
        .I4(prog_full),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
   (ram_wr_en_pf,
    Q,
    rst,
    wr_en,
    \count_value_i_reg[9] ,
    rst_d1,
    wr_clk);
  output ram_wr_en_pf;
  output [0:0]Q;
  input rst;
  input wr_en;
  input \count_value_i_reg[9] ;
  input rst_d1;
  input wr_clk;

  wire [0:0]Q;
  wire \count_value_i_reg[9] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_wr_en_pf;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[9] ),
        .I2(Q),
        .I3(rst_d1),
        .O(ram_wr_en_pf));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) (* FIFO_MEMORY_TYPE = "auto" *) (* FIFO_READ_LATENCY = "1" *) 
(* FIFO_WRITE_DEPTH = "1024" *) (* FULL_RESET_VALUE = "1" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "254" *) (* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "0" *) (* P_READ_MODE = "1" *) (* P_WAKEUP_TIME = "2" *) 
(* RD_DATA_COUNT_WIDTH = "11" *) (* READ_DATA_WIDTH = "32" *) (* READ_MODE = "fwft" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH = "32" *) (* WR_DATA_COUNT_WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [10:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire prog_full;
  wire rd_en;
  wire rst;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [10:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "1024" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "32768" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "1019" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "252" *) 
  (* PF_THRESH_MAX = "1019" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "254" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* RD_DC_WIDTH_EXT = "11" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "10" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* WR_DC_WIDTH_EXT = "11" *) 
  (* WR_DEPTH_LOG = "10" *) 
  (* WR_PNTR_WIDTH = "10" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(prog_full),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "32" *) (* BYTE_WRITE_WIDTH_B = "32" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "32768" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "1024" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "32" *) 
(* P_MIN_WIDTH_DATA_A = "32" *) (* P_MIN_WIDTH_DATA_B = "32" *) (* P_MIN_WIDTH_DATA_ECC = "32" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "32" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "10" *) (* P_WIDTH_ADDR_READ_B = "10" *) 
(* P_WIDTH_ADDR_WRITE_A = "10" *) (* P_WIDTH_ADDR_WRITE_B = "10" *) (* P_WIDTH_COL_WRITE_A = "32" *) 
(* P_WIDTH_COL_WRITE_B = "32" *) (* READ_DATA_WIDTH_A = "32" *) (* READ_DATA_WIDTH_B = "32" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "32" *) (* WRITE_DATA_WIDTH_B = "32" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "32" *) (* rstb_loop_iter = "32" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [31:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [31:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [31:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [31:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "31" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "31" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ),
        .DINADIN(dina),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(doutb),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
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
