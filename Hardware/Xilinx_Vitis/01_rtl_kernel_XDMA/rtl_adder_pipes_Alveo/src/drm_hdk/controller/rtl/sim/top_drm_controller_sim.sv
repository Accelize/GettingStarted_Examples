// pragma translate_off
/////////////////////////////////////////////////////////////////////
////
//// Accelize 2019
////
//// This is a generated file. Use and modify at your own risk.
/////////////////////////////////////////////////////////////////////

// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps

import drm_activator_0x1003000e00010001_sim_pkg::*;


module top_drm_controller (
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


  localparam FREQ_CNT_VERSION = 32'h60DC0DE0;

  wire        drm_bus_master_o_cyc;
  wire        drm_bus_master_o_we;
  wire [1:0]  drm_bus_master_o_adr;
  wire        drm_bus_master_o_dat;

  reg  [1:0]  rd_select_s1;
  reg  [1:0]  wr_select_s1;

  wire        s0_axi_awvalid;
  wire        s0_axi_awready;
  wire        s0_axi_wvalid;
  wire        s0_axi_wready;
  wire        s0_axi_bvalid;
  wire        s0_axi_bready;
  wire [1:0]  s0_axi_bresp;
  wire        s0_axi_arvalid;
  wire        s0_axi_arready;
  wire        s0_axi_rvalid;
  wire        s0_axi_rready;
  wire [31:0] s0_axi_rdata;
  wire [1:0]  s0_axi_rresp;

  wire        s1_axi_awvalid;
  wire        s1_axi_awready;
  wire        s1_axi_wvalid;
  wire        s1_axi_wready;
  reg         s1_axi_bvalid;
  wire        s1_axi_bready;
  wire [1:0]  s1_axi_bresp;
  wire        s1_axi_arvalid;
  wire        s1_axi_arready;
  wire        s1_axi_rvalid;
  wire        s1_axi_rready;
  wire [31:0] s1_axi_rdata;
  wire [1:0]  s1_axi_rresp;

  reg  [31:0] counter;
  reg         wr_active;
  reg         rd_active;
  reg  [15:0] rd_addr;

  wire [95:0] chip_dna_i;


  assign chip_dna = chip_dna_i;


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

  // Write selecter
  always@(posedge s_axi_aclk) begin
    if (!s_axi_arstn)
      wr_select_s1 <= 0;
    else if (wr_select_s1==0 && s_axi_awvalid)
      wr_select_s1 <= { &s_axi_awaddr[15:3], 1'b1 };
    else if (s_axi_bvalid && s_axi_bready)
      wr_select_s1 <= 0;
  end

  // Write request
  assign s0_axi_awvalid = wr_select_s1==1 ? s_axi_awvalid : 1'b0;
  assign s1_axi_awvalid = wr_select_s1==3 ? s_axi_awvalid : 1'b0;

  assign s_axi_awready  = wr_select_s1==1 ? s0_axi_awready :
                          wr_select_s1==3 ? s1_axi_awready :
                                            1'b0           ;

  // Write data
  assign s0_axi_wvalid  = wr_select_s1==1 ? s_axi_wvalid : 1'b0;
  assign s1_axi_wvalid  = wr_select_s1==3 ? s_axi_wvalid : 1'b0;

  assign s_axi_wready   = wr_select_s1==1 ? s0_axi_wready :
                          wr_select_s1==3 ? s1_axi_wready :
                                            1'b0          ;

  // Write response
  assign s_axi_bvalid   = wr_select_s1==1 ? s0_axi_bvalid :
                          wr_select_s1==3 ? s1_axi_bvalid :
                                            1'b0          ;

  assign s0_axi_bready  = wr_select_s1==1 ? s_axi_bready : 1'b0;
  assign s1_axi_bready  = wr_select_s1==3 ? s_axi_bready : 1'b0;

  assign s_axi_bresp    = wr_select_s1==1 ? s0_axi_bresp :
                          wr_select_s1==3 ? s1_axi_bresp :
                                            2'b00        ;


  // Read selecter
  always@(posedge s_axi_aclk) begin
    if (!s_axi_arstn)
      rd_select_s1 <= 0;
    else if (rd_select_s1==0 && s_axi_arvalid)
      rd_select_s1 <= { &s_axi_araddr[15:3], 1'b1 };
    else if (s_axi_rvalid && s_axi_rready)
      rd_select_s1 <= 0;
  end

  // Read request
  assign s0_axi_arvalid = rd_select_s1==1 ? s_axi_arvalid : 1'b0;
  assign s1_axi_arvalid = rd_select_s1==3 ? s_axi_arvalid : 1'b0;

  assign s_axi_arready  = rd_select_s1==1 ? s0_axi_arready :
                          rd_select_s1==3 ? s1_axi_arready :
                                            1'b0           ;

  // Read data
  assign s_axi_rvalid   = rd_select_s1==1 ? s0_axi_rvalid :
                          rd_select_s1==3 ? s1_axi_rvalid :
                                            1'b0          ;

  assign s0_axi_rready  = rd_select_s1==1 ? s_axi_rready : 1'b0;
  assign s1_axi_rready  = rd_select_s1==3 ? s_axi_rready : 1'b0;

  assign s_axi_rdata    = rd_select_s1==1 ? s0_axi_rdata :
                          rd_select_s1==3 ? s1_axi_rdata :
                                            0            ;

  assign s_axi_rresp    = rd_select_s1==1 ? s0_axi_rresp :
                          rd_select_s1==3 ? s1_axi_rresp :
                                            2'b00        ;


  //-------------------------------
  // PCIe AXI-Lite Slave Accesses
  //-------------------------------
  // Only supports single-beat accesses.

  // Write Request
  always@(posedge s_axi_aclk) begin
    if (!s_axi_arstn)
      wr_active <= 1'b0;
    else if (~wr_active && s1_axi_awvalid)
      wr_active <= 1'b1;
    else if (wr_active && s1_axi_bvalid && s1_axi_bready)
      wr_active <= 1'b0;
  end

  assign s1_axi_awready = ~wr_active & s_axi_arstn;
  assign s1_axi_wready  =  wr_active && s1_axi_wvalid;

  // Write Response
  always@(posedge s_axi_aclk) begin
    if (!s_axi_arstn)
      s1_axi_bvalid <= 1'b0;
    else if (~s1_axi_bvalid && s1_axi_wready)
      s1_axi_bvalid <= 1'b1;
    else if (s1_axi_bvalid && s1_axi_bready)
      s1_axi_bvalid <= 1'b0;
  end

  assign s1_axi_bresp = 2'b00;

  // Read Request
  always@(posedge s_axi_aclk) begin
    if (!s_axi_arstn) begin
      rd_active <= 1'b0;
      rd_addr   <= 0;
    end else if (~rd_active && s1_axi_arvalid) begin
      rd_active <= 1'b1;
      rd_addr   <= s_axi_araddr;
    end else if (rd_active && s1_axi_rvalid && s1_axi_rready)
      rd_active <= 1'b0;
  end

  assign s1_axi_arready = ~rd_active & s_axi_arstn;

  // Read Data
  assign s1_axi_rvalid  = rd_active;
  assign s1_axi_rdata   = rd_addr[2] ? counter : FREQ_CNT_VERSION;
  assign s1_axi_rresp   = 0;


  // Counter used to estimate DRM Controller frequency
  always@(posedge s_axi_aclk) begin
    if (!s_axi_arstn)
      counter <= 32'hFFFFFFFF;
    else if (wr_active)
      counter <= 0;
    else if (~&counter)
      counter <= counter + 1'b1;
  end


  //----------------
  // DRM Controller
  //----------------
  // A DRM must be instanciated and must be connected at least to one activator block (that will be inside the loopback example).

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
    .chip_dna                         ( chip_dna_i             ),
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


endmodule
`default_nettype wire
// pragma translate_on
