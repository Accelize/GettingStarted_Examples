// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps
// Top level of the kernel. Do not modify module name, parameters or ports.

module drm_controller_ip_axi4st
(
  // System Signals
  input  wire                       ap_clk               ,
  input  wire                       ap_rst_n             ,
  // AXI4-ST UIP0         
  output wire [32-1:0]              drm_to_uip0_tdata    ,
  output wire                       drm_to_uip0_tvalid   ,
  input wire                        drm_to_uip0_tready   ,
  output wire                       uip0_to_drm_tready   ,
  input wire [32-1:0]               uip0_to_drm_tdata    ,
  input wire                        uip0_to_drm_tvalid   ,
  // Registers Access
  input wire                        m_axi_awvalid      ,
  output  wire                      m_axi_awready      ,
  input wire [16-1:0]               m_axi_awaddr       ,
  input wire                        m_axi_wvalid       ,
  output  wire                      m_axi_wready       ,
  input wire [32-1:0]               m_axi_wdata        ,
  input wire [32/8-1:0]             m_axi_wstrb        ,
  output  wire                      m_axi_bvalid       ,
  input wire                        m_axi_bready       ,
  output wire [2-1:0]               m_axi_bresp        ,
  input wire                        m_axi_arvalid      ,
  output  wire                      m_axi_arready      ,
  input wire [16-1:0]               m_axi_araddr       ,
  output  wire                      m_axi_rvalid       ,
  input wire                        m_axi_rready       ,
  output  wire [32-1:0]             m_axi_rdata        ,
  output wire [2-1:0]               m_axi_rresp  
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



// DRM block
// A DRM must be instanciated and must be connected at least to one activator block (that will be inside the loopback example).
drm_controller_ip #(
  .SYS_BUS_ADR_BEGIN ( 0  ),
  .SYS_BUS_ADR_SIZE  ( 16 )
) drm_controller_ip_inst (
  //axi4lite insterface for control
  .sys_axi4_aclk                    ( ap_clk                    ),
  .sys_axi4_arstn                   ( ap_rst_n                  ),
  .sys_axi4_bus_slave_i_aw_valid    ( m_axi_awvalid             ),
  .sys_axi4_bus_slave_o_aw_ready    ( m_axi_awready             ),
  .sys_axi4_bus_slave_i_aw_addr     ( m_axi_awaddr              ),
  .sys_axi4_bus_slave_i_aw_prot     ( 3'b000                    ),
  .sys_axi4_bus_slave_i_w_valid     ( m_axi_wvalid              ),
  .sys_axi4_bus_slave_o_w_ready     ( m_axi_wready              ),
  .sys_axi4_bus_slave_i_w_data      ( m_axi_wdata               ),
  .sys_axi4_bus_slave_i_w_strb      ( m_axi_wstrb               ),
  .sys_axi4_bus_slave_o_b_valid     ( m_axi_bvalid              ),
  .sys_axi4_bus_slave_i_b_ready     ( m_axi_bready              ),
  .sys_axi4_bus_slave_o_b_resp      ( m_axi_bresp               ),
  .sys_axi4_bus_slave_i_ar_valid    ( m_axi_arvalid             ),  
  .sys_axi4_bus_slave_o_ar_ready    ( m_axi_arready             ),
  .sys_axi4_bus_slave_i_ar_addr     ( m_axi_araddr              ),  
  .sys_axi4_bus_slave_i_ar_prot     ( 3'b000                    ),
  .sys_axi4_bus_slave_o_r_valid     ( m_axi_rvalid              ),
  .sys_axi4_bus_slave_i_r_ready     ( m_axi_rready              ),
  .sys_axi4_bus_slave_o_r_data      ( m_axi_rdata               ),
  .sys_axi4_bus_slave_o_r_resp      ( m_axi_rresp               ),
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
