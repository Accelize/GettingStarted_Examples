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
  input  wire [3-1 :0]              m00_axi_awprot       ,
  output  wire                      m00_axi_wready       ,
  input wire [32-1:0]               m00_axi_wdata        ,
  input wire [32/8-1:0]             m00_axi_wstrb        ,
  output  wire                      m00_axi_bvalid       ,
  input wire                        m00_axi_bready       ,
  output wire [2-1:0]               m00_axi_bresp        ,
  input wire                        m00_axi_arvalid      ,
  output  wire                      m00_axi_arready      ,
  input wire [32-1:0]               m00_axi_araddr       ,
  input  wire [3-1 :0]              m00_axi_arprot       ,
  output  wire                      m00_axi_rvalid       ,
  input wire                        m00_axi_rready       ,
  output  wire [32-1:0]             m00_axi_rdata        ,
  output wire [2-1:0]               m00_axi_rresp  
);

// AXI4-Lite interfaces
wire [16-1:0]                           m_axi_LSB_awaddr        ;
wire [16-1:0]                           m_axi_UNUSED1_awaddr    ;
wire [16-1:0]                           m_axi_UNUSED2_awaddr    ;
wire [16-1:0]                           m_axi_LSB_araddr        ;
wire [16-1:0]                           m_axi_UNUSED1_araddr    ;
wire [16-1:0]                           m_axi_UNUSED2_araddr    ;
wire                                    m_axi_userip1_awvalid   ;
wire                                    m_axi_userip1_awready   ;
wire [3-1 :0]                           m_axi_userip1_awprot    ;
wire                                    m_axi_userip1_wvalid    ;
wire                                    m_axi_userip1_wready    ;
wire [32-1:0]                           m_axi_userip1_wdata     ;
wire [32/8-1:0]                         m_axi_userip1_wstrb     ;
wire                                    m_axi_userip1_arvalid   ;
wire                                    m_axi_userip1_arready   ;
wire [3-1 :0]                           m_axi_userip1_arprot    ;
wire                                    m_axi_userip1_rvalid    ;
wire                                    m_axi_userip1_rready    ;
wire [32-1:0]                           m_axi_userip1_rdata     ;
wire [2-1:0]                            m_axi_userip1_rresp     ;
wire                                    m_axi_userip1_bvalid    ;
wire                                    m_axi_userip1_bready    ;
wire [2-1:0]                            m_axi_userip1_bresp     ;
wire                                    m_axi_userip2_awvalid   ;
wire                                    m_axi_userip2_awready   ;
wire [3-1 :0]                           m_axi_userip2_awprot    ;
wire                                    m_axi_userip2_wvalid    ;
wire                                    m_axi_userip2_wready    ;
wire [32-1:0]                           m_axi_userip2_wdata     ;
wire [32/8-1:0]                         m_axi_userip2_wstrb     ;
wire                                    m_axi_userip2_arvalid   ;
wire                                    m_axi_userip2_arready   ;
wire [3-1 :0]                           m_axi_userip2_arprot    ;
wire                                    m_axi_userip2_rvalid    ;
wire                                    m_axi_userip2_rready    ;
wire [32-1:0]                           m_axi_userip2_rdata     ;
wire [2-1:0]                            m_axi_userip2_rresp     ;
wire                                    m_axi_userip2_bvalid    ;
wire                                    m_axi_userip2_bready    ;
wire [2-1:0]                            m_axi_userip2_bresp     ;
wire                                    m_axi_drm_awvalid       ;
wire                                    m_axi_drm_awready       ;
wire [3-1 :0]                           m_axi_drm_awprot        ;
wire                                    m_axi_drm_wvalid        ;
wire                                    m_axi_drm_wready        ;
wire [32-1:0]                           m_axi_drm_wdata         ;
wire [32/8-1:0]                         m_axi_drm_wstrb         ;
wire                                    m_axi_drm_arvalid       ;
wire                                    m_axi_drm_arready       ;
wire                                    m_axi_drm_rvalid        ;
wire                                    m_axi_drm_rready        ;
wire [3-1 :0]                           m_axi_drm_arprot        ;
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
wire [32-1:0]                           drm_to_uip1_tdata       ;
wire                                    drm_to_uip1_tvalid      ;
wire                                    drm_to_uip1_tready      ;
wire                                    uip1_to_drm_tready      ;
wire [32-1:0]                           uip1_to_drm_tdata       ;
wire                                    uip1_to_drm_tvalid      ;

