// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps

module user_ip
(
  // System Signals
  input  wire                        clk                        ,
  input  wire                        rst_n                      ,
  // AXI4 master interface m_axi  
  input wire                         m_axi_awvalid              ,
  output  wire                       m_axi_awready              ,
  input wire [16-1:0]                m_axi_awaddr               ,
  input wire                         m_axi_wvalid               ,
  output  wire                       m_axi_wready               ,
  input wire [32-1:0]                m_axi_wdata                ,
  input wire [32/8-1:0]              m_axi_wstrb                ,
  output  wire                       m_axi_bvalid               ,
  input wire                         m_axi_bready               ,
  output wire [2-1:0]                m_axi_bresp                ,   
  input wire                         m_axi_arvalid              ,
  output  reg                        m_axi_arready              ,
  input wire [16-1:0]                m_axi_araddr               ,
  output  reg                        m_axi_rvalid               ,
  input wire                         m_axi_rready               ,
  output  reg [32-1:0]               m_axi_rdata                ,
  output wire [2-1:0]                m_axi_rresp                , 
  // AXI4-ST Common Bus from DRM Controller          
  input wire [32-1:0]                drm_to_uip_tdata           ,
  input wire                         drm_to_uip_tvalid          ,
  output wire                        drm_to_uip_tready          ,
  // AXI4-ST Bus to DRM Controller                               
  input wire                         uip_to_drm_tready          ,
  output wire [32-1:0]               uip_to_drm_tdata           ,
  output wire                        uip_to_drm_tvalid          
);
    
    localparam      EXP_ACT_CODE = 128'h7E745E528F0CF2F36C304A2F18DB0CE0;
    reg             areset = 1'b0;
    wire            usage_unit_event;
    wire [127:0]    s_drm_activation_code;
    reg  [127:0]    s_tmp;
    reg             s_activated;
    
    assign usage_unit_event   = rst_n && m_axi_arvalid && m_axi_arready; 

    // Register and invert reset signal.
    always @(posedge clk) begin
      areset <= ~rst_n;
    end
    
    
    // Activation Process
    always @(negedge rst_n or posedge clk)
    begin
        if (rst_n == 1'b0) begin
            s_activated     <= 1'b0;
            s_tmp           <= {128{1'b0}};
        end else if (|s_drm_activation_code) begin
            s_tmp       <= (EXP_ACT_CODE ^ s_drm_activation_code) ;
            s_activated <= ~|s_tmp;
        end else begin
            s_tmp       <= s_tmp;
            s_activated <= 1'b0;
        end
    end

    // Unused axi4-lite signals
    assign m_axi_awready      = 1'b1;
    assign m_axi_wready       = 1'b1;
    assign m_axi_bresp        = 2'b0;
    assign m_axi_rresp        = 2'b0;
    assign m_axi_bvalid       = 1'b1; 

    
    reg  [1:0]      s_read_state_machine;
    reg  [1:0]      s_write_state_machine;
    parameter      FSMIDLE  = 2'b00, FSMWAIT = 2'b01;
    reg  [31:0]     s_mailbox_1;
    reg  [31:0]     s_mailbox_2;
    reg  [31:0]     s_mailbox_3;
    
    // AXI4Lite Read Process v003
    always @(negedge rst_n or posedge clk)
    begin
        if (rst_n == 1'b0) begin
            s_read_state_machine        <= FSMIDLE;
            m_axi_arready               <= 1'b0;
            m_axi_rvalid                <= 1'b0;
            m_axi_rdata                 <= {32{1'b0}};
        end else begin
            case (s_read_state_machine)
                FSMIDLE: begin                              
                    // Read Address & Return Data (with ACK)
                    if ( m_axi_arvalid == 1'b1 ) begin
                        s_read_state_machine        <= FSMWAIT;
                        m_axi_arready               <= 1'b1;
                        m_axi_rvalid                <= 1'b1;
                        m_axi_rdata                 <=  (m_axi_araddr[15:0]==16'h00)?{{31{1'b0}}, s_activated}:
                                                        (m_axi_araddr[15:0]==16'h02)?s_mailbox_1:
                                                        (m_axi_araddr[15:0]==16'h04)?s_mailbox_2:
                                                        (m_axi_araddr[15:0]==16'h06)?s_mailbox_3:
                                                        {16'h06AE, m_axi_araddr};
                    end
                end
                
                FSMWAIT: begin              
                    // Wait for Host ACK
                    if ( m_axi_rready == 1'b0 ) begin
                        s_read_state_machine        <= FSMIDLE;
                        m_axi_arready               <= 1'b0;
                        m_axi_rvalid                <= 1'b0;
                        m_axi_rdata                 <= {32{1'b0}};
                    
                    end else begin
                        s_read_state_machine        <= FSMWAIT;
                        m_axi_arready               <= 1'b0;
                        m_axi_rvalid                <= m_axi_rvalid;
                        m_axi_rdata                 <= m_axi_rdata;
                        
                    end
                end
                
                default: begin
                    s_read_state_machine            <= s_read_state_machine;
                    m_axi_arready                   <= 1'b0;
                    m_axi_rvalid                    <= m_axi_rvalid;
                    m_axi_rdata                     <= m_axi_rdata;
                end
            endcase
        end
    end
    
    // AXI4Lite Write Process
    always @(negedge rst_n or posedge clk)
    begin
        if (rst_n == 1'b0) begin
            s_write_state_machine       <= FSMIDLE;
            s_mailbox_1                 <= 32'hABABABAB;
            s_mailbox_2                 <= 32'hBCBCBCBC;
            s_mailbox_3                 <= 32'hCDCDCDCD;

        end else begin
            case (s_write_state_machine)                
                FSMIDLE: begin                              
                    // Read Address & Return Data (with ACK)
                    if ( m_axi_awvalid == 1'b1 && m_axi_wvalid == 1'b1) begin
                        s_mailbox_1                 <= (m_axi_awaddr[15:0]==16'h02)? m_axi_wdata: s_mailbox_1;
                        s_mailbox_2                 <= (m_axi_awaddr[15:0]==16'h04)? m_axi_wdata: s_mailbox_2;
                        s_mailbox_3                 <= (m_axi_awaddr[15:0]==16'h06)? m_axi_wdata: s_mailbox_3;
                        s_write_state_machine       <= FSMIDLE;
                                          
                    end else if ( m_axi_awvalid == 1'b1 && m_axi_wvalid == 1'b0) begin
                        s_mailbox_1                 <= s_mailbox_1;
                        s_mailbox_2                 <= s_mailbox_2;
                        s_mailbox_3                 <= s_mailbox_3;
                        s_write_state_machine       <= FSMWAIT;
                        
                    end
                end
                
                FSMWAIT: begin              
                    // Wait for Host ACK
                    if ( m_axi_wvalid == 1'b1 ) begin
                        s_mailbox_1 <= (m_axi_awaddr[15:0]==16'h02)? m_axi_wdata: s_mailbox_1;
                        s_mailbox_2 <= (m_axi_awaddr[15:0]==16'h04)? m_axi_wdata: s_mailbox_2;
                        s_mailbox_3 <= (m_axi_awaddr[15:0]==16'h06)? m_axi_wdata: s_mailbox_3;
                        s_write_state_machine       <= FSMIDLE;
                    end
                end
                
                default: begin
                    s_mailbox_1 <= s_mailbox_1;
                    s_mailbox_2 <= s_mailbox_2;
                    s_mailbox_3 <= s_mailbox_3;
                    s_write_state_machine           <= FSMIDLE;
                end
            endcase
        end
    end
    
    top_drm_activator_0x1003000e00010001 top_drm_activator_0x1003000e00010001_inst (
      .drm_aclk              (clk                            ),
      .drm_arstn             (rst_n                          ),       
      .drm_to_uip_tdata      (drm_to_uip_tdata               ),
      .drm_to_uip_tvalid     (drm_to_uip_tvalid              ),
      .drm_to_uip_tready     (drm_to_uip_tready              ),
      .uip_to_drm_tready     (uip_to_drm_tready              ),
      .uip_to_drm_tdata      (uip_to_drm_tdata               ),
      .uip_to_drm_tvalid     (uip_to_drm_tvalid              ),
      .ip_core_aclk          (clk                            ),
      .metering_event        (usage_unit_event               ),
      .activation_code       (s_drm_activation_code          )
    );

endmodule
`default_nettype wire
