////////////////////////////////////////////////////////////////////
////
//// List the parameters used for simulation only.
//// COPYRIGHT (C) ACCELIZE
////
////////////////////////////////////////////////////////////////////

package drm_activator_0x1003000e00010001_sim_pkg;

  /** Enable/Disable the BFM usage.
  * For synthesis and co-simulation it MUST be set to 0
  * For RTL simulation it MUST be set to 1
  */
  parameter USE_BFM = 1;

  /** Specify the path to a valid DRM License XML file used by the Controller BFM
  * It is used to unlock the DRM Activator.
  */
  parameter DRM_LICENSE_FILE = "absolute/path/to/drm_hdk/activator/sim/drm_activator_0x1003000e00010001_license_file.xml";

  /** Enable/disable the DRM messaging system of the Controller BFM
  * Only supported on questasim/modelsim, otherwise keep it to 0.
  */
  parameter ENABLE_DRM_MESSAGE = 0;

endpackage
