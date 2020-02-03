/////////////////////////////////////////////////////////////////////
////
//// Accelize 2019
////
/////////////////////////////////////////////////////////////////////

module drm_ip_activator_0x1003000e00050001_axi4st (
  // drm bus clock and reset
  input  wire         drm_aclk,
  input  wire         drm_arstn,
  
  // AXI4-ST Common Bus from DRM Controller          
  input wire  [32-1:0]             drm_to_uip_tdata     ,
  input wire                       drm_to_uip_tvalid    ,
  output wire                      drm_to_uip_tready    ,
  // AXI4-ST Bus to DRM Controller
  input wire                       uip_to_drm_tready      ,
  output wire [32-1:0]             uip_to_drm_tdata       ,
  output wire                      uip_to_drm_tvalid      ,
  
  // ip core clock and reset
  input  wire         ip_core_aclk,
  input  wire         ip_core_arstn,
  // ip core interface
  input  wire         drm_event,
  input  wire         drm_arst,
  output wire         activation_code_ready,
  output wire         demo_mode,
  output wire [127:0] activation_code
);

assign drm_to_uip_tready        = 1'b1;
assign uip_to_drm_tvalid        = 1'b1;
assign uip_to_drm_tdata[31:4]   = 28'b0;

  DRM_IP_ACTIVATOR_0x1003000e00050001 drm_ip_activator_0x1003000e00050001_inst (
    .DRM_ACLK              (drm_aclk),
    .DRM_ARSTN             (drm_arstn),
    .DRM_BUS_SLAVE_I_CS    (drm_to_uip_tdata[5]),
    .DRM_BUS_SLAVE_I_CYC   (drm_to_uip_tdata[4]),
    .DRM_BUS_SLAVE_I_WE    (drm_to_uip_tdata[1]),
    .DRM_BUS_SLAVE_I_ADR   (drm_to_uip_tdata[3:2]),
    .DRM_BUS_SLAVE_I_DAT   (drm_to_uip_tdata[0]),
    .DRM_BUS_SLAVE_O_ACK   (uip_to_drm_tdata[3]),
    .DRM_BUS_SLAVE_O_STA   (uip_to_drm_tdata[1]),
    .DRM_BUS_SLAVE_O_INTR  (uip_to_drm_tdata[2]),
    .DRM_BUS_SLAVE_O_DAT   (uip_to_drm_tdata[0]),
    .IP_CORE_ACLK          (ip_core_aclk),
    .IP_CORE_ARSTN         (ip_core_arstn),
    .DRM_EVENT             (drm_event),
    .DRM_ARST              (drm_arst),
    .ACTIVATION_CODE_READY (activation_code_ready),
    .DEMO_MODE             (demo_mode),
    .ACTIVATION_CODE       (activation_code)
  );
    
endmodule
