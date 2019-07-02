// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps
// Top level of the kernel. Do not modify module name, parameters or ports.

module cl_toplevel
(
  // System Signals
  input  wire                       clk                  ,
  input  wire                       rst_n                ,
  // AXI4 master interface m00_axi          
  input wire                        m00_axi_awvalid      ,
  output  wire                      m00_axi_awready      ,
  input wire [32-1:0]               m00_axi_awaddr       ,
  input wire                        m00_axi_wvalid       ,
  output  wire                      m00_axi_wready       ,
  input wire [32-1:0]               m00_axi_wdata        ,
  input wire [32/8-1:0]             m00_axi_wstrb        ,
  output  wire                      m00_axi_bvalid       ,
  input wire                        m00_axi_bready       ,
  output wire [2-1:0]               m00_axi_bresp        ,
  input wire                        m00_axi_arvalid      ,
  output  wire                      m00_axi_arready      ,
  input wire [32-1:0]               m00_axi_araddr       ,
  output  wire                      m00_axi_rvalid       ,
  input wire                        m00_axi_rready       ,
  output  wire [32-1:0]             m00_axi_rdata        ,
  output wire [2-1:0]               m00_axi_rresp  
);

reg areset = 1'b0;

// Register and invert reset signal.
always @(posedge clk) begin
  areset <= ~rst_n;
end


// AXI4-Lite interfaces
wire [16-1:0]                           m_axi_MSB_awaddr        ;
wire [16-1:0]                           m_axi_LSB_awaddr        ;
wire [16-1:0]                           m_axi_MSB_araddr        ;
wire [16-1:0]                           m_axi_LSB_araddr        ;
wire                                    m_axi_userip_awvalid    ;
wire                                    m_axi_userip_awready    ;
wire                                    m_axi_userip_wvalid     ;
wire                                    m_axi_userip_wready     ;
wire [32-1:0]                           m_axi_userip_wdata      ;
wire [32/8-1:0]                         m_axi_userip_wstrb      ;
wire                                    m_axi_userip_arvalid    ;
wire                                    m_axi_userip_arready    ;
wire                                    m_axi_userip_rvalid     ;
wire                                    m_axi_userip_rready     ;
wire [32-1:0]                           m_axi_userip_rdata      ;
wire [2-1:0]                            m_axi_userip_rresp      ;
wire                                    m_axi_userip_bvalid     ;
wire                                    m_axi_userip_bready     ;
wire [2-1:0]                            m_axi_userip_bresp      ;
wire                                    m_axi_drm_awvalid       ;
wire                                    m_axi_drm_awready       ;
wire                                    m_axi_drm_wvalid        ;
wire                                    m_axi_drm_wready        ;
wire [32-1:0]                           m_axi_drm_wdata         ;
wire [32/8-1:0]                         m_axi_drm_wstrb         ;
wire                                    m_axi_drm_arvalid       ;
wire                                    m_axi_drm_arready       ;
wire                                    m_axi_drm_rvalid        ;
wire                                    m_axi_drm_rready        ;
wire [32-1:0]                           m_axi_drm_rdata         ;
wire [2-1:0]                            m_axi_drm_rresp         ;
wire                                    m_axi_drm_bvalid        ;
wire                                    m_axi_drm_bready        ;
wire [2-1:0]                            m_axi_drm_bresp         ;
// DRM/Activator(s) Interface
wire [32-1:0]                           drm_to_uip0_tdata       ;
wire                                    drm_to_uip0_tvalid      ;
wire                                    drm_to_uip0_tready      ;
wire                                    uip0_to_drm_tready      ;
wire [32-1:0]                           uip0_to_drm_tdata       ;
wire                                    uip0_to_drm_tvalid      ;


