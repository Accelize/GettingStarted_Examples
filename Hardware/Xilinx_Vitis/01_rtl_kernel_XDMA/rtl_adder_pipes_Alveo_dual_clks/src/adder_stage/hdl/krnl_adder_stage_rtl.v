// /*******************************************************************************
// Copyright (c) 2018, Xilinx, Inc.
// All rights reserved.
// 
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
// 
// 1. Redistributions of source code must retain the above copyright notice,
// this list of conditions and the following disclaimer.
// 
// 
// 2. Redistributions in binary form must reproduce the above copyright notice,
// this list of conditions and the following disclaimer in the documentation
// and/or other materials provided with the distribution.
// 
// 
// 3. Neither the name of the copyright holder nor the names of its contributors
// may be used to endorse or promote products derived from this software
// without specific prior written permission.
// 
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,THE IMPLIED 
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
// IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
// INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, 
// BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, 
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY 
// OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING 
// NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
// EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// *******************************************************************************/

///////////////////////////////////////////////////////////////////////////////
// Description: This is a Verilog wrapper of module "krnl_adder_stage_rtl"
///////////////////////////////////////////////////////////////////////////////

// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps 

module krnl_adder_stage_rtl #( 
  parameter integer  C_S_AXI_CONTROL_DATA_WIDTH = 32,
  parameter integer  C_S_AXI_CONTROL_ADDR_WIDTH = 6,
  parameter integer  C_DATA_WIDTH               = 32
)
(
  // System signals
  input  wire                                    ap_clk,
  input  wire                                    ap_rst_n_2,
  input  wire                                    ap_clk_2,
  input  wire                                    ap_rst_n,
  // AXI4 master interface                        
  input  wire [C_DATA_WIDTH-1:0]                 p0_TDATA,
  input  wire                                    p0_TVALID,
  output wire                                    p0_TREADY,
  output wire [C_DATA_WIDTH-1:0]                 p1_TDATA,
  output wire                                    p1_TVALID,
  input  wire                                    p1_TREADY,

  // AXI4-Lite slave interface
  input  wire                                    s_axi_control_AWVALID,
  output wire                                    s_axi_control_AWREADY,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]   s_axi_control_AWADDR,
  input  wire                                    s_axi_control_WVALID,
  output wire                                    s_axi_control_WREADY,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]   s_axi_control_WDATA,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH/8-1:0] s_axi_control_WSTRB,
  input  wire                                    s_axi_control_ARVALID,
  output wire                                    s_axi_control_ARREADY,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]   s_axi_control_ARADDR,
  output wire                                    s_axi_control_RVALID,
  input  wire                                    s_axi_control_RREADY,
  output wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]   s_axi_control_RDATA,
  output wire [1:0]                              s_axi_control_RRESP,
  output wire                                    s_axi_control_BVALID,
  input  wire                                    s_axi_control_BREADY,
  output wire [1:0]                              s_axi_control_BRESP,
  
  // AXI4-ST Common Bus from DRM Controller          
  input wire [C_DATA_WIDTH-1:0]                  drm_to_uip_tdata,
  input wire                                     drm_to_uip_tvalid,
  input wire                                     drm_to_uip_tlast,
  output wire                                    drm_to_uip_tready,
  
  // AXI4-ST Bus to DRM Controller                                 
  input wire                                     uip_to_drm_tready,
  output wire [C_DATA_WIDTH-1:0]                 uip_to_drm_tdata,
  output wire                                    uip_to_drm_tvalid, 
  output wire                                    uip_to_drm_tlast
);

krnl_adder_stage_rtl_int #(
  .C_S_AXI_CONTROL_DATA_WIDTH ( C_S_AXI_CONTROL_DATA_WIDTH ),
  .C_S_AXI_CONTROL_ADDR_WIDTH ( C_S_AXI_CONTROL_ADDR_WIDTH ),
  .C_DATA_WIDTH               ( C_DATA_WIDTH )
)
inst_krnl_adder_stage_rtl_int (
  .ap_clk                 ( ap_clk ),
  .ap_rst_n               ( ap_rst_n ),
  .p0_TDATA               ( p0_TDATA ),
  .p0_TVALID              ( p0_TVALID ),
  .p0_TREADY              ( p0_TREADY ),
  .p1_TDATA               ( p1_TDATA_int ),
  .p1_TVALID              ( p1_TVALID ),
  .p1_TREADY              ( p1_TREADY ),
  .s_axi_control_AWVALID  ( s_axi_control_AWVALID ),
  .s_axi_control_AWREADY  ( s_axi_control_AWREADY ),
  .s_axi_control_AWADDR   ( s_axi_control_AWADDR ),
  .s_axi_control_WVALID   ( s_axi_control_WVALID ),
  .s_axi_control_WREADY   ( s_axi_control_WREADY ),
  .s_axi_control_WDATA    ( s_axi_control_WDATA ),
  .s_axi_control_WSTRB    ( s_axi_control_WSTRB ),
  .s_axi_control_ARVALID  ( s_axi_control_ARVALID ),
  .s_axi_control_ARREADY  ( s_axi_control_ARREADY ),
  .s_axi_control_ARADDR   ( s_axi_control_ARADDR ),
  .s_axi_control_RVALID   ( s_axi_control_RVALID ),
  .s_axi_control_RREADY   ( s_axi_control_RREADY ),
  .s_axi_control_RDATA    ( s_axi_control_RDATA ),
  .s_axi_control_RRESP    ( s_axi_control_RRESP ),
  .s_axi_control_BVALID   ( s_axi_control_BVALID ),
  .s_axi_control_BREADY   ( s_axi_control_BREADY ),
  .s_axi_control_BRESP    ( s_axi_control_BRESP )
);

localparam      EXP_ACT_CODE = 128'h7E745E528F0CF2F36C304A2F18DB0CE0;
wire [127:0]    s_drm_activation_code;
reg  [127:0]    s_tmp;
reg             s_activated;
wire            usage_unit_event;
wire [C_DATA_WIDTH-1:0]     p1_TDATA_int;

assign p1_TDATA           = s_activated ? p1_TDATA_int : {(C_DATA_WIDTH-1){1'b0}};
assign usage_unit_event   = ap_rst_n && p0_TVALID && p0_TREADY; 
    
// Activation Process
always @(negedge ap_rst_n or posedge ap_clk)
begin
    if (ap_rst_n == 1'b0) begin
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
    
top_drm_activator_0x1003000e00010001 top_drm_activator_0x1003000e00010001_inst (
      .drm_aclk              (ap_clk_2                          ),
      .drm_arstn             (ap_rst_n_2                        ),       
      .drm_to_uip_tdata      (drm_to_uip_tdata                  ),
      .drm_to_uip_tvalid     (drm_to_uip_tvalid                 ),
      .drm_to_uip_tready     (drm_to_uip_tready                 ),
      .drm_to_uip_tlast      (drm_to_uip_tlast                  ),
      .uip_to_drm_tready     (uip_to_drm_tready                 ),
      .uip_to_drm_tdata      (uip_to_drm_tdata                  ),
      .uip_to_drm_tvalid     (uip_to_drm_tvalid                 ),
      .uip_to_drm_tlast      (uip_to_drm_tlast                  ),
      .ip_core_aclk          (ap_clk                            ),
      .metering_event        (usage_unit_event                  ),
      .activation_code       (s_drm_activation_code             )
    );

endmodule : krnl_adder_stage_rtl

`default_nettype wire