// Axi4lite CrossBar
axi_crossbar_1s3m axi4lite_crossbar_1s3m_inst (
  .aclk              (clk),                                                                       // input wire aclk
  .aresetn           (rst_n),                                                                     // input wire aresetn
  .s_axi_awaddr      (m00_axi_awaddr),                                                            // input wire [31 : 0] s_axi_awaddr
  .s_axi_awprot      (m00_axi_awprot),                                                                    // input wire [2 : 0] s_axi_awprot
  .s_axi_awvalid     (m00_axi_awvalid),                                                           // input wire [0 : 0] s_axi_awvalid
  .s_axi_awready     (m00_axi_awready),                                                           // output wire [0 : 0] s_axi_awready
  .s_axi_wdata       (m00_axi_wdata),                                                             // input wire [31 : 0] s_axi_wdata
  .s_axi_wstrb       (m00_axi_wstrb),                                                             // input wire [3 : 0] s_axi_wstrb
  .s_axi_wvalid      (m00_axi_wvalid),                                                            // input wire [0 : 0] s_axi_wvalid
  .s_axi_wready      (m00_axi_wready),                                                            // output wire [0 : 0] s_axi_wready
  .s_axi_bresp       (m00_axi_bresp),                                                             // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid      (m00_axi_bvalid),                                                            // output wire [0 : 0] s_axi_bvalid
  .s_axi_bready      (m00_axi_bready),                                                            // input wire [0 : 0] s_axi_bready
  .s_axi_araddr      (m00_axi_araddr),                                                            // input wire [31 : 0] s_axi_araddr
  .s_axi_arprot      (m00_axi_arprot),                                                                    // input wire [2 : 0] s_axi_arprot
  .s_axi_arvalid     (m00_axi_arvalid),                                                           // input wire [0 : 0] s_axi_arvalid
  .s_axi_arready     (m00_axi_arready),                                                           // output wire [0 : 0] s_axi_arready
  .s_axi_rdata       (m00_axi_rdata),                                                             // output wire [31 : 0] s_axi_rdata
  .s_axi_rresp       (m00_axi_rresp),                                                             // output wire [1 : 0] s_axi_rresp
  .s_axi_rvalid      (m00_axi_rvalid),                                                            // output wire [0 : 0] s_axi_rvalid
  .s_axi_rready      (m00_axi_rready),                                                            // input wire [0 : 0] s_axi_rready
  .m_axi_awaddr      ({m_axi_UNUSED2_awaddr,    m_axi_UNUSED1_awaddr, m_axi_LSB_awaddr       }),  // output wire [95 : 0] m_axi_awaddr
  .m_axi_awprot      ({m_axi_userip2_awprot,    m_axi_drm_awprot,     m_axi_userip1_awprot  }),                                                                          // output wire [8 : 0] m_axi_awprot
  .m_axi_awvalid     ({m_axi_userip2_awvalid,   m_axi_drm_awvalid,    m_axi_userip1_awvalid  }),  // output wire [2 : 0] m_axi_awvalid
  .m_axi_awready     ({m_axi_userip2_awready,   m_axi_drm_awready,    m_axi_userip1_awready  }),  // input wire [2 : 0] m_axi_awready
  .m_axi_wdata       ({m_axi_userip2_wdata,     m_axi_drm_wdata,      m_axi_userip1_wdata    }),  // output wire [95 : 0] m_axi_wdata
  .m_axi_wstrb       ({m_axi_userip2_wstrb,     m_axi_drm_wstrb,      m_axi_userip1_wstrb    }),  // output wire [11 : 0] m_axi_wstrb
  .m_axi_wvalid      ({m_axi_userip2_wvalid,    m_axi_drm_wvalid,     m_axi_userip1_wvalid   }),  // output wire [2 : 0] m_axi_wvalid
  .m_axi_wready      ({m_axi_userip2_wready,    m_axi_drm_wready,     m_axi_userip1_wready   }),  // input wire [2 : 0] m_axi_wready
  .m_axi_bresp       ({m_axi_userip2_bresp,     m_axi_drm_bresp,      m_axi_userip1_bresp    }),  // input wire [5 : 0] m_axi_bresp
  .m_axi_bvalid      ({m_axi_userip2_bvalid,    m_axi_drm_bvalid,     m_axi_userip1_bvalid   }),  // input wire [2 : 0] m_axi_bvalid
  .m_axi_bready      ({m_axi_userip2_bready,    m_axi_drm_bready,     m_axi_userip1_bready   }),  // output wire [2 : 0] m_axi_bready
  .m_axi_araddr      ({m_axi_UNUSED2_araddr,    m_axi_UNUSED1_araddr, m_axi_LSB_araddr       }),  // output wire [95 : 0] m_axi_araddr
  .m_axi_arprot      ({m_axi_userip2_arprot,    m_axi_drm_arprot,     m_axi_userip1_arprot  }),                                                                          // output wire [8 : 0] m_axi_arprot
  .m_axi_arvalid     ({m_axi_userip2_arvalid,   m_axi_drm_arvalid,    m_axi_userip1_arvalid  }),  // output wire [2 : 0] m_axi_arvalid
  .m_axi_arready     ({m_axi_userip2_arready,   m_axi_drm_arready,    m_axi_userip1_arready  }),  // input wire [2 : 0] m_axi_arready
  .m_axi_rdata       ({m_axi_userip2_rdata,     m_axi_drm_rdata,      m_axi_userip1_rdata    }),  // input wire [95 : 0] m_axi_rdata
  .m_axi_rresp       ({m_axi_userip2_rresp,     m_axi_drm_rresp,      m_axi_userip1_rresp    }),  // input wire [5 : 0] m_axi_rresp
  .m_axi_rvalid      ({m_axi_userip2_rvalid,    m_axi_drm_rvalid,     m_axi_userip1_rvalid   }),  // input wire [2 : 0] m_axi_rvalid
  .m_axi_rready      ({m_axi_userip2_rready,    m_axi_drm_rready,     m_axi_userip1_rready   })   // output wire [2 : 0] m_axi_rready
);