ila_xbar_axi4l ila_xbar_axi4l_inst (
    .clk(clk), // input wire clk
    // AXI4-lite Source
    .probe0(m00_axi_araddr          ),      // input wire [31:0]  probe0  
    .probe1(m00_axi_rdata           ),      // input wire [31:0]  probe1 
    .probe2(m00_axi_bresp           ),      // input wire [1:0]  probe2 
    .probe3(m00_axi_rresp           ),      // input wire [1:0]  probe3 
    .probe4(m00_axi_arvalid         ),      // input wire [0:0]  probe4 
    .probe5(m00_axi_arready         ),      // input wire [0:0]  probe5 
    .probe6(m00_axi_rvalid          ),      // input wire [0:0]  probe6 
    .probe7(m00_axi_rready          ),      // input wire [0:0]  probe7 
    .probe8(m00_axi_bvalid          ),      // input wire [0:0]  probe8 
    .probe9(m00_axi_bready          ),      // input wire [0:0]  probe9 
    // User IP without DRM
    .probe10(m_axi_LSB_araddr       ),      // input wire [31:0]  probe10 
    .probe11(m_axi_userip_rdata     ),      // input wire [31:0]  probe11 
    .probe12(m_axi_drm_rresp        ),      // input wire [1:0]  probe12 
    .probe13(m_axi_drm_bresp        ),      // input wire [1:0]  probe13 
    .probe14(m_axi_userip_arvalid   ),      // input wire [0:0]  probe14 
    .probe15(m_axi_userip_arready   ),      // input wire [0:0]  probe15 
    .probe16(m_axi_userip_rvalid    ),      // input wire [0:0]  probe16 
    .probe17(m_axi_userip_rready    ),      // input wire [0:0]  probe17 
    .probe18(m_axi_userip_bvalid    ),      // input wire [0:0]  probe18 
    .probe19(m_axi_userip_bready    ),      // input wire [0:0]  probe19 
    // User IP with DRM             
    .probe20(m_axi_LSB_awaddr       ),      // input wire [31:0]  probe20 
    .probe21(m_axi_drm_rdata        ),      // input wire [31:0]  probe21 
    .probe22(m_axi_drm_rresp        ),      // input wire [1:0]  probe22 
    .probe23(m_axi_drm_bresp        ),      // input wire [1:0]  probe23 
    .probe24(m_axi_drm_arvalid      ),      // input wire [0:0]  probe24 
    .probe25(m_axi_drm_arready      ),      // input wire [0:0]  probe25 
    .probe26(m_axi_drm_rvalid       ),      // input wire [0:0]  probe26 
    .probe27(m_axi_drm_rready       ),      // input wire [0:0]  probe27 
    .probe28(m_axi_drm_bvalid       ),      // input wire [0:0]  probe28 
    .probe29(m_axi_drm_bready       )       // input wire [0:0]  probe29 
);

