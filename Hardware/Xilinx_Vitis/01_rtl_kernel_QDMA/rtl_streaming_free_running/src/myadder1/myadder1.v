// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps
// Top level of the kernel. Do not modify module name, parameters or ports.
module myadder1 #(
  parameter integer C_S_AXI_CONTROL_ADDR_WIDTH = 12 ,
  parameter integer C_S_AXI_CONTROL_DATA_WIDTH = 32 ,
  parameter integer C_OUT_TDATA_WIDTH          = 512,
  parameter integer C_IN1_TDATA_WIDTH          = 512
)
(
  // System Signals
  input  wire                                    ap_clk               ,
  //  Note: A minimum subset of AXI4 memory mapped signals are declared.  AXI
  // signals omitted from these interfaces are automatically inferred with the
  // optimal values for Xilinx accleration platforms.  This allows Xilinx AXI4 Interconnects
  // within the system to be optimized by removing logic for AXI4 protocol
  // features that are not necessary. When adapting AXI4 masters within the RTL
  // kernel that have signals not declared below, it is suitable to add the
  // signals to the declarations below to connect them to the AXI4 Master.
  // 
  // List of ommited signals - effect
  // -------------------------------
  // ID - Transaction ID are used for multithreading and out of order
  // transactions.  This increases complexity. This saves logic and increases Fmax
  // in the system when ommited.
  // SIZE - Default value is log2(data width in bytes). Needed for subsize bursts.
  // This saves logic and increases Fmax in the system when ommited.
  // BURST - Default value (0b01) is incremental.  Wrap and fixed bursts are not
  // recommended. This saves logic and increases Fmax in the system when ommited.
  // LOCK - Not supported in AXI4
  // CACHE - Default value (0b0011) allows modifiable transactions. No benefit to
  // changing this.
  // PROT - Has no effect in current acceleration platforms.
  // QOS - Has no effect in current acceleration platforms.
  // REGION - Has no effect in current acceleration platforms.
  // USER - Has no effect in current acceleration platforms.
  // RESP - Not useful in most acceleration platforms.
  // 
  // AXI4-Stream (master) interface out
  output wire                                    out_tvalid           ,
  input  wire                                    out_tready           ,
  output wire [C_OUT_TDATA_WIDTH-1:0]            out_tdata            ,
  output wire [C_OUT_TDATA_WIDTH/8-1:0]          out_tkeep            ,
  output wire                                    out_tlast            ,
  // AXI4-Stream (slave) interface in1
  input  wire                                    in1_tvalid           ,
  output wire                                    in1_tready           ,
  input  wire [C_IN1_TDATA_WIDTH-1:0]            in1_tdata            ,
  input  wire [C_IN1_TDATA_WIDTH/8-1:0]          in1_tkeep            ,
  input  wire                                    in1_tlast            ,
  // AXI4-Lite slave interface
  input  wire                                    s_axi_control_awvalid,
  output wire                                    s_axi_control_awready,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]   s_axi_control_awaddr ,
  input  wire                                    s_axi_control_wvalid ,
  output wire                                    s_axi_control_wready ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]   s_axi_control_wdata  ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH/8-1:0] s_axi_control_wstrb  ,
  input  wire                                    s_axi_control_arvalid,
  output wire                                    s_axi_control_arready,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]   s_axi_control_araddr ,
  output wire                                    s_axi_control_rvalid ,
  input  wire                                    s_axi_control_rready ,
  output wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]   s_axi_control_rdata  ,
  output wire [2-1:0]                            s_axi_control_rresp  ,
  output wire                                    s_axi_control_bvalid ,
  input  wire                                    s_axi_control_bready ,
  output wire [2-1:0]                            s_axi_control_bresp  ,
  // AXI4-ST Common Bus from DRM Controller          
  input wire [32-1:0]                            drm_to_uip_tdata,
  input wire                                     drm_to_uip_tvalid,
  output wire                                    drm_to_uip_tready,
  // AXI4-ST Bus to DRM Controller                                 
  input wire                                     uip_to_drm_tready,
  output wire [32-1:0]                           uip_to_drm_tdata,
  output wire                                    uip_to_drm_tvalid
);

