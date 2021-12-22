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
  parameter integer  C_S_AXI_CONTROL_ADDR_WIDTH = 16,
  parameter integer  C_DATA_WIDTH               = 32
)
(
  // System signals
  input  wire                                    ap_clk,
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
  output wire [1:0]                              s_axi_control_BRESP
);

assign p0_TREADY    = p1_TREADY;

// Adder has 2 pipeline stages (2 cycle latency)
krnl_adder_stage_rtl_adder #(
  .C_DATA_WIDTH (C_DATA_WIDTH)
)
inst_adder (
  .aclk          ( ap_clk                ) ,
  .areset        ( ~ap_rst_n             ) ,
  .ctrl_constant ( 32'd1                 ) ,
  .s_tvalid      ( p0_TVALID & p0_TREADY ) ,
  .s_tdata       ( p0_TDATA              ) ,
  .m_tvalid      ( p1_TVALID             ) ,
  .m_tdata       ( p1_TDATA              ) 
);


// AXI CROSSBAR 
// UIP : 0x0000 to 0x3FFF
// DRM : 0x4000 and upper 
// AXI Crossbar Documentation:
//The entire address value received from the SI is presented to the MI and made available to the slave device. It is visible to any connected monitors, even though the high-order address bits are typically not reused by the slave device
wire [16-1:0]                           m_axi_drm_awaddr        ;
wire [16-1:0]                           m_axi_userip_awaddr      ;
wire [16-1:0]                           m_axi_drm_araddr        ;
wire [16-1:0]                           m_axi_userip_araddr      ;
wire                                    m_axi_userip_awvalid     ;
wire                                    m_axi_userip_awready     ;
wire [3-1 :0]                           m_axi_userip_awprot      ;
wire                                    m_axi_userip_wvalid      ;
wire                                    m_axi_userip_wready      ;
wire [32-1:0]                           m_axi_userip_wdata       ;
wire [32/8-1:0]                         m_axi_userip_wstrb       ;
wire                                    m_axi_userip_arvalid     ;
wire                                    m_axi_userip_arready     ;
wire [3-1 :0]                           m_axi_userip_arprot      ;
wire                                    m_axi_userip_rvalid      ;
wire                                    m_axi_userip_rready      ;
wire [32-1:0]                           m_axi_userip_rdata       ;
wire [2-1:0]                            m_axi_userip_rresp       ;
wire                                    m_axi_userip_bvalid      ;
wire                                    m_axi_userip_bready      ;
wire [2-1:0]                            m_axi_userip_bresp       ;
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


axi_crossbar_0 axi_crossbar_0_inst (
  .aclk(ap_clk),                                    // input wire aclk
  .aresetn(ap_rst_n),                               // input wire aresetn
  .s_axi_awaddr(    s_axi_control_AWADDR    ),      // input wire [15 : 0] s_axi_control_awaddr
  .s_axi_awprot(    3'b0                    ),      // input wire [2 : 0] s_axi_control_awprot
  .s_axi_awvalid(   s_axi_control_AWVALID   ),      // input wire [0 : 0] s_axi_control_awvalid
  .s_axi_awready(   s_axi_control_AWREADY   ),      // output wire [0 : 0] s_axi_control_awready
  .s_axi_wdata(     s_axi_control_WDATA     ),      // input wire [31 : 0] s_axi_control_wdata
  .s_axi_wstrb(     s_axi_control_WSTRB     ),      // input wire [3 : 0] s_axi_control_wstrb
  .s_axi_wvalid(    s_axi_control_WVALID    ),      // input wire [0 : 0] s_axi_control_wvalid
  .s_axi_wready(    s_axi_control_WREADY    ),      // output wire [0 : 0] s_axi_control_wready
  .s_axi_bresp(     s_axi_control_BRESP     ),      // output wire [1 : 0] s_axi_control_bresp
  .s_axi_bvalid(    s_axi_control_BVALID    ),      // output wire [0 : 0] s_axi_control_bvalid
  .s_axi_bready(    s_axi_control_BREADY    ),      // input wire [0 : 0] s_axi_control_bready
  .s_axi_araddr(    s_axi_control_ARADDR    ),      // input wire [15 : 0] s_axi_control_araddr
  .s_axi_arprot(    3'b0                    ),      // input wire [2 : 0] s_axi_control_arprot
  .s_axi_arvalid(   s_axi_control_ARVALID   ),      // input wire [0 : 0] s_axi_control_arvalid
  .s_axi_arready(   s_axi_control_ARREADY   ),      // output wire [0 : 0] s_axi_control_arready
  .s_axi_rdata(     s_axi_control_RDATA     ),      // output wire [31 : 0] s_axi_control_rdata
  .s_axi_rresp(     s_axi_control_RRESP     ),      // output wire [1 : 0] s_axi_control_rresp
  .s_axi_rvalid(    s_axi_control_RVALID    ),      // output wire [0 : 0] s_axi_control_rvalid
  .s_axi_rready(    s_axi_control_RREADY    ),      // input wire [0 : 0] s_axi_control_rready
  .m_axi_awaddr(    {m_axi_drm_awaddr,    m_axi_userip_awaddr}  ),    // output wire [31 : 0] m_axi_awaddr
  .m_axi_awprot(    {m_axi_drm_awprot,    m_axi_userip_awprot}  ),    // output wire [5 : 0] m_axi_awprot
  .m_axi_awvalid(   {m_axi_drm_awvalid,   m_axi_userip_awvalid} ),    // output wire [1 : 0] m_axi_awvalid
  .m_axi_awready(   {m_axi_drm_awready,   m_axi_userip_awready} ),    // input wire [1 : 0] m_axi_awready
  .m_axi_wdata(     {m_axi_drm_wdata,     m_axi_userip_wdata}   ),    // output wire [63 : 0] m_axi_wdata
  .m_axi_wstrb(     {m_axi_drm_wstrb,     m_axi_userip_wstrb}   ),    // output wire [7 : 0] m_axi_wstrb
  .m_axi_wvalid(    {m_axi_drm_wvalid,    m_axi_userip_wvalid}  ),    // output wire [1 : 0] m_axi_wvalid
  .m_axi_wready(    {m_axi_drm_wready,    m_axi_userip_wready}  ),    // input wire [1 : 0] m_axi_wready
  .m_axi_bresp(     {m_axi_drm_bresp,     m_axi_userip_bresp}   ),    // input wire [3 : 0] m_axi_bresp
  .m_axi_bvalid(    {m_axi_drm_bvalid,    m_axi_userip_bvalid}  ),    // input wire [1 : 0] m_axi_bvalid
  .m_axi_bready(    {m_axi_drm_bready,    m_axi_userip_bready}  ),    // output wire [1 : 0] m_axi_bready
  .m_axi_araddr(    {m_axi_drm_araddr,    m_axi_userip_araddr}  ),    // output wire [31 : 0] m_axi_araddr
  .m_axi_arprot(    {m_axi_drm_arprot,    m_axi_userip_arprot}  ),    // output wire [5 : 0] m_axi_arprot
  .m_axi_arvalid(   {m_axi_drm_arvalid,   m_axi_userip_arvalid} ),    // output wire [1 : 0] m_axi_arvalid
  .m_axi_arready(   {m_axi_drm_arready,   m_axi_userip_arready} ),    // input wire [1 : 0] m_axi_arready
  .m_axi_rdata(     {m_axi_drm_rdata,     m_axi_userip_rdata}   ),    // input wire [63 : 0] m_axi_rdata
  .m_axi_rresp(     {m_axi_drm_rresp,     m_axi_userip_rresp}   ),    // input wire [3 : 0] m_axi_rresp
  .m_axi_rvalid(    {m_axi_drm_rvalid,    m_axi_userip_rvalid}  ),    // input wire [1 : 0] m_axi_rvalid
  .m_axi_rready(    {m_axi_drm_rready,    m_axi_userip_rready}  )     // output wire [1 : 0] m_axi_rready
);

wire [C_DATA_WIDTH-1:0]                 drm_to_uip_tdata;
wire                                    drm_to_uip_tvalid;
wire                                    drm_to_uip_tready;
wire                                    uip_to_drm_tready;
wire [C_DATA_WIDTH-1:0]                 uip_to_drm_tdata;
wire                                    uip_to_drm_tvalid;  

// User Protected IP
user_ip user_ip_inst
(
  .clk                        ( ap_clk                ),
  .rst_n                      ( ap_rst_n              ),
  .m00_axi_awvalid            ( m_axi_userip_awvalid  ),
  .m00_axi_awready            ( m_axi_userip_awready  ),
  .m00_axi_awaddr             ( m_axi_userip_awaddr & 16'h3FFF ),
  .m00_axi_wvalid             ( m_axi_userip_wvalid   ),
  .m00_axi_wready             ( m_axi_userip_wready   ),
  .m00_axi_wdata              ( m_axi_userip_wdata    ),
  .m00_axi_wstrb              ( m_axi_userip_wstrb    ),
  .m00_axi_bvalid             ( m_axi_userip_bvalid   ),
  .m00_axi_bready             ( m_axi_userip_bready   ),
  .m00_axi_bresp              ( m_axi_userip_bresp    ),
  .m00_axi_arvalid            ( m_axi_userip_arvalid  ),
  .m00_axi_arready            ( m_axi_userip_arready  ),
  .m00_axi_araddr             ( m_axi_userip_araddr & 16'h3FFF ),
  .m00_axi_rvalid             ( m_axi_userip_rvalid   ),
  .m00_axi_rready             ( m_axi_userip_rready   ),
  .m00_axi_rdata              ( m_axi_userip_rdata    ),
  .m00_axi_rresp              ( m_axi_userip_rresp    ),  
  .drm_to_uip_tdata           ( drm_to_uip_tdata      ),
  .drm_to_uip_tvalid          ( drm_to_uip_tvalid     ),
  .drm_to_uip_tready          ( drm_to_uip_tready     ),
  .uip_to_drm_tready          ( uip_to_drm_tready     ),
  .uip_to_drm_tdata           ( uip_to_drm_tdata      ),
  .uip_to_drm_tvalid          ( uip_to_drm_tvalid     )
);


// DRM Controller
top_drm_controller top_drm_controller_inst (
    .drm_aclk             ( ap_clk                ),
    .drm_arstn            ( ap_rst_n              ),
    .drm_to_uip0_tready   ( drm_to_uip_tready     ),
    .drm_to_uip0_tvalid   ( drm_to_uip_tvalid     ),
    .drm_to_uip0_tdata    ( drm_to_uip_tdata      ),
    .uip0_to_drm_tready   ( uip_to_drm_tready     ),
    .uip0_to_drm_tvalid   ( uip_to_drm_tvalid     ),
    .uip0_to_drm_tdata    ( uip_to_drm_tdata      ),
    .s_axi_awready        ( m_axi_drm_awready     ),
    .s_axi_awvalid        ( m_axi_drm_awvalid     ),
    .s_axi_awaddr         ( m_axi_drm_awaddr & 16'h3FFF ),
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
    .s_axi_araddr         ( m_axi_drm_araddr & 16'h3FFF ),
    .s_axi_arprot         ( m_axi_drm_arprot      ),
    .s_axi_rready         ( m_axi_drm_rready      ),
    .s_axi_rvalid         ( m_axi_drm_rvalid      ),
    .s_axi_rdata          ( m_axi_drm_rdata       ),
    .s_axi_rresp          ( m_axi_drm_rresp       ),
    .chip_dna_valid       (                       ),
    .chip_dna             (                       )
  );

endmodule : krnl_adder_stage_rtl

`default_nettype wire