// AN axi4lite CrossBar is used to switch between user_ip_with_drm and user_ip_without_drm
// the map is the following: user_ip_without_drm: 0x0000:0xFFFF (16bits) - user_ip_with_drm 0x10000:0x1FFFF (16bits)
axi_crossbar_0 axi4lite_crossbar_inst (
  .aclk              (clk),                                             // input wire aclk
  .aresetn           (rst_n),                                           // input wire aresetn
  .s_axi_awaddr      (m00_axi_awaddr),                                  // input wire [31 : 0] s_axi_awadd
  .s_axi_awprot      (3'b000),                                          // input wire [2 : 0] s_axi_awprot
  .s_axi_awvalid     (m00_axi_awvalid),                                 // input wire [0 : 0] s_axi_awvalid
  .s_axi_awready     (m00_axi_awready),                                 // output wire [0 : 0] s_axi_awready
  .s_axi_wdata       (m00_axi_wdata),                                   // input wire [31 : 0] s_axi_wdata
  .s_axi_wstrb       (m00_axi_wstrb),                                   // input wire [3 : 0] s_axi_wstrb
  .s_axi_wvalid      (m00_axi_wvalid),                                  // input wire [0 : 0] s_axi_wvalid
  .s_axi_wready      (m00_axi_wready),                                  // output wire [0 : 0] s_axi_wready
  .s_axi_bresp       (m00_axi_bresp),                                   // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid      (m00_axi_bvalid),                                  // output wire [0 : 0] s_axi_bvalid
  .s_axi_bready      (m00_axi_bready),                                  // input wire [0 : 0] s_axi_bready
  .s_axi_araddr      (m00_axi_araddr),                                  // input wire [31 : 0] s_axi_araddr
  .s_axi_arprot      (3'b000),                                          // input wire [2 : 0] s_axi_arprot
  .s_axi_arvalid     (m00_axi_arvalid),                                 // input wire [0 : 0] s_axi_arvalid
  .s_axi_arready     (m00_axi_arready),                                 // output wire [0 : 0] s_axi_arready
  .s_axi_rdata       (m00_axi_rdata),                                   // output wire [31 : 0] s_axi_rdata
  .s_axi_rresp       (m00_axi_rresp),                                   // output wire [1 : 0] s_axi_rresp
  .s_axi_rvalid      (m00_axi_rvalid),                                  // output wire [0 : 0] s_axi_rvalid
  .s_axi_rready      (m00_axi_rready),                                  // input wire [0 : 0] s_axi_rready
  .m_axi_awaddr      ({m_axi_MSB_awaddr,m_axi_LSB_awaddr}),             // output wire [63 : 0] m_axi_awaddr
  .m_axi_awprot      (),                                                // output wire [5 : 0] m_axi_awprot
  .m_axi_awvalid     ({m_axi_drm_awvalid,m_axi_userip_awvalid}),        // output wire [1 : 0] m_axi_awvalid
  .m_axi_awready     ({m_axi_drm_awready,m_axi_userip_awready}),        // input wire [1 : 0] m_axi_awready
  .m_axi_wdata       ({m_axi_drm_wdata,m_axi_userip_wdata}),            // output wire [63 : 0] m_axi_wdata
  .m_axi_wstrb       ({m_axi_drm_wstrb,m_axi_userip_wstrb}),            // output wire [7 : 0] m_axi_wstrb
  .m_axi_wvalid      ({m_axi_drm_wvalid,m_axi_userip_wvalid}),          // output wire [1 : 0] m_axi_wvalid
  .m_axi_wready      ({m_axi_drm_wready,m_axi_userip_wready}),          // input wire [1 : 0] m_axi_wready
  .m_axi_bresp       ({m_axi_drm_bresp,m_axi_userip_bresp}),            // input wire [3 : 0] m_axi_bresp
  .m_axi_bvalid      ({m_axi_drm_bvalid,m_axi_userip_bvalid}),          // input wire [1 : 0] m_axi_bvalid
  .m_axi_bready      ({m_axi_drm_bready,m_axi_userip_bready}),          // output wire [1 : 0] m_axi_bready
  .m_axi_araddr      ({m_axi_MSB_araddr,m_axi_LSB_araddr}),             // output wire [63 : 0] m_axi_araddr
  .m_axi_arprot      (),                                                // output wire [5 : 0] m_axi_arprot
  .m_axi_arvalid     ({m_axi_drm_arvalid,m_axi_userip_arvalid}),        // output wire [1 : 0] m_axi_arvalid
  .m_axi_arready     ({m_axi_drm_arready,m_axi_userip_arready}),        // input wire [1 : 0] m_axi_arready
  .m_axi_rdata       ({m_axi_drm_rdata,m_axi_userip_rdata}),            // input wire [63 : 0] m_axi_rdata
  .m_axi_rresp       ({m_axi_drm_rresp,m_axi_userip_rresp}),            // input wire [3 : 0] m_axi_rresp
  .m_axi_rvalid      ({m_axi_drm_rvalid,m_axi_userip_rvalid}),          // input wire [1 : 0] m_axi_rvalid
  .m_axi_rready      ({m_axi_drm_rready,m_axi_userip_rready})           // output wire [1 : 0] m_axi_rready
);

// DRM block
drm_controller_ip_axi4st drm_controller_ip_axi4st_inst
(
  .ap_clk                     ( clk                   ),
  .ap_rst_n                   ( rst_n                 ),
  
  .drm_to_uip0_tdata          ( drm_to_uip0_tdata     ),
  .drm_to_uip0_tvalid         ( drm_to_uip0_tvalid    ),
  .drm_to_uip0_tready         ( drm_to_uip0_tready    ),
  .uip0_to_drm_tready         ( uip0_to_drm_tready    ),
  .uip0_to_drm_tdata          ( uip0_to_drm_tdata     ),
  .uip0_to_drm_tvalid         ( uip0_to_drm_tvalid    ),
  
  .m_axi_awvalid              ( m_axi_drm_awvalid     ),
  .m_axi_awready              ( m_axi_drm_awready     ),
  .m_axi_awaddr               ( m_axi_LSB_awaddr      ),
  .m_axi_wvalid               ( m_axi_drm_wvalid      ),
  .m_axi_wready               ( m_axi_drm_wready      ),
  .m_axi_wdata                ( m_axi_drm_wdata       ),
  .m_axi_wstrb                ( m_axi_drm_wstrb       ),
  .m_axi_bvalid               ( m_axi_drm_bvalid      ),
  .m_axi_bready               ( m_axi_drm_bready      ),
  .m_axi_bresp                ( m_axi_drm_bresp       ),
  .m_axi_arvalid              ( m_axi_drm_arvalid     ),
  .m_axi_arready              ( m_axi_drm_arready     ),
  .m_axi_araddr               ( m_axi_LSB_araddr      ),
  .m_axi_rvalid               ( m_axi_drm_rvalid      ),
  .m_axi_rready               ( m_axi_drm_rready      ),
  .m_axi_rdata                ( m_axi_drm_rdata       ),
  .m_axi_rresp                ( m_axi_drm_rresp       )
);

// User Protected IP
user_ip user_ip_inst
(
  .clk                        ( clk                   ),
  .rst_n                      ( rst_n                 ),
  .m00_axi_awvalid            ( m_axi_userip_awvalid  ),
  .m00_axi_awready            ( m_axi_userip_awready  ),
  .m00_axi_awaddr             ( m_axi_LSB_awaddr      ),
  .m00_axi_wvalid             ( m_axi_userip_wvalid   ),
  .m00_axi_wready             ( m_axi_userip_wready   ),
  .m00_axi_wdata              ( m_axi_userip_wdata    ),
  .m00_axi_wstrb              ( m_axi_userip_wstrb    ),
  .m00_axi_bvalid             ( m_axi_userip_bvalid   ),
  .m00_axi_bready             ( m_axi_userip_bready   ),
  .m00_axi_bresp              ( m_axi_userip_bresp    ),
  .m00_axi_arvalid            ( m_axi_userip_arvalid  ),
  .m00_axi_arready            ( m_axi_userip_arready  ),
  .m00_axi_araddr             ( m_axi_LSB_araddr      ),
  .m00_axi_rvalid             ( m_axi_userip_rvalid   ),
  .m00_axi_rready             ( m_axi_userip_rready   ),
  .m00_axi_rdata              ( m_axi_userip_rdata    ),
  .m00_axi_rresp              ( m_axi_userip_rresp    ),  
  .drm_to_uip_tdata           ( drm_to_uip0_tdata     ),
  .drm_to_uip_tvalid          ( drm_to_uip0_tvalid    ),
  .drm_to_uip_tready          ( drm_to_uip0_tready    ),
  .uip_to_drm_tready          ( uip0_to_drm_tready    ),
  .uip_to_drm_tdata           ( uip0_to_drm_tdata     ),
  .uip_to_drm_tvalid          ( uip0_to_drm_tvalid    )
);

endmodule
`default_nettype wire
