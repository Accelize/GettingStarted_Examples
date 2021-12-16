/////////////////////////////////////////////////////////////////////
////
//// drm_ip_activator_0x1003000e00010001_wrapper
//// verilog component declaration example
//// AUTOGENERATED FILE - DO NOT EDIT
//// DRM SCRIPT VERSION 2.2.0
//// DRM HDK VERSION 4.2.1.0
//// DRM VERSION 4.2.1
//// COPYRIGHT (C) ALGODONE
////
/////////////////////////////////////////////////////////////////////

drm_ip_activator_0x1003000e00010001_wrapper drm_ip_activator_0x1003000e00010001_wrapper_inst (
  .drm_aclk              (drm_aclk),
  .drm_arstn             (drm_arstn),
  .drm_bus_slave_i_cs    (drm_bus_slave_i_cs),
  .drm_bus_slave_i_cyc   (drm_bus_slave_i_cyc),
  .drm_bus_slave_i_we    (drm_bus_slave_i_we),
  .drm_bus_slave_i_adr   (drm_bus_slave_i_adr),
  .drm_bus_slave_i_dat   (drm_bus_slave_i_dat),
  .drm_bus_slave_o_ack   (drm_bus_slave_o_ack),
  .drm_bus_slave_o_sta   (drm_bus_slave_o_sta),
  .drm_bus_slave_o_intr  (drm_bus_slave_o_intr),
  .drm_bus_slave_o_dat   (drm_bus_slave_o_dat),

  .ip_core_aclk          (ip_core_aclk),
  .ip_core_arstn         (ip_core_arstn),
  .drm_event             (drm_event),
  .drm_arst              (drm_arst),
  .activation_code_ready (activation_code_ready),
  .demo_mode             (demo_mode),
  .activation_code       (activation_code)
);
