// pragma translate_off
/////////////////////////////////////////////////////////////////////
////
//// Accelize 2021
////
//// This is a generated file. Use and modify at your own risk.
/////////////////////////////////////////////////////////////////////

// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps

import drm_activator_0x1003000e00010001_sim_pkg::*;


module top_drm_controller
(
  // AXI4-Stream Clock and Reset
  input  wire                      drm_aclk           ,
  input  wire                      drm_arstn          ,
  // AXI4-Stream Bus to/from User IP0
  input  wire                      drm_to_uip0_tready ,
  output wire                      drm_to_uip0_tvalid ,
  output wire [32-1:0]             drm_to_uip0_tdata  ,
  output wire                      uip0_to_drm_tready ,
  input  wire                      uip0_to_drm_tvalid ,
  input  wire [32-1:0]             uip0_to_drm_tdata  ,
  // AXI4-Lite Register Access
  input  wire                      s_axi_aclk         ,
  input  wire                      s_axi_arstn        ,
  output wire                      s_axi_awready      ,
  input  wire                      s_axi_awvalid      ,
  input  wire [16-1:0]             s_axi_awaddr       ,
  input  wire [3-1 :0]             s_axi_awprot       ,
  output wire                      s_axi_wready       ,
  input  wire                      s_axi_wvalid       ,
  input  wire [32-1:0]             s_axi_wdata        ,
  input  wire [32/8-1:0]           s_axi_wstrb        ,
  input  wire                      s_axi_bready       ,
  output wire                      s_axi_bvalid       ,
  output wire [2-1:0]              s_axi_bresp        ,
  output wire                      s_axi_arready      ,
  input  wire                      s_axi_arvalid      ,
  input  wire [16-1:0]             s_axi_araddr       ,
  input  wire [3-1 :0]             s_axi_arprot       ,
  input  wire                      s_axi_rready       ,
  output wire                      s_axi_rvalid       ,
  output wire [32-1:0]             s_axi_rdata        ,
  output wire [2-1:0]              s_axi_rresp        ,
  // Chip DNA
  output wire                      chip_dna_valid     ,
  output wire [96-1:0]             chip_dna
);


  localparam FREQ_CNT_VERSION = 32'h60DC0DE1;

  localparam LOCAL_REG_OFFSET = 4;
  localparam LOCAL_REG_LENGTH = 16 - LOCAL_REG_OFFSET;

  localparam NUM_CDC_STAGE    = 2;

  localparam FSM_ADDR   = 3'd0,
             FSM_DATA   = 3'd1,
             FSM_RESP   = 3'd2;

  reg  [2:0]  wr_fsm;
  reg  [2:0]  rd_fsm;

  wire        drm_bus_master_o_cyc;
  wire        drm_bus_master_o_we;
  wire [1:0]  drm_bus_master_o_adr;
  wire        drm_bus_master_o_dat;

  reg [1:0]   rd_select;
  reg [1:0]   wr_select;

  wire        s0_axi_awvalid;
  wire        s0_axi_awready;
  wire        s0_axi_wvalid;
  wire        s0_axi_wready;
  reg         s0_axi_bvalid;
  wire        s0_axi_bready;
  wire [1:0]  s0_axi_bresp;
  wire        s0_axi_arvalid;
  reg         s0_axi_arready;
  reg         s0_axi_rvalid;
  wire        s0_axi_rready;
  wire [31:0] s0_axi_rdata;
  wire [1:0]  s0_axi_rresp;

  wire        s1_axi_awvalid;
  reg         s1_axi_awready;
  wire        s1_axi_wvalid;
  reg         s1_axi_wready;
  reg         s1_axi_bvalid;
  wire        s1_axi_bready;
  wire [1:0]  s1_axi_bresp;
  wire        s1_axi_arvalid;
  reg         s1_axi_arready;
  reg         s1_axi_rvalid;
  wire        s1_axi_rready;
  reg  [31:0] s1_axi_rdata;
  wire [1:0]  s1_axi_rresp;

  reg  [LOCAL_REG_OFFSET-3:0] rd_addr;

  reg  [31:0] counter_c1;
  reg  [31:0] counter_c2_r_c1;
  reg  [31:0] counter_c2;
  reg  [31:0] counter_c2_r;

  wire        cnt_rst_rdy_c1;
  reg         cnt_rst_c1;
  wire        cnt_rst_c2;

  reg         cnt_rd_c1;
  wire        cnt_rd_c2;
  wire        cnt_rd_rdy_c1;

  wire        i_s_axi_bvalid;
  wire        i_s_axi_rvalid;

  wire [63:0] i_chip_dna;


  assign chip_dna = {32'd0, i_chip_dna};


  //-------------------------------------
  // DRM Controller to/from User IP0
  //-------------------------------------

  wire [31:0] i_drm_to_uip0_tdata;
  wire [31:0] i_uip0_to_drm_tdata;

  assign uip0_to_drm_tready        = 1'b1;

  assign drm_to_uip0_tvalid        = 1'b1;

  assign i_drm_to_uip0_tdata[0]    = drm_bus_master_o_dat;
  assign i_drm_to_uip0_tdata[1]    = drm_bus_master_o_we;
  assign i_drm_to_uip0_tdata[3:2]  = drm_bus_master_o_adr;
  assign i_drm_to_uip0_tdata[4]    = drm_bus_master_o_cyc;
  assign i_drm_to_uip0_tdata[31:6] = 0;

  generate if (drm_activator_0x1003000e00010001_sim_pkg::USE_BFM == 1) begin
    assign drm_to_uip0_tdata   = uip0_to_drm_tdata;
    assign i_uip0_to_drm_tdata = 0;
  end else begin
    assign i_uip0_to_drm_tdata = uip0_to_drm_tdata;
    assign drm_to_uip0_tdata   = i_drm_to_uip0_tdata;
  end endgenerate


  //----------------------------------------------------------------------------------------------
  // AXI4-Lite Switch between DRM Controller (m0) and 32-bit counter for frequency detection (m1)
  //----------------------------------------------------------------------------------------------

  assign s_axi_bvalid = i_s_axi_bvalid;

  // Write selecter
  always@(posedge s_axi_aclk) begin
    if (~s_axi_arstn) begin
      wr_select <= 2'b00;
    end else if (wr_select==2'b00 && s_axi_awvalid) begin
      wr_select[0] <= ~&s_axi_awaddr[LOCAL_REG_OFFSET +: LOCAL_REG_LENGTH];
      wr_select[1] <=  &s_axi_awaddr[LOCAL_REG_OFFSET +: LOCAL_REG_LENGTH];
    end else if (i_s_axi_bvalid && s_axi_bready) begin
      wr_select <= 2'b00;
    end
  end

  // Write request
  assign s0_axi_awvalid = (wr_select==2'b01)? s_axi_awvalid : 1'b0;
  assign s1_axi_awvalid = (wr_select==2'b10)? s_axi_awvalid : 1'b0;

  assign s_axi_awready  = (wr_select==2'b01)? s0_axi_awready :
                          (wr_select==2'b10)? s1_axi_awready :
                                              1'b0           ;

  // Write data
  assign s0_axi_wvalid  = (wr_select==2'b01)? s_axi_wvalid : 1'b0;
  assign s1_axi_wvalid  = (wr_select==2'b10)? s_axi_wvalid : 1'b0;

  assign s_axi_wready   = (wr_select==2'b01)? s0_axi_wready :
                          (wr_select==2'b10)? s1_axi_wready :
                                              1'b0          ;

  // Write response
  assign i_s_axi_bvalid = (wr_select==2'b01)? s0_axi_bvalid :
                          (wr_select==2'b10)? s1_axi_bvalid :
                                              1'b0          ;

  assign s0_axi_bready  = (wr_select==2'b01)? s_axi_bready : 1'b0;
  assign s1_axi_bready  = (wr_select==2'b10)? s_axi_bready : 1'b0;

  assign s_axi_bresp    = (wr_select==2'b01)? s0_axi_bresp :
                          (wr_select==2'b10)? s1_axi_bresp :
                                              2'b00        ;


  assign s_axi_rvalid = i_s_axi_rvalid;

  // Read selecter
  always@(posedge s_axi_aclk) begin
    if (~s_axi_arstn) begin
      rd_select <= 2'b00;
    end else if (rd_select==2'b00 && s_axi_arvalid) begin
      rd_select[0] <= ~&s_axi_araddr[LOCAL_REG_OFFSET +: LOCAL_REG_LENGTH];
      rd_select[1] <=  &s_axi_araddr[LOCAL_REG_OFFSET +: LOCAL_REG_LENGTH];
    end else if (i_s_axi_rvalid && s_axi_rready) begin
      rd_select <= 2'b00;
    end
  end

  // Read request
  assign s0_axi_arvalid = (rd_select==2'b01)? s_axi_arvalid : 1'b0;
  assign s1_axi_arvalid = (rd_select==2'b10)? s_axi_arvalid : 1'b0;

  assign s_axi_arready  = (rd_select==2'b01)? s0_axi_arready :
                          (rd_select==2'b10)? s1_axi_arready :
                                              1'b0           ;

  // Read data
  assign i_s_axi_rvalid = (rd_select==2'b01)? s0_axi_rvalid :
                          (rd_select==2'b10)? s1_axi_rvalid :
                                              1'b0          ;

  assign s0_axi_rready  = (rd_select==2'b01)? s_axi_rready : 1'b0;
  assign s1_axi_rready  = (rd_select==2'b10)? s_axi_rready : 1'b0;

  assign s_axi_rdata    = (rd_select==2'b01)? s0_axi_rdata :
                          (rd_select==2'b10)? s1_axi_rdata :
                                              0            ;

  assign s_axi_rresp    = (rd_select==2'b01)? s0_axi_rresp :
                          (rd_select==2'b10)? s1_axi_rresp :
                                              2'b00        ;


  //-------------------------------
  // AXI-Lite Slave Write Accesses
  //-------------------------------

  assign s1_axi_bresp = 2'b00;

  // Write Request
  always@(posedge s_axi_aclk) begin
    if (~s_axi_arstn) begin
      cnt_rst_c1     <= 1'b0;
      s1_axi_awready <= 1'b0;
      s1_axi_wready  <= 1'b0;
      s1_axi_bvalid  <= 1'b0;
      wr_fsm         <= FSM_ADDR;
    end else begin
      cnt_rst_c1 <= 1'b0;
      case (wr_fsm)
        FSM_ADDR: begin
          s1_axi_awready <= cnt_rst_rdy_c1;
          if (s1_axi_awready && s1_axi_awvalid) begin
            s1_axi_awready <= 1'b0;
            cnt_rst_c1     <= 1'b1;
            wr_fsm         <= FSM_DATA;
          end
        end
        FSM_DATA: begin
          s1_axi_wready <= 1'b1;
          if (s1_axi_wready && s1_axi_wvalid) begin
            s1_axi_wready <= 1'b0;
            wr_fsm        <= FSM_RESP;
          end
        end
        FSM_RESP: begin
          s1_axi_bvalid <= 1'b1;
          if (s1_axi_bready && s1_axi_bvalid) begin
            s1_axi_bvalid <= 1'b0;
            wr_fsm        <= FSM_ADDR;
          end
        end
        default: begin
          wr_fsm <= FSM_ADDR;
        end
      endcase
    end
  end


  //-------------------------------
  // AXI-Lite Slave Read Accesses
  //-------------------------------

  // Read Data
  assign s1_axi_rresp = 2'b00;

  // Read Request
  always@(posedge s_axi_aclk) begin
    if (~s_axi_arstn) begin
      rd_addr         <= {(LOCAL_REG_OFFSET-2){1'b0}};
      cnt_rd_c1       <= 1'b0;
      s1_axi_arready  <= 1'b0;
      s1_axi_rvalid   <= 1'b0;
      s1_axi_rdata    <= 32'b0;
      counter_c2_r_c1 <= 32'b0;
      rd_fsm          <= FSM_ADDR;
    end else begin
      counter_c2_r_c1 <= counter_c2_r;
      cnt_rd_c1       <= 1'b0;
      case (rd_fsm)
        FSM_ADDR: begin
          s1_axi_arready <= cnt_rd_rdy_c1;
          if (s1_axi_arready && s1_axi_arvalid) begin
            rd_addr        <= s_axi_araddr[LOCAL_REG_OFFSET-1:2];
            s1_axi_arready <= 1'b0;
            cnt_rd_c1      <= s_axi_araddr[2];
            rd_fsm         <= FSM_RESP;
          end
        end
        FSM_RESP: begin
          s1_axi_rvalid <= cnt_rd_rdy_c1;
          if (s1_axi_rready && s1_axi_rvalid) begin
            s1_axi_rvalid <= 1'b0;
            rd_fsm        <= FSM_ADDR;
          end
        end
        default: begin
          rd_fsm <= FSM_ADDR;
        end
      endcase
      if (rd_addr[0]) begin
        s1_axi_rdata <= counter_c2_r_c1;
      end else if (rd_addr[1]) begin
        s1_axi_rdata <= counter_c1;
      end else begin
        s1_axi_rdata <= FREQ_CNT_VERSION;
      end
    end
  end


  //----------------
  // DRM Controller
  //----------------
  // A DRM must be instanciated and must be connected at least to
  // one activator block (that will be inside the loopback example).

  drm_ip_controller drm_ip_controller_inst (
    // AXI4-Lite Register Access
    .sys_axi4_aclk                    ( s_axi_aclk             ),
    .sys_axi4_arstn                   ( s_axi_arstn            ),
    .sys_axi4_bus_slave_o_aw_ready    ( s0_axi_awready         ),
    .sys_axi4_bus_slave_i_aw_valid    ( s0_axi_awvalid         ),
    .sys_axi4_bus_slave_i_aw_addr     ( s_axi_awaddr           ),
    .sys_axi4_bus_slave_i_aw_prot     ( s_axi_awprot           ),
    .sys_axi4_bus_slave_o_w_ready     ( s0_axi_wready          ),
    .sys_axi4_bus_slave_i_w_valid     ( s0_axi_wvalid          ),
    .sys_axi4_bus_slave_i_w_data      ( s_axi_wdata            ),
    .sys_axi4_bus_slave_i_w_strb      ( s_axi_wstrb            ),
    .sys_axi4_bus_slave_i_b_ready     ( s0_axi_bready          ),
    .sys_axi4_bus_slave_o_b_valid     ( s0_axi_bvalid          ),
    .sys_axi4_bus_slave_o_b_resp      ( s0_axi_bresp           ),
    .sys_axi4_bus_slave_o_ar_ready    ( s0_axi_arready         ),
    .sys_axi4_bus_slave_i_ar_valid    ( s0_axi_arvalid         ),
    .sys_axi4_bus_slave_i_ar_addr     ( s_axi_araddr           ),
    .sys_axi4_bus_slave_i_ar_prot     ( s_axi_arprot           ),
    .sys_axi4_bus_slave_i_r_ready     ( s0_axi_rready          ),
    .sys_axi4_bus_slave_o_r_valid     ( s0_axi_rvalid          ),
    .sys_axi4_bus_slave_o_r_data      ( s0_axi_rdata           ),
    .sys_axi4_bus_slave_o_r_resp      ( s0_axi_rresp           ),
    .chip_dna_valid                   ( chip_dna_valid         ),
    .chip_dna                         ( i_chip_dna             ),
    // DRM Bus Clock and Reset
    .drm_aclk                         ( drm_aclk               ),
    .drm_arstn                        ( drm_arstn              ),
    // DRM Specific Bus to User IP0
    .drm_bus_master_i_dat_0           ( i_uip0_to_drm_tdata[0] ),
    .drm_bus_master_i_sta_0           ( i_uip0_to_drm_tdata[1] ),
    .drm_bus_master_i_intr_0          ( i_uip0_to_drm_tdata[2] ),
    .drm_bus_master_i_ack_0           ( i_uip0_to_drm_tdata[3] ),
    .drm_bus_master_o_cs_0            ( i_drm_to_uip0_tdata[5] ),
    // DRM Common Bus
    .drm_bus_master_o_cyc             ( drm_bus_master_o_cyc   ),
    .drm_bus_master_o_we              ( drm_bus_master_o_we    ),
    .drm_bus_master_o_adr             ( drm_bus_master_o_adr   ),
    .drm_bus_master_o_dat             ( drm_bus_master_o_dat   )
  );


  //----------
  // CDC
  // ---------

  // CDC for cnt_rst_c1 from s_axi_aclk to drm_aclk
  cdc_bridge #(.NUM_CDC_STAGE(NUM_CDC_STAGE), .BIT_IS_PULSE(1), .DISABLE_READY(0)) cdc_rst_inst (
  .src_aclk(s_axi_aclk), .src_arstn(s_axi_arstn), .src_bit(cnt_rst_c1), .src_ready(cnt_rst_rdy_c1),
  .dst_aclk(drm_aclk), .dst_arstn(drm_arstn), .dst_bit(cnt_rst_c2));

  // CDC for cnt_rd_c1 from s_axi_aclk to drm_aclk
  cdc_bridge #(.NUM_CDC_STAGE(NUM_CDC_STAGE), .BIT_IS_PULSE(1), .DISABLE_READY(0)) cdc_rd_inst (
  .src_aclk(s_axi_aclk), .src_arstn(s_axi_arstn), .src_bit(cnt_rd_c1), .src_ready(cnt_rd_rdy_c1),
  .dst_aclk(drm_aclk), .dst_arstn(drm_arstn), .dst_bit(cnt_rd_c2));


  //------------------
  // drm_aclk counter
  //------------------
  // Counter used to estimate DRM Controller frequency

  always@(posedge drm_aclk) begin
    if (~drm_arstn) begin
      counter_c2   <= {32{1'b1}};
      counter_c2_r <= {32{1'b1}};
    end else begin
      if (cnt_rst_c2) begin
        counter_c2 <= 0;
      end else if (~&counter_c2) begin
        counter_c2 <= counter_c2 + 1'b1;
      end
      if (cnt_rd_c2) begin
        counter_c2_r <= counter_c2;
      end
    end
  end


  //------------------
  // s_axi_aclk counter
  //------------------
  // Counter used to estimate DRM Controller frequency

  always@(posedge s_axi_aclk) begin
    if (~s_axi_arstn) begin
      counter_c1 <= {32{1'b1}};
    end else begin
      if (cnt_rst_c1) begin
        counter_c1 <= 0;
      end else if (~&counter_c1) begin
        counter_c1 <= counter_c1 + 1'b1;
      end
    end
  end


endmodule
`default_nettype wire
// pragma translate_on
