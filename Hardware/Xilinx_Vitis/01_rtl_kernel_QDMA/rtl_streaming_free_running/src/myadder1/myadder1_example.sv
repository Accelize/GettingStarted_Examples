// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
module myadder1_example #(
  parameter integer C_OUT_TDATA_WIDTH = 512,
  parameter integer C_IN1_TDATA_WIDTH = 512
)
(
  // System Signals
  input  wire                           ap_clk    ,
  input  wire                           ap_rst_n  ,
  // Pipe (AXI4-Stream host) interface out
  output wire                           out_tvalid,
  input  wire                           out_tready,
  output wire [C_OUT_TDATA_WIDTH-1:0]   out_tdata ,
  output wire [C_OUT_TDATA_WIDTH/8-1:0] out_tkeep ,
  output wire                           out_tlast ,
  // Pipe (AXI4-Stream host) interface in1
  input  wire                           in1_tvalid,
  output wire                           in1_tready,
  input  wire [C_IN1_TDATA_WIDTH-1:0]   in1_tdata ,
  input  wire [C_IN1_TDATA_WIDTH/8-1:0] in1_tkeep ,
  input  wire                           in1_tlast 
);


timeunit 1ps;
timeprecision 1ps;

///////////////////////////////////////////////////////////////////////////////
// Local Parameters
///////////////////////////////////////////////////////////////////////////////
// Large enough for interesting traffic.
localparam integer  LP_DEFAULT_LENGTH_IN_BYTES = 16384;
localparam integer  LP_NUM_EXAMPLES    = 1;

///////////////////////////////////////////////////////////////////////////////
// Wires and Variables
///////////////////////////////////////////////////////////////////////////////
(* KEEP = "yes" *)
logic                                areset                         = 1'b0;
logic [32-1:0]                       ctrl_xfer_size_in_bytes        = LP_DEFAULT_LENGTH_IN_BYTES;
logic [32-1:0]                       ctrl_constant                  = 32'd1;

///////////////////////////////////////////////////////////////////////////////
// Begin RTL
///////////////////////////////////////////////////////////////////////////////

// Register and invert reset signal.
always @(posedge ap_clk) begin
  areset <= ~ap_rst_n;
end

// Vadd stream example
myadder1_example_vadd_axis #(
  .C_S_AXIS_TDATA_WIDTH ( C_OUT_TDATA_WIDTH          ),
  .C_M_AXIS_TDATA_WIDTH ( C_OUT_TDATA_WIDTH          ),
  .C_ADDER_BIT_WIDTH    ( 32                         ),
  .C_NUM_CLOCKS         ( 1                          ),
  .C_GEN_S_AXIS_DATA    ( 0                          ),
  .C_LENGTH_IN_BYTES    ( LP_DEFAULT_LENGTH_IN_BYTES )
)
inst_example_vadd__in1_to_out (
  .aclk          ( ap_clk     ),
  .areset        ( areset     ),
  .kernel_clk    ( ap_clk     ),
  .kernel_rst    ( areset     ),
  .s_axis_tvalid ( in1_tvalid ),
  .s_axis_tready ( in1_tready ),
  .s_axis_tdata  ( in1_tdata  ),
  .s_axis_tkeep  ( in1_tkeep  ),
  .s_axis_tlast  ( in1_tlast  ),
  .m_axis_tvalid ( out_tvalid ),
  .m_axis_tready ( out_tready ),
  .m_axis_tdata  ( out_tdata  ),
  .m_axis_tkeep  ( out_tkeep  ),
  .m_axis_tlast  ( out_tlast  ),
  .ctrl_constant ( 32'b1      )
);

endmodule : myadder1_example
`default_nettype wire
