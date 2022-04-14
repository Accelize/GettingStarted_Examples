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
  output reg [32-1:0]               activation_code0_uip0_tdata          ,
  output reg                        activation_code0_uip0_tvalid         ,
  input wire                        activation_code0_uip0_tready         ,
  output reg [32-1:0]               activation_code1_uip0_tdata          ,
  output reg                        activation_code1_uip0_tvalid         ,
  input wire                        activation_code1_uip0_tready         ,
  output reg [32-1:0]               activation_code2_uip0_tdata          ,
  output reg                        activation_code2_uip0_tvalid         ,
  input wire                        activation_code2_uip0_tready         ,
  output reg [32-1:0]               activation_code3_uip0_tdata          ,
  output reg                        activation_code3_uip0_tvalid         ,
  input wire                        activation_code3_uip0_tready         ,
  // AXI4-ST metering event UIP0
  input wire [32-1:0]               metering_event_uip0_tdata          ,
  input wire                        metering_event_uip0_tvalid         ,
  output wire                       metering_event_uip0_tready         ,

  // AXI4-Lite Control Port
  input wire                        s_axi_control_awvalid      ,
  output  wire                      s_axi_control_awready      ,
  input wire [16-1:0]               s_axi_control_awaddr       ,
  input  wire [3-1 :0]              s_axi_control_awprot       ,
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
  input  wire [3-1 :0]              s_axi_control_arprot       ,
  output  wire                      s_axi_control_rvalid       ,
  input wire                        s_axi_control_rready       ,
  output  wire [32-1:0]             s_axi_control_rdata        ,
  output wire [2-1:0]               s_axi_control_rresp  
);

 wire [32-1:0]  drm_to_uip0_tdata   ;
 wire           drm_to_uip0_tvalid  ;
 wire           drm_to_uip0_tready  ;
 wire           drm_to_uip0_tlast   ;
 wire           uip0_to_drm_tready  ;
 wire [32-1:0]  uip0_to_drm_tdata   ;
 wire           uip0_to_drm_tvalid  ;
 wire           uip0_to_drm_tlast   ;


  // DRM Controller
  top_drm_controller top_drm_controller_inst (
    // AXI4-Stream Clock and Reset
    .drm_aclk             ( ap_clk              ),
    .drm_arstn            ( ap_rst_n            ),
    // AXI4-Stream Bus to/from User IP0
    .drm_to_uip0_tready   ( drm_to_uip0_tready    ),
    .drm_to_uip0_tvalid   ( drm_to_uip0_tvalid    ),
    .drm_to_uip0_tdata    ( drm_to_uip0_tdata     ),
    .drm_to_uip0_tlast    ( drm_to_uip0_tlast     ),
    .uip0_to_drm_tready   ( uip0_to_drm_tready    ),
    .uip0_to_drm_tvalid   ( uip0_to_drm_tvalid    ),
    .uip0_to_drm_tdata    ( uip0_to_drm_tdata     ),
    .uip0_to_drm_tlast    ( uip0_to_drm_tlast     ),

    // AXI4-Lite Register Access
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

 // User IP0
 wire [127:0]    s_drm_activation_code_uip0;
 wire            s_act_code_is_not_null_uip0;
 reg             s_metering_event_uip0;
 
 assign s_act_code_is_not_null_uip0 = |s_drm_activation_code_uip0;
 assign metering_event_uip0_tready = 1'b1;

 reg [32-1:0]              s_activation_code0_uip0_tdata_f1;
 reg [32-1:0]              s_activation_code0_uip0_tdata_f2;
 reg [32-1:0]              s_activation_code1_uip0_tdata_f1;
 reg [32-1:0]              s_activation_code1_uip0_tdata_f2;
 reg [32-1:0]              s_activation_code2_uip0_tdata_f1;
 reg [32-1:0]              s_activation_code2_uip0_tdata_f2;
 reg [32-1:0]              s_activation_code3_uip0_tdata_f1;
 reg [32-1:0]              s_activation_code3_uip0_tdata_f2;
 reg                       s_activation_code0_uip0_tvalid_f1;
 reg                       s_activation_code0_uip0_tvalid_f2;
 reg                       s_activation_code1_uip0_tvalid_f1;
 reg                       s_activation_code1_uip0_tvalid_f2;
 reg                       s_activation_code2_uip0_tvalid_f1;
 reg                       s_activation_code2_uip0_tvalid_f2;
 reg                       s_activation_code3_uip0_tvalid_f1;
 reg                       s_activation_code3_uip0_tvalid_f2;
 reg                       s_metering_event_uip0_f1;
 reg                       s_metering_event_uip0_f2;
  
 // Flip-flops stages
 always @(posedge ap_clk)
 begin
    activation_code0_uip0_tdata         <= s_activation_code0_uip0_tdata_f1;
    s_activation_code0_uip0_tdata_f1    <= s_activation_code0_uip0_tdata_f2;
    s_activation_code0_uip0_tdata_f2    <= s_drm_activation_code_uip0[31:0];
    activation_code1_uip0_tdata         <= s_activation_code1_uip0_tdata_f1;
    s_activation_code1_uip0_tdata_f1    <= s_activation_code1_uip0_tdata_f2;
    s_activation_code1_uip0_tdata_f2    <= s_drm_activation_code_uip0[63:32];
    activation_code2_uip0_tdata         <= s_activation_code2_uip0_tdata_f1;
    s_activation_code2_uip0_tdata_f1    <= s_activation_code2_uip0_tdata_f2;
    s_activation_code2_uip0_tdata_f2    <= s_drm_activation_code_uip0[95:64];
    activation_code3_uip0_tdata         <= s_activation_code3_uip0_tdata_f1;
    s_activation_code3_uip0_tdata_f1    <= s_activation_code3_uip0_tdata_f2;
    s_activation_code3_uip0_tdata_f2    <= s_drm_activation_code_uip0[127:96];
    activation_code0_uip0_tvalid        <= s_activation_code0_uip0_tvalid_f1;
    s_activation_code0_uip0_tvalid_f1   <= s_activation_code0_uip0_tvalid_f2;
    s_activation_code0_uip0_tvalid_f2   <= s_act_code_is_not_null_uip0;
    activation_code1_uip0_tvalid        <= s_activation_code1_uip0_tvalid_f1;
    s_activation_code1_uip0_tvalid_f1   <= s_activation_code1_uip0_tvalid_f2;
    s_activation_code1_uip0_tvalid_f2   <= s_act_code_is_not_null_uip0;
    activation_code2_uip0_tvalid        <= s_activation_code2_uip0_tvalid_f1;
    s_activation_code2_uip0_tvalid_f1   <= s_activation_code2_uip0_tvalid_f2;
    s_activation_code2_uip0_tvalid_f2   <= s_act_code_is_not_null_uip0;
    activation_code3_uip0_tvalid        <= s_activation_code3_uip0_tvalid_f1;
    s_activation_code3_uip0_tvalid_f1   <= s_activation_code3_uip0_tvalid_f2;
    s_activation_code3_uip0_tvalid_f2   <= s_act_code_is_not_null_uip0;
    s_metering_event_uip0_f2    <= metering_event_uip0_tvalid & metering_event_uip0_tdata[0];
    s_metering_event_uip0_f1    <= s_metering_event_uip0_f2;
    s_metering_event_uip0       <= s_metering_event_uip0_f1;
 end
 
top_drm_activator_0x1003000e00010001 top_drm_activator_0x1003000e00010001_uip0 (
       .drm_aclk              (ap_clk                                   ),
       .drm_arstn             (ap_rst_n                                 ),
       .drm_to_uip_tdata      (drm_to_uip0_tdata                 ),
       .drm_to_uip_tvalid     (drm_to_uip0_tvalid                ),
       .drm_to_uip_tlast      (drm_to_uip0_tlast                 ),
       .drm_to_uip_tready     (drm_to_uip0_tready                ),
       .uip_to_drm_tready     (uip0_to_drm_tready                ),
       .uip_to_drm_tdata      (uip0_to_drm_tdata                 ),
       .uip_to_drm_tvalid     (uip0_to_drm_tvalid                ),
       .uip_to_drm_tlast      (uip0_to_drm_tlast                 ),
       .metering_event        (s_metering_event_uip0             ),
       .activation_code       (s_drm_activation_code_uip0        )
     );


endmodule
`default_nettype wire
