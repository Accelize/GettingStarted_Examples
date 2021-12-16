// synthesis translate_off
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


module top_drm_activator_0x1003000e00010001 (
  // AXI4-Stream Bus clock and reset
  input  wire            drm_aclk,
  input  wire            drm_arstn,
  // AXI4-Stream Bus from DRM Controller
  output wire            drm_to_uip_tready,
  input  wire            drm_to_uip_tvalid,
  input  wire [32-1:0]   drm_to_uip_tdata,
  // AXI4-Stream Bus to DRM Controller
  input  wire            uip_to_drm_tready,
  output reg             uip_to_drm_tvalid,
  output wire [32-1:0]   uip_to_drm_tdata,
  // IP core clock and reset
  input  wire            ip_core_aclk,
  // IP core interface
  input  wire            metering_event,
  output wire [127:0]    activation_code
);

  localparam POR_DURATION = 16;

  reg  [POR_DURATION-1:0] por_shifter = {POR_DURATION{1'b0}};  // init for simulation
  wire                    i_ip_core_arstn;
  wire [31:0]             i_drm_to_uip_tdata;
  wire [31:0]             i_uip_to_drm_tdata;


  //---------------
  // Generate POR
  //---------------

  assign i_ip_core_arstn = por_shifter[POR_DURATION-1];

  always @(posedge ip_core_aclk) begin
    por_shifter[0]                <= 1'b1;
    por_shifter[POR_DURATION-1:1] <= por_shifter[POR_DURATION-2:0];
  end


  //-------------------------------
  // Map activator to AXI4-Stream
  //-------------------------------

  assign drm_to_uip_tready = drm_to_uip_tvalid;

  always @(posedge ip_core_aclk) begin
    if (~drm_arstn)
      uip_to_drm_tvalid <= 1'b0;
    else
      uip_to_drm_tvalid <= 1'b1;
  end

  assign i_uip_to_drm_tdata[31:4] = 28'b0;


  generate if (drm_activator_0x1003000e00010001_sim_pkg::USE_BFM == 1) begin

    wire       license_file_loaded;
    wire       activation_cycle_done;
    wire [7:0] error_code;
    wire       i_drm_bfm_arstn;

    assign i_drm_bfm_arstn = drm_arstn & drm_to_uip_tvalid & &drm_to_uip_tdata;

    assign uip_to_drm_tdata  = {32{drm_arstn}};

    assign i_drm_to_uip_tdata[31:6] = 26'b0;


    DRM_CONTROLLER_BFM #(
      .LICENSE_FILE           (drm_activator_0x1003000e00010001_sim_pkg::DRM_LICENSE_FILE),
      .LICENSE_TIMER          (""),
      .ENABLE_MESSAGE_DISPLAY (drm_activator_0x1003000e00010001_sim_pkg::ENABLE_DRM_MESSAGE)
    ) drm_controller_bfm_inst (
      // DRM clock and reset
      .DRM_ACLK               (drm_aclk),
      .DRM_ARSTN              (i_drm_bfm_arstn),
      // DRM Bus interface
      .DRM_BUS_MASTER_O_CS    (i_drm_to_uip_tdata[5]),
      .DRM_BUS_MASTER_O_CYC   (i_drm_to_uip_tdata[4]),
      .DRM_BUS_MASTER_O_ADR   (i_drm_to_uip_tdata[3:2]),
      .DRM_BUS_MASTER_O_WE    (i_drm_to_uip_tdata[1]),
      .DRM_BUS_MASTER_O_DAT   (i_drm_to_uip_tdata[0]),
      .DRM_BUS_MASTER_I_ACK   (i_uip_to_drm_tdata[3]),
      .DRM_BUS_MASTER_I_INTR  (i_uip_to_drm_tdata[2]),
      .DRM_BUS_MASTER_I_STA   (i_uip_to_drm_tdata[1]),
      .DRM_BUS_MASTER_I_DAT   (i_uip_to_drm_tdata[0]),
      // BFM status
      .LICENSE_FILE_LOADED    (license_file_loaded),
      .ACTIVATION_CYCLE_DONE  (activation_cycle_done),
      .ERROR_CODE             (error_code)
    );

  end else begin

    assign i_drm_to_uip_tdata  = drm_to_uip_tdata;

    assign uip_to_drm_tdata    = i_uip_to_drm_tdata;

  end endgenerate


  drm_ip_activator_0x1003000e00010001 drm_ip_activator_0x1003000e00010001_inst (
    .DRM_ACLK              (drm_aclk),
    .DRM_ARSTN             (drm_arstn),
    .DRM_BUS_SLAVE_I_CS    (i_drm_to_uip_tdata[5]),
    .DRM_BUS_SLAVE_I_CYC   (i_drm_to_uip_tdata[4]),
    .DRM_BUS_SLAVE_I_ADR   (i_drm_to_uip_tdata[3:2]),
    .DRM_BUS_SLAVE_I_WE    (i_drm_to_uip_tdata[1]),
    .DRM_BUS_SLAVE_I_DAT   (i_drm_to_uip_tdata[0]),
    .DRM_BUS_SLAVE_O_ACK   (i_uip_to_drm_tdata[3]),
    .DRM_BUS_SLAVE_O_STA   (i_uip_to_drm_tdata[1]),
    .DRM_BUS_SLAVE_O_INTR  (i_uip_to_drm_tdata[2]),
    .DRM_BUS_SLAVE_O_DAT   (i_uip_to_drm_tdata[0]),
    .IP_CORE_ACLK          (ip_core_aclk),
    .IP_CORE_ARSTN         (i_ip_core_arstn),
    .DRM_EVENT             (metering_event),
    .DRM_ARST              (1'b0),
    .ACTIVATION_CODE_READY (),
    .DEMO_MODE             (),
    .ACTIVATION_CODE       (activation_code)
  );

endmodule
`default_nettype wire
// synthesis translate_on
