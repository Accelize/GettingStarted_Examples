// This is a generated file. Use and modify at your own risk.
////////////////////////////////////////////////////////////////////////////////
// Description: This module produces an AXI4-Stream set of incrementing numbers
//              starting at 0.

// default_nettype of none prevents implicit wire declaration.
`default_nettype none

module myadder1_example_number_generator #(
  parameter integer C_M_AXIS_TDATA_WIDTH = 128, // Should be in multiples of C_NUMBER_BIT_WIDTH
  parameter integer C_NUMBER_BIT_WIDTH   = 32,
  parameter integer C_LENGTH_IN_BYTES    = 16384
)
(
  input wire                               aclk          ,
  input wire                               areset        ,
  input wire                               ap_start      ,
  output wire                              ap_done       ,
  output wire                              m_axis_tvalid ,
  input  wire                              m_axis_tready ,
  output wire [C_M_AXIS_TDATA_WIDTH-1:0]   m_axis_tdata  ,
  output wire [C_M_AXIS_TDATA_WIDTH/8-1:0] m_axis_tkeep  ,
  output wire                              m_axis_tlast
);

timeunit 1ps;
timeprecision 1ps;


/////////////////////////////////////////////////////////////////////////////
// Local Parameters
/////////////////////////////////////////////////////////////////////////////
localparam integer LP_NUMBER_BIT_WIDTH               = C_M_AXIS_TDATA_WIDTH > C_NUMBER_BIT_WIDTH ? C_NUMBER_BIT_WIDTH : C_M_AXIS_TDATA_WIDTH;
localparam integer LP_NUM_GENERATORS                 = C_M_AXIS_TDATA_WIDTH / LP_NUMBER_BIT_WIDTH;
localparam integer LP_STATIC_BITS                    = LP_NUM_GENERATORS > 1 ? $clog2(LP_NUM_GENERATORS) : 0;
localparam integer LP_COUNTER_WIDTH                  = LP_NUMBER_BIT_WIDTH-LP_STATIC_BITS;
localparam integer LP_PARTIAL_BEAT                   = C_LENGTH_IN_BYTES % (C_M_AXIS_TDATA_WIDTH / 8) > 0 ? 1 : 0;
localparam integer LP_NUM_BEATS                      = C_LENGTH_IN_BYTES / (C_M_AXIS_TDATA_WIDTH / 8) + LP_PARTIAL_BEAT;
localparam integer LP_BEAT_COUNTER_WIDTH             = $clog2(LP_NUM_BEATS);
localparam [C_M_AXIS_TDATA_WIDTH-1:0] LP_FINAL_TKEEP = (1 << (C_LENGTH_IN_BYTES % (C_M_AXIS_TDATA_WIDTH / 8))) - 1;

/////////////////////////////////////////////////////////////////////////////
// Variables
/////////////////////////////////////////////////////////////////////////////
logic running = 1'b0;
logic ap_start_r = 1'b0;
logic go;
genvar num;

///////////////////////////////////////////////////////////////////////////////
// Begin RTL
///////////////////////////////////////////////////////////////////////////////

assign ap_done = m_axis_tready & m_axis_tlast;
assign m_axis_tvalid = running;
assign m_axis_tkeep = LP_PARTIAL_BEAT && m_axis_tlast ? LP_FINAL_TKEEP : {C_M_AXIS_TDATA_WIDTH{1'b1}};
assign go = ap_start & ~ap_start_r;

always @(posedge aclk) begin
  if (areset) begin
    ap_start_r <= 1'b0;
  end else begin
   ap_start_r <= ap_start;
  end
end

always @(posedge aclk) begin
  if (areset) begin
    running <= 1'b0;
  end else begin
    running <= go | (running & ~ap_done);
  end
end

myadder1_example_counter #(
  .C_WIDTH ( LP_BEAT_COUNTER_WIDTH ),
  .C_INIT  ( LP_NUM_BEATS-1        )
)
inst_beat_counter (
  .clk        ( aclk                          ) ,
  .clken      ( running                       ) ,
  .rst        ( go | areset                   ) ,
  .load       ( 1'b0                          ) ,
  .incr       ( 1'b0                          ) ,
  .decr       ( m_axis_tready                 ) ,
  .load_value ( {LP_BEAT_COUNTER_WIDTH{1'b0}} ) ,
  .count      (                               ) ,
  .is_zero    ( m_axis_tlast                  )
);

generate
for (num = 0; num < LP_NUM_GENERATORS; num = num + 1) begin : gen_number_generator
  myadder1_example_counter #(
    .C_WIDTH ( LP_COUNTER_WIDTH )
  )
  inst_counter (
    .clk        ( aclk                     ) ,
    .clken      ( running                  ) ,
    .rst        ( go| areset               ) ,
    .load       ( 1'b0                     ) ,
    .incr       ( m_axis_tready            ) ,
    .decr       ( 1'b0                     ) ,
    .load_value ( {LP_COUNTER_WIDTH{1'b0}} ) ,
    .count      ( m_axis_tdata[num*LP_NUMBER_BIT_WIDTH + LP_STATIC_BITS +:LP_COUNTER_WIDTH] ) ,
    .is_zero    (                          )
  );

  if (LP_STATIC_BITS > 0) begin : gen_static_bits
    assign m_axis_tdata[num*LP_NUMBER_BIT_WIDTH+:LP_STATIC_BITS] = num[0+:LP_STATIC_BITS];
  end
end
endgenerate

endmodule : myadder1_example_number_generator
`default_nettype wire