///////////////////////////////////////////////////////////////////////////////
// Local Parameters
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// Wires and Variables
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// Begin control interface RTL.  Modifying not recommended.
///////////////////////////////////////////////////////////////////////////////


// AXI4-Lite slave interface
myadder1_control_s_axi #(
  .C_S_AXI_ADDR_WIDTH ( C_S_AXI_CONTROL_ADDR_WIDTH ),
  .C_S_AXI_DATA_WIDTH ( C_S_AXI_CONTROL_DATA_WIDTH )
)
inst_control_s_axi (
  .ACLK    ( ap_clk                ),
  .ARESET  ( 1'b0                  ),
  .ACLK_EN ( 1'b1                  ),
  .AWVALID ( s_axi_control_awvalid ),
  .AWREADY ( s_axi_control_awready ),
  .AWADDR  ( s_axi_control_awaddr  ),
  .WVALID  ( s_axi_control_wvalid  ),
  .WREADY  ( s_axi_control_wready  ),
  .WDATA   ( s_axi_control_wdata   ),
  .WSTRB   ( s_axi_control_wstrb   ),
  .ARVALID ( s_axi_control_arvalid ),
  .ARREADY ( s_axi_control_arready ),
  .ARADDR  ( s_axi_control_araddr  ),
  .RVALID  ( s_axi_control_rvalid  ),
  .RREADY  ( s_axi_control_rready  ),
  .RDATA   ( s_axi_control_rdata   ),
  .RRESP   ( s_axi_control_rresp   ),
  .BVALID  ( s_axi_control_bvalid  ),
  .BREADY  ( s_axi_control_bready  ),
  .BRESP   ( s_axi_control_bresp   )
);

///////////////////////////////////////////////////////////////////////////////
// Add kernel logic here.  Modify/remove example code as necessary.
///////////////////////////////////////////////////////////////////////////////

// Example RTL block.  Remove to insert custom logic.
myadder1_example #(
  .C_OUT_TDATA_WIDTH ( C_OUT_TDATA_WIDTH ),
  .C_IN1_TDATA_WIDTH ( C_IN1_TDATA_WIDTH )
)
inst_example (
  .ap_clk     ( ap_clk     ),
  .ap_rst_n   ( 1'b1       ),
  .out_tvalid ( out_tvalid ),
  .out_tready ( out_tready ),
  .out_tdata  ( out_tdata_int  ),
  .out_tkeep  ( out_tkeep  ),
  .out_tlast  ( out_tlast  ),
  .in1_tvalid ( in1_tvalid ),
  .in1_tready ( in1_tready ),
  .in1_tdata  ( in1_tdata  ),
  .in1_tkeep  ( in1_tkeep  ),
  .in1_tlast  ( in1_tlast  )
);

localparam      EXP_ACT_CODE = 128'h7E745E528F0CF2F36C304A2F18DB0CE0;
wire [127:0]    s_drm_activation_code;
wire            s_activated;
wire            usage_unit_event;
wire [C_OUT_TDATA_WIDTH-1:0]     out_tdata_int;

assign out_tdata          = s_activated ? out_tdata_int : {(C_OUT_TDATA_WIDTH-1){1'b0}};
assign usage_unit_event   = in1_tvalid && in1_tready; 
    
// Activation Process
assign s_activated = ~|(EXP_ACT_CODE ^ s_drm_activation_code);
    
top_drm_activator_0x1003000e00010001 top_drm_activator_0x1003000e00010001_inst (
      .drm_aclk              (ap_clk                ),
      .drm_arstn             (1'b1                  ),       
      .drm_to_uip_tdata      (drm_to_uip_tdata      ),
      .drm_to_uip_tvalid     (drm_to_uip_tvalid     ),
      .drm_to_uip_tready     (drm_to_uip_tready     ),
      .uip_to_drm_tready     (uip_to_drm_tready     ),
      .uip_to_drm_tdata      (uip_to_drm_tdata      ),
      .uip_to_drm_tvalid     (uip_to_drm_tvalid     ),
      .ip_core_aclk          (ap_clk                ),
      .metering_event        (usage_unit_event      ),
      .activation_code       (s_drm_activation_code )
    );

endmodule
`default_nettype wire
