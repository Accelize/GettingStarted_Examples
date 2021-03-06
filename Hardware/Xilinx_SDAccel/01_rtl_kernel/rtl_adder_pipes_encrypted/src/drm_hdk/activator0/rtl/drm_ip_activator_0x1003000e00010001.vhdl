---------------------------------------------------------------------
----
---- AUTOGENERATED FILE - DO NOT EDIT
---- DRM SCRIPT VERSION 2.0.0
---- DRM HDK VERSION 3.2.2.0
---- DRM VERSION 3.2.2
---- COPYRIGHT (C) ALGODONE
----
---------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library DRM_LIBRARY;
use DRM_LIBRARY.DRM_PACKAGE.all;
use DRM_LIBRARY.DRM_INTERFACES_PACKAGE.all;
use DRM_LIBRARY.DRM_IP_COMPONENTS.all;

entity DRM_IP_ACTIVATOR_0x1003000E00010001 is
  port (
    -- drm bus clock and reset
    DRM_ACLK              : in  std_logic;
    DRM_ARSTN             : in  std_logic;
    -- drm bus slave interface
    DRM_BUS_SLAVE_I_CS    : in  std_logic;
    DRM_BUS_SLAVE_I_CYC   : in  std_logic;
    DRM_BUS_SLAVE_I_WE    : in  std_logic;
    DRM_BUS_SLAVE_I_ADR   : in  std_logic_vector(1 downto 0);
    DRM_BUS_SLAVE_I_DAT   : in  std_logic_vector(0 downto 0);
    DRM_BUS_SLAVE_O_ACK   : out std_logic;
    DRM_BUS_SLAVE_O_STA   : out std_logic;
    DRM_BUS_SLAVE_O_INTR  : out std_logic;
    DRM_BUS_SLAVE_O_DAT   : out std_logic_vector(0 downto 0);
    -- ip core clock and reset
    IP_CORE_ACLK          : in  std_logic;
    IP_CORE_ARSTN         : in  std_logic;
    -- ip core interface
    DRM_EVENT             : in  std_logic;
    DRM_ARST              : in  std_logic := '0';
    ACTIVATION_CODE_READY : out std_logic;
    DEMO_MODE             : out std_logic;
    ACTIVATION_CODE       : out std_logic_vector(127 downto 0)
  );
end entity DRM_IP_ACTIVATOR_0x1003000E00010001;

architecture DRM_IP_ACTIVATOR_0x1003000E00010001_RTL of DRM_IP_ACTIVATOR_0x1003000E00010001 is

  constant C_DRM_IP_ACTIVATOR_0x1003000E00010001_DRM_VERSION : std_logic_vector(23 downto 0) := x"030202";

begin

  -- drm activator version check
  assert C_DRM_IP_ACTIVATOR_0x1003000E00010001_DRM_VERSION(23 downto 8) = C_DRM_SLAVE_DRM_VERSION(23 downto 8)
    report "The version of the DRM_IP_ACTIVATOR_0x1003000E00010001 is not supported by the DRM HDK." severity failure;

  -- drm activator instantiation
  DRM_ACTIVATOR_INSTANCE : DRM_ACTIVATOR
    generic map (
      x"1003000E00010001",
      C_F_CRYPTO_AES,
      true,
      x"0000000059682F00"
    )
    port map (
      DRM_BUS_SLAVE_I_CS,
      '0',
      DRM_ARSTN,
      DRM_ACLK,
      DRM_BUS_SLAVE_I_CYC,
      DRM_BUS_SLAVE_I_WE,
      DRM_BUS_SLAVE_I_ADR,
      DRM_BUS_SLAVE_I_DAT,
      DRM_BUS_SLAVE_O_DAT,
      DRM_BUS_SLAVE_O_ACK,
      DRM_BUS_SLAVE_O_INTR,
      DRM_BUS_SLAVE_O_STA,
      IP_CORE_ACLK,
      IP_CORE_ARSTN,
      DRM_EVENT,
      DRM_ARST,
      ACTIVATION_CODE_READY,
      DEMO_MODE,
      ACTIVATION_CODE,
      x"70A7CEF4E539B318690A7EF78AA03837"
    );

end architecture DRM_IP_ACTIVATOR_0x1003000E00010001_RTL;