// DRM Controller
  top_drm_controller top_drm_controller_inst (
    .drm_aclk             ( clk                   ),
    .drm_arstn            ( rst_n                 ),
    .drm_to_uip0_tready   ( drm_to_uip0_tready    ),
    .drm_to_uip0_tvalid   ( drm_to_uip0_tvalid    ),
    .drm_to_uip0_tdata    ( drm_to_uip0_tdata     ),
    .uip0_to_drm_tready   ( uip0_to_drm_tready    ),
    .uip0_to_drm_tvalid   ( uip0_to_drm_tvalid    ),
    .uip0_to_drm_tdata    ( uip0_to_drm_tdata     ),
    .drm_to_uip1_tdata    ( drm_to_uip1_tdata     ),
    .drm_to_uip1_tvalid   ( drm_to_uip1_tvalid    ),
    .drm_to_uip1_tready   ( drm_to_uip1_tready    ),
    .uip1_to_drm_tready   ( uip1_to_drm_tready    ),
    .uip1_to_drm_tdata    ( uip1_to_drm_tdata     ),
    .uip1_to_drm_tvalid   ( uip1_to_drm_tvalid    ), 
    .s_axi_aclk           ( clk                   ),
    .s_axi_arstn          ( rst_n                 ),
    .s_axi_awready        ( m_axi_drm_awready     ),
    .s_axi_awvalid        ( m_axi_drm_awvalid     ),
    .s_axi_awaddr         ( m_axi_LSB_awaddr      ),
    .s_axi_awprot         ( m_axi_drm_awprot      ),
    .s_axi_wready         ( m_axi_drm_wready      ),
    .s_axi_wvalid         ( m_axi_drm_wvalid      ),
    .s_axi_wdata          ( m_axi_drm_wdata       ),
    .s_axi_wstrb          ( m_axi_drm_wstrb       ),
    .s_axi_bready         ( m_axi_drm_bready      ),
    .s_axi_bvalid         ( m_axi_drm_bvalid      ),
    .s_axi_bresp          ( m_axi_drm_bresp       ),
    .s_axi_arready        ( m_axi_drm_arready     ),
    .s_axi_arvalid        ( m_axi_drm_arvalid     ),
    .s_axi_araddr         ( m_axi_LSB_araddr      ),
    .s_axi_arprot         ( m_axi_drm_arprot      ),
    .s_axi_rready         ( m_axi_drm_rready      ),
    .s_axi_rvalid         ( m_axi_drm_rvalid      ),
    .s_axi_rdata          ( m_axi_drm_rdata       ),
    .s_axi_rresp          ( m_axi_drm_rresp       ),
    .chip_dna_valid       (                       ),
    .chip_dna             (                       )
  );

