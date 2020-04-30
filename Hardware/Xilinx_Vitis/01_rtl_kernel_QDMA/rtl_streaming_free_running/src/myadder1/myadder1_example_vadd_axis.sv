// This is a generated file. Use and modify at your own risk.
////////////////////////////////////////////////////////////////////////////////
// default_nettype of none prevents implicit wire declaration.
`default_nettype none

module myadder1_example_vadd_axis #(
  parameter integer C_S_AXIS_TDATA_WIDTH = 512,
  parameter integer C_M_AXIS_TDATA_WIDTH = 512,
  parameter integer C_ADDER_BIT_WIDTH   = 32,
  parameter integer C_NUM_CLOCKS        = 1,
  parameter integer C_GEN_S_AXIS_DATA   = 0,
  parameter integer C_LENGTH_IN_BYTES   = 16384  // Only used with number generator
)
(
  // System Signals
  input  wire                               aclk          ,
  input  wire                               areset        ,
  input  wire [C_ADDER_BIT_WIDTH-1:0]       ctrl_constant ,

  // Kernel clocks
  input  wire                               kernel_clk    ,
  input  wire                               kernel_rst    ,
  // AXI4-Stream Interfaces

  input  wire                               s_axis_tvalid ,
  output wire                               s_axis_tready ,
  input  wire  [C_S_AXIS_TDATA_WIDTH-1:0]   s_axis_tdata  ,
  input  wire  [C_S_AXIS_TDATA_WIDTH/8-1:0] s_axis_tkeep  ,
  input  wire                               s_axis_tlast  ,

  output wire                               m_axis_tvalid ,
  input  wire                               m_axis_tready ,
  output wire [C_M_AXIS_TDATA_WIDTH-1:0]    m_axis_tdata  ,
  output wire [C_M_AXIS_TDATA_WIDTH/8-1:0]  m_axis_tkeep  ,
  output wire                               m_axis_tlast
);

timeunit 1ps;
timeprecision 1ps;


///////////////////////////////////////////////////////////////////////////////
// Wires and Variables
///////////////////////////////////////////////////////////////////////////////

logic                              numgen_tvalid ;
logic                              numgen_tready ;
logic [C_S_AXIS_TDATA_WIDTH-1:0]   numgen_tdata  ;
logic [C_S_AXIS_TDATA_WIDTH/8-1:0] numgen_tkeep  ;
logic                              numgen_tlast  ;
logic [C_S_AXIS_TDATA_WIDTH/8-1:0] numgen_tstrb  = '1;
logic                              numgen_tid    = 1'b0;
logic                              numgen_tdest  = 1'b0;
logic                              numgen_tuser  = 1'b0;

logic                              addin_tvalid ;
logic                              addin_tready ;
logic [C_S_AXIS_TDATA_WIDTH-1:0]   addin_tdata  ;
logic [C_S_AXIS_TDATA_WIDTH/8-1:0] addin_tkeep  ;
logic                              addin_tlast  ;
logic [C_ADDER_BIT_WIDTH-1:0]      ctrl_constant_kernel_clk;
logic                              active_kernel_clk;
logic                              active;

///////////////////////////////////////////////////////////////////////////////
// Begin RTL
///////////////////////////////////////////////////////////////////////////////
assign active = ~areset      ;
generate
if (C_GEN_S_AXIS_DATA) begin : gen_number_generator
  myadder1_example_number_generator #(
    .C_M_AXIS_TDATA_WIDTH       ( C_S_AXIS_TDATA_WIDTH ),
    .C_NUMBER_BIT_WIDTH         ( 32                   ),
    .C_LENGTH_IN_BYTES          ( C_LENGTH_IN_BYTES    )
  )
  inst_number_generator (
    .aclk          ( aclk          ) ,
    .areset        ( areset        ) ,
    .ap_start      ( ~areset       ) ,
    .ap_done       (               ) ,
    .m_axis_tvalid ( numgen_tvalid ) ,
    .m_axis_tready ( numgen_tready ) ,
    .m_axis_tdata  ( numgen_tdata  ) ,
    .m_axis_tkeep  ( numgen_tkeep  ) ,
    .m_axis_tlast  ( numgen_tlast  )
  );

  assign s_axis_tready = 1'b1;
end
else begin : gen_no_number_generator
  assign numgen_tvalid = s_axis_tvalid;
  assign s_axis_tready = numgen_tready;
  assign numgen_tdata = s_axis_tdata;
  assign numgen_tkeep = s_axis_tkeep;
  assign numgen_tlast = s_axis_tlast;
end

if (C_NUM_CLOCKS == 2) begin : gen_async_clock
  xpm_fifo_axis #(
     .CDC_SYNC_STAGES     ( 3                      ) , // DECIMAL
     .CLOCKING_MODE       ( "independent_clock"    ) , // String
     .ECC_MODE            ( "no_ecc"               ) , // String
     .FIFO_DEPTH          ( 32                     ) , // DECIMAL
     .FIFO_MEMORY_TYPE    ( "distributed"          ) , // String
     .PACKET_FIFO         ( "false"                ) , // String
     .PROG_EMPTY_THRESH   ( 5                      ) , // DECIMAL
     .PROG_FULL_THRESH    ( 32-5                   ) , // DECIMAL
     .RD_DATA_COUNT_WIDTH ( 6                      ) , // DECIMAL
     .RELATED_CLOCKS      ( 0                      ) , // DECIMAL
     .TDATA_WIDTH         ( C_S_AXIS_TDATA_WIDTH   ) , // DECIMAL
     .TDEST_WIDTH         ( 1                      ) , // DECIMAL
     .TID_WIDTH           ( 1                      ) , // DECIMAL
     .TUSER_WIDTH         ( 1                      ) , // DECIMAL
     .USE_ADV_FEATURES    ( "1000"                 ) , // String
     .WR_DATA_COUNT_WIDTH ( 6                      )   // DECIMAL
  )
  inst_xpm_fifo_axis_addin (
     .s_aclk             ( aclk          ) ,
     .s_aresetn          ( active        ) , // Keep tready low when not active
     .s_axis_tvalid      ( numgen_tvalid ) ,
     .s_axis_tready      ( numgen_tready ) ,
     .s_axis_tdata       ( numgen_tdata  ) ,
     .s_axis_tstrb       ( numgen_tstrb  ) ,
     .s_axis_tkeep       ( numgen_tkeep  ) ,
     .s_axis_tlast       ( numgen_tlast  ) ,
     .s_axis_tid         ( numgen_tid    ) ,
     .s_axis_tdest       ( numgen_tdest  ) ,
     .s_axis_tuser       ( numgen_tuser  ) ,
     .almost_full_axis   (               ) ,
     .prog_full_axis     (               ) ,
     .wr_data_count_axis (               ) ,
     .injectdbiterr_axis ( 1'b0          ) ,
     .injectsbiterr_axis ( 1'b0          ) ,

     .m_aclk             ( kernel_clk    ) ,
     .m_axis_tvalid      ( addin_tvalid  ) ,
     .m_axis_tready      ( addin_tready  ) ,
     .m_axis_tdata       ( addin_tdata   ) ,
     .m_axis_tstrb       (               ) ,
     .m_axis_tkeep       ( addin_tkeep   ) ,
     .m_axis_tlast       ( addin_tlast   ) ,
     .m_axis_tid         (               ) ,
     .m_axis_tdest       (               ) ,
     .m_axis_tuser       (               ) ,
     .almost_empty_axis  (               ) ,
     .prog_empty_axis    (               ) ,
     .rd_data_count_axis (               ) ,
     .sbiterr_axis       (               ) ,
     .dbiterr_axis       (               )
  );

  xpm_cdc_array_single #(
    .DEST_SYNC_FF   ( 3                 ) ,
    .INIT_SYNC_FF   ( 0                 ) ,
    .SRC_INPUT_REG  ( 1                 ) ,
    .SIM_ASSERT_CHK ( 1                 ) ,
    .WIDTH          ( C_ADDER_BIT_WIDTH )
  )
  inst_ctrl_constant_kernel_clk (
    .src_in   ( ctrl_constant            ) ,
    .src_clk  ( aclk                     ) ,
    .dest_out ( ctrl_constant_kernel_clk ) ,
    .dest_clk ( kernel_clk               )
  );

  xpm_cdc_single #(
    .DEST_SYNC_FF   ( 3                 ) ,
    .INIT_SYNC_FF   ( 0                 ) ,
    .SRC_INPUT_REG  ( 1                 ) ,
    .SIM_ASSERT_CHK ( 1                 )
  )
  inst_active_kernel_clk (
    .src_in   ( active            ) ,
    .src_clk  ( aclk              ) ,
    .dest_out ( active_kernel_clk ) ,
    .dest_clk ( kernel_clk        )
  );

end
else begin : gen_no_async_clock
  // Input to adder
  assign addin_tvalid = numgen_tvalid;
  assign numgen_tready = addin_tready;
  assign addin_tdata = numgen_tdata;
  assign addin_tkeep = numgen_tkeep;
  assign addin_tlast = numgen_tlast;
  assign ctrl_constant_kernel_clk = ctrl_constant;
  assign active_kernel_clk       = active;
end
endgenerate

myadder1_example_adder #(
  .C_AXIS_TDATA_WIDTH ( C_S_AXIS_TDATA_WIDTH ) ,
  .C_ADDER_BIT_WIDTH  ( C_ADDER_BIT_WIDTH    ) ,
  .C_NUM_CLOCKS       ( C_NUM_CLOCKS         )
)
inst_adder  (
  .s_axis_aclk   ( kernel_clk               ) ,
  .s_axis_areset ( ~active_kernel_clk       ) , // keep tready low when not active
  .ctrl_constant ( ctrl_constant_kernel_clk ) ,
  .s_axis_tvalid ( addin_tvalid             ) ,
  .s_axis_tready ( addin_tready             ) ,
  .s_axis_tdata  ( addin_tdata              ) ,
  .s_axis_tkeep  ( addin_tkeep              ) ,
  .s_axis_tlast  ( addin_tlast              ) ,
  .m_axis_aclk   ( aclk                     ) ,
  .m_axis_tvalid ( m_axis_tvalid            ) ,
  .m_axis_tready ( m_axis_tready            ) ,
  .m_axis_tdata  ( m_axis_tdata             ) ,
  .m_axis_tkeep  ( m_axis_tkeep             ) ,
  .m_axis_tlast  ( m_axis_tlast             )
);



endmodule : myadder1_example_vadd_axis
`default_nettype wire

