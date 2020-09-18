/////////////////////////////////////////////////////////////////////
////
//// Accelize 2019
////
//// This is a generated file. Use and modify at your own risk.
/////////////////////////////////////////////////////////////////////

// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps


module kernel_drm_controller #(
  parameter integer  C_S_AXI_CONTROL_DATA_WIDTH = 32,
  parameter integer  C_S_AXI_CONTROL_ADDR_WIDTH = 16,
  parameter integer  C_DATA_WIDTH               = 32
)(
  // AXI4-Stream Clock and Reset
  input  wire                                   ap_clk,
  input  wire                                   ap_rst_n,
  // AXI4-Stream Bus to/from User IP0
  input  wire                                   drm_to_uip0_tready,
  output wire                                   drm_to_uip0_tvalid,
  output wire [C_DATA_WIDTH-1:0]                drm_to_uip0_tdata,
  output wire                                   uip0_to_drm_tready,
  input  wire                                   uip0_to_drm_tvalid,
  input  wire [C_DATA_WIDTH-1:0]                uip0_to_drm_tdata,
  // AXI4-Stream Bus to/from User IP1
  input  wire                                   drm_to_uip1_tready,
  output wire                                   drm_to_uip1_tvalid,
  output wire [C_DATA_WIDTH-1:0]                drm_to_uip1_tdata,
  output wire                                   uip1_to_drm_tready,
  input  wire                                   uip1_to_drm_tvalid,
  input  wire [C_DATA_WIDTH-1:0]                uip1_to_drm_tdata,
  // AXI4-Stream Bus to/from User IP2
  input  wire                                   drm_to_uip2_tready,
  output wire                                   drm_to_uip2_tvalid,
  output wire [C_DATA_WIDTH-1:0]                drm_to_uip2_tdata,
  output wire                                   uip2_to_drm_tready,
  input  wire                                   uip2_to_drm_tvalid,
  input  wire [C_DATA_WIDTH-1:0]                uip2_to_drm_tdata,
  // AXI4-Stream Bus to/from User IP3
  input  wire                                   drm_to_uip3_tready,
  output wire                                   drm_to_uip3_tvalid,
  output wire [C_DATA_WIDTH-1:0]                drm_to_uip3_tdata,
  output wire                                   uip3_to_drm_tready,
  input  wire                                   uip3_to_drm_tvalid,
  input  wire [C_DATA_WIDTH-1:0]                uip3_to_drm_tdata,
  // AXI4-Stream Bus to/from User IP4
  input  wire                                   drm_to_uip4_tready,
  output wire                                   drm_to_uip4_tvalid,
  output wire [C_DATA_WIDTH-1:0]                drm_to_uip4_tdata,
  output wire                                   uip4_to_drm_tready,
  input  wire                                   uip4_to_drm_tvalid,
  input  wire [C_DATA_WIDTH-1:0]                uip4_to_drm_tdata,
  // AXI4-Stream Bus to/from User IP5
  input  wire                                   drm_to_uip5_tready,
  output wire                                   drm_to_uip5_tvalid,
  output wire [C_DATA_WIDTH-1:0]                drm_to_uip5_tdata,
  output wire                                   uip5_to_drm_tready,
  input  wire                                   uip5_to_drm_tvalid,
  input  wire [C_DATA_WIDTH-1:0]                uip5_to_drm_tdata,
  // AXI4-Stream Bus to/from User IP6
  input  wire                                   drm_to_uip6_tready,
  output wire                                   drm_to_uip6_tvalid,
  output wire [C_DATA_WIDTH-1:0]                drm_to_uip6_tdata,
  output wire                                   uip6_to_drm_tready,
  input  wire                                   uip6_to_drm_tvalid,
  input  wire [C_DATA_WIDTH-1:0]                uip6_to_drm_tdata,
  // AXI4-Stream Bus to/from User IP7
  input  wire                                   drm_to_uip7_tready,
  output wire                                   drm_to_uip7_tvalid,
  output wire [C_DATA_WIDTH-1:0]                drm_to_uip7_tdata,
  output wire                                   uip7_to_drm_tready,
  input  wire                                   uip7_to_drm_tvalid,
  input  wire [C_DATA_WIDTH-1:0]                uip7_to_drm_tdata,
  // AXI4-Stream Bus to/from User IP8
  input  wire                                   drm_to_uip8_tready,
  output wire                                   drm_to_uip8_tvalid,
  output wire [C_DATA_WIDTH-1:0]                drm_to_uip8_tdata,
  output wire                                   uip8_to_drm_tready,
  input  wire                                   uip8_to_drm_tvalid,
  input  wire [C_DATA_WIDTH-1:0]                uip8_to_drm_tdata,
  // AXI4-Stream Bus to/from User IP9
  input  wire                                   drm_to_uip9_tready,
  output wire                                   drm_to_uip9_tvalid,
  output wire [C_DATA_WIDTH-1:0]                drm_to_uip9_tdata,
  output wire                                   uip9_to_drm_tready,
  input  wire                                   uip9_to_drm_tvalid,
  input  wire [C_DATA_WIDTH-1:0]                uip9_to_drm_tdata,
  // AXI4-Lite Register Access
  output wire                                   s_axi_control_awready,
  input  wire                                   s_axi_control_awvalid,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]  s_axi_control_awaddr,
  input  wire [3-1 :0]                          s_axi_control_awprot,
  output wire                                   s_axi_control_wready,
  input  wire                                   s_axi_control_wvalid,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]  s_axi_control_wdata,
  input  wire [32/8-1:0]                        s_axi_control_wstrb,
  input  wire                                   s_axi_control_bready,
  output wire                                   s_axi_control_bvalid,
  output wire [2-1:0]                           s_axi_control_bresp,
  output wire                                   s_axi_control_arready,
  input  wire                                   s_axi_control_arvalid,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]  s_axi_control_araddr,
  input  wire [3-1 :0]                          s_axi_control_arprot,
  input  wire                                   s_axi_control_rready,
  output wire                                   s_axi_control_rvalid,
  output wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]  s_axi_control_rdata,
  output wire [2-1:0]                           s_axi_control_rresp
);


  //-----------------
  // DRM Controller
  //-----------------
  // A DRM must be instanciated and must be connected at least to one activator block (that will be inside the loopback example).

  top_drm_controller top_drm_controller_inst (
    // AXI4-Stream Clock and Reset
    .drm_aclk             ( ap_clk                ),
    .drm_arstn            ( ap_rst_n              ),
    // AXI4-Stream Bus to/from User IP0
    .drm_to_uip0_tready   ( drm_to_uip0_tready    ),
    .drm_to_uip0_tvalid   ( drm_to_uip0_tvalid    ),
    .drm_to_uip0_tdata    ( drm_to_uip0_tdata     ),
    .uip0_to_drm_tready   ( uip0_to_drm_tready    ),
    .uip0_to_drm_tvalid   ( uip0_to_drm_tvalid    ),
    .uip0_to_drm_tdata    ( uip0_to_drm_tdata     ),
    // AXI4-Stream Bus to/from User IP1
    .drm_to_uip1_tready   ( drm_to_uip1_tready    ),
    .drm_to_uip1_tvalid   ( drm_to_uip1_tvalid    ),
    .drm_to_uip1_tdata    ( drm_to_uip1_tdata     ),
    .uip1_to_drm_tready   ( uip1_to_drm_tready    ),
    .uip1_to_drm_tvalid   ( uip1_to_drm_tvalid    ),
    .uip1_to_drm_tdata    ( uip1_to_drm_tdata     ),
    // AXI4-Stream Bus to/from User IP2
    .drm_to_uip2_tready   ( drm_to_uip2_tready    ),
    .drm_to_uip2_tvalid   ( drm_to_uip2_tvalid    ),
    .drm_to_uip2_tdata    ( drm_to_uip2_tdata     ),
    .uip2_to_drm_tready   ( uip2_to_drm_tready    ),
    .uip2_to_drm_tvalid   ( uip2_to_drm_tvalid    ),
    .uip2_to_drm_tdata    ( uip2_to_drm_tdata     ),
    // AXI4-Stream Bus to/from User IP3
    .drm_to_uip3_tready   ( drm_to_uip3_tready    ),
    .drm_to_uip3_tvalid   ( drm_to_uip3_tvalid    ),
    .drm_to_uip3_tdata    ( drm_to_uip3_tdata     ),
    .uip3_to_drm_tready   ( uip3_to_drm_tready    ),
    .uip3_to_drm_tvalid   ( uip3_to_drm_tvalid    ),
    .uip3_to_drm_tdata    ( uip3_to_drm_tdata     ),
    // AXI4-Stream Bus to/from User IP4
    .drm_to_uip4_tready   ( drm_to_uip4_tready    ),
    .drm_to_uip4_tvalid   ( drm_to_uip4_tvalid    ),
    .drm_to_uip4_tdata    ( drm_to_uip4_tdata     ),
    .uip4_to_drm_tready   ( uip4_to_drm_tready    ),
    .uip4_to_drm_tvalid   ( uip4_to_drm_tvalid    ),
    .uip4_to_drm_tdata    ( uip4_to_drm_tdata     ),
    // AXI4-Stream Bus to/from User IP5
    .drm_to_uip5_tready   ( drm_to_uip5_tready    ),
    .drm_to_uip5_tvalid   ( drm_to_uip5_tvalid    ),
    .drm_to_uip5_tdata    ( drm_to_uip5_tdata     ),
    .uip5_to_drm_tready   ( uip5_to_drm_tready    ),
    .uip5_to_drm_tvalid   ( uip5_to_drm_tvalid    ),
    .uip5_to_drm_tdata    ( uip5_to_drm_tdata     ),
    // AXI4-Stream Bus to/from User IP6
    .drm_to_uip6_tready   ( drm_to_uip6_tready    ),
    .drm_to_uip6_tvalid   ( drm_to_uip6_tvalid    ),
    .drm_to_uip6_tdata    ( drm_to_uip6_tdata     ),
    .uip6_to_drm_tready   ( uip6_to_drm_tready    ),
    .uip6_to_drm_tvalid   ( uip6_to_drm_tvalid    ),
    .uip6_to_drm_tdata    ( uip6_to_drm_tdata     ),
    // AXI4-Stream Bus to/from User IP7
    .drm_to_uip7_tready   ( drm_to_uip7_tready    ),
    .drm_to_uip7_tvalid   ( drm_to_uip7_tvalid    ),
    .drm_to_uip7_tdata    ( drm_to_uip7_tdata     ),
    .uip7_to_drm_tready   ( uip7_to_drm_tready    ),
    .uip7_to_drm_tvalid   ( uip7_to_drm_tvalid    ),
    .uip7_to_drm_tdata    ( uip7_to_drm_tdata     ),
    // AXI4-Stream Bus to/from User IP8
    .drm_to_uip8_tready   ( drm_to_uip8_tready    ),
    .drm_to_uip8_tvalid   ( drm_to_uip8_tvalid    ),
    .drm_to_uip8_tdata    ( drm_to_uip8_tdata     ),
    .uip8_to_drm_tready   ( uip8_to_drm_tready    ),
    .uip8_to_drm_tvalid   ( uip8_to_drm_tvalid    ),
    .uip8_to_drm_tdata    ( uip8_to_drm_tdata     ),
    // AXI4-Stream Bus to/from User IP9
    .drm_to_uip9_tready   ( drm_to_uip9_tready    ),
    .drm_to_uip9_tvalid   ( drm_to_uip9_tvalid    ),
    .drm_to_uip9_tdata    ( drm_to_uip9_tdata     ),
    .uip9_to_drm_tready   ( uip9_to_drm_tready    ),
    .uip9_to_drm_tvalid   ( uip9_to_drm_tvalid    ),
    .uip9_to_drm_tdata    ( uip9_to_drm_tdata     ),
    // AXI4-Lite Register Access
    .s_axi_aclk           ( ap_clk                ),
    .s_axi_arstn          ( ap_rst_n              ),
    .s_axi_awready        ( s_axi_control_awready ),
    .s_axi_awvalid        ( s_axi_control_awvalid ),
    .s_axi_awaddr         ( s_axi_control_awaddr  ),
    .s_axi_awprot         ( s_axi_control_awprot  ),
    .s_axi_wready         ( s_axi_control_wready  ),
    .s_axi_wvalid         ( s_axi_control_wvalid  ),
    .s_axi_wdata          ( s_axi_control_wdata   ),
    .s_axi_wstrb          ( s_axi_control_wstrb   ),
    .s_axi_bready         ( s_axi_control_bready  ),
    .s_axi_bvalid         ( s_axi_control_bvalid  ),
    .s_axi_bresp          ( s_axi_control_bresp   ),
    .s_axi_arready        ( s_axi_control_arready ),
    .s_axi_arvalid        ( s_axi_control_arvalid ),
    .s_axi_araddr         ( s_axi_control_araddr  ),
    .s_axi_arprot         ( s_axi_control_arprot  ),
    .s_axi_rready         ( s_axi_control_rready  ),
    .s_axi_rvalid         ( s_axi_control_rvalid  ),
    .s_axi_rdata          ( s_axi_control_rdata   ),
    .s_axi_rresp          ( s_axi_control_rresp   ),
    // Chip DNA
    .chip_dna_valid       (                       ),
    .chip_dna             (                       )
  );


endmodule
`default_nettype wire
