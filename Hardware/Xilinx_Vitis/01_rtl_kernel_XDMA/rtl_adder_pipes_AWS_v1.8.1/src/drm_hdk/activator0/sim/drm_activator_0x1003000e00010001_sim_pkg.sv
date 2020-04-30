////////////////////////////////////////////////////////////////////
////
//// List the parameters used for simulation only.
//// COPYRIGHT (C) ACCELIZE
////
////////////////////////////////////////////////////////////////////

package drm_activator_0x1003000e00010001_sim_pkg;

  /** Indicate to use or not the BFM.
  * For synthesis is MUST be set to false
  */
  parameter USE_BFM = 1;

  /** Specify the path to a valid DRM License XML file used by the Controller BFM
  * It is used to unlock the DRM Activator.
  */
  parameter DRM_LICENSE_FILE = "absolute/path/to/drm_hdk/activator/sim/drm_activator_0x1003000e00010001_license_file.xml";

  /** Enable/disable the DRM messaging system of the Controller BFM
  * Xilinx Vivado Simulator does NOT support messaging: it must be set to 0.
  */
  parameter ENABLE_DRM_MESSAGE = 0;

endpackage
