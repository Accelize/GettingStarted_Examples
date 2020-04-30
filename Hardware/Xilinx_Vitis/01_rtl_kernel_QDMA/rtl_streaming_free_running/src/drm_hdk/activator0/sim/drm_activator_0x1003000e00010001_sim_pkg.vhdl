---------------------------------------------------------------------
----
---- List the parameters used for simulation only.
---- COPYRIGHT (C) ACCELIZE
----
---------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

package drm_activator_0x1003000e00010001_sim_pkg is

  -- Indicate to use or not the BFM.
  -- For synthesis is MUST be set to false
  constant USE_BFM : boolean  := TRUE;

  -- Specify the path to a valid DRM License XML file used by the Controller BFM
  -- It is used to unlock the DRM Activator.
  constant DRM_LICENSE_FILE : string  := "absolute/path/to/drm_hdk/activator/sim/drm_activator_0x1003000e00010001_license_file.xml";

  -- Enable/disable the DRM messaging system of the Controller BFM
  -- Xilinx Vivado Simulator does NOT support messaging: it must be set to 0.
  constant ENABLE_MESSAGE : boolean := FALSE;

end package drm_activator_0x1003000e00010001_sim_pkg;