// User Protected IPs
user_ip_1 user_ip_1
(
  .clk                        ( clk                    ),
  .rst_n                      ( rst_n                  ),
  .m00_axi_awvalid            ( m_axi_userip1_awvalid  ),
  .m00_axi_awready            ( m_axi_userip1_awready  ),
  .m00_axi_awaddr             ( m_axi_LSB_awaddr       ),
  .m00_axi_wvalid             ( m_axi_userip1_wvalid   ),
  .m00_axi_wready             ( m_axi_userip1_wready   ),
  .m00_axi_wdata              ( m_axi_userip1_wdata    ),
  .m00_axi_wstrb              ( m_axi_userip1_wstrb    ),
  .m00_axi_bvalid             ( m_axi_userip1_bvalid   ),
  .m00_axi_bready             ( m_axi_userip1_bready   ),
  .m00_axi_bresp              ( m_axi_userip1_bresp    ),
  .m00_axi_arvalid            ( m_axi_userip1_arvalid  ),
  .m00_axi_arready            ( m_axi_userip1_arready  ),
  .m00_axi_araddr             ( m_axi_LSB_araddr       ),
  .m00_axi_rvalid             ( m_axi_userip1_rvalid   ),
  .m00_axi_rready             ( m_axi_userip1_rready   ),
  .m00_axi_rdata              ( m_axi_userip1_rdata    ),
  .m00_axi_rresp              ( m_axi_userip1_rresp    ),  
  .drm_to_uip_tdata           ( drm_to_uip0_tdata      ),
  .drm_to_uip_tvalid          ( drm_to_uip0_tvalid     ),
  .drm_to_uip_tready          ( drm_to_uip0_tready     ),
  .uip_to_drm_tready          ( uip0_to_drm_tready     ),
  .uip_to_drm_tdata           ( uip0_to_drm_tdata      ),
  .uip_to_drm_tvalid          ( uip0_to_drm_tvalid     )
);

user_ip_2 user_ip_2
(
  .clk                        ( clk                    ),
  .rst_n                      ( rst_n                  ),
  .m00_axi_awvalid            ( m_axi_userip2_awvalid  ),
  .m00_axi_awready            ( m_axi_userip2_awready  ),
  .m00_axi_awaddr             ( m_axi_LSB_awaddr       ),
  .m00_axi_wvalid             ( m_axi_userip2_wvalid   ),
  .m00_axi_wready             ( m_axi_userip2_wready   ),
  .m00_axi_wdata              ( m_axi_userip2_wdata    ),
  .m00_axi_wstrb              ( m_axi_userip2_wstrb    ),
  .m00_axi_bvalid             ( m_axi_userip2_bvalid   ),
  .m00_axi_bready             ( m_axi_userip2_bready   ),
  .m00_axi_bresp              ( m_axi_userip2_bresp    ),
  .m00_axi_arvalid            ( m_axi_userip2_arvalid  ),
  .m00_axi_arready            ( m_axi_userip2_arready  ),
  .m00_axi_araddr             ( m_axi_LSB_araddr       ),
  .m00_axi_rvalid             ( m_axi_userip2_rvalid   ),
  .m00_axi_rready             ( m_axi_userip2_rready   ),
  .m00_axi_rdata              ( m_axi_userip2_rdata    ),
  .m00_axi_rresp              ( m_axi_userip2_rresp    ),  
  .drm_to_uip_tdata           ( drm_to_uip1_tdata      ),
  .drm_to_uip_tvalid          ( drm_to_uip1_tvalid     ),
  .drm_to_uip_tready          ( drm_to_uip1_tready     ),
  .uip_to_drm_tready          ( uip1_to_drm_tready     ),
  .uip_to_drm_tdata           ( uip1_to_drm_tdata      ),
  .uip_to_drm_tvalid          ( uip1_to_drm_tvalid     )
);

endmodule
`default_nettype wire
