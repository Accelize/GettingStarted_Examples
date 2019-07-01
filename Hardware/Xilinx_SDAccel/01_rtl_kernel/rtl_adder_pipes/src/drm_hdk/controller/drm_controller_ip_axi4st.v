// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps
// Top level of the kernel. Do not modify module name, parameters or ports.

module drm_controller_ip_axi4st
(
  // System Signals
  input  wire                       ap_clk                     ,
  input  wire                       ap_rst_n                   ,
  // AXI4-ST UIP0/DRM Interface              
  output wire [32-1:0]              drm_to_uip0_tdata          ,
  output wire                       drm_to_uip0_tvalid         ,
  input wire                        drm_to_uip0_tready         ,
  output wire                       uip0_to_drm_tready         ,
  input wire [32-1:0]               uip0_to_drm_tdata          ,
  input wire                        uip0_to_drm_tvalid         ,
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

wire        drm_bus_master_o_cyc;
wire        drm_bus_master_o_we; 
wire [1:0]  drm_bus_master_o_adr;
wire        drm_bus_master_o_dat;

assign drm_to_uip0_tdata[31:6]  = 26'b0;
assign drm_to_uip0_tdata[4]     = drm_bus_master_o_cyc;
assign drm_to_uip0_tdata[3:2]   = drm_bus_master_o_adr;
assign drm_to_uip0_tdata[1]     = drm_bus_master_o_we;
assign drm_to_uip0_tdata[0]     = drm_bus_master_o_dat;
assign drm_to_uip0_tvalid       = 1'b1;
assign uip0_to_drm_tready       = 1'b1;



// DRM Controller
drm_controller_ip #(
  .SYS_BUS_ADR_BEGIN ( 0  ),
  .SYS_BUS_ADR_SIZE  ( 16 )
) drm_controller_ip_inst (
  //axi4lite insterface for control
  .sys_axi4_aclk                    ( ap_clk                    ),
  .sys_axi4_arstn                   ( ap_rst_n                  ),
  .sys_axi4_bus_slave_i_aw_valid    ( s_axi_control_awvalid     ),
  .sys_axi4_bus_slave_o_aw_ready    ( s_axi_control_awready     ),
  .sys_axi4_bus_slave_i_aw_addr     ( s_axi_control_awaddr      ),
  .sys_axi4_bus_slave_i_aw_prot     ( 3'b000                    ),
  .sys_axi4_bus_slave_i_w_valid     ( s_axi_control_wvalid      ),
  .sys_axi4_bus_slave_o_w_ready     ( s_axi_control_wready      ),
  .sys_axi4_bus_slave_i_w_data      ( s_axi_control_wdata       ),
  .sys_axi4_bus_slave_i_w_strb      ( s_axi_control_wstrb       ),
  .sys_axi4_bus_slave_o_b_valid     ( s_axi_control_bvalid      ),
  .sys_axi4_bus_slave_i_b_ready     ( s_axi_control_bready      ),
  .sys_axi4_bus_slave_o_b_resp      ( s_axi_control_bresp       ),
  .sys_axi4_bus_slave_i_ar_valid    ( s_axi_control_arvalid     ),  
  .sys_axi4_bus_slave_o_ar_ready    ( s_axi_control_arready     ),
  .sys_axi4_bus_slave_i_ar_addr     ( s_axi_control_araddr      ),  
  .sys_axi4_bus_slave_i_ar_prot     ( 3'b000                    ),
  .sys_axi4_bus_slave_o_r_valid     ( s_axi_control_rvalid      ),
  .sys_axi4_bus_slave_i_r_ready     ( s_axi_control_rready      ),
  .sys_axi4_bus_slave_o_r_data      ( s_axi_control_rdata       ),
  .sys_axi4_bus_slave_o_r_resp      ( s_axi_control_rresp       ),
  .chip_dna_valid                   ( /*open*/                  ),
  .chip_dna                         ( /*open*/                  ),
  //activator interface 
  .drm_aclk                         ( ap_clk                    ),
  .drm_arstn                        ( ap_rst_n                  ),
  .drm_bus_master_o_cs_0            ( drm_to_uip0_tdata[5]      ),  
  .drm_bus_master_i_dat_0           ( uip0_to_drm_tdata[0]      ),
  .drm_bus_master_i_ack_0           ( uip0_to_drm_tdata[3]      ),
  .drm_bus_master_i_intr_0          ( uip0_to_drm_tdata[2]      ),
  .drm_bus_master_i_sta_0           ( uip0_to_drm_tdata[1]      ),
  .drm_bus_master_o_cyc             ( drm_bus_master_o_cyc      ),
  .drm_bus_master_o_we              ( drm_bus_master_o_we       ),
  .drm_bus_master_o_adr             ( drm_bus_master_o_adr      ),
  .drm_bus_master_o_dat             ( drm_bus_master_o_dat      )

);

endmodule
`default_nettype wire
