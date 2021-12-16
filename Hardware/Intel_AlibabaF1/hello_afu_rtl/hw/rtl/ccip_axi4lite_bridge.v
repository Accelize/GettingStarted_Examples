// Copyright Accelize 2019
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps

`include "platform_if.vh"
`include "afu_json_info.vh"

module ccip_axi4lite_bridge
(
    input  wire                clk,  
    input  wire                rst_n,

    // CCI-P signals
    input  t_if_ccip_Rx        cp2af_sRxPort,
    output t_if_ccip_Tx        af2cp_sTxPort,
    
    // AXI4-lite Signals
    output reg [16-1:0]        m_axi_IP1_awaddr   ,
    output reg                 m_axi_IP1_awvalid  ,
    input  reg                 m_axi_IP1_awready  ,
    output reg [32-1:0]        m_axi_IP1_wdata    ,
    output reg                 m_axi_IP1_wvalid   ,
    output reg [32/8-1:0]      m_axi_IP1_wstrb    ,
    input  reg                 m_axi_IP1_wready   ,
    output reg [16-1:0]        m_axi_IP1_araddr   ,
    output reg                 m_axi_IP1_arvalid  ,
    input  reg                 m_axi_IP1_arready  ,
    input  reg [32-1:0]        m_axi_IP1_rdata    ,
    input  reg                 m_axi_IP1_rvalid   ,
    output reg                 m_axi_IP1_rready   ,
    input  reg [2-1:0]         m_axi_IP1_rresp    ,
    input  reg                 m_axi_IP1_bvalid   ,
    output reg                 m_axi_IP1_bready   ,
    input  reg [2-1:0]         m_axi_IP1_bresp    ,
    output reg [16-1:0]        m_axi_IP2_awaddr      ,
    output reg                 m_axi_IP2_awvalid     ,
    input  reg                 m_axi_IP2_awready     ,
    output reg [32-1:0]        m_axi_IP2_wdata       ,
    output reg                 m_axi_IP2_wvalid      ,
    output reg [32/8-1:0]      m_axi_IP2_wstrb       ,
    input  reg                 m_axi_IP2_wready      ,
    output reg [16-1:0]        m_axi_IP2_araddr      ,
    output reg                 m_axi_IP2_arvalid     ,
    input  reg                 m_axi_IP2_arready     ,
    input  reg [32-1:0]        m_axi_IP2_rdata       ,
    input  reg                 m_axi_IP2_rvalid      ,
    output reg                 m_axi_IP2_rready      ,
    input  reg [2-1:0]         m_axi_IP2_rresp       ,
    input  reg                 m_axi_IP2_bvalid      ,
    output reg                 m_axi_IP2_bready      ,
    input  reg [2-1:0]         m_axi_IP2_bresp    
);
    // The AFU must respond with its AFU ID in response to MMIO reads of
    // the CCI-P device feature header (DFH).  The AFU ID is a unique ID
    // for a given program.  Here we generated one with the "uuidgen"
    // program and stored it in the AFU's JSON file.  ASE and synthesis
    // setup scripts automatically invoke the OPAE afu_json_mgr script
    // to extract the UUID into afu_json_info.vh.
    logic [127:0] afu_id = `AFU_ACCEL_UUID;
    
    // The c0 header is normally used for memory read responses.
    // The header must be interpreted as an MMIO response when
    // c0 mmmioRdValid or mmioWrValid is set.  In these cases the
    // c0 header is cast into a ReqMmioHdr.
    t_ccip_c0_ReqMmioHdr mmioHdr;
    assign mmioHdr = t_ccip_c0_ReqMmioHdr'(cp2af_sRxPort.c0.hdr);
    
    reg [64-1:0]    read_reply              ;
    reg [9-1:0]     read_tid                ;
    reg  [2:0]      s_write_state_machine   ;
    reg  [2:0]      s_read_state_machine    ;
    parameter      FSMIDLE=3'b000, FSMIP1_AWACK=3'b001, FSMIP2_AWACK=3'b010, FSMIP1_WAITREPLY=3'b011, FSMIP2_WAITREPLY=3'b100;
    parameter      FSMIP1_ARACK=3'b001, FSMIP2_ARACK=3'b010, FSMREPLY=3'b011, FSMIP1_WAITDATA=3'b100, FSMIP2_WAITDATA=3'b101;

    //
    // Receive MMIO writes
    //
    always_ff @(posedge clk)
    begin
        if (rst_n == 1'b0)
        begin
            m_axi_IP1_awaddr         <= 16'b0;
            m_axi_IP1_awvalid        <= 1'b0; 
            m_axi_IP1_wdata          <= 32'b0;
            m_axi_IP1_wstrb          <= 4'h0;
            m_axi_IP1_wvalid         <= 1'b0;
            m_axi_IP1_bready         <= 1'b0;
            m_axi_IP2_awaddr         <= 16'b0;
            m_axi_IP2_awvalid        <= 1'b0; 
            m_axi_IP2_wdata          <= 32'b0;
            m_axi_IP2_wstrb          <= 4'h0;
            m_axi_IP2_wvalid         <= 1'b0;
            m_axi_IP2_bready         <= 1'b0;             
            s_write_state_machine    <= FSMIDLE;
        end
        else
        begin
            case (s_write_state_machine)
                FSMIDLE: begin                        
                    // IP1
                    if (mmioHdr.address[15:14]==2'b01 && cp2af_sRxPort.c0.mmioWrValid == 1'b1) begin
                        m_axi_IP1_awaddr         <= {2'b00, mmioHdr.address[13:0]};
                        m_axi_IP1_awvalid        <= 1'b1; 
                        m_axi_IP1_wdata          <= cp2af_sRxPort.c0.data[31:0];
                        m_axi_IP1_wstrb          <= 4'hF;
                        m_axi_IP1_wvalid         <= 1'b1; 
                        m_axi_IP1_bready         <= 1'b1;                        
                        m_axi_IP2_awaddr         <= 16'b0;
                        m_axi_IP2_awvalid        <= 1'b0; 
                        m_axi_IP2_wdata          <= 32'b0;
                        m_axi_IP2_wstrb          <= 4'h0;
                        m_axi_IP2_wvalid         <= 1'b0;
                        m_axi_IP2_bready         <= 1'b0;
                        s_write_state_machine    <= FSMIP1_AWACK;   
                        
                    // IP2
                    end else if (mmioHdr.address[15:14]==2'b10 && cp2af_sRxPort.c0.mmioWrValid == 1'b1) begin
                        m_axi_IP1_awaddr         <= 16'b0;
                        m_axi_IP1_awvalid        <= 1'b0; 
                        m_axi_IP1_wdata          <= 32'b0;
                        m_axi_IP1_wstrb          <= 4'h0;
                        m_axi_IP1_wvalid         <= 1'b0; 
                        m_axi_IP1_bready         <= 1'b0;
                        m_axi_IP2_awaddr         <= {2'b00, mmioHdr.address[13:0]};
                        m_axi_IP2_awvalid        <= 1'b1; 
                        m_axi_IP2_wdata          <= cp2af_sRxPort.c0.data[31:0];
                        m_axi_IP2_wstrb          <= 4'hF;
                        m_axi_IP2_wvalid         <= 1'b1;
                        m_axi_IP2_bready         <= 1'b1;
                        s_write_state_machine    <= FSMIP2_AWACK;
                        
                    end else begin
                        m_axi_IP1_awaddr         <= 16'b0;
                        m_axi_IP1_awvalid        <= 1'b0; 
                        m_axi_IP1_wdata          <= 32'b0;
                        m_axi_IP1_wstrb          <= 4'h0;
                        m_axi_IP1_wvalid         <= 1'b0;
                        m_axi_IP1_bready         <= 1'b0;
                        m_axi_IP2_awaddr         <= 16'b0;
                        m_axi_IP2_awvalid        <= 1'b0; 
                        m_axi_IP2_wdata          <= 32'b0;
                        m_axi_IP2_wstrb          <= 4'h0;
                        m_axi_IP2_wvalid         <= 1'b0;
                        m_axi_IP2_bready         <= 1'b0;             
                        s_write_state_machine    <= FSMIDLE;
                    end
                end
                
                FSMIP1_AWACK: begin
                    if (m_axi_IP1_awready == 1'b1) begin
                        m_axi_IP1_awvalid        <= 1'b0;
                        s_write_state_machine    <= FSMIP1_AWACK;
                    end
                    if (m_axi_IP1_wready == 1'b1) begin
                        m_axi_IP1_awvalid        <= 1'b0;
                        m_axi_IP1_awvalid        <= 1'b0;
                        s_write_state_machine    <= FSMIP1_WAITREPLY;                    
                    end
                end
            
                FSMIP2_AWACK: begin
                    if (m_axi_IP2_awready == 1'b1) begin
                        m_axi_IP2_awvalid        <= 1'b0;
                        s_write_state_machine    <= FSMIP2_AWACK;
                    end
                    if (m_axi_IP2_wready == 1'b1) begin
                        m_axi_IP2_awvalid        <= 1'b0;
                        m_axi_IP2_awvalid        <= 1'b0;
                        s_write_state_machine    <= FSMIP2_WAITREPLY;                    
                    end
                end
                
                FSMIP1_WAITREPLY: begin
                    if (m_axi_IP1_bvalid == 1'b1) begin
                        m_axi_IP1_bready         <= 1'b0;
                        s_write_state_machine    <= FSMIDLE;                   
                    end
                end
                
                FSMIP2_WAITREPLY: begin
                    if (m_axi_IP2_bvalid == 1'b1) begin
                        m_axi_IP2_bready         <= 1'b0;
                        s_write_state_machine    <= FSMIDLE;                   
                    end
                end
            endcase
        end
    end


    //
    // Handle MMIO reads.
    //    
    always_ff @(posedge clk)
    begin
        if (rst_n == 1'b0) begin
            af2cp_sTxPort.c1.hdr            <= '0;
            af2cp_sTxPort.c1.valid          <= '0;
            af2cp_sTxPort.c0.hdr            <= '0;
            af2cp_sTxPort.c0.valid          <= '0;
            af2cp_sTxPort.c2.hdr            <= '0;
            af2cp_sTxPort.c2.mmioRdValid    <= '0;
            read_reply                      <= '0;
            read_tid                        <= '0;
            s_read_state_machine            <= FSMIDLE;
            m_axi_IP1_rready                <= 1'b0;
            m_axi_IP2_rready                <= 1'b0;            
            m_axi_IP1_araddr                <= 16'b0;
            m_axi_IP1_arvalid               <= 1'b0;  
            m_axi_IP2_araddr                <= 16'b0;
            m_axi_IP2_arvalid               <= 1'b0; 
        end else begin
            af2cp_sTxPort.c2.mmioRdValid <= 0;  // Clear read response flag in case there was a response last cycle.
            case (s_read_state_machine)
                FSMIDLE: begin
                    read_tid <= mmioHdr.tid;    // Copy TID, which the host needs to map the response to the request
                    m_axi_IP1_rready     <= 1'b1;
                    m_axi_IP2_rready        <= 1'b1;
                    // mmioHdr.address[15:14]
                    //  2'b00: afu CSR
                    //  2'b01: IP1
                    //  2'b10: IP2
                    //  2'b11: UNUSED
                    if (mmioHdr.address[15:14]==2'b00 && cp2af_sRxPort.c0.mmioRdValid == 1'b1) begin
                        s_read_state_machine       <= FSMREPLY;
                        case (mmioHdr.address)                            
                            16'h0000:   read_reply <= {4'b0001, 8'b0, 4'b0, 7'b0, 1'b1, 24'b0, 4'b0, 12'b0 }; // AFU header            
                            16'h0002:   read_reply <= afu_id[63:0]; // AFU_ID_L
                            16'h0004:   read_reply <= afu_id[127:64]; // AFU_ID_H
                            16'h0006:   read_reply <= 64'h0; // DFH_RSVD0
                            16'h0008:   read_reply <= 64'h0; // DFH_RSVD1
                            default:   read_reply <= 64'hDEADBEEF;
                        endcase
                    
                    // IP1
                    end else if (mmioHdr.address[15:14]==2'b01 && cp2af_sRxPort.c0.mmioRdValid == 1'b1) begin
                        m_axi_IP1_araddr         <= {2'b00, mmioHdr.address[13:0]};
                        m_axi_IP1_arvalid        <= 1'b1;  
                        m_axi_IP2_araddr         <= 16'b0;
                        m_axi_IP2_arvalid        <= 1'b0; 
                        s_read_state_machine     <= FSMIP1_ARACK;
                        read_reply               <= 64'h0;
                        
                    // IP2
                    end else if (mmioHdr.address[15:14]==2'b10 && cp2af_sRxPort.c0.mmioRdValid == 1'b1) begin
                        m_axi_IP1_araddr         <= 16'b0;
                        m_axi_IP1_arvalid        <= 1'b0;  
                        m_axi_IP2_araddr         <= {2'b0, mmioHdr.address[13:0]};
                        m_axi_IP2_arvalid        <= 1'b1;
                        s_read_state_machine     <= FSMIP2_ARACK;
                        read_reply               <= 64'h0;
                    end
                end
                
                FSMIP1_ARACK: begin
                    if (m_axi_IP1_arready == 1'b1) begin
                        m_axi_IP1_arvalid        <= 1'b0;
                        s_read_state_machine     <= FSMIP1_WAITDATA;
                    end
                end
                
               FSMIP1_WAITDATA: begin 
                    if (m_axi_IP1_rvalid == 1'b1) begin
                        read_reply               <= m_axi_IP1_rdata;
                        m_axi_IP1_rready         <= 1'b0;
                        s_read_state_machine     <= FSMREPLY;
                    end
                end
                
                FSMIP2_ARACK: begin
                    if (m_axi_IP2_arready == 1'b1) begin
                        m_axi_IP2_arvalid        <= 1'b0;
                        s_read_state_machine     <= FSMIP2_WAITDATA;
                    end
                end
                
                FSMIP2_WAITDATA: begin    
                    if (m_axi_IP2_rvalid == 1'b1) begin
                        read_reply               <= m_axi_IP2_rdata;
                        m_axi_IP2_rready         <= 1'b0;
                        s_read_state_machine     <= FSMREPLY;
                    end
                end
                
                FSMREPLY: begin
                    af2cp_sTxPort.c2.hdr.tid     <= read_tid;    // Copy TID, which the host needs to map the response to the request
                    af2cp_sTxPort.c2.mmioRdValid <= 1;           // Post response
                    af2cp_sTxPort.c2.data        <= read_reply;  // Post response
                    s_read_state_machine         <= FSMIDLE;
                    
                end
            endcase
        end
    end

endmodule
`default_nettype wire
