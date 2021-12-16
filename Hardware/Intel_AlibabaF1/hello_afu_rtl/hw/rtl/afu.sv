// ***************************************************************************
//

`include "platform_if.vh"
`include "afu_json_info.vh"

module afu
(
    input  clk,    // Core clock. CCI interface is synchronous to this clock.
    input  reset,  // CCI interface ACTIVE HIGH reset.

    // CCI-P signals
    input  t_if_ccip_Rx cp2af_sRxPort,
    output t_if_ccip_Tx af2cp_sTxPort
);
    
    reg [16-1:0]        m_axi_userip_awaddr   ;
    reg                 m_axi_userip_awvalid  ;
    reg                 m_axi_userip_awready  ;
    reg                 m_axi_userip_wvalid   ;
    reg [32-1:0]        m_axi_userip_wdata    ;
    reg [32/8-1:0]      m_axi_userip_wstrb    ;
    reg                 m_axi_userip_arvalid  ;
    reg                 m_axi_userip_arready  ;
    reg                 m_axi_userip_rvalid   ;
    reg                 m_axi_userip_rready   ;
    reg [16-1:0]        m_axi_userip_araddr   ;
    reg [32-1:0]        m_axi_userip_rdata    ;
    reg [2-1:0]         m_axi_userip_rresp    ;
    reg                 m_axi_userip_bvalid   ;
    reg                 m_axi_userip_bready   ;
    reg [2-1:0]         m_axi_userip_bresp    ;
    reg [16-1:0]        m_axi_drm_awaddr      ;
    reg                 m_axi_drm_awvalid     ;
    reg                 m_axi_drm_awready  ;
    reg                 m_axi_drm_wvalid      ;
    reg [32-1:0]        m_axi_drm_wdata       ;
    reg [32/8-1:0]      m_axi_drm_wstrb       ;
    reg                 m_axi_drm_arvalid     ;
    reg                 m_axi_drm_arready     ;
    reg                 m_axi_drm_rvalid      ;
    reg                 m_axi_drm_rready      ;
    reg [16-1:0]        m_axi_drm_araddr      ;
    reg [32-1:0]        m_axi_drm_rdata       ;
    reg [2-1:0]         m_axi_drm_rresp       ;
    reg                 m_axi_drm_bvalid      ;
    reg                 m_axi_drm_bready      ;
    reg [2-1:0]         m_axi_drm_bresp       ;
    
    // AXI4-ST Common Bus from DRM Controller          
    wire [32-1:0]       drm_to_uip0_tdata     ;
    wire                drm_to_uip0_tvalid    ;
    wire                drm_to_uip0_tready    ;
    
    // AXI4-ST Bus to DRM Controller               
    wire                uip0_to_drm_tready    ;
    wire [32-1:0]       uip0_to_drm_tdata     ;
    wire                uip0_to_drm_tvalid    ;
        
    reg                 resetn                ;

    // Register and invert reset signal.
    always @(posedge clk) begin
      resetn <= ~reset;
    end    
    
    ccip_axi4lite_bridge ccip_axi4lite_bridge_inst
    (
        .clk                        (clk                        ),  
        .rst_n                      (resetn                     ),
    
        // CCI-P signals
        .cp2af_sRxPort              (cp2af_sRxPort ),
        .af2cp_sTxPort              (af2cp_sTxPort ),
        
        // AXI4-lite Signals
        .m_axi_IP1_awaddr           (m_axi_userip_awaddr        ),
        .m_axi_IP1_awvalid          (m_axi_userip_awvalid       ),
        .m_axi_IP1_awready          (m_axi_userip_awready       ),
        .m_axi_IP1_wdata            (m_axi_userip_wdata         ),
        .m_axi_IP1_wvalid           (m_axi_userip_wvalid        ),
        .m_axi_IP1_wstrb            (m_axi_userip_wstrb         ),
        .m_axi_IP1_wready           (m_axi_userip_wready        ),
        .m_axi_IP1_araddr           (m_axi_userip_araddr        ),
        .m_axi_IP1_arvalid          (m_axi_userip_arvalid       ),
        .m_axi_IP1_arready          (m_axi_userip_arready       ),
        .m_axi_IP1_rdata            (m_axi_userip_rdata         ),
        .m_axi_IP1_rvalid           (m_axi_userip_rvalid        ),
        .m_axi_IP1_rready           (m_axi_userip_rready        ),
        .m_axi_IP1_rresp            (m_axi_userip_rresp         ),
        .m_axi_IP1_bvalid           (m_axi_userip_bvalid        ),
        .m_axi_IP1_bready           (m_axi_userip_bready        ),
        .m_axi_IP1_bresp            (m_axi_userip_bresp         ),
        .m_axi_IP2_awaddr           (m_axi_drm_awaddr           ),
        .m_axi_IP2_awvalid          (m_axi_drm_awvalid          ),
        .m_axi_IP2_awready          (m_axi_drm_awready          ),
        .m_axi_IP2_wdata            (m_axi_drm_wdata            ),
        .m_axi_IP2_wvalid           (m_axi_drm_wvalid           ),
        .m_axi_IP2_wstrb            (m_axi_drm_wstrb            ),
        .m_axi_IP2_wready           (m_axi_drm_wready           ),
        .m_axi_IP2_araddr           (m_axi_drm_araddr           ),
        .m_axi_IP2_arvalid          (m_axi_drm_arvalid          ),
        .m_axi_IP2_arready          (m_axi_drm_arready          ),
        .m_axi_IP2_rdata            (m_axi_drm_rdata            ),
        .m_axi_IP2_rvalid           (m_axi_drm_rvalid           ),
        .m_axi_IP2_rready           (m_axi_drm_rready           ),
        .m_axi_IP2_rresp            (m_axi_drm_rresp            ),
        .m_axi_IP2_bvalid           (m_axi_drm_bvalid           ),
        .m_axi_IP2_bready           (m_axi_drm_bready           ),
        .m_axi_IP2_bresp            (m_axi_drm_bresp            )
    );
    
    drm_controller_ip_axi4st drm_controller_ip_axi4st_inst
    (
        // System Signals
        .ap_clk                 ( clk                       ),
        .ap_rst_n               ( resetn                    ),
        .drm_to_uip0_tdata      ( drm_to_uip0_tdata         ),
        .drm_to_uip0_tvalid     ( drm_to_uip0_tvalid        ),
        .drm_to_uip0_tready     ( drm_to_uip0_tready        ),     
        .uip0_to_drm_tready     ( uip0_to_drm_tready        ),
        .uip0_to_drm_tdata      ( uip0_to_drm_tdata         ),
        .uip0_to_drm_tvalid     ( uip0_to_drm_tvalid        ),
        .m_axi_awvalid          ( m_axi_drm_awvalid         ),
        .m_axi_awready          ( m_axi_drm_awready         ),
        .m_axi_awaddr           ( m_axi_drm_awaddr          ),
        .m_axi_wvalid           ( m_axi_drm_wvalid          ),
        .m_axi_wready           ( m_axi_drm_wready          ),
        .m_axi_wdata            ( m_axi_drm_wdata           ),
        .m_axi_wstrb            ( m_axi_drm_wstrb           ),
        .m_axi_bvalid           ( m_axi_drm_bvalid          ),
        .m_axi_bready           ( m_axi_drm_bready          ),
        .m_axi_bresp            ( m_axi_drm_bresp           ),
        .m_axi_arvalid          ( m_axi_drm_arvalid         ),
        .m_axi_arready          ( m_axi_drm_arready         ),
        .m_axi_araddr           ( m_axi_drm_araddr          ),
        .m_axi_rvalid           ( m_axi_drm_rvalid          ),
        .m_axi_rready           ( m_axi_drm_rready          ),
        .m_axi_rdata            ( m_axi_drm_rdata           ),
        .m_axi_rresp            ( m_axi_drm_rresp           )
    );
    
    
    // User Protected IP 1
    user_ip user_ip_1
    (
        .clk                    ( clk                       ),
        .rst_n                  ( resetn                    ),
        .m_axi_awvalid          ( m_axi_userip_awvalid      ),
        .m_axi_awready          ( m_axi_userip_awready      ),
        .m_axi_awaddr           ( m_axi_userip_awaddr       ),
        .m_axi_wvalid           ( m_axi_userip_wvalid       ),
        .m_axi_wready           ( m_axi_userip_wready       ),
        .m_axi_wdata            ( m_axi_userip_wdata        ),
        .m_axi_wstrb            ( m_axi_userip_wstrb        ),
        .m_axi_bvalid           ( m_axi_userip_bvalid       ),
        .m_axi_bready           ( m_axi_userip_bready       ),
        .m_axi_bresp            ( m_axi_userip_bresp        ),
        .m_axi_arvalid          ( m_axi_userip_arvalid      ),
        .m_axi_arready          ( m_axi_userip_arready      ),
        .m_axi_araddr           ( m_axi_userip_araddr       ),
        .m_axi_rvalid           ( m_axi_userip_rvalid       ),
        .m_axi_rready           ( m_axi_userip_rready       ),
        .m_axi_rdata            ( m_axi_userip_rdata        ),
        .m_axi_rresp            ( m_axi_userip_rresp        ),
        .drm_to_uip_tdata       ( drm_to_uip0_tdata         ),
        .drm_to_uip_tvalid      ( drm_to_uip0_tvalid        ),
        .drm_to_uip_tready      ( drm_to_uip0_tready        ),
        .uip_to_drm_tready      ( uip0_to_drm_tready        ),
        .uip_to_drm_tdata       ( uip0_to_drm_tdata         ),
        .uip_to_drm_tvalid      ( uip0_to_drm_tvalid        )
    );
    
endmodule
