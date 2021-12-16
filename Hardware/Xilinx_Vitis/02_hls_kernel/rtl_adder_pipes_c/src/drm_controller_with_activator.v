// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps
// Top level of the kernel. Do not modify module name, parameters or ports.

module drm_controller_with_activator
(
  // System Signals
  input  wire                       ap_clk                     ,
  input  wire                       ap_rst_n                   ,
  // AXI4-ST UIP0/DRM Interface              
  output wire [32-1:0]              activation_code0_tdata          ,
  output wire                       activation_code0_tvalid         ,
  input wire                        activation_code0_tready         ,
  output wire [32-1:0]              activation_code1_tdata          ,
  output wire                       activation_code1_tvalid         ,
  input wire                        activation_code1_tready         ,
  output wire [32-1:0]              activation_code2_tdata          ,
  output wire                       activation_code2_tvalid         ,
  input wire                        activation_code2_tready         ,
  output wire [32-1:0]              activation_code3_tdata          ,
  output wire                       activation_code3_tvalid         ,
  input wire                        activation_code3_tready         ,
  // AXI4-ST metering event
  input wire [32-1:0]               metering_event_tdata          ,
  input wire                        metering_event_tvalid         ,
  output wire                       metering_event_tready         ,
  // AXI4-Lite Control Port
  input wire                        s_axi_control_awvalid      ,
  output  wire                      s_axi_control_awready      ,
  input wire [16-1:0]               s_axi_control_awaddr       ,
  input wire                        s_axi_control_wvalid       ,
  output  wire                      s_axi_control_wready       ,
  input wire [32-1:0]               s_axi_control_wdata        ,
  input wire [32/8-1:0]             s_axi_control_wstrb        ,
  output  wire                      s_axi_control_bvalid       ,
  input wire                        s_axi_control_bready       ,
  output wire [2-1:0]               s_axi_control_bresp        ,
  input wire                        s_axi_control_arvalid      ,
  output  wire                      s_axi_control_arready      ,
  input wire [16-1:0]               s_axi_control_araddr       ,
  output  wire                      s_axi_control_rvalid       ,
  input wire                        s_axi_control_rready       ,
  output  wire [32-1:0]             s_axi_control_rdata        ,
  output wire [2-1:0]               s_axi_control_rresp  
);

wire [32-1:0]  drm_to_uip0_tdata   ;
wire           drm_to_uip0_tvalid  ;
wire           drm_to_uip0_tready  ;
wire           uip0_to_drm_tready  ;
wire [32-1:0]  uip0_to_drm_tdata   ;
wire           uip0_to_drm_tvalid  ;

  // DRM Controller
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
    // AXI4-Lite Register Access
    .s_axi_aclk           ( ap_clk                ),
    .s_axi_arstn          ( ap_rst_n              ),
    .s_axi_awready        ( s_axi_control_awready ),
    .s_axi_awvalid        ( s_axi_control_awvalid ),
    .s_axi_awaddr         ( s_axi_control_awaddr  ),
    .s_axi_awprot         ( 3'b000  ),
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
    .s_axi_arprot         ( 3'b000  ),
    .s_axi_rready         ( s_axi_control_rready  ),
    .s_axi_rvalid         ( s_axi_control_rvalid  ),
    .s_axi_rdata          ( s_axi_control_rdata   ),
    .s_axi_rresp          ( s_axi_control_rresp   ),
    // Chip DNA
    .chip_dna_valid       (                       ),
    .chip_dna             (                       )
  );

 wire [127:0]    s_drm_activation_code;
 wire            s_drm_activation_code_ready;
 wire            s_act_code_is_not_null;
 wire            s_metering_event;
 
 assign s_act_code_is_not_null = |s_drm_activation_code;
 
 assign activation_code0_tvalid  = s_act_code_is_not_null;
 assign activation_code1_tvalid  = s_act_code_is_not_null;
 assign activation_code2_tvalid  = s_act_code_is_not_null;
 assign activation_code3_tvalid  = s_act_code_is_not_null;
 
 assign activation_code0_tdata   = s_drm_activation_code[31:0];
 assign activation_code1_tdata   = s_drm_activation_code[63:32];
 assign activation_code2_tdata   = s_drm_activation_code[95:64];
 assign activation_code3_tdata   = s_drm_activation_code[127:96];
 
 assign metering_event_tready = 1'b1;
 assign s_metering_event = metering_event_tvalid & metering_event_tdata[0];


top_drm_activator_0x1003000e00010001 top_drm_activator_0x1003000e00010001_inst (
       .drm_aclk              (ap_clk                            ),
       .drm_arstn             (ap_rst_n                          ),
       .drm_to_uip_tdata      (drm_to_uip0_tdata                 ),
       .drm_to_uip_tvalid     (drm_to_uip0_tvalid                ),
       .drm_to_uip_tready     (drm_to_uip0_tready                ),
       .uip_to_drm_tready     (uip0_to_drm_tready                ),
       .uip_to_drm_tdata      (uip0_to_drm_tdata                 ),
       .uip_to_drm_tvalid     (uip0_to_drm_tvalid                ),
       .ip_core_aclk          (ap_clk                            ),
       .metering_event        (s_metering_event                  ),
       .activation_code       (s_drm_activation_code             )
     ); 

endmodule
`default_nettype wire
