-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Mar 30 13:23:21 2021
-- Host        : ip-172-31-9-235.eu-west-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cl_HIP_0_sim_netlist.vhdl
-- Design      : cl_HIP_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvu9p-flgb2104-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_calib_concat_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_calib_concat_0 : entity is "bd_3329_calib_concat_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_calib_concat_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_calib_concat_0 : entity is "xlconcat_v2_1_4_xlconcat,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_calib_concat_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_calib_concat_0 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in0\(0) <= In0(0);
  dout(0) <= \^in0\(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interconnect_imp_1XWE5B8 is
  port (
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rvalid : out STD_LOGIC;
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rvalid : out STD_LOGIC;
    aclk : in STD_LOGIC;
    S00_AXI_awready_0 : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    interconnect_aresetn1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awready : in STD_LOGIC;
    S_AXI_wready : in STD_LOGIC;
    S_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : in STD_LOGIC;
    S_AXI_arready : in STD_LOGIC;
    S_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : in STD_LOGIC;
    S_AXI_rvalid : in STD_LOGIC;
    interconnect_aresetn : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 36 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 36 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    interconnect_aresetn2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S02_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wvalid : in STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interconnect_imp_1XWE5B8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interconnect_imp_1XWE5B8 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_interconnect_ddr4_mem00_0 is
  port (
    aclk : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aclk2 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 36 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 36 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S02_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wvalid : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rvalid : out STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_interconnect_ddr4_mem00_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_S00_AXI_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 36 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 36 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 36 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 36 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_S00_AXI_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_S01_AXI_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_S01_AXI_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_S02_AXI_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_S02_AXI_0;
  signal vip_S00_AXI_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal vip_S00_AXI_M_AXI_ARID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal vip_S00_AXI_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vip_S00_AXI_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vip_S00_AXI_M_AXI_ARREADY : STD_LOGIC;
  signal vip_S00_AXI_M_AXI_ARVALID : STD_LOGIC;
  signal vip_S00_AXI_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal vip_S00_AXI_M_AXI_AWID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal vip_S00_AXI_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vip_S00_AXI_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vip_S00_AXI_M_AXI_AWREADY : STD_LOGIC;
  signal vip_S00_AXI_M_AXI_AWVALID : STD_LOGIC;
  signal vip_S00_AXI_M_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal vip_S00_AXI_M_AXI_BREADY : STD_LOGIC;
  signal vip_S00_AXI_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S00_AXI_M_AXI_BVALID : STD_LOGIC;
  signal vip_S00_AXI_M_AXI_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal vip_S00_AXI_M_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal vip_S00_AXI_M_AXI_RLAST : STD_LOGIC;
  signal vip_S00_AXI_M_AXI_RREADY : STD_LOGIC;
  signal vip_S00_AXI_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S00_AXI_M_AXI_RVALID : STD_LOGIC;
  signal vip_S00_AXI_M_AXI_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal vip_S00_AXI_M_AXI_WLAST : STD_LOGIC;
  signal vip_S00_AXI_M_AXI_WREADY : STD_LOGIC;
  signal vip_S00_AXI_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal vip_S00_AXI_M_AXI_WVALID : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal vip_S01_AXI_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S01_AXI_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S01_AXI_M_AXI_ARID : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vip_S01_AXI_M_AXI_ARLOCK : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vip_S01_AXI_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S01_AXI_M_AXI_ARREADY : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vip_S01_AXI_M_AXI_ARVALID : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal vip_S01_AXI_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S01_AXI_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S01_AXI_M_AXI_AWID : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vip_S01_AXI_M_AXI_AWLOCK : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vip_S01_AXI_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S01_AXI_M_AXI_AWREADY : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vip_S01_AXI_M_AXI_AWVALID : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_BID : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_BREADY : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S01_AXI_M_AXI_BVALID : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vip_S01_AXI_M_AXI_RID : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_RLAST : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_RREADY : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S01_AXI_M_AXI_RVALID : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vip_S01_AXI_M_AXI_WLAST : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_WREADY : STD_LOGIC;
  signal vip_S01_AXI_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S01_AXI_M_AXI_WVALID : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal vip_S02_AXI_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S02_AXI_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S02_AXI_M_AXI_ARID : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vip_S02_AXI_M_AXI_ARLOCK : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vip_S02_AXI_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S02_AXI_M_AXI_ARREADY : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vip_S02_AXI_M_AXI_ARVALID : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal vip_S02_AXI_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S02_AXI_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S02_AXI_M_AXI_AWID : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vip_S02_AXI_M_AXI_AWLOCK : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vip_S02_AXI_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S02_AXI_M_AXI_AWREADY : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vip_S02_AXI_M_AXI_AWVALID : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_BID : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_BREADY : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S02_AXI_M_AXI_BVALID : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vip_S02_AXI_M_AXI_RID : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_RLAST : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_RREADY : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_S02_AXI_M_AXI_RVALID : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vip_S02_AXI_M_AXI_WLAST : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_WREADY : STD_LOGIC;
  signal vip_S02_AXI_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vip_S02_AXI_M_AXI_WVALID : STD_LOGIC;
  signal NLW_interconnect_ddr4_mem00_M00_AXI_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_interconnect_ddr4_mem00_M00_AXI_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vip_s00_axi_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_s00_axi_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_s01_axi_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_s01_axi_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_s02_axi_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_s02_axi_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of interconnect_ddr4_mem00 : label is "bd_ffc7,Vivado 2020.2";
  attribute X_CORE_INFO of vip_s00_axi : label is "axi_vip_v1_1_8_top,Vivado 2020.2";
  attribute X_CORE_INFO of vip_s01_axi : label is "axi_vip_v1_1_8_top,Vivado 2020.2";
  attribute X_CORE_INFO of vip_s02_axi : label is "axi_vip_v1_1_8_top,Vivado 2020.2";
begin
interconnect_ddr4_mem00: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_interconnect_ddr4_mem00_0
     port map (
      M00_AXI_araddr(63 downto 0) => M00_AXI_araddr(63 downto 0),
      M00_AXI_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      M00_AXI_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      M00_AXI_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      M00_AXI_arlock(0) => M00_AXI_arlock(0),
      M00_AXI_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      M00_AXI_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      M00_AXI_arready => S_AXI_arready,
      M00_AXI_arsize(2 downto 0) => NLW_interconnect_ddr4_mem00_M00_AXI_arsize_UNCONNECTED(2 downto 0),
      M00_AXI_arvalid => M00_AXI_arvalid,
      M00_AXI_awaddr(63 downto 0) => M00_AXI_awaddr(63 downto 0),
      M00_AXI_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      M00_AXI_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      M00_AXI_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      M00_AXI_awlock(0) => M00_AXI_awlock(0),
      M00_AXI_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      M00_AXI_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      M00_AXI_awready => S_AXI_awready,
      M00_AXI_awsize(2 downto 0) => NLW_interconnect_ddr4_mem00_M00_AXI_awsize_UNCONNECTED(2 downto 0),
      M00_AXI_awvalid => M00_AXI_awvalid,
      M00_AXI_bready => M00_AXI_bready,
      M00_AXI_bresp(1 downto 0) => S_AXI_bresp(1 downto 0),
      M00_AXI_bvalid => S_AXI_bvalid,
      M00_AXI_rdata(511 downto 0) => S_AXI_rdata(511 downto 0),
      M00_AXI_rlast => S_AXI_rlast,
      M00_AXI_rready => M00_AXI_rready,
      M00_AXI_rresp(1 downto 0) => S_AXI_rresp(1 downto 0),
      M00_AXI_rvalid => S_AXI_rvalid,
      M00_AXI_wdata(511 downto 0) => M00_AXI_wdata(511 downto 0),
      M00_AXI_wlast => M00_AXI_wlast,
      M00_AXI_wready => S_AXI_wready,
      M00_AXI_wstrb(63 downto 0) => M00_AXI_wstrb(63 downto 0),
      M00_AXI_wvalid => M00_AXI_wvalid,
      S00_AXI_araddr(36 downto 0) => vip_S00_AXI_M_AXI_ARADDR(36 downto 0),
      S00_AXI_arburst(1 downto 0) => B"01",
      S00_AXI_arcache(3 downto 0) => B"0011",
      S00_AXI_arid(5 downto 0) => vip_S00_AXI_M_AXI_ARID(5 downto 0),
      S00_AXI_arlen(7 downto 0) => vip_S00_AXI_M_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => '0',
      S00_AXI_arprot(2 downto 0) => vip_S00_AXI_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => B"0000",
      S00_AXI_arready => vip_S00_AXI_M_AXI_ARREADY,
      S00_AXI_arsize(2 downto 0) => B"110",
      S00_AXI_arvalid => vip_S00_AXI_M_AXI_ARVALID,
      S00_AXI_awaddr(36 downto 0) => vip_S00_AXI_M_AXI_AWADDR(36 downto 0),
      S00_AXI_awburst(1 downto 0) => B"01",
      S00_AXI_awcache(3 downto 0) => B"0011",
      S00_AXI_awid(5 downto 0) => vip_S00_AXI_M_AXI_AWID(5 downto 0),
      S00_AXI_awlen(7 downto 0) => vip_S00_AXI_M_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => '0',
      S00_AXI_awprot(2 downto 0) => vip_S00_AXI_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => B"0000",
      S00_AXI_awready => vip_S00_AXI_M_AXI_AWREADY,
      S00_AXI_awsize(2 downto 0) => B"110",
      S00_AXI_awvalid => vip_S00_AXI_M_AXI_AWVALID,
      S00_AXI_bid(5 downto 0) => vip_S00_AXI_M_AXI_BID(5 downto 0),
      S00_AXI_bready => vip_S00_AXI_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => vip_S00_AXI_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => vip_S00_AXI_M_AXI_BVALID,
      S00_AXI_rdata(511 downto 0) => vip_S00_AXI_M_AXI_RDATA(511 downto 0),
      S00_AXI_rid(5 downto 0) => vip_S00_AXI_M_AXI_RID(5 downto 0),
      S00_AXI_rlast => vip_S00_AXI_M_AXI_RLAST,
      S00_AXI_rready => vip_S00_AXI_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => vip_S00_AXI_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => vip_S00_AXI_M_AXI_RVALID,
      S00_AXI_wdata(511 downto 0) => vip_S00_AXI_M_AXI_WDATA(511 downto 0),
      S00_AXI_wlast => vip_S00_AXI_M_AXI_WLAST,
      S00_AXI_wready => vip_S00_AXI_M_AXI_WREADY,
      S00_AXI_wstrb(63 downto 0) => vip_S00_AXI_M_AXI_WSTRB(63 downto 0),
      S00_AXI_wvalid => vip_S00_AXI_M_AXI_WVALID,
      S01_AXI_araddr(35 downto 0) => vip_S01_AXI_M_AXI_ARADDR(35 downto 0),
      S01_AXI_arburst(1 downto 0) => vip_S01_AXI_M_AXI_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => vip_S01_AXI_M_AXI_ARCACHE(3 downto 0),
      S01_AXI_arid(0) => vip_S01_AXI_M_AXI_ARID,
      S01_AXI_arlen(7 downto 0) => vip_S01_AXI_M_AXI_ARLEN(7 downto 0),
      S01_AXI_arlock(0) => vip_S01_AXI_M_AXI_ARLOCK,
      S01_AXI_arprot(2 downto 0) => vip_S01_AXI_M_AXI_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => vip_S01_AXI_M_AXI_ARQOS(3 downto 0),
      S01_AXI_arready => vip_S01_AXI_M_AXI_ARREADY,
      S01_AXI_arsize(2 downto 0) => vip_S01_AXI_M_AXI_ARSIZE(2 downto 0),
      S01_AXI_arvalid => vip_S01_AXI_M_AXI_ARVALID,
      S01_AXI_awaddr(35 downto 0) => vip_S01_AXI_M_AXI_AWADDR(35 downto 0),
      S01_AXI_awburst(1 downto 0) => vip_S01_AXI_M_AXI_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => vip_S01_AXI_M_AXI_AWCACHE(3 downto 0),
      S01_AXI_awid(0) => vip_S01_AXI_M_AXI_AWID,
      S01_AXI_awlen(7 downto 0) => vip_S01_AXI_M_AXI_AWLEN(7 downto 0),
      S01_AXI_awlock(0) => vip_S01_AXI_M_AXI_AWLOCK,
      S01_AXI_awprot(2 downto 0) => vip_S01_AXI_M_AXI_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => vip_S01_AXI_M_AXI_AWQOS(3 downto 0),
      S01_AXI_awready => vip_S01_AXI_M_AXI_AWREADY,
      S01_AXI_awsize(2 downto 0) => vip_S01_AXI_M_AXI_AWSIZE(2 downto 0),
      S01_AXI_awvalid => vip_S01_AXI_M_AXI_AWVALID,
      S01_AXI_bid(0) => vip_S01_AXI_M_AXI_BID,
      S01_AXI_bready => vip_S01_AXI_M_AXI_BREADY,
      S01_AXI_bresp(1 downto 0) => vip_S01_AXI_M_AXI_BRESP(1 downto 0),
      S01_AXI_bvalid => vip_S01_AXI_M_AXI_BVALID,
      S01_AXI_rdata(31 downto 0) => vip_S01_AXI_M_AXI_RDATA(31 downto 0),
      S01_AXI_rid(0) => vip_S01_AXI_M_AXI_RID,
      S01_AXI_rlast => vip_S01_AXI_M_AXI_RLAST,
      S01_AXI_rready => vip_S01_AXI_M_AXI_RREADY,
      S01_AXI_rresp(1 downto 0) => vip_S01_AXI_M_AXI_RRESP(1 downto 0),
      S01_AXI_rvalid => vip_S01_AXI_M_AXI_RVALID,
      S01_AXI_wdata(31 downto 0) => vip_S01_AXI_M_AXI_WDATA(31 downto 0),
      S01_AXI_wlast => vip_S01_AXI_M_AXI_WLAST,
      S01_AXI_wready => vip_S01_AXI_M_AXI_WREADY,
      S01_AXI_wstrb(3 downto 0) => vip_S01_AXI_M_AXI_WSTRB(3 downto 0),
      S01_AXI_wvalid => vip_S01_AXI_M_AXI_WVALID,
      S02_AXI_araddr(35 downto 0) => vip_S02_AXI_M_AXI_ARADDR(35 downto 0),
      S02_AXI_arburst(1 downto 0) => vip_S02_AXI_M_AXI_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => vip_S02_AXI_M_AXI_ARCACHE(3 downto 0),
      S02_AXI_arid(0) => vip_S02_AXI_M_AXI_ARID,
      S02_AXI_arlen(7 downto 0) => vip_S02_AXI_M_AXI_ARLEN(7 downto 0),
      S02_AXI_arlock(0) => vip_S02_AXI_M_AXI_ARLOCK,
      S02_AXI_arprot(2 downto 0) => vip_S02_AXI_M_AXI_ARPROT(2 downto 0),
      S02_AXI_arqos(3 downto 0) => vip_S02_AXI_M_AXI_ARQOS(3 downto 0),
      S02_AXI_arready => vip_S02_AXI_M_AXI_ARREADY,
      S02_AXI_arsize(2 downto 0) => vip_S02_AXI_M_AXI_ARSIZE(2 downto 0),
      S02_AXI_arvalid => vip_S02_AXI_M_AXI_ARVALID,
      S02_AXI_awaddr(35 downto 0) => vip_S02_AXI_M_AXI_AWADDR(35 downto 0),
      S02_AXI_awburst(1 downto 0) => vip_S02_AXI_M_AXI_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => vip_S02_AXI_M_AXI_AWCACHE(3 downto 0),
      S02_AXI_awid(0) => vip_S02_AXI_M_AXI_AWID,
      S02_AXI_awlen(7 downto 0) => vip_S02_AXI_M_AXI_AWLEN(7 downto 0),
      S02_AXI_awlock(0) => vip_S02_AXI_M_AXI_AWLOCK,
      S02_AXI_awprot(2 downto 0) => vip_S02_AXI_M_AXI_AWPROT(2 downto 0),
      S02_AXI_awqos(3 downto 0) => vip_S02_AXI_M_AXI_AWQOS(3 downto 0),
      S02_AXI_awready => vip_S02_AXI_M_AXI_AWREADY,
      S02_AXI_awsize(2 downto 0) => vip_S02_AXI_M_AXI_AWSIZE(2 downto 0),
      S02_AXI_awvalid => vip_S02_AXI_M_AXI_AWVALID,
      S02_AXI_bid(0) => vip_S02_AXI_M_AXI_BID,
      S02_AXI_bready => vip_S02_AXI_M_AXI_BREADY,
      S02_AXI_bresp(1 downto 0) => vip_S02_AXI_M_AXI_BRESP(1 downto 0),
      S02_AXI_bvalid => vip_S02_AXI_M_AXI_BVALID,
      S02_AXI_rdata(31 downto 0) => vip_S02_AXI_M_AXI_RDATA(31 downto 0),
      S02_AXI_rid(0) => vip_S02_AXI_M_AXI_RID,
      S02_AXI_rlast => vip_S02_AXI_M_AXI_RLAST,
      S02_AXI_rready => vip_S02_AXI_M_AXI_RREADY,
      S02_AXI_rresp(1 downto 0) => vip_S02_AXI_M_AXI_RRESP(1 downto 0),
      S02_AXI_rvalid => vip_S02_AXI_M_AXI_RVALID,
      S02_AXI_wdata(31 downto 0) => vip_S02_AXI_M_AXI_WDATA(31 downto 0),
      S02_AXI_wlast => vip_S02_AXI_M_AXI_WLAST,
      S02_AXI_wready => vip_S02_AXI_M_AXI_WREADY,
      S02_AXI_wstrb(3 downto 0) => vip_S02_AXI_M_AXI_WSTRB(3 downto 0),
      S02_AXI_wvalid => vip_S02_AXI_M_AXI_WVALID,
      aclk => aclk,
      aclk1 => S00_AXI_awready_0,
      aclk2 => aclk1,
      aresetn => interconnect_aresetn1(0)
    );
vip_s00_axi: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_S00_AXI_0
     port map (
      aclk => S00_AXI_awready_0,
      aresetn => interconnect_aresetn(0),
      m_axi_araddr(36 downto 0) => vip_S00_AXI_M_AXI_ARADDR(36 downto 0),
      m_axi_arid(5 downto 0) => vip_S00_AXI_M_AXI_ARID(5 downto 0),
      m_axi_arlen(7 downto 0) => vip_S00_AXI_M_AXI_ARLEN(7 downto 0),
      m_axi_arprot(2 downto 0) => vip_S00_AXI_M_AXI_ARPROT(2 downto 0),
      m_axi_arready => vip_S00_AXI_M_AXI_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_vip_s00_axi_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arvalid => vip_S00_AXI_M_AXI_ARVALID,
      m_axi_awaddr(36 downto 0) => vip_S00_AXI_M_AXI_AWADDR(36 downto 0),
      m_axi_awid(5 downto 0) => vip_S00_AXI_M_AXI_AWID(5 downto 0),
      m_axi_awlen(7 downto 0) => vip_S00_AXI_M_AXI_AWLEN(7 downto 0),
      m_axi_awprot(2 downto 0) => vip_S00_AXI_M_AXI_AWPROT(2 downto 0),
      m_axi_awready => vip_S00_AXI_M_AXI_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_vip_s00_axi_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awvalid => vip_S00_AXI_M_AXI_AWVALID,
      m_axi_bid(5 downto 0) => vip_S00_AXI_M_AXI_BID(5 downto 0),
      m_axi_bready => vip_S00_AXI_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => vip_S00_AXI_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => vip_S00_AXI_M_AXI_BVALID,
      m_axi_rdata(511 downto 0) => vip_S00_AXI_M_AXI_RDATA(511 downto 0),
      m_axi_rid(5 downto 0) => vip_S00_AXI_M_AXI_RID(5 downto 0),
      m_axi_rlast => vip_S00_AXI_M_AXI_RLAST,
      m_axi_rready => vip_S00_AXI_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => vip_S00_AXI_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => vip_S00_AXI_M_AXI_RVALID,
      m_axi_wdata(511 downto 0) => vip_S00_AXI_M_AXI_WDATA(511 downto 0),
      m_axi_wlast => vip_S00_AXI_M_AXI_WLAST,
      m_axi_wready => vip_S00_AXI_M_AXI_WREADY,
      m_axi_wstrb(63 downto 0) => vip_S00_AXI_M_AXI_WSTRB(63 downto 0),
      m_axi_wvalid => vip_S00_AXI_M_AXI_WVALID,
      s_axi_araddr(36 downto 0) => S00_AXI_araddr(36 downto 0),
      s_axi_arid(5 downto 0) => S00_AXI_arid(5 downto 0),
      s_axi_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arready => S00_AXI_arready,
      s_axi_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      s_axi_arvalid => S00_AXI_arvalid,
      s_axi_awaddr(36 downto 0) => S00_AXI_awaddr(36 downto 0),
      s_axi_awid(5 downto 0) => S00_AXI_awid(5 downto 0),
      s_axi_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awready => S00_AXI_awready,
      s_axi_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      s_axi_awvalid => S00_AXI_awvalid,
      s_axi_bid(5 downto 0) => S00_AXI_bid(5 downto 0),
      s_axi_bready => S00_AXI_bready,
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid => S00_AXI_bvalid,
      s_axi_rdata(511 downto 0) => S00_AXI_rdata(511 downto 0),
      s_axi_rid(5 downto 0) => S00_AXI_rid(5 downto 0),
      s_axi_rlast => S00_AXI_rlast,
      s_axi_rready => S00_AXI_rready,
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid => S00_AXI_rvalid,
      s_axi_wdata(511 downto 0) => S00_AXI_wdata(511 downto 0),
      s_axi_wlast => S00_AXI_wlast,
      s_axi_wready => S00_AXI_wready,
      s_axi_wstrb(63 downto 0) => S00_AXI_wstrb(63 downto 0),
      s_axi_wvalid => S00_AXI_wvalid
    );
vip_s01_axi: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_S01_AXI_0
     port map (
      aclk => aclk1,
      aresetn => interconnect_aresetn2(0),
      m_axi_araddr(35 downto 0) => vip_S01_AXI_M_AXI_ARADDR(35 downto 0),
      m_axi_arburst(1 downto 0) => vip_S01_AXI_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => vip_S01_AXI_M_AXI_ARCACHE(3 downto 0),
      m_axi_arid(0) => vip_S01_AXI_M_AXI_ARID,
      m_axi_arlen(7 downto 0) => vip_S01_AXI_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => vip_S01_AXI_M_AXI_ARLOCK,
      m_axi_arprot(2 downto 0) => vip_S01_AXI_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => vip_S01_AXI_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => vip_S01_AXI_M_AXI_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_vip_s01_axi_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => vip_S01_AXI_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => vip_S01_AXI_M_AXI_ARVALID,
      m_axi_awaddr(35 downto 0) => vip_S01_AXI_M_AXI_AWADDR(35 downto 0),
      m_axi_awburst(1 downto 0) => vip_S01_AXI_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => vip_S01_AXI_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(0) => vip_S01_AXI_M_AXI_AWID,
      m_axi_awlen(7 downto 0) => vip_S01_AXI_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => vip_S01_AXI_M_AXI_AWLOCK,
      m_axi_awprot(2 downto 0) => vip_S01_AXI_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => vip_S01_AXI_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => vip_S01_AXI_M_AXI_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_vip_s01_axi_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => vip_S01_AXI_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => vip_S01_AXI_M_AXI_AWVALID,
      m_axi_bid(0) => vip_S01_AXI_M_AXI_BID,
      m_axi_bready => vip_S01_AXI_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => vip_S01_AXI_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => vip_S01_AXI_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => vip_S01_AXI_M_AXI_RDATA(31 downto 0),
      m_axi_rid(0) => vip_S01_AXI_M_AXI_RID,
      m_axi_rlast => vip_S01_AXI_M_AXI_RLAST,
      m_axi_rready => vip_S01_AXI_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => vip_S01_AXI_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => vip_S01_AXI_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => vip_S01_AXI_M_AXI_WDATA(31 downto 0),
      m_axi_wlast => vip_S01_AXI_M_AXI_WLAST,
      m_axi_wready => vip_S01_AXI_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => vip_S01_AXI_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => vip_S01_AXI_M_AXI_WVALID,
      s_axi_araddr(35 downto 0) => S01_AXI_araddr(35 downto 0),
      s_axi_arburst(1 downto 0) => S01_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S01_AXI_arcache(3 downto 0),
      s_axi_arid(0) => S01_AXI_arid(0),
      s_axi_arlen(7 downto 0) => S01_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S01_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S01_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S01_AXI_arqos(3 downto 0),
      s_axi_arready => S01_AXI_arready,
      s_axi_arregion(3 downto 0) => S01_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S01_AXI_arsize(2 downto 0),
      s_axi_arvalid => S01_AXI_arvalid,
      s_axi_awaddr(35 downto 0) => S01_AXI_awaddr(35 downto 0),
      s_axi_awburst(1 downto 0) => S01_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S01_AXI_awcache(3 downto 0),
      s_axi_awid(0) => S01_AXI_awid(0),
      s_axi_awlen(7 downto 0) => S01_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S01_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S01_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S01_AXI_awqos(3 downto 0),
      s_axi_awready => S01_AXI_awready,
      s_axi_awregion(3 downto 0) => S01_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S01_AXI_awsize(2 downto 0),
      s_axi_awvalid => S01_AXI_awvalid,
      s_axi_bid(0) => S01_AXI_bid(0),
      s_axi_bready => S01_AXI_bready,
      s_axi_bresp(1 downto 0) => S01_AXI_bresp(1 downto 0),
      s_axi_bvalid => S01_AXI_bvalid,
      s_axi_rdata(31 downto 0) => S01_AXI_rdata(31 downto 0),
      s_axi_rid(0) => S01_AXI_rid(0),
      s_axi_rlast => S01_AXI_rlast,
      s_axi_rready => S01_AXI_rready,
      s_axi_rresp(1 downto 0) => S01_AXI_rresp(1 downto 0),
      s_axi_rvalid => S01_AXI_rvalid,
      s_axi_wdata(31 downto 0) => S01_AXI_wdata(31 downto 0),
      s_axi_wlast => S01_AXI_wlast,
      s_axi_wready => S01_AXI_wready,
      s_axi_wstrb(3 downto 0) => S01_AXI_wstrb(3 downto 0),
      s_axi_wvalid => S01_AXI_wvalid
    );
vip_s02_axi: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_S02_AXI_0
     port map (
      aclk => aclk1,
      aresetn => interconnect_aresetn2(0),
      m_axi_araddr(35 downto 0) => vip_S02_AXI_M_AXI_ARADDR(35 downto 0),
      m_axi_arburst(1 downto 0) => vip_S02_AXI_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => vip_S02_AXI_M_AXI_ARCACHE(3 downto 0),
      m_axi_arid(0) => vip_S02_AXI_M_AXI_ARID,
      m_axi_arlen(7 downto 0) => vip_S02_AXI_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => vip_S02_AXI_M_AXI_ARLOCK,
      m_axi_arprot(2 downto 0) => vip_S02_AXI_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => vip_S02_AXI_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => vip_S02_AXI_M_AXI_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_vip_s02_axi_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => vip_S02_AXI_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => vip_S02_AXI_M_AXI_ARVALID,
      m_axi_awaddr(35 downto 0) => vip_S02_AXI_M_AXI_AWADDR(35 downto 0),
      m_axi_awburst(1 downto 0) => vip_S02_AXI_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => vip_S02_AXI_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(0) => vip_S02_AXI_M_AXI_AWID,
      m_axi_awlen(7 downto 0) => vip_S02_AXI_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => vip_S02_AXI_M_AXI_AWLOCK,
      m_axi_awprot(2 downto 0) => vip_S02_AXI_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => vip_S02_AXI_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => vip_S02_AXI_M_AXI_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_vip_s02_axi_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => vip_S02_AXI_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => vip_S02_AXI_M_AXI_AWVALID,
      m_axi_bid(0) => vip_S02_AXI_M_AXI_BID,
      m_axi_bready => vip_S02_AXI_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => vip_S02_AXI_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => vip_S02_AXI_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => vip_S02_AXI_M_AXI_RDATA(31 downto 0),
      m_axi_rid(0) => vip_S02_AXI_M_AXI_RID,
      m_axi_rlast => vip_S02_AXI_M_AXI_RLAST,
      m_axi_rready => vip_S02_AXI_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => vip_S02_AXI_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => vip_S02_AXI_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => vip_S02_AXI_M_AXI_WDATA(31 downto 0),
      m_axi_wlast => vip_S02_AXI_M_AXI_WLAST,
      m_axi_wready => vip_S02_AXI_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => vip_S02_AXI_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => vip_S02_AXI_M_AXI_WVALID,
      s_axi_araddr(35 downto 0) => S02_AXI_araddr(35 downto 0),
      s_axi_arburst(1 downto 0) => S02_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S02_AXI_arcache(3 downto 0),
      s_axi_arid(0) => S02_AXI_arid(0),
      s_axi_arlen(7 downto 0) => S02_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S02_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S02_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S02_AXI_arqos(3 downto 0),
      s_axi_arready => S02_AXI_arready,
      s_axi_arregion(3 downto 0) => S02_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S02_AXI_arsize(2 downto 0),
      s_axi_arvalid => S02_AXI_arvalid,
      s_axi_awaddr(35 downto 0) => S02_AXI_awaddr(35 downto 0),
      s_axi_awburst(1 downto 0) => S02_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S02_AXI_awcache(3 downto 0),
      s_axi_awid(0) => S02_AXI_awid(0),
      s_axi_awlen(7 downto 0) => S02_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S02_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S02_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S02_AXI_awqos(3 downto 0),
      s_axi_awready => S02_AXI_awready,
      s_axi_awregion(3 downto 0) => S02_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S02_AXI_awsize(2 downto 0),
      s_axi_awvalid => S02_AXI_awvalid,
      s_axi_bid(0) => S02_AXI_bid(0),
      s_axi_bready => S02_AXI_bready,
      s_axi_bresp(1 downto 0) => S02_AXI_bresp(1 downto 0),
      s_axi_bvalid => S02_AXI_bvalid,
      s_axi_rdata(31 downto 0) => S02_AXI_rdata(31 downto 0),
      s_axi_rid(0) => S02_AXI_rid(0),
      s_axi_rlast => S02_AXI_rlast,
      s_axi_rready => S02_AXI_rready,
      s_axi_rresp(1 downto 0) => S02_AXI_rresp(1 downto 0),
      s_axi_rvalid => S02_AXI_rvalid,
      s_axi_wdata(31 downto 0) => S02_AXI_wdata(31 downto 0),
      s_axi_wlast => S02_AXI_wlast,
      s_axi_wready => S02_AXI_wready,
      s_axi_wstrb(3 downto 0) => S02_AXI_wstrb(3 downto 0),
      s_axi_wvalid => S02_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory_imp_AMH3FI is
  port (
    s_sh_m_a_act_n : out STD_LOGIC;
    s_sh_m_a_ma : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_sh_m_a_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_a_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_a_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_a_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_a_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_a_clk_dn : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_a_clk_dp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_a_par : out STD_LOGIC;
    s_sh_cl_rst_dimm_a_n : out STD_LOGIC;
    s_sh_m_b_act_n : out STD_LOGIC;
    s_sh_m_b_ma : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_sh_m_b_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_b_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_b_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_b_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_b_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_b_clk_dn : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_b_clk_dp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_b_par : out STD_LOGIC;
    s_sh_cl_rst_dimm_b_n : out STD_LOGIC;
    s_sh_m_d_act_n : out STD_LOGIC;
    s_sh_m_d_ma : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_sh_m_d_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_d_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_d_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_d_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_d_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_d_clk_dn : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_d_clk_dp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_d_par : out STD_LOGIC;
    s_sh_cl_rst_dimm_d_n : out STD_LOGIC;
    s_sh_ddr_sh_stat_ack0 : out STD_LOGIC;
    s_sh_ddr_sh_stat_rdata0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_ddr_sh_stat_int0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_ddr_sh_stat_ack1 : out STD_LOGIC;
    s_sh_ddr_sh_stat_rdata1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_ddr_sh_stat_int1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_ddr_sh_stat_ack2 : out STD_LOGIC;
    s_sh_ddr_sh_stat_rdata2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_ddr_sh_stat_int2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_cl_sh_ddr_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_sh_cl_sh_ddr_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_cl_sh_ddr_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_cl_sh_ddr_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_sh_cl_sh_ddr_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_cl_sh_ddr_awvalid : out STD_LOGIC;
    s_sh_cl_sh_ddr_wid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_sh_cl_sh_ddr_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_sh_cl_sh_ddr_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_cl_sh_ddr_wlast : out STD_LOGIC;
    s_sh_cl_sh_ddr_wvalid : out STD_LOGIC;
    s_sh_cl_sh_ddr_bready : out STD_LOGIC;
    s_sh_cl_sh_ddr_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_sh_cl_sh_ddr_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_cl_sh_ddr_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_cl_sh_ddr_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_sh_cl_sh_ddr_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_cl_sh_ddr_arvalid : out STD_LOGIC;
    s_sh_cl_sh_ddr_rready : out STD_LOGIC;
    aclk : out STD_LOGIC;
    ddr4_mem_calib_complete : out STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    s_sh_m_a_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_m_a_ecc : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_m_a_dqs_dp : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    s_sh_m_a_dqs_dn : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    s_sh_m_b_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_m_b_ecc : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_m_b_dqs_dp : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    s_sh_m_b_dqs_dn : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    s_sh_m_d_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_m_d_ecc : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_m_d_dqs_dp : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    s_sh_m_d_dqs_dn : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    s_sh_clk_main_a0 : in STD_LOGIC;
    s_sh_rst_main_n : in STD_LOGIC;
    s_sh_clk_300m_dimm0_dp : in STD_LOGIC;
    s_sh_clk_300m_dimm0_dn : in STD_LOGIC;
    s_sh_clk_300m_dimm1_dp : in STD_LOGIC;
    s_sh_clk_300m_dimm1_dn : in STD_LOGIC;
    s_sh_clk_300m_dimm3_dp : in STD_LOGIC;
    s_sh_clk_300m_dimm3_dn : in STD_LOGIC;
    s_sh_sh_ddr_stat_addr0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_sh_ddr_stat_wr0 : in STD_LOGIC;
    s_sh_sh_ddr_stat_rd0 : in STD_LOGIC;
    s_sh_sh_ddr_stat_wdata0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_sh_ddr_stat_addr1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_sh_ddr_stat_wr1 : in STD_LOGIC;
    s_sh_sh_ddr_stat_rd1 : in STD_LOGIC;
    s_sh_sh_ddr_stat_wdata1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_sh_ddr_stat_addr2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_sh_ddr_stat_wr2 : in STD_LOGIC;
    s_sh_sh_ddr_stat_rd2 : in STD_LOGIC;
    s_sh_sh_ddr_stat_wdata2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_sh_cl_ddr_awready : in STD_LOGIC;
    s_sh_sh_cl_ddr_wready : in STD_LOGIC;
    s_sh_sh_cl_ddr_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_sh_sh_cl_ddr_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_sh_cl_ddr_bvalid : in STD_LOGIC;
    s_sh_sh_cl_ddr_arready : in STD_LOGIC;
    s_sh_sh_cl_ddr_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_sh_sh_cl_ddr_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_sh_sh_cl_ddr_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_sh_cl_ddr_rlast : in STD_LOGIC;
    s_sh_sh_cl_ddr_rvalid : in STD_LOGIC;
    s_sh_sh_cl_ddr_is_ready : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory_imp_AMH3FI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory_imp_AMH3FI is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_aws_0 is
  port (
    clk_main_a0 : in STD_LOGIC;
    rst_main_n : in STD_LOGIC;
    CLK_300M_DIMM0_DP : in STD_LOGIC;
    CLK_300M_DIMM0_DN : in STD_LOGIC;
    M_A_ACT_N : out STD_LOGIC;
    M_A_MA : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M_A_BA : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_A_BG : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_A_CKE : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_A_ODT : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_A_CS_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_A_CLK_DN : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_A_CLK_DP : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_A_PAR : out STD_LOGIC;
    M_A_DQ : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    M_A_ECC : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    M_A_DQS_DP : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    M_A_DQS_DN : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    cl_RST_DIMM_A_N : out STD_LOGIC;
    CLK_300M_DIMM1_DP : in STD_LOGIC;
    CLK_300M_DIMM1_DN : in STD_LOGIC;
    M_B_ACT_N : out STD_LOGIC;
    M_B_MA : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M_B_BA : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_B_BG : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_B_CKE : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_B_ODT : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_B_CS_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_B_CLK_DN : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_B_CLK_DP : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_B_PAR : out STD_LOGIC;
    M_B_DQ : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    M_B_ECC : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    M_B_DQS_DP : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    M_B_DQS_DN : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    cl_RST_DIMM_B_N : out STD_LOGIC;
    CLK_300M_DIMM3_DP : in STD_LOGIC;
    CLK_300M_DIMM3_DN : in STD_LOGIC;
    M_D_ACT_N : out STD_LOGIC;
    M_D_MA : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M_D_BA : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_D_BG : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_D_CKE : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_D_ODT : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_D_CS_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_D_CLK_DN : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_D_CLK_DP : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_D_PAR : out STD_LOGIC;
    M_D_DQ : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    M_D_ECC : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    M_D_DQS_DP : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    M_D_DQS_DN : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    cl_RST_DIMM_D_N : out STD_LOGIC;
    sh_ddr_stat_addr0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sh_ddr_stat_wr0 : in STD_LOGIC;
    sh_ddr_stat_rd0 : in STD_LOGIC;
    sh_ddr_stat_wdata0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr_sh_stat_ack0 : out STD_LOGIC;
    ddr_sh_stat_rdata0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr_sh_stat_int0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sh_ddr_stat_addr1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sh_ddr_stat_wr1 : in STD_LOGIC;
    sh_ddr_stat_rd1 : in STD_LOGIC;
    sh_ddr_stat_wdata1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr_sh_stat_ack1 : out STD_LOGIC;
    ddr_sh_stat_rdata1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr_sh_stat_int1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sh_ddr_stat_addr2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sh_ddr_stat_wr2 : in STD_LOGIC;
    sh_ddr_stat_rd2 : in STD_LOGIC;
    sh_ddr_stat_wdata2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr_sh_stat_ack2 : out STD_LOGIC;
    ddr_sh_stat_rdata2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr_sh_stat_int2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cl_sh_ddr_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cl_sh_ddr_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    cl_sh_ddr_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cl_sh_ddr_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cl_sh_ddr_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cl_sh_ddr_awvalid : out STD_LOGIC;
    sh_cl_ddr_awready : in STD_LOGIC;
    cl_sh_ddr_wid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cl_sh_ddr_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    cl_sh_ddr_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    cl_sh_ddr_wlast : out STD_LOGIC;
    cl_sh_ddr_wvalid : out STD_LOGIC;
    sh_cl_ddr_wready : in STD_LOGIC;
    sh_cl_ddr_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sh_cl_ddr_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sh_cl_ddr_bvalid : in STD_LOGIC;
    cl_sh_ddr_bready : out STD_LOGIC;
    cl_sh_ddr_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cl_sh_ddr_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    cl_sh_ddr_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cl_sh_ddr_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cl_sh_ddr_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cl_sh_ddr_arvalid : out STD_LOGIC;
    sh_cl_ddr_arready : in STD_LOGIC;
    sh_cl_ddr_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sh_cl_ddr_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    sh_cl_ddr_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sh_cl_ddr_rlast : in STD_LOGIC;
    sh_cl_ddr_rvalid : in STD_LOGIC;
    cl_sh_ddr_rready : out STD_LOGIC;
    sh_cl_ddr_is_ready : in STD_LOGIC;
    clk_main_a0_out : out STD_LOGIC;
    rst_main_n_out : out STD_LOGIC;
    s_axi_ddrc_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_ddrc_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_ddrc_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ddrc_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ddrc_awvalid : in STD_LOGIC;
    s_axi_ddrc_awready : out STD_LOGIC;
    s_axi_ddrc_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_ddrc_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_ddrc_wlast : in STD_LOGIC;
    s_axi_ddrc_wvalid : in STD_LOGIC;
    s_axi_ddrc_wready : out STD_LOGIC;
    s_axi_ddrc_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_ddrc_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ddrc_bvalid : out STD_LOGIC;
    s_axi_ddrc_bready : in STD_LOGIC;
    s_axi_ddrc_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_ddrc_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_ddrc_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ddrc_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ddrc_arvalid : in STD_LOGIC;
    s_axi_ddrc_arready : out STD_LOGIC;
    s_axi_ddrc_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_ddrc_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_ddrc_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ddrc_rlast : out STD_LOGIC;
    s_axi_ddrc_rvalid : out STD_LOGIC;
    s_axi_ddrc_rready : in STD_LOGIC;
    ddrc_is_ready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_aws_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_calib_reduce_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_calib_reduce_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_DDR4_MEM00_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_DDR4_MEM00_0;
  signal \^aclk\ : STD_LOGIC;
  signal aws_ddrc_is_ready : STD_LOGIC;
  signal aws_rst_main_n_out : STD_LOGIC;
  signal calib_concat_dout : STD_LOGIC;
  signal vip_DDR4_MEM00_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal vip_DDR4_MEM00_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vip_DDR4_MEM00_M_AXI_ARREADY : STD_LOGIC;
  signal vip_DDR4_MEM00_M_AXI_ARVALID : STD_LOGIC;
  signal vip_DDR4_MEM00_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal vip_DDR4_MEM00_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vip_DDR4_MEM00_M_AXI_AWREADY : STD_LOGIC;
  signal vip_DDR4_MEM00_M_AXI_AWVALID : STD_LOGIC;
  signal vip_DDR4_MEM00_M_AXI_BREADY : STD_LOGIC;
  signal vip_DDR4_MEM00_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_DDR4_MEM00_M_AXI_BVALID : STD_LOGIC;
  signal vip_DDR4_MEM00_M_AXI_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal vip_DDR4_MEM00_M_AXI_RLAST : STD_LOGIC;
  signal vip_DDR4_MEM00_M_AXI_RREADY : STD_LOGIC;
  signal vip_DDR4_MEM00_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vip_DDR4_MEM00_M_AXI_RVALID : STD_LOGIC;
  signal vip_DDR4_MEM00_M_AXI_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal vip_DDR4_MEM00_M_AXI_WLAST : STD_LOGIC;
  signal vip_DDR4_MEM00_M_AXI_WREADY : STD_LOGIC;
  signal vip_DDR4_MEM00_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal vip_DDR4_MEM00_M_AXI_WVALID : STD_LOGIC;
  signal NLW_aws_s_axi_ddrc_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_aws_s_axi_ddrc_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_vip_DDR4_MEM00_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vip_DDR4_MEM00_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_DDR4_MEM00_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_vip_DDR4_MEM00_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vip_DDR4_MEM00_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_DDR4_MEM00_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vip_DDR4_MEM00_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vip_DDR4_MEM00_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_vip_DDR4_MEM00_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vip_DDR4_MEM00_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of aws : label is "aws_v1_0_3_top,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calib_concat : label is "bd_3329_calib_concat_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calib_concat : label is "yes";
  attribute X_CORE_INFO of calib_concat : label is "xlconcat_v2_1_4_xlconcat,Vivado 2020.2";
  attribute X_CORE_INFO of calib_reduce : label is "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2020.2";
  attribute X_CORE_INFO of vip_DDR4_MEM00 : label is "axi_vip_v1_1_8_top,Vivado 2020.2";
begin
  aclk <= \^aclk\;
aws: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_aws_0
     port map (
      CLK_300M_DIMM0_DN => s_sh_clk_300m_dimm0_dn,
      CLK_300M_DIMM0_DP => s_sh_clk_300m_dimm0_dp,
      CLK_300M_DIMM1_DN => s_sh_clk_300m_dimm1_dn,
      CLK_300M_DIMM1_DP => s_sh_clk_300m_dimm1_dp,
      CLK_300M_DIMM3_DN => s_sh_clk_300m_dimm3_dn,
      CLK_300M_DIMM3_DP => s_sh_clk_300m_dimm3_dp,
      M_A_ACT_N => s_sh_m_a_act_n,
      M_A_BA(1 downto 0) => s_sh_m_a_ba(1 downto 0),
      M_A_BG(1 downto 0) => s_sh_m_a_bg(1 downto 0),
      M_A_CKE(0) => s_sh_m_a_cke(0),
      M_A_CLK_DN(0) => s_sh_m_a_clk_dn(0),
      M_A_CLK_DP(0) => s_sh_m_a_clk_dp(0),
      M_A_CS_N(0) => s_sh_m_a_cs_n(0),
      M_A_DQ(63 downto 0) => s_sh_m_a_dq(63 downto 0),
      M_A_DQS_DN(17 downto 0) => s_sh_m_a_dqs_dn(17 downto 0),
      M_A_DQS_DP(17 downto 0) => s_sh_m_a_dqs_dp(17 downto 0),
      M_A_ECC(7 downto 0) => s_sh_m_a_ecc(7 downto 0),
      M_A_MA(16 downto 0) => s_sh_m_a_ma(16 downto 0),
      M_A_ODT(0) => s_sh_m_a_odt(0),
      M_A_PAR => s_sh_m_a_par,
      M_B_ACT_N => s_sh_m_b_act_n,
      M_B_BA(1 downto 0) => s_sh_m_b_ba(1 downto 0),
      M_B_BG(1 downto 0) => s_sh_m_b_bg(1 downto 0),
      M_B_CKE(0) => s_sh_m_b_cke(0),
      M_B_CLK_DN(0) => s_sh_m_b_clk_dn(0),
      M_B_CLK_DP(0) => s_sh_m_b_clk_dp(0),
      M_B_CS_N(0) => s_sh_m_b_cs_n(0),
      M_B_DQ(63 downto 0) => s_sh_m_b_dq(63 downto 0),
      M_B_DQS_DN(17 downto 0) => s_sh_m_b_dqs_dn(17 downto 0),
      M_B_DQS_DP(17 downto 0) => s_sh_m_b_dqs_dp(17 downto 0),
      M_B_ECC(7 downto 0) => s_sh_m_b_ecc(7 downto 0),
      M_B_MA(16 downto 0) => s_sh_m_b_ma(16 downto 0),
      M_B_ODT(0) => s_sh_m_b_odt(0),
      M_B_PAR => s_sh_m_b_par,
      M_D_ACT_N => s_sh_m_d_act_n,
      M_D_BA(1 downto 0) => s_sh_m_d_ba(1 downto 0),
      M_D_BG(1 downto 0) => s_sh_m_d_bg(1 downto 0),
      M_D_CKE(0) => s_sh_m_d_cke(0),
      M_D_CLK_DN(0) => s_sh_m_d_clk_dn(0),
      M_D_CLK_DP(0) => s_sh_m_d_clk_dp(0),
      M_D_CS_N(0) => s_sh_m_d_cs_n(0),
      M_D_DQ(63 downto 0) => s_sh_m_d_dq(63 downto 0),
      M_D_DQS_DN(17 downto 0) => s_sh_m_d_dqs_dn(17 downto 0),
      M_D_DQS_DP(17 downto 0) => s_sh_m_d_dqs_dp(17 downto 0),
      M_D_ECC(7 downto 0) => s_sh_m_d_ecc(7 downto 0),
      M_D_MA(16 downto 0) => s_sh_m_d_ma(16 downto 0),
      M_D_ODT(0) => s_sh_m_d_odt(0),
      M_D_PAR => s_sh_m_d_par,
      cl_RST_DIMM_A_N => s_sh_cl_rst_dimm_a_n,
      cl_RST_DIMM_B_N => s_sh_cl_rst_dimm_b_n,
      cl_RST_DIMM_D_N => s_sh_cl_rst_dimm_d_n,
      cl_sh_ddr_araddr(63 downto 0) => s_sh_cl_sh_ddr_araddr(63 downto 0),
      cl_sh_ddr_arburst(1 downto 0) => s_sh_cl_sh_ddr_arburst(1 downto 0),
      cl_sh_ddr_arid(15 downto 0) => s_sh_cl_sh_ddr_arid(15 downto 0),
      cl_sh_ddr_arlen(7 downto 0) => s_sh_cl_sh_ddr_arlen(7 downto 0),
      cl_sh_ddr_arsize(2 downto 0) => s_sh_cl_sh_ddr_arsize(2 downto 0),
      cl_sh_ddr_arvalid => s_sh_cl_sh_ddr_arvalid,
      cl_sh_ddr_awaddr(63 downto 0) => s_sh_cl_sh_ddr_awaddr(63 downto 0),
      cl_sh_ddr_awburst(1 downto 0) => s_sh_cl_sh_ddr_awburst(1 downto 0),
      cl_sh_ddr_awid(15 downto 0) => s_sh_cl_sh_ddr_awid(15 downto 0),
      cl_sh_ddr_awlen(7 downto 0) => s_sh_cl_sh_ddr_awlen(7 downto 0),
      cl_sh_ddr_awsize(2 downto 0) => s_sh_cl_sh_ddr_awsize(2 downto 0),
      cl_sh_ddr_awvalid => s_sh_cl_sh_ddr_awvalid,
      cl_sh_ddr_bready => s_sh_cl_sh_ddr_bready,
      cl_sh_ddr_rready => s_sh_cl_sh_ddr_rready,
      cl_sh_ddr_wdata(511 downto 0) => s_sh_cl_sh_ddr_wdata(511 downto 0),
      cl_sh_ddr_wid(15 downto 0) => s_sh_cl_sh_ddr_wid(15 downto 0),
      cl_sh_ddr_wlast => s_sh_cl_sh_ddr_wlast,
      cl_sh_ddr_wstrb(63 downto 0) => s_sh_cl_sh_ddr_wstrb(63 downto 0),
      cl_sh_ddr_wvalid => s_sh_cl_sh_ddr_wvalid,
      clk_main_a0 => s_sh_clk_main_a0,
      clk_main_a0_out => \^aclk\,
      ddr_sh_stat_ack0 => s_sh_ddr_sh_stat_ack0,
      ddr_sh_stat_ack1 => s_sh_ddr_sh_stat_ack1,
      ddr_sh_stat_ack2 => s_sh_ddr_sh_stat_ack2,
      ddr_sh_stat_int0(7 downto 0) => s_sh_ddr_sh_stat_int0(7 downto 0),
      ddr_sh_stat_int1(7 downto 0) => s_sh_ddr_sh_stat_int1(7 downto 0),
      ddr_sh_stat_int2(7 downto 0) => s_sh_ddr_sh_stat_int2(7 downto 0),
      ddr_sh_stat_rdata0(31 downto 0) => s_sh_ddr_sh_stat_rdata0(31 downto 0),
      ddr_sh_stat_rdata1(31 downto 0) => s_sh_ddr_sh_stat_rdata1(31 downto 0),
      ddr_sh_stat_rdata2(31 downto 0) => s_sh_ddr_sh_stat_rdata2(31 downto 0),
      ddrc_is_ready => aws_ddrc_is_ready,
      rst_main_n => s_sh_rst_main_n,
      rst_main_n_out => aws_rst_main_n_out,
      s_axi_ddrc_araddr(63 downto 0) => vip_DDR4_MEM00_M_AXI_ARADDR(63 downto 0),
      s_axi_ddrc_arid(15 downto 0) => B"0000000000000000",
      s_axi_ddrc_arlen(7 downto 0) => vip_DDR4_MEM00_M_AXI_ARLEN(7 downto 0),
      s_axi_ddrc_arready => vip_DDR4_MEM00_M_AXI_ARREADY,
      s_axi_ddrc_arsize(2 downto 0) => B"110",
      s_axi_ddrc_arvalid => vip_DDR4_MEM00_M_AXI_ARVALID,
      s_axi_ddrc_awaddr(63 downto 0) => vip_DDR4_MEM00_M_AXI_AWADDR(63 downto 0),
      s_axi_ddrc_awid(15 downto 0) => B"0000000000000000",
      s_axi_ddrc_awlen(7 downto 0) => vip_DDR4_MEM00_M_AXI_AWLEN(7 downto 0),
      s_axi_ddrc_awready => vip_DDR4_MEM00_M_AXI_AWREADY,
      s_axi_ddrc_awsize(2 downto 0) => B"110",
      s_axi_ddrc_awvalid => vip_DDR4_MEM00_M_AXI_AWVALID,
      s_axi_ddrc_bid(15 downto 0) => NLW_aws_s_axi_ddrc_bid_UNCONNECTED(15 downto 0),
      s_axi_ddrc_bready => vip_DDR4_MEM00_M_AXI_BREADY,
      s_axi_ddrc_bresp(1 downto 0) => vip_DDR4_MEM00_M_AXI_BRESP(1 downto 0),
      s_axi_ddrc_bvalid => vip_DDR4_MEM00_M_AXI_BVALID,
      s_axi_ddrc_rdata(511 downto 0) => vip_DDR4_MEM00_M_AXI_RDATA(511 downto 0),
      s_axi_ddrc_rid(15 downto 0) => NLW_aws_s_axi_ddrc_rid_UNCONNECTED(15 downto 0),
      s_axi_ddrc_rlast => vip_DDR4_MEM00_M_AXI_RLAST,
      s_axi_ddrc_rready => vip_DDR4_MEM00_M_AXI_RREADY,
      s_axi_ddrc_rresp(1 downto 0) => vip_DDR4_MEM00_M_AXI_RRESP(1 downto 0),
      s_axi_ddrc_rvalid => vip_DDR4_MEM00_M_AXI_RVALID,
      s_axi_ddrc_wdata(511 downto 0) => vip_DDR4_MEM00_M_AXI_WDATA(511 downto 0),
      s_axi_ddrc_wlast => vip_DDR4_MEM00_M_AXI_WLAST,
      s_axi_ddrc_wready => vip_DDR4_MEM00_M_AXI_WREADY,
      s_axi_ddrc_wstrb(63 downto 0) => vip_DDR4_MEM00_M_AXI_WSTRB(63 downto 0),
      s_axi_ddrc_wvalid => vip_DDR4_MEM00_M_AXI_WVALID,
      sh_cl_ddr_arready => s_sh_sh_cl_ddr_arready,
      sh_cl_ddr_awready => s_sh_sh_cl_ddr_awready,
      sh_cl_ddr_bid(15 downto 0) => s_sh_sh_cl_ddr_bid(15 downto 0),
      sh_cl_ddr_bresp(1 downto 0) => s_sh_sh_cl_ddr_bresp(1 downto 0),
      sh_cl_ddr_bvalid => s_sh_sh_cl_ddr_bvalid,
      sh_cl_ddr_is_ready => s_sh_sh_cl_ddr_is_ready,
      sh_cl_ddr_rdata(511 downto 0) => s_sh_sh_cl_ddr_rdata(511 downto 0),
      sh_cl_ddr_rid(15 downto 0) => s_sh_sh_cl_ddr_rid(15 downto 0),
      sh_cl_ddr_rlast => s_sh_sh_cl_ddr_rlast,
      sh_cl_ddr_rresp(1 downto 0) => s_sh_sh_cl_ddr_rresp(1 downto 0),
      sh_cl_ddr_rvalid => s_sh_sh_cl_ddr_rvalid,
      sh_cl_ddr_wready => s_sh_sh_cl_ddr_wready,
      sh_ddr_stat_addr0(7 downto 0) => s_sh_sh_ddr_stat_addr0(7 downto 0),
      sh_ddr_stat_addr1(7 downto 0) => s_sh_sh_ddr_stat_addr1(7 downto 0),
      sh_ddr_stat_addr2(7 downto 0) => s_sh_sh_ddr_stat_addr2(7 downto 0),
      sh_ddr_stat_rd0 => s_sh_sh_ddr_stat_rd0,
      sh_ddr_stat_rd1 => s_sh_sh_ddr_stat_rd1,
      sh_ddr_stat_rd2 => s_sh_sh_ddr_stat_rd2,
      sh_ddr_stat_wdata0(31 downto 0) => s_sh_sh_ddr_stat_wdata0(31 downto 0),
      sh_ddr_stat_wdata1(31 downto 0) => s_sh_sh_ddr_stat_wdata1(31 downto 0),
      sh_ddr_stat_wdata2(31 downto 0) => s_sh_sh_ddr_stat_wdata2(31 downto 0),
      sh_ddr_stat_wr0 => s_sh_sh_ddr_stat_wr0,
      sh_ddr_stat_wr1 => s_sh_sh_ddr_stat_wr1,
      sh_ddr_stat_wr2 => s_sh_sh_ddr_stat_wr2
    );
calib_concat: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_calib_concat_0
     port map (
      In0(0) => aws_ddrc_is_ready,
      dout(0) => calib_concat_dout
    );
calib_reduce: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_calib_reduce_0
     port map (
      Op1(0) => calib_concat_dout,
      Res => ddr4_mem_calib_complete
    );
vip_DDR4_MEM00: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_vip_DDR4_MEM00_0
     port map (
      aclk => \^aclk\,
      aresetn => aws_rst_main_n_out,
      m_axi_araddr(63 downto 0) => vip_DDR4_MEM00_M_AXI_ARADDR(63 downto 0),
      m_axi_arburst(1 downto 0) => NLW_vip_DDR4_MEM00_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_vip_DDR4_MEM00_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arlen(7 downto 0) => vip_DDR4_MEM00_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => NLW_vip_DDR4_MEM00_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_vip_DDR4_MEM00_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_vip_DDR4_MEM00_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => vip_DDR4_MEM00_M_AXI_ARREADY,
      m_axi_arvalid => vip_DDR4_MEM00_M_AXI_ARVALID,
      m_axi_awaddr(63 downto 0) => vip_DDR4_MEM00_M_AXI_AWADDR(63 downto 0),
      m_axi_awburst(1 downto 0) => NLW_vip_DDR4_MEM00_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_vip_DDR4_MEM00_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awlen(7 downto 0) => vip_DDR4_MEM00_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => NLW_vip_DDR4_MEM00_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_vip_DDR4_MEM00_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_vip_DDR4_MEM00_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => vip_DDR4_MEM00_M_AXI_AWREADY,
      m_axi_awvalid => vip_DDR4_MEM00_M_AXI_AWVALID,
      m_axi_bready => vip_DDR4_MEM00_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => vip_DDR4_MEM00_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => vip_DDR4_MEM00_M_AXI_BVALID,
      m_axi_rdata(511 downto 0) => vip_DDR4_MEM00_M_AXI_RDATA(511 downto 0),
      m_axi_rlast => vip_DDR4_MEM00_M_AXI_RLAST,
      m_axi_rready => vip_DDR4_MEM00_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => vip_DDR4_MEM00_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => vip_DDR4_MEM00_M_AXI_RVALID,
      m_axi_wdata(511 downto 0) => vip_DDR4_MEM00_M_AXI_WDATA(511 downto 0),
      m_axi_wlast => vip_DDR4_MEM00_M_AXI_WLAST,
      m_axi_wready => vip_DDR4_MEM00_M_AXI_WREADY,
      m_axi_wstrb(63 downto 0) => vip_DDR4_MEM00_M_AXI_WSTRB(63 downto 0),
      m_axi_wvalid => vip_DDR4_MEM00_M_AXI_WVALID,
      s_axi_araddr(63 downto 0) => S_AXI_araddr(63 downto 0),
      s_axi_arburst(1 downto 0) => S_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S_AXI_arcache(3 downto 0),
      s_axi_arlen(7 downto 0) => S_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S_AXI_arqos(3 downto 0),
      s_axi_arready => S_AXI_arready,
      s_axi_arvalid => S_AXI_arvalid,
      s_axi_awaddr(63 downto 0) => S_AXI_awaddr(63 downto 0),
      s_axi_awburst(1 downto 0) => S_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S_AXI_awcache(3 downto 0),
      s_axi_awlen(7 downto 0) => S_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S_AXI_awqos(3 downto 0),
      s_axi_awready => S_AXI_awready,
      s_axi_awvalid => S_AXI_awvalid,
      s_axi_bready => S_AXI_bready,
      s_axi_bresp(1 downto 0) => S_AXI_bresp(1 downto 0),
      s_axi_bvalid => S_AXI_bvalid,
      s_axi_rdata(511 downto 0) => S_AXI_rdata(511 downto 0),
      s_axi_rlast => S_AXI_rlast,
      s_axi_rready => S_AXI_rready,
      s_axi_rresp(1 downto 0) => S_AXI_rresp(1 downto 0),
      s_axi_rvalid => S_AXI_rvalid,
      s_axi_wdata(511 downto 0) => S_AXI_wdata(511 downto 0),
      s_axi_wlast => S_AXI_wlast,
      s_axi_wready => S_AXI_wready,
      s_axi_wstrb(63 downto 0) => S_AXI_wstrb(63 downto 0),
      s_axi_wvalid => S_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_imp_57Y9M4 is
  port (
    interconnect_aresetn2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_imp_57Y9M4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_imp_57Y9M4 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_psr_aclk1_SLR1_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_psr_aclk1_SLR1_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_psr_aclk_SLR0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_psr_aclk_SLR0_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_psr_aclk_SLR1_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_psr_aclk_SLR1_0;
  signal NLW_psr_aclk1_SLR1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psr_aclk1_SLR1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psr_aclk1_SLR1_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psr_aclk1_SLR1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psr_aclk_SLR0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psr_aclk_SLR0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psr_aclk_SLR0_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psr_aclk_SLR0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psr_aclk_SLR1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psr_aclk_SLR1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psr_aclk_SLR1_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psr_aclk_SLR1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of psr_aclk1_SLR1 : label is "proc_sys_reset,Vivado 2020.2";
  attribute X_CORE_INFO of psr_aclk_SLR0 : label is "proc_sys_reset,Vivado 2020.2";
  attribute X_CORE_INFO of psr_aclk_SLR1 : label is "proc_sys_reset,Vivado 2020.2";
begin
psr_aclk1_SLR1: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_psr_aclk1_SLR1_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_psr_aclk1_SLR1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => aresetn,
      interconnect_aresetn(0) => interconnect_aresetn2(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psr_aclk1_SLR1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psr_aclk1_SLR1_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psr_aclk1_SLR1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => aclk1
    );
psr_aclk_SLR0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_psr_aclk_SLR0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_psr_aclk_SLR0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => aresetn,
      interconnect_aresetn(0) => interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psr_aclk_SLR0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psr_aclk_SLR0_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psr_aclk_SLR0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => aclk
    );
psr_aclk_SLR1: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329_psr_aclk_SLR1_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_psr_aclk_SLR1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => aresetn,
      interconnect_aresetn(0) => interconnect_aresetn1(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psr_aclk_SLR1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psr_aclk_SLR1_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psr_aclk_SLR1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329 is
  port (
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 36 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 36 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC;
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rvalid : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ddr4_mem_calib_complete : out STD_LOGIC;
    s_sh_cl_rst_dimm_a_n : out STD_LOGIC;
    s_sh_cl_rst_dimm_b_n : out STD_LOGIC;
    s_sh_cl_rst_dimm_d_n : out STD_LOGIC;
    s_sh_cl_sh_ddr_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_cl_sh_ddr_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_cl_sh_ddr_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_sh_cl_sh_ddr_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_cl_sh_ddr_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_sh_cl_sh_ddr_arvalid : out STD_LOGIC;
    s_sh_cl_sh_ddr_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_cl_sh_ddr_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_cl_sh_ddr_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_sh_cl_sh_ddr_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_cl_sh_ddr_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_sh_cl_sh_ddr_awvalid : out STD_LOGIC;
    s_sh_cl_sh_ddr_bready : out STD_LOGIC;
    s_sh_cl_sh_ddr_rready : out STD_LOGIC;
    s_sh_cl_sh_ddr_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_sh_cl_sh_ddr_wid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_sh_cl_sh_ddr_wlast : out STD_LOGIC;
    s_sh_cl_sh_ddr_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_cl_sh_ddr_wvalid : out STD_LOGIC;
    s_sh_clk_300m_dimm0_dn : in STD_LOGIC;
    s_sh_clk_300m_dimm0_dp : in STD_LOGIC;
    s_sh_clk_300m_dimm1_dn : in STD_LOGIC;
    s_sh_clk_300m_dimm1_dp : in STD_LOGIC;
    s_sh_clk_300m_dimm3_dn : in STD_LOGIC;
    s_sh_clk_300m_dimm3_dp : in STD_LOGIC;
    s_sh_clk_main_a0 : in STD_LOGIC;
    s_sh_ddr_sh_stat_ack0 : out STD_LOGIC;
    s_sh_ddr_sh_stat_ack1 : out STD_LOGIC;
    s_sh_ddr_sh_stat_ack2 : out STD_LOGIC;
    s_sh_ddr_sh_stat_int0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_ddr_sh_stat_int1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_ddr_sh_stat_int2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_ddr_sh_stat_rdata0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_ddr_sh_stat_rdata1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_ddr_sh_stat_rdata2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_m_a_act_n : out STD_LOGIC;
    s_sh_m_a_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_a_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_a_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_a_clk_dn : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_a_clk_dp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_a_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_a_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_m_a_dqs_dn : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    s_sh_m_a_dqs_dp : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    s_sh_m_a_ecc : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_m_a_ma : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_sh_m_a_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_a_par : out STD_LOGIC;
    s_sh_m_b_act_n : out STD_LOGIC;
    s_sh_m_b_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_b_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_b_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_b_clk_dn : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_b_clk_dp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_b_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_b_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_m_b_dqs_dn : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    s_sh_m_b_dqs_dp : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    s_sh_m_b_ecc : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_m_b_ma : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_sh_m_b_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_b_par : out STD_LOGIC;
    s_sh_m_d_act_n : out STD_LOGIC;
    s_sh_m_d_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_d_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_d_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_d_clk_dn : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_d_clk_dp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_d_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_d_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_m_d_dqs_dn : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    s_sh_m_d_dqs_dp : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    s_sh_m_d_ecc : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_m_d_ma : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_sh_m_d_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_d_par : out STD_LOGIC;
    s_sh_rst_main_n : in STD_LOGIC;
    s_sh_sh_cl_ddr_arready : in STD_LOGIC;
    s_sh_sh_cl_ddr_awready : in STD_LOGIC;
    s_sh_sh_cl_ddr_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_sh_sh_cl_ddr_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_sh_cl_ddr_bvalid : in STD_LOGIC;
    s_sh_sh_cl_ddr_is_ready : in STD_LOGIC;
    s_sh_sh_cl_ddr_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_sh_sh_cl_ddr_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_sh_sh_cl_ddr_rlast : in STD_LOGIC;
    s_sh_sh_cl_ddr_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_sh_cl_ddr_rvalid : in STD_LOGIC;
    s_sh_sh_cl_ddr_wready : in STD_LOGIC;
    s_sh_sh_ddr_stat_addr0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_sh_ddr_stat_addr1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_sh_ddr_stat_addr2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_sh_ddr_stat_rd0 : in STD_LOGIC;
    s_sh_sh_ddr_stat_rd1 : in STD_LOGIC;
    s_sh_sh_ddr_stat_rd2 : in STD_LOGIC;
    s_sh_sh_ddr_stat_wdata0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_sh_ddr_stat_wdata1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_sh_ddr_stat_wdata2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_sh_ddr_stat_wr0 : in STD_LOGIC;
    s_sh_sh_ddr_stat_wr1 : in STD_LOGIC;
    s_sh_sh_ddr_stat_wr2 : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329 : entity is "cl_HIP_0.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329 is
  signal aws_clk_main_a0_out : STD_LOGIC;
  signal interconnect_ddr4_mem00_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal interconnect_ddr4_mem00_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_ddr4_mem00_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_ddr4_mem00_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_ddr4_mem00_M00_AXI_ARLOCK : STD_LOGIC;
  signal interconnect_ddr4_mem00_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_ddr4_mem00_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_ddr4_mem00_M00_AXI_ARREADY : STD_LOGIC;
  signal interconnect_ddr4_mem00_M00_AXI_ARVALID : STD_LOGIC;
  signal interconnect_ddr4_mem00_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal interconnect_ddr4_mem00_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_ddr4_mem00_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_ddr4_mem00_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_ddr4_mem00_M00_AXI_AWLOCK : STD_LOGIC;
  signal interconnect_ddr4_mem00_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_ddr4_mem00_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_ddr4_mem00_M00_AXI_AWREADY : STD_LOGIC;
  signal interconnect_ddr4_mem00_M00_AXI_AWVALID : STD_LOGIC;
  signal interconnect_ddr4_mem00_M00_AXI_BREADY : STD_LOGIC;
  signal interconnect_ddr4_mem00_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_ddr4_mem00_M00_AXI_BVALID : STD_LOGIC;
  signal interconnect_ddr4_mem00_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal interconnect_ddr4_mem00_M00_AXI_RLAST : STD_LOGIC;
  signal interconnect_ddr4_mem00_M00_AXI_RREADY : STD_LOGIC;
  signal interconnect_ddr4_mem00_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_ddr4_mem00_M00_AXI_RVALID : STD_LOGIC;
  signal interconnect_ddr4_mem00_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal interconnect_ddr4_mem00_M00_AXI_WLAST : STD_LOGIC;
  signal interconnect_ddr4_mem00_M00_AXI_WREADY : STD_LOGIC;
  signal interconnect_ddr4_mem00_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal interconnect_ddr4_mem00_M00_AXI_WVALID : STD_LOGIC;
  signal psr_aclk1_SLR1_interconnect_aresetn : STD_LOGIC;
  signal psr_aclk_SLR0_interconnect_aresetn : STD_LOGIC;
  signal psr_aclk_SLR1_interconnect_aresetn : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S00_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of S00_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of S00_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of S00_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of S00_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of S00_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of S00_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RLAST";
  attribute X_INTERFACE_INFO of S00_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_INFO of S00_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of S00_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WLAST";
  attribute X_INTERFACE_INFO of S00_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of S00_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of S01_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY";
  attribute X_INTERFACE_INFO of S01_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID";
  attribute X_INTERFACE_INFO of S01_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY";
  attribute X_INTERFACE_INFO of S01_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID";
  attribute X_INTERFACE_INFO of S01_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BREADY";
  attribute X_INTERFACE_INFO of S01_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BVALID";
  attribute X_INTERFACE_INFO of S01_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RLAST";
  attribute X_INTERFACE_INFO of S01_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RREADY";
  attribute X_INTERFACE_INFO of S01_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RVALID";
  attribute X_INTERFACE_INFO of S01_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WLAST";
  attribute X_INTERFACE_INFO of S01_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WREADY";
  attribute X_INTERFACE_INFO of S01_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WVALID";
  attribute X_INTERFACE_INFO of S02_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARREADY";
  attribute X_INTERFACE_INFO of S02_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARVALID";
  attribute X_INTERFACE_INFO of S02_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWREADY";
  attribute X_INTERFACE_INFO of S02_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWVALID";
  attribute X_INTERFACE_INFO of S02_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI BREADY";
  attribute X_INTERFACE_INFO of S02_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI BVALID";
  attribute X_INTERFACE_INFO of S02_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RLAST";
  attribute X_INTERFACE_INFO of S02_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RREADY";
  attribute X_INTERFACE_INFO of S02_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RVALID";
  attribute X_INTERFACE_INFO of S02_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WLAST";
  attribute X_INTERFACE_INFO of S02_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WREADY";
  attribute X_INTERFACE_INFO of S02_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WVALID";
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_CLKEN m_sc_aclken, CLK_DOMAIN cd_data_h2c_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of aclk1 : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK1 CLK";
  attribute X_INTERFACE_PARAMETER of aclk1 : signal is "XIL_INTERFACENAME CLK.ACLK1, ASSOCIATED_BUSIF S01_AXI:S02_AXI, ASSOCIATED_CLKEN m_sc_aclken, CLK_DOMAIN cd_extra_b_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of ddr4_mem_calib_complete : signal is "xilinx.com:signal:data:1.0 DATA.DDR4_MEM_CALIB_COMPLETE DATA";
  attribute X_INTERFACE_PARAMETER of ddr4_mem_calib_complete : signal is "XIL_INTERFACENAME DATA.DDR4_MEM_CALIB_COMPLETE, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_sh_cl_rst_dimm_a_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_A_N";
  attribute X_INTERFACE_INFO of s_sh_cl_rst_dimm_b_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_B_N";
  attribute X_INTERFACE_INFO of s_sh_cl_rst_dimm_d_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_D_N";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_arvalid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arvalid";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_awvalid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awvalid";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_bready : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_bready";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_rready : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_rready";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_wlast : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wlast";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_wvalid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wvalid";
  attribute X_INTERFACE_INFO of s_sh_clk_300m_dimm0_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM0_DN";
  attribute X_INTERFACE_INFO of s_sh_clk_300m_dimm0_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM0_DP";
  attribute X_INTERFACE_INFO of s_sh_clk_300m_dimm1_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM1_DN";
  attribute X_INTERFACE_INFO of s_sh_clk_300m_dimm1_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM1_DP";
  attribute X_INTERFACE_INFO of s_sh_clk_300m_dimm3_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM3_DN";
  attribute X_INTERFACE_INFO of s_sh_clk_300m_dimm3_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM3_DP";
  attribute X_INTERFACE_INFO of s_sh_clk_main_a0 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh clk_main_a0";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_ack0 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack0";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_ack1 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack1";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_ack2 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack2";
  attribute X_INTERFACE_INFO of s_sh_m_a_act_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ACT_N";
  attribute X_INTERFACE_INFO of s_sh_m_a_par : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_PAR";
  attribute X_INTERFACE_INFO of s_sh_m_b_act_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ACT_N";
  attribute X_INTERFACE_INFO of s_sh_m_b_par : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_PAR";
  attribute X_INTERFACE_INFO of s_sh_m_d_act_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ACT_N";
  attribute X_INTERFACE_INFO of s_sh_m_d_par : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_PAR";
  attribute X_INTERFACE_INFO of s_sh_rst_main_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh rst_main_n";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_arready : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_arready";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_awready : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_awready";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_bvalid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bvalid";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_is_ready : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_is_ready";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_rlast : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rlast";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_rvalid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rvalid";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_wready : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_wready";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_rd0 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd0";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_rd1 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd1";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_rd2 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd2";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_wr0 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr0";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_wr1 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr1";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_wr2 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr2";
  attribute X_INTERFACE_INFO of S00_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of S00_AXI_araddr : signal is "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 37, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 4, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S00_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARID";
  attribute X_INTERFACE_INFO of S00_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN";
  attribute X_INTERFACE_INFO of S00_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of S00_AXI_arregion : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION";
  attribute X_INTERFACE_INFO of S00_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of S00_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWID";
  attribute X_INTERFACE_INFO of S00_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN";
  attribute X_INTERFACE_INFO of S00_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of S00_AXI_awregion : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION";
  attribute X_INTERFACE_INFO of S00_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BID";
  attribute X_INTERFACE_INFO of S00_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of S00_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of S00_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RID";
  attribute X_INTERFACE_INFO of S00_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of S00_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of S00_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute X_INTERFACE_INFO of S01_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of S01_AXI_araddr : signal is "XIL_INTERFACENAME S01_AXI, ADDR_WIDTH 36, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_extra_b_00, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S01_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARBURST";
  attribute X_INTERFACE_INFO of S01_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S01_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARID";
  attribute X_INTERFACE_INFO of S01_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARLEN";
  attribute X_INTERFACE_INFO of S01_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S01_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT";
  attribute X_INTERFACE_INFO of S01_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARQOS";
  attribute X_INTERFACE_INFO of S01_AXI_arregion : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARREGION";
  attribute X_INTERFACE_INFO of S01_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S01_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR";
  attribute X_INTERFACE_INFO of S01_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWBURST";
  attribute X_INTERFACE_INFO of S01_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S01_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWID";
  attribute X_INTERFACE_INFO of S01_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWLEN";
  attribute X_INTERFACE_INFO of S01_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S01_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT";
  attribute X_INTERFACE_INFO of S01_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWQOS";
  attribute X_INTERFACE_INFO of S01_AXI_awregion : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWREGION";
  attribute X_INTERFACE_INFO of S01_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S01_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BID";
  attribute X_INTERFACE_INFO of S01_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BRESP";
  attribute X_INTERFACE_INFO of S01_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RDATA";
  attribute X_INTERFACE_INFO of S01_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RID";
  attribute X_INTERFACE_INFO of S01_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RRESP";
  attribute X_INTERFACE_INFO of S01_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WDATA";
  attribute X_INTERFACE_INFO of S01_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB";
  attribute X_INTERFACE_INFO of S02_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of S02_AXI_araddr : signal is "XIL_INTERFACENAME S02_AXI, ADDR_WIDTH 36, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_extra_b_00, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S02_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARBURST";
  attribute X_INTERFACE_INFO of S02_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S02_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARID";
  attribute X_INTERFACE_INFO of S02_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARLEN";
  attribute X_INTERFACE_INFO of S02_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S02_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARPROT";
  attribute X_INTERFACE_INFO of S02_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARQOS";
  attribute X_INTERFACE_INFO of S02_AXI_arregion : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARREGION";
  attribute X_INTERFACE_INFO of S02_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S02_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWADDR";
  attribute X_INTERFACE_INFO of S02_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWBURST";
  attribute X_INTERFACE_INFO of S02_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S02_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWID";
  attribute X_INTERFACE_INFO of S02_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWLEN";
  attribute X_INTERFACE_INFO of S02_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S02_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWPROT";
  attribute X_INTERFACE_INFO of S02_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWQOS";
  attribute X_INTERFACE_INFO of S02_AXI_awregion : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWREGION";
  attribute X_INTERFACE_INFO of S02_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S02_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI BID";
  attribute X_INTERFACE_INFO of S02_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S02_AXI BRESP";
  attribute X_INTERFACE_INFO of S02_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RDATA";
  attribute X_INTERFACE_INFO of S02_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RID";
  attribute X_INTERFACE_INFO of S02_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RRESP";
  attribute X_INTERFACE_INFO of S02_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WDATA";
  attribute X_INTERFACE_INFO of S02_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_araddr : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_araddr";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_arburst : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arburst";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_arid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arid";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_arlen : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arlen";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_arsize : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arsize";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_awaddr : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awaddr";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_awburst : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awburst";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_awid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awid";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_awlen : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awlen";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_awsize : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awsize";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_wdata : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wdata";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_wid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wid";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_wstrb : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wstrb";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_int0 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int0";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_int1 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int1";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_int2 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int2";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_rdata0 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata0";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_rdata1 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata1";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_rdata2 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata2";
  attribute X_INTERFACE_INFO of s_sh_m_a_ba : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_BA";
  attribute X_INTERFACE_INFO of s_sh_m_a_bg : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_BG";
  attribute X_INTERFACE_INFO of s_sh_m_a_cke : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CKE";
  attribute X_INTERFACE_INFO of s_sh_m_a_clk_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CLK_DN";
  attribute X_INTERFACE_INFO of s_sh_m_a_clk_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CLK_DP";
  attribute X_INTERFACE_INFO of s_sh_m_a_cs_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CS_N";
  attribute X_INTERFACE_INFO of s_sh_m_a_dq : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQ";
  attribute X_INTERFACE_INFO of s_sh_m_a_dqs_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQS_DN";
  attribute X_INTERFACE_INFO of s_sh_m_a_dqs_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQS_DP";
  attribute X_INTERFACE_INFO of s_sh_m_a_ecc : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ECC";
  attribute X_INTERFACE_INFO of s_sh_m_a_ma : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_MA";
  attribute X_INTERFACE_INFO of s_sh_m_a_odt : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ODT";
  attribute X_INTERFACE_INFO of s_sh_m_b_ba : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_BA";
  attribute X_INTERFACE_INFO of s_sh_m_b_bg : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_BG";
  attribute X_INTERFACE_INFO of s_sh_m_b_cke : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CKE";
  attribute X_INTERFACE_INFO of s_sh_m_b_clk_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CLK_DN";
  attribute X_INTERFACE_INFO of s_sh_m_b_clk_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CLK_DP";
  attribute X_INTERFACE_INFO of s_sh_m_b_cs_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CS_N";
  attribute X_INTERFACE_INFO of s_sh_m_b_dq : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQ";
  attribute X_INTERFACE_INFO of s_sh_m_b_dqs_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQS_DN";
  attribute X_INTERFACE_INFO of s_sh_m_b_dqs_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQS_DP";
  attribute X_INTERFACE_INFO of s_sh_m_b_ecc : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ECC";
  attribute X_INTERFACE_INFO of s_sh_m_b_ma : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_MA";
  attribute X_INTERFACE_INFO of s_sh_m_b_odt : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ODT";
  attribute X_INTERFACE_INFO of s_sh_m_d_ba : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_BA";
  attribute X_INTERFACE_INFO of s_sh_m_d_bg : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_BG";
  attribute X_INTERFACE_INFO of s_sh_m_d_cke : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CKE";
  attribute X_INTERFACE_INFO of s_sh_m_d_clk_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CLK_DN";
  attribute X_INTERFACE_INFO of s_sh_m_d_clk_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CLK_DP";
  attribute X_INTERFACE_INFO of s_sh_m_d_cs_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CS_N";
  attribute X_INTERFACE_INFO of s_sh_m_d_dq : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQ";
  attribute X_INTERFACE_INFO of s_sh_m_d_dqs_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQS_DN";
  attribute X_INTERFACE_INFO of s_sh_m_d_dqs_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQS_DP";
  attribute X_INTERFACE_INFO of s_sh_m_d_ecc : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ECC";
  attribute X_INTERFACE_INFO of s_sh_m_d_ma : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_MA";
  attribute X_INTERFACE_INFO of s_sh_m_d_odt : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ODT";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_bid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bid";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_bresp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bresp";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_rdata : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rdata";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_rid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rid";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_rresp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rresp";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_addr0 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr0";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_addr1 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr1";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_addr2 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr2";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_wdata0 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata0";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_wdata1 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata1";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_wdata2 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata2";
begin
interconnect: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interconnect_imp_1XWE5B8
     port map (
      M00_AXI_araddr(63 downto 0) => interconnect_ddr4_mem00_M00_AXI_ARADDR(63 downto 0),
      M00_AXI_arburst(1 downto 0) => interconnect_ddr4_mem00_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => interconnect_ddr4_mem00_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => interconnect_ddr4_mem00_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => interconnect_ddr4_mem00_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => interconnect_ddr4_mem00_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => interconnect_ddr4_mem00_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arvalid => interconnect_ddr4_mem00_M00_AXI_ARVALID,
      M00_AXI_awaddr(63 downto 0) => interconnect_ddr4_mem00_M00_AXI_AWADDR(63 downto 0),
      M00_AXI_awburst(1 downto 0) => interconnect_ddr4_mem00_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => interconnect_ddr4_mem00_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => interconnect_ddr4_mem00_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => interconnect_ddr4_mem00_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => interconnect_ddr4_mem00_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => interconnect_ddr4_mem00_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awvalid => interconnect_ddr4_mem00_M00_AXI_AWVALID,
      M00_AXI_bready => interconnect_ddr4_mem00_M00_AXI_BREADY,
      M00_AXI_rready => interconnect_ddr4_mem00_M00_AXI_RREADY,
      M00_AXI_wdata(511 downto 0) => interconnect_ddr4_mem00_M00_AXI_WDATA(511 downto 0),
      M00_AXI_wlast => interconnect_ddr4_mem00_M00_AXI_WLAST,
      M00_AXI_wstrb(63 downto 0) => interconnect_ddr4_mem00_M00_AXI_WSTRB(63 downto 0),
      M00_AXI_wvalid => interconnect_ddr4_mem00_M00_AXI_WVALID,
      S00_AXI_araddr(36 downto 0) => S00_AXI_araddr(36 downto 0),
      S00_AXI_arid(5 downto 0) => S00_AXI_arid(5 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_awaddr(36 downto 0) => S00_AXI_awaddr(36 downto 0),
      S00_AXI_awid(5 downto 0) => S00_AXI_awid(5 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_awready_0 => aclk,
      S00_AXI_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_bid(5 downto 0) => S00_AXI_bid(5 downto 0),
      S00_AXI_bready => S00_AXI_bready,
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_rdata(511 downto 0) => S00_AXI_rdata(511 downto 0),
      S00_AXI_rid(5 downto 0) => S00_AXI_rid(5 downto 0),
      S00_AXI_rlast => S00_AXI_rlast,
      S00_AXI_rready => S00_AXI_rready,
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S00_AXI_rvalid,
      S00_AXI_wdata(511 downto 0) => S00_AXI_wdata(511 downto 0),
      S00_AXI_wlast => S00_AXI_wlast,
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_wstrb(63 downto 0) => S00_AXI_wstrb(63 downto 0),
      S00_AXI_wvalid => S00_AXI_wvalid,
      S01_AXI_araddr(35 downto 0) => S01_AXI_araddr(35 downto 0),
      S01_AXI_arburst(1 downto 0) => S01_AXI_arburst(1 downto 0),
      S01_AXI_arcache(3 downto 0) => S01_AXI_arcache(3 downto 0),
      S01_AXI_arid(0) => S01_AXI_arid(0),
      S01_AXI_arlen(7 downto 0) => S01_AXI_arlen(7 downto 0),
      S01_AXI_arlock(0) => S01_AXI_arlock(0),
      S01_AXI_arprot(2 downto 0) => S01_AXI_arprot(2 downto 0),
      S01_AXI_arqos(3 downto 0) => S01_AXI_arqos(3 downto 0),
      S01_AXI_arready => S01_AXI_arready,
      S01_AXI_arregion(3 downto 0) => S01_AXI_arregion(3 downto 0),
      S01_AXI_arsize(2 downto 0) => S01_AXI_arsize(2 downto 0),
      S01_AXI_arvalid => S01_AXI_arvalid,
      S01_AXI_awaddr(35 downto 0) => S01_AXI_awaddr(35 downto 0),
      S01_AXI_awburst(1 downto 0) => S01_AXI_awburst(1 downto 0),
      S01_AXI_awcache(3 downto 0) => S01_AXI_awcache(3 downto 0),
      S01_AXI_awid(0) => S01_AXI_awid(0),
      S01_AXI_awlen(7 downto 0) => S01_AXI_awlen(7 downto 0),
      S01_AXI_awlock(0) => S01_AXI_awlock(0),
      S01_AXI_awprot(2 downto 0) => S01_AXI_awprot(2 downto 0),
      S01_AXI_awqos(3 downto 0) => S01_AXI_awqos(3 downto 0),
      S01_AXI_awready => S01_AXI_awready,
      S01_AXI_awregion(3 downto 0) => S01_AXI_awregion(3 downto 0),
      S01_AXI_awsize(2 downto 0) => S01_AXI_awsize(2 downto 0),
      S01_AXI_awvalid => S01_AXI_awvalid,
      S01_AXI_bid(0) => S01_AXI_bid(0),
      S01_AXI_bready => S01_AXI_bready,
      S01_AXI_bresp(1 downto 0) => S01_AXI_bresp(1 downto 0),
      S01_AXI_bvalid => S01_AXI_bvalid,
      S01_AXI_rdata(31 downto 0) => S01_AXI_rdata(31 downto 0),
      S01_AXI_rid(0) => S01_AXI_rid(0),
      S01_AXI_rlast => S01_AXI_rlast,
      S01_AXI_rready => S01_AXI_rready,
      S01_AXI_rresp(1 downto 0) => S01_AXI_rresp(1 downto 0),
      S01_AXI_rvalid => S01_AXI_rvalid,
      S01_AXI_wdata(31 downto 0) => S01_AXI_wdata(31 downto 0),
      S01_AXI_wlast => S01_AXI_wlast,
      S01_AXI_wready => S01_AXI_wready,
      S01_AXI_wstrb(3 downto 0) => S01_AXI_wstrb(3 downto 0),
      S01_AXI_wvalid => S01_AXI_wvalid,
      S02_AXI_araddr(35 downto 0) => S02_AXI_araddr(35 downto 0),
      S02_AXI_arburst(1 downto 0) => S02_AXI_arburst(1 downto 0),
      S02_AXI_arcache(3 downto 0) => S02_AXI_arcache(3 downto 0),
      S02_AXI_arid(0) => S02_AXI_arid(0),
      S02_AXI_arlen(7 downto 0) => S02_AXI_arlen(7 downto 0),
      S02_AXI_arlock(0) => S02_AXI_arlock(0),
      S02_AXI_arprot(2 downto 0) => S02_AXI_arprot(2 downto 0),
      S02_AXI_arqos(3 downto 0) => S02_AXI_arqos(3 downto 0),
      S02_AXI_arready => S02_AXI_arready,
      S02_AXI_arregion(3 downto 0) => S02_AXI_arregion(3 downto 0),
      S02_AXI_arsize(2 downto 0) => S02_AXI_arsize(2 downto 0),
      S02_AXI_arvalid => S02_AXI_arvalid,
      S02_AXI_awaddr(35 downto 0) => S02_AXI_awaddr(35 downto 0),
      S02_AXI_awburst(1 downto 0) => S02_AXI_awburst(1 downto 0),
      S02_AXI_awcache(3 downto 0) => S02_AXI_awcache(3 downto 0),
      S02_AXI_awid(0) => S02_AXI_awid(0),
      S02_AXI_awlen(7 downto 0) => S02_AXI_awlen(7 downto 0),
      S02_AXI_awlock(0) => S02_AXI_awlock(0),
      S02_AXI_awprot(2 downto 0) => S02_AXI_awprot(2 downto 0),
      S02_AXI_awqos(3 downto 0) => S02_AXI_awqos(3 downto 0),
      S02_AXI_awready => S02_AXI_awready,
      S02_AXI_awregion(3 downto 0) => S02_AXI_awregion(3 downto 0),
      S02_AXI_awsize(2 downto 0) => S02_AXI_awsize(2 downto 0),
      S02_AXI_awvalid => S02_AXI_awvalid,
      S02_AXI_bid(0) => S02_AXI_bid(0),
      S02_AXI_bready => S02_AXI_bready,
      S02_AXI_bresp(1 downto 0) => S02_AXI_bresp(1 downto 0),
      S02_AXI_bvalid => S02_AXI_bvalid,
      S02_AXI_rdata(31 downto 0) => S02_AXI_rdata(31 downto 0),
      S02_AXI_rid(0) => S02_AXI_rid(0),
      S02_AXI_rlast => S02_AXI_rlast,
      S02_AXI_rready => S02_AXI_rready,
      S02_AXI_rresp(1 downto 0) => S02_AXI_rresp(1 downto 0),
      S02_AXI_rvalid => S02_AXI_rvalid,
      S02_AXI_wdata(31 downto 0) => S02_AXI_wdata(31 downto 0),
      S02_AXI_wlast => S02_AXI_wlast,
      S02_AXI_wready => S02_AXI_wready,
      S02_AXI_wstrb(3 downto 0) => S02_AXI_wstrb(3 downto 0),
      S02_AXI_wvalid => S02_AXI_wvalid,
      S_AXI_arready => interconnect_ddr4_mem00_M00_AXI_ARREADY,
      S_AXI_awready => interconnect_ddr4_mem00_M00_AXI_AWREADY,
      S_AXI_bresp(1 downto 0) => interconnect_ddr4_mem00_M00_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => interconnect_ddr4_mem00_M00_AXI_BVALID,
      S_AXI_rdata(511 downto 0) => interconnect_ddr4_mem00_M00_AXI_RDATA(511 downto 0),
      S_AXI_rlast => interconnect_ddr4_mem00_M00_AXI_RLAST,
      S_AXI_rresp(1 downto 0) => interconnect_ddr4_mem00_M00_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => interconnect_ddr4_mem00_M00_AXI_RVALID,
      S_AXI_wready => interconnect_ddr4_mem00_M00_AXI_WREADY,
      aclk => aws_clk_main_a0_out,
      aclk1 => aclk1,
      interconnect_aresetn(0) => psr_aclk_SLR0_interconnect_aresetn,
      interconnect_aresetn1(0) => psr_aclk_SLR1_interconnect_aresetn,
      interconnect_aresetn2(0) => psr_aclk1_SLR1_interconnect_aresetn
    );
memory: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory_imp_AMH3FI
     port map (
      S_AXI_araddr(63 downto 0) => interconnect_ddr4_mem00_M00_AXI_ARADDR(63 downto 0),
      S_AXI_arburst(1 downto 0) => interconnect_ddr4_mem00_M00_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => interconnect_ddr4_mem00_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => interconnect_ddr4_mem00_M00_AXI_ARLEN(7 downto 0),
      S_AXI_arlock(0) => interconnect_ddr4_mem00_M00_AXI_ARLOCK,
      S_AXI_arprot(2 downto 0) => interconnect_ddr4_mem00_M00_AXI_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => interconnect_ddr4_mem00_M00_AXI_ARQOS(3 downto 0),
      S_AXI_arready => interconnect_ddr4_mem00_M00_AXI_ARREADY,
      S_AXI_arvalid => interconnect_ddr4_mem00_M00_AXI_ARVALID,
      S_AXI_awaddr(63 downto 0) => interconnect_ddr4_mem00_M00_AXI_AWADDR(63 downto 0),
      S_AXI_awburst(1 downto 0) => interconnect_ddr4_mem00_M00_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => interconnect_ddr4_mem00_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => interconnect_ddr4_mem00_M00_AXI_AWLEN(7 downto 0),
      S_AXI_awlock(0) => interconnect_ddr4_mem00_M00_AXI_AWLOCK,
      S_AXI_awprot(2 downto 0) => interconnect_ddr4_mem00_M00_AXI_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => interconnect_ddr4_mem00_M00_AXI_AWQOS(3 downto 0),
      S_AXI_awready => interconnect_ddr4_mem00_M00_AXI_AWREADY,
      S_AXI_awvalid => interconnect_ddr4_mem00_M00_AXI_AWVALID,
      S_AXI_bready => interconnect_ddr4_mem00_M00_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => interconnect_ddr4_mem00_M00_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => interconnect_ddr4_mem00_M00_AXI_BVALID,
      S_AXI_rdata(511 downto 0) => interconnect_ddr4_mem00_M00_AXI_RDATA(511 downto 0),
      S_AXI_rlast => interconnect_ddr4_mem00_M00_AXI_RLAST,
      S_AXI_rready => interconnect_ddr4_mem00_M00_AXI_RREADY,
      S_AXI_rresp(1 downto 0) => interconnect_ddr4_mem00_M00_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => interconnect_ddr4_mem00_M00_AXI_RVALID,
      S_AXI_wdata(511 downto 0) => interconnect_ddr4_mem00_M00_AXI_WDATA(511 downto 0),
      S_AXI_wlast => interconnect_ddr4_mem00_M00_AXI_WLAST,
      S_AXI_wready => interconnect_ddr4_mem00_M00_AXI_WREADY,
      S_AXI_wstrb(63 downto 0) => interconnect_ddr4_mem00_M00_AXI_WSTRB(63 downto 0),
      S_AXI_wvalid => interconnect_ddr4_mem00_M00_AXI_WVALID,
      aclk => aws_clk_main_a0_out,
      ddr4_mem_calib_complete => ddr4_mem_calib_complete,
      s_sh_cl_rst_dimm_a_n => s_sh_cl_rst_dimm_a_n,
      s_sh_cl_rst_dimm_b_n => s_sh_cl_rst_dimm_b_n,
      s_sh_cl_rst_dimm_d_n => s_sh_cl_rst_dimm_d_n,
      s_sh_cl_sh_ddr_araddr(63 downto 0) => s_sh_cl_sh_ddr_araddr(63 downto 0),
      s_sh_cl_sh_ddr_arburst(1 downto 0) => s_sh_cl_sh_ddr_arburst(1 downto 0),
      s_sh_cl_sh_ddr_arid(15 downto 0) => s_sh_cl_sh_ddr_arid(15 downto 0),
      s_sh_cl_sh_ddr_arlen(7 downto 0) => s_sh_cl_sh_ddr_arlen(7 downto 0),
      s_sh_cl_sh_ddr_arsize(2 downto 0) => s_sh_cl_sh_ddr_arsize(2 downto 0),
      s_sh_cl_sh_ddr_arvalid => s_sh_cl_sh_ddr_arvalid,
      s_sh_cl_sh_ddr_awaddr(63 downto 0) => s_sh_cl_sh_ddr_awaddr(63 downto 0),
      s_sh_cl_sh_ddr_awburst(1 downto 0) => s_sh_cl_sh_ddr_awburst(1 downto 0),
      s_sh_cl_sh_ddr_awid(15 downto 0) => s_sh_cl_sh_ddr_awid(15 downto 0),
      s_sh_cl_sh_ddr_awlen(7 downto 0) => s_sh_cl_sh_ddr_awlen(7 downto 0),
      s_sh_cl_sh_ddr_awsize(2 downto 0) => s_sh_cl_sh_ddr_awsize(2 downto 0),
      s_sh_cl_sh_ddr_awvalid => s_sh_cl_sh_ddr_awvalid,
      s_sh_cl_sh_ddr_bready => s_sh_cl_sh_ddr_bready,
      s_sh_cl_sh_ddr_rready => s_sh_cl_sh_ddr_rready,
      s_sh_cl_sh_ddr_wdata(511 downto 0) => s_sh_cl_sh_ddr_wdata(511 downto 0),
      s_sh_cl_sh_ddr_wid(15 downto 0) => s_sh_cl_sh_ddr_wid(15 downto 0),
      s_sh_cl_sh_ddr_wlast => s_sh_cl_sh_ddr_wlast,
      s_sh_cl_sh_ddr_wstrb(63 downto 0) => s_sh_cl_sh_ddr_wstrb(63 downto 0),
      s_sh_cl_sh_ddr_wvalid => s_sh_cl_sh_ddr_wvalid,
      s_sh_clk_300m_dimm0_dn => s_sh_clk_300m_dimm0_dn,
      s_sh_clk_300m_dimm0_dp => s_sh_clk_300m_dimm0_dp,
      s_sh_clk_300m_dimm1_dn => s_sh_clk_300m_dimm1_dn,
      s_sh_clk_300m_dimm1_dp => s_sh_clk_300m_dimm1_dp,
      s_sh_clk_300m_dimm3_dn => s_sh_clk_300m_dimm3_dn,
      s_sh_clk_300m_dimm3_dp => s_sh_clk_300m_dimm3_dp,
      s_sh_clk_main_a0 => s_sh_clk_main_a0,
      s_sh_ddr_sh_stat_ack0 => s_sh_ddr_sh_stat_ack0,
      s_sh_ddr_sh_stat_ack1 => s_sh_ddr_sh_stat_ack1,
      s_sh_ddr_sh_stat_ack2 => s_sh_ddr_sh_stat_ack2,
      s_sh_ddr_sh_stat_int0(7 downto 0) => s_sh_ddr_sh_stat_int0(7 downto 0),
      s_sh_ddr_sh_stat_int1(7 downto 0) => s_sh_ddr_sh_stat_int1(7 downto 0),
      s_sh_ddr_sh_stat_int2(7 downto 0) => s_sh_ddr_sh_stat_int2(7 downto 0),
      s_sh_ddr_sh_stat_rdata0(31 downto 0) => s_sh_ddr_sh_stat_rdata0(31 downto 0),
      s_sh_ddr_sh_stat_rdata1(31 downto 0) => s_sh_ddr_sh_stat_rdata1(31 downto 0),
      s_sh_ddr_sh_stat_rdata2(31 downto 0) => s_sh_ddr_sh_stat_rdata2(31 downto 0),
      s_sh_m_a_act_n => s_sh_m_a_act_n,
      s_sh_m_a_ba(1 downto 0) => s_sh_m_a_ba(1 downto 0),
      s_sh_m_a_bg(1 downto 0) => s_sh_m_a_bg(1 downto 0),
      s_sh_m_a_cke(0) => s_sh_m_a_cke(0),
      s_sh_m_a_clk_dn(0) => s_sh_m_a_clk_dn(0),
      s_sh_m_a_clk_dp(0) => s_sh_m_a_clk_dp(0),
      s_sh_m_a_cs_n(0) => s_sh_m_a_cs_n(0),
      s_sh_m_a_dq(63 downto 0) => s_sh_m_a_dq(63 downto 0),
      s_sh_m_a_dqs_dn(17 downto 0) => s_sh_m_a_dqs_dn(17 downto 0),
      s_sh_m_a_dqs_dp(17 downto 0) => s_sh_m_a_dqs_dp(17 downto 0),
      s_sh_m_a_ecc(7 downto 0) => s_sh_m_a_ecc(7 downto 0),
      s_sh_m_a_ma(16 downto 0) => s_sh_m_a_ma(16 downto 0),
      s_sh_m_a_odt(0) => s_sh_m_a_odt(0),
      s_sh_m_a_par => s_sh_m_a_par,
      s_sh_m_b_act_n => s_sh_m_b_act_n,
      s_sh_m_b_ba(1 downto 0) => s_sh_m_b_ba(1 downto 0),
      s_sh_m_b_bg(1 downto 0) => s_sh_m_b_bg(1 downto 0),
      s_sh_m_b_cke(0) => s_sh_m_b_cke(0),
      s_sh_m_b_clk_dn(0) => s_sh_m_b_clk_dn(0),
      s_sh_m_b_clk_dp(0) => s_sh_m_b_clk_dp(0),
      s_sh_m_b_cs_n(0) => s_sh_m_b_cs_n(0),
      s_sh_m_b_dq(63 downto 0) => s_sh_m_b_dq(63 downto 0),
      s_sh_m_b_dqs_dn(17 downto 0) => s_sh_m_b_dqs_dn(17 downto 0),
      s_sh_m_b_dqs_dp(17 downto 0) => s_sh_m_b_dqs_dp(17 downto 0),
      s_sh_m_b_ecc(7 downto 0) => s_sh_m_b_ecc(7 downto 0),
      s_sh_m_b_ma(16 downto 0) => s_sh_m_b_ma(16 downto 0),
      s_sh_m_b_odt(0) => s_sh_m_b_odt(0),
      s_sh_m_b_par => s_sh_m_b_par,
      s_sh_m_d_act_n => s_sh_m_d_act_n,
      s_sh_m_d_ba(1 downto 0) => s_sh_m_d_ba(1 downto 0),
      s_sh_m_d_bg(1 downto 0) => s_sh_m_d_bg(1 downto 0),
      s_sh_m_d_cke(0) => s_sh_m_d_cke(0),
      s_sh_m_d_clk_dn(0) => s_sh_m_d_clk_dn(0),
      s_sh_m_d_clk_dp(0) => s_sh_m_d_clk_dp(0),
      s_sh_m_d_cs_n(0) => s_sh_m_d_cs_n(0),
      s_sh_m_d_dq(63 downto 0) => s_sh_m_d_dq(63 downto 0),
      s_sh_m_d_dqs_dn(17 downto 0) => s_sh_m_d_dqs_dn(17 downto 0),
      s_sh_m_d_dqs_dp(17 downto 0) => s_sh_m_d_dqs_dp(17 downto 0),
      s_sh_m_d_ecc(7 downto 0) => s_sh_m_d_ecc(7 downto 0),
      s_sh_m_d_ma(16 downto 0) => s_sh_m_d_ma(16 downto 0),
      s_sh_m_d_odt(0) => s_sh_m_d_odt(0),
      s_sh_m_d_par => s_sh_m_d_par,
      s_sh_rst_main_n => s_sh_rst_main_n,
      s_sh_sh_cl_ddr_arready => s_sh_sh_cl_ddr_arready,
      s_sh_sh_cl_ddr_awready => s_sh_sh_cl_ddr_awready,
      s_sh_sh_cl_ddr_bid(15 downto 0) => s_sh_sh_cl_ddr_bid(15 downto 0),
      s_sh_sh_cl_ddr_bresp(1 downto 0) => s_sh_sh_cl_ddr_bresp(1 downto 0),
      s_sh_sh_cl_ddr_bvalid => s_sh_sh_cl_ddr_bvalid,
      s_sh_sh_cl_ddr_is_ready => s_sh_sh_cl_ddr_is_ready,
      s_sh_sh_cl_ddr_rdata(511 downto 0) => s_sh_sh_cl_ddr_rdata(511 downto 0),
      s_sh_sh_cl_ddr_rid(15 downto 0) => s_sh_sh_cl_ddr_rid(15 downto 0),
      s_sh_sh_cl_ddr_rlast => s_sh_sh_cl_ddr_rlast,
      s_sh_sh_cl_ddr_rresp(1 downto 0) => s_sh_sh_cl_ddr_rresp(1 downto 0),
      s_sh_sh_cl_ddr_rvalid => s_sh_sh_cl_ddr_rvalid,
      s_sh_sh_cl_ddr_wready => s_sh_sh_cl_ddr_wready,
      s_sh_sh_ddr_stat_addr0(7 downto 0) => s_sh_sh_ddr_stat_addr0(7 downto 0),
      s_sh_sh_ddr_stat_addr1(7 downto 0) => s_sh_sh_ddr_stat_addr1(7 downto 0),
      s_sh_sh_ddr_stat_addr2(7 downto 0) => s_sh_sh_ddr_stat_addr2(7 downto 0),
      s_sh_sh_ddr_stat_rd0 => s_sh_sh_ddr_stat_rd0,
      s_sh_sh_ddr_stat_rd1 => s_sh_sh_ddr_stat_rd1,
      s_sh_sh_ddr_stat_rd2 => s_sh_sh_ddr_stat_rd2,
      s_sh_sh_ddr_stat_wdata0(31 downto 0) => s_sh_sh_ddr_stat_wdata0(31 downto 0),
      s_sh_sh_ddr_stat_wdata1(31 downto 0) => s_sh_sh_ddr_stat_wdata1(31 downto 0),
      s_sh_sh_ddr_stat_wdata2(31 downto 0) => s_sh_sh_ddr_stat_wdata2(31 downto 0),
      s_sh_sh_ddr_stat_wr0 => s_sh_sh_ddr_stat_wr0,
      s_sh_sh_ddr_stat_wr1 => s_sh_sh_ddr_stat_wr1,
      s_sh_sh_ddr_stat_wr2 => s_sh_sh_ddr_stat_wr2
    );
reset: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_imp_57Y9M4
     port map (
      aclk => aclk,
      aclk1 => aclk1,
      aresetn => aresetn,
      interconnect_aresetn(0) => psr_aclk_SLR0_interconnect_aresetn,
      interconnect_aresetn1(0) => psr_aclk_SLR1_interconnect_aresetn,
      interconnect_aresetn2(0) => psr_aclk1_SLR1_interconnect_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 36 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 36 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wvalid : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 35 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rvalid : out STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    s_sh_rst_main_n : in STD_LOGIC;
    s_sh_clk_main_a0 : in STD_LOGIC;
    s_sh_clk_300m_dimm0_dp : in STD_LOGIC;
    s_sh_clk_300m_dimm0_dn : in STD_LOGIC;
    s_sh_clk_300m_dimm1_dp : in STD_LOGIC;
    s_sh_clk_300m_dimm1_dn : in STD_LOGIC;
    s_sh_clk_300m_dimm3_dp : in STD_LOGIC;
    s_sh_clk_300m_dimm3_dn : in STD_LOGIC;
    s_sh_sh_ddr_stat_wr0 : in STD_LOGIC;
    s_sh_sh_ddr_stat_rd0 : in STD_LOGIC;
    s_sh_sh_ddr_stat_wr1 : in STD_LOGIC;
    s_sh_sh_ddr_stat_rd1 : in STD_LOGIC;
    s_sh_sh_ddr_stat_wr2 : in STD_LOGIC;
    s_sh_sh_ddr_stat_rd2 : in STD_LOGIC;
    s_sh_sh_cl_ddr_awready : in STD_LOGIC;
    s_sh_sh_cl_ddr_wready : in STD_LOGIC;
    s_sh_sh_cl_ddr_bvalid : in STD_LOGIC;
    s_sh_sh_cl_ddr_arready : in STD_LOGIC;
    s_sh_sh_cl_ddr_rlast : in STD_LOGIC;
    s_sh_sh_cl_ddr_rvalid : in STD_LOGIC;
    s_sh_sh_cl_ddr_is_ready : in STD_LOGIC;
    s_sh_sh_ddr_stat_addr0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_sh_ddr_stat_wdata0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_sh_ddr_stat_addr1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_sh_ddr_stat_wdata1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_sh_ddr_stat_addr2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_sh_ddr_stat_wdata2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_sh_cl_ddr_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_sh_sh_cl_ddr_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_sh_cl_ddr_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_sh_sh_cl_ddr_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_sh_sh_cl_ddr_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_ddr_sh_stat_ack0 : out STD_LOGIC;
    s_sh_ddr_sh_stat_ack1 : out STD_LOGIC;
    s_sh_ddr_sh_stat_ack2 : out STD_LOGIC;
    s_sh_m_a_act_n : out STD_LOGIC;
    s_sh_m_a_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_a_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_a_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_a_clk_dn : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_a_clk_dp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_a_par : out STD_LOGIC;
    s_sh_cl_rst_dimm_a_n : out STD_LOGIC;
    s_sh_m_b_act_n : out STD_LOGIC;
    s_sh_m_b_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_b_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_b_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_b_clk_dn : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_b_clk_dp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_b_par : out STD_LOGIC;
    s_sh_cl_rst_dimm_b_n : out STD_LOGIC;
    s_sh_m_d_act_n : out STD_LOGIC;
    s_sh_m_d_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_d_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_d_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_d_clk_dn : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_d_clk_dp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sh_m_d_par : out STD_LOGIC;
    s_sh_cl_rst_dimm_d_n : out STD_LOGIC;
    s_sh_cl_sh_ddr_awvalid : out STD_LOGIC;
    s_sh_cl_sh_ddr_wlast : out STD_LOGIC;
    s_sh_cl_sh_ddr_wvalid : out STD_LOGIC;
    s_sh_cl_sh_ddr_bready : out STD_LOGIC;
    s_sh_cl_sh_ddr_arvalid : out STD_LOGIC;
    s_sh_cl_sh_ddr_rready : out STD_LOGIC;
    s_sh_m_a_ma : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_sh_m_a_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_a_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_b_ma : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_sh_m_b_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_b_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_d_ma : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_sh_m_d_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_d_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_ddr_sh_stat_rdata0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_ddr_sh_stat_int0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_ddr_sh_stat_rdata1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_ddr_sh_stat_int1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_ddr_sh_stat_rdata2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_sh_ddr_sh_stat_int2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_cl_sh_ddr_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_sh_cl_sh_ddr_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_cl_sh_ddr_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_cl_sh_ddr_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_sh_cl_sh_ddr_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_cl_sh_ddr_wid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_sh_cl_sh_ddr_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_sh_cl_sh_ddr_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_cl_sh_ddr_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_sh_cl_sh_ddr_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_cl_sh_ddr_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_cl_sh_ddr_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_sh_cl_sh_ddr_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_sh_m_a_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_m_a_ecc : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_m_a_dqs_dp : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    s_sh_m_a_dqs_dn : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    s_sh_m_b_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_m_b_ecc : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_m_b_dqs_dp : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    s_sh_m_b_dqs_dn : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    s_sh_m_d_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    s_sh_m_d_ecc : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    s_sh_m_d_dqs_dp : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    s_sh_m_d_dqs_dn : inout STD_LOGIC_VECTOR ( 17 downto 0 );
    ddr4_mem_calib_complete : out STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cl_HIP_0,bd_3329,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_3329,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "cl_HIP_0.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S00_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of S00_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of S00_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of S00_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of S00_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of S00_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of S00_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RLAST";
  attribute X_INTERFACE_INFO of S00_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_INFO of S00_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of S00_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WLAST";
  attribute X_INTERFACE_INFO of S00_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of S00_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of S01_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY";
  attribute X_INTERFACE_INFO of S01_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID";
  attribute X_INTERFACE_INFO of S01_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY";
  attribute X_INTERFACE_INFO of S01_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID";
  attribute X_INTERFACE_INFO of S01_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BREADY";
  attribute X_INTERFACE_INFO of S01_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BVALID";
  attribute X_INTERFACE_INFO of S01_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RLAST";
  attribute X_INTERFACE_INFO of S01_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RREADY";
  attribute X_INTERFACE_INFO of S01_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RVALID";
  attribute X_INTERFACE_INFO of S01_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WLAST";
  attribute X_INTERFACE_INFO of S01_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WREADY";
  attribute X_INTERFACE_INFO of S01_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WVALID";
  attribute X_INTERFACE_INFO of S02_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARREADY";
  attribute X_INTERFACE_INFO of S02_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARVALID";
  attribute X_INTERFACE_INFO of S02_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWREADY";
  attribute X_INTERFACE_INFO of S02_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWVALID";
  attribute X_INTERFACE_INFO of S02_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI BREADY";
  attribute X_INTERFACE_INFO of S02_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI BVALID";
  attribute X_INTERFACE_INFO of S02_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RLAST";
  attribute X_INTERFACE_INFO of S02_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RREADY";
  attribute X_INTERFACE_INFO of S02_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RVALID";
  attribute X_INTERFACE_INFO of S02_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WLAST";
  attribute X_INTERFACE_INFO of S02_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WREADY";
  attribute X_INTERFACE_INFO of S02_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WVALID";
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK.aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK.aclk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_data_h2c_00, ASSOCIATED_BUSIF S00_AXI, INSERT_VIP 0, ASSOCIATED_CLKEN m_sc_aclken";
  attribute X_INTERFACE_INFO of aclk1 : signal is "xilinx.com:signal:clock:1.0 CLK.aclk1 CLK";
  attribute X_INTERFACE_PARAMETER of aclk1 : signal is "XIL_INTERFACENAME CLK.aclk1, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, ASSOCIATED_BUSIF S01_AXI:S02_AXI, INSERT_VIP 0, ASSOCIATED_CLKEN m_sc_aclken";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST.aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST.aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ddr4_mem_calib_complete : signal is "xilinx.com:signal:data:1.0 DATA.ddr4_mem_calib_complete DATA";
  attribute X_INTERFACE_PARAMETER of ddr4_mem_calib_complete : signal is "XIL_INTERFACENAME DATA.ddr4_mem_calib_complete, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_sh_cl_rst_dimm_a_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_A_N";
  attribute X_INTERFACE_INFO of s_sh_cl_rst_dimm_b_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_B_N";
  attribute X_INTERFACE_INFO of s_sh_cl_rst_dimm_d_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_D_N";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_arvalid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arvalid";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_awvalid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awvalid";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_bready : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_bready";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_rready : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_rready";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_wlast : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wlast";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_wvalid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wvalid";
  attribute X_INTERFACE_INFO of s_sh_clk_300m_dimm0_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM0_DN";
  attribute X_INTERFACE_INFO of s_sh_clk_300m_dimm0_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM0_DP";
  attribute X_INTERFACE_INFO of s_sh_clk_300m_dimm1_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM1_DN";
  attribute X_INTERFACE_INFO of s_sh_clk_300m_dimm1_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM1_DP";
  attribute X_INTERFACE_INFO of s_sh_clk_300m_dimm3_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM3_DN";
  attribute X_INTERFACE_INFO of s_sh_clk_300m_dimm3_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM3_DP";
  attribute X_INTERFACE_INFO of s_sh_clk_main_a0 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh clk_main_a0";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_ack0 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack0";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_ack1 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack1";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_ack2 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack2";
  attribute X_INTERFACE_INFO of s_sh_m_a_act_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ACT_N";
  attribute X_INTERFACE_INFO of s_sh_m_a_par : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_PAR";
  attribute X_INTERFACE_INFO of s_sh_m_b_act_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ACT_N";
  attribute X_INTERFACE_INFO of s_sh_m_b_par : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_PAR";
  attribute X_INTERFACE_INFO of s_sh_m_d_act_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ACT_N";
  attribute X_INTERFACE_INFO of s_sh_m_d_par : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_PAR";
  attribute X_INTERFACE_INFO of s_sh_rst_main_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh rst_main_n";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_arready : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_arready";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_awready : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_awready";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_bvalid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bvalid";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_is_ready : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_is_ready";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_rlast : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rlast";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_rvalid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rvalid";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_wready : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_wready";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_rd0 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd0";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_rd1 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd1";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_rd2 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd2";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_wr0 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr0";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_wr1 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr1";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_wr2 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr2";
  attribute X_INTERFACE_INFO of S00_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of S00_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARID";
  attribute X_INTERFACE_INFO of S00_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN";
  attribute X_INTERFACE_INFO of S00_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of S00_AXI_arregion : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION";
  attribute X_INTERFACE_INFO of S00_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of S00_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWID";
  attribute X_INTERFACE_INFO of S00_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN";
  attribute X_INTERFACE_INFO of S00_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of S00_AXI_awregion : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION";
  attribute X_INTERFACE_INFO of S00_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BID";
  attribute X_INTERFACE_INFO of S00_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of S00_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of S00_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RID";
  attribute X_INTERFACE_PARAMETER of S00_AXI_rid : signal is "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 6, ADDR_WIDTH 37, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S00_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of S00_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of S00_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute X_INTERFACE_INFO of S01_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR";
  attribute X_INTERFACE_INFO of S01_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARBURST";
  attribute X_INTERFACE_INFO of S01_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S01_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARID";
  attribute X_INTERFACE_INFO of S01_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARLEN";
  attribute X_INTERFACE_INFO of S01_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S01_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT";
  attribute X_INTERFACE_INFO of S01_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARQOS";
  attribute X_INTERFACE_INFO of S01_AXI_arregion : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARREGION";
  attribute X_INTERFACE_INFO of S01_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S01_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR";
  attribute X_INTERFACE_INFO of S01_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWBURST";
  attribute X_INTERFACE_INFO of S01_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S01_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWID";
  attribute X_INTERFACE_INFO of S01_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWLEN";
  attribute X_INTERFACE_INFO of S01_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S01_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT";
  attribute X_INTERFACE_INFO of S01_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWQOS";
  attribute X_INTERFACE_INFO of S01_AXI_awregion : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWREGION";
  attribute X_INTERFACE_INFO of S01_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S01_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BID";
  attribute X_INTERFACE_INFO of S01_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BRESP";
  attribute X_INTERFACE_INFO of S01_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RDATA";
  attribute X_INTERFACE_INFO of S01_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RID";
  attribute X_INTERFACE_PARAMETER of S01_AXI_rid : signal is "XIL_INTERFACENAME S01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 1, ADDR_WIDTH 36, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S01_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RRESP";
  attribute X_INTERFACE_INFO of S01_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WDATA";
  attribute X_INTERFACE_INFO of S01_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB";
  attribute X_INTERFACE_INFO of S02_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARADDR";
  attribute X_INTERFACE_INFO of S02_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARBURST";
  attribute X_INTERFACE_INFO of S02_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S02_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARID";
  attribute X_INTERFACE_INFO of S02_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARLEN";
  attribute X_INTERFACE_INFO of S02_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S02_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARPROT";
  attribute X_INTERFACE_INFO of S02_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARQOS";
  attribute X_INTERFACE_INFO of S02_AXI_arregion : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARREGION";
  attribute X_INTERFACE_INFO of S02_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S02_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S02_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWADDR";
  attribute X_INTERFACE_INFO of S02_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWBURST";
  attribute X_INTERFACE_INFO of S02_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S02_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWID";
  attribute X_INTERFACE_INFO of S02_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWLEN";
  attribute X_INTERFACE_INFO of S02_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S02_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWPROT";
  attribute X_INTERFACE_INFO of S02_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWQOS";
  attribute X_INTERFACE_INFO of S02_AXI_awregion : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWREGION";
  attribute X_INTERFACE_INFO of S02_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S02_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S02_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI BID";
  attribute X_INTERFACE_INFO of S02_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S02_AXI BRESP";
  attribute X_INTERFACE_INFO of S02_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RDATA";
  attribute X_INTERFACE_INFO of S02_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RID";
  attribute X_INTERFACE_PARAMETER of S02_AXI_rid : signal is "XIL_INTERFACENAME S02_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 1, ADDR_WIDTH 36, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S02_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S02_AXI RRESP";
  attribute X_INTERFACE_INFO of S02_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WDATA";
  attribute X_INTERFACE_INFO of S02_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S02_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_araddr : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_araddr";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_arburst : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arburst";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_arid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arid";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_arlen : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arlen";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_arsize : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arsize";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_awaddr : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awaddr";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_awburst : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awburst";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_awid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awid";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_awlen : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awlen";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_awsize : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awsize";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_wdata : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wdata";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_wid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wid";
  attribute X_INTERFACE_INFO of s_sh_cl_sh_ddr_wstrb : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wstrb";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_int0 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int0";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_int1 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int1";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_int2 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int2";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_rdata0 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata0";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_rdata1 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata1";
  attribute X_INTERFACE_INFO of s_sh_ddr_sh_stat_rdata2 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata2";
  attribute X_INTERFACE_INFO of s_sh_m_a_ba : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_BA";
  attribute X_INTERFACE_INFO of s_sh_m_a_bg : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_BG";
  attribute X_INTERFACE_INFO of s_sh_m_a_cke : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CKE";
  attribute X_INTERFACE_INFO of s_sh_m_a_clk_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CLK_DN";
  attribute X_INTERFACE_INFO of s_sh_m_a_clk_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CLK_DP";
  attribute X_INTERFACE_INFO of s_sh_m_a_cs_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CS_N";
  attribute X_INTERFACE_INFO of s_sh_m_a_dq : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQ";
  attribute X_INTERFACE_INFO of s_sh_m_a_dqs_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQS_DN";
  attribute X_INTERFACE_INFO of s_sh_m_a_dqs_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQS_DP";
  attribute X_INTERFACE_INFO of s_sh_m_a_ecc : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ECC";
  attribute X_INTERFACE_INFO of s_sh_m_a_ma : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_MA";
  attribute X_INTERFACE_INFO of s_sh_m_a_odt : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ODT";
  attribute X_INTERFACE_INFO of s_sh_m_b_ba : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_BA";
  attribute X_INTERFACE_INFO of s_sh_m_b_bg : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_BG";
  attribute X_INTERFACE_INFO of s_sh_m_b_cke : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CKE";
  attribute X_INTERFACE_INFO of s_sh_m_b_clk_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CLK_DN";
  attribute X_INTERFACE_INFO of s_sh_m_b_clk_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CLK_DP";
  attribute X_INTERFACE_INFO of s_sh_m_b_cs_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CS_N";
  attribute X_INTERFACE_INFO of s_sh_m_b_dq : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQ";
  attribute X_INTERFACE_INFO of s_sh_m_b_dqs_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQS_DN";
  attribute X_INTERFACE_INFO of s_sh_m_b_dqs_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQS_DP";
  attribute X_INTERFACE_INFO of s_sh_m_b_ecc : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ECC";
  attribute X_INTERFACE_INFO of s_sh_m_b_ma : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_MA";
  attribute X_INTERFACE_INFO of s_sh_m_b_odt : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ODT";
  attribute X_INTERFACE_INFO of s_sh_m_d_ba : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_BA";
  attribute X_INTERFACE_INFO of s_sh_m_d_bg : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_BG";
  attribute X_INTERFACE_INFO of s_sh_m_d_cke : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CKE";
  attribute X_INTERFACE_INFO of s_sh_m_d_clk_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CLK_DN";
  attribute X_INTERFACE_INFO of s_sh_m_d_clk_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CLK_DP";
  attribute X_INTERFACE_INFO of s_sh_m_d_cs_n : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CS_N";
  attribute X_INTERFACE_INFO of s_sh_m_d_dq : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQ";
  attribute X_INTERFACE_INFO of s_sh_m_d_dqs_dn : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQS_DN";
  attribute X_INTERFACE_INFO of s_sh_m_d_dqs_dp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQS_DP";
  attribute X_INTERFACE_INFO of s_sh_m_d_ecc : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ECC";
  attribute X_INTERFACE_INFO of s_sh_m_d_ma : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_MA";
  attribute X_INTERFACE_INFO of s_sh_m_d_odt : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ODT";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_bid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bid";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_bresp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bresp";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_rdata : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rdata";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_rid : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rid";
  attribute X_INTERFACE_INFO of s_sh_sh_cl_ddr_rresp : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rresp";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_addr0 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr0";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_addr1 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr1";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_addr2 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr2";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_wdata0 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata0";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_wdata1 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata1";
  attribute X_INTERFACE_INFO of s_sh_sh_ddr_stat_wdata2 : signal is "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata2";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_3329
     port map (
      S00_AXI_araddr(36 downto 0) => S00_AXI_araddr(36 downto 0),
      S00_AXI_arid(5 downto 0) => S00_AXI_arid(5 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_awaddr(36 downto 0) => S00_AXI_awaddr(36 downto 0),
      S00_AXI_awid(5 downto 0) => S00_AXI_awid(5 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_bid(5 downto 0) => S00_AXI_bid(5 downto 0),
      S00_AXI_bready => S00_AXI_bready,
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_rdata(511 downto 0) => S00_AXI_rdata(511 downto 0),
      S00_AXI_rid(5 downto 0) => S00_AXI_rid(5 downto 0),
      S00_AXI_rlast => S00_AXI_rlast,
      S00_AXI_rready => S00_AXI_rready,
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S00_AXI_rvalid,
      S00_AXI_wdata(511 downto 0) => S00_AXI_wdata(511 downto 0),
      S00_AXI_wlast => S00_AXI_wlast,
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_wstrb(63 downto 0) => S00_AXI_wstrb(63 downto 0),
      S00_AXI_wvalid => S00_AXI_wvalid,
      S01_AXI_araddr(35 downto 0) => S01_AXI_araddr(35 downto 0),
      S01_AXI_arburst(1 downto 0) => S01_AXI_arburst(1 downto 0),
      S01_AXI_arcache(3 downto 0) => S01_AXI_arcache(3 downto 0),
      S01_AXI_arid(0) => S01_AXI_arid(0),
      S01_AXI_arlen(7 downto 0) => S01_AXI_arlen(7 downto 0),
      S01_AXI_arlock(0) => S01_AXI_arlock(0),
      S01_AXI_arprot(2 downto 0) => S01_AXI_arprot(2 downto 0),
      S01_AXI_arqos(3 downto 0) => S01_AXI_arqos(3 downto 0),
      S01_AXI_arready => S01_AXI_arready,
      S01_AXI_arregion(3 downto 0) => S01_AXI_arregion(3 downto 0),
      S01_AXI_arsize(2 downto 0) => S01_AXI_arsize(2 downto 0),
      S01_AXI_arvalid => S01_AXI_arvalid,
      S01_AXI_awaddr(35 downto 0) => S01_AXI_awaddr(35 downto 0),
      S01_AXI_awburst(1 downto 0) => S01_AXI_awburst(1 downto 0),
      S01_AXI_awcache(3 downto 0) => S01_AXI_awcache(3 downto 0),
      S01_AXI_awid(0) => S01_AXI_awid(0),
      S01_AXI_awlen(7 downto 0) => S01_AXI_awlen(7 downto 0),
      S01_AXI_awlock(0) => S01_AXI_awlock(0),
      S01_AXI_awprot(2 downto 0) => S01_AXI_awprot(2 downto 0),
      S01_AXI_awqos(3 downto 0) => S01_AXI_awqos(3 downto 0),
      S01_AXI_awready => S01_AXI_awready,
      S01_AXI_awregion(3 downto 0) => S01_AXI_awregion(3 downto 0),
      S01_AXI_awsize(2 downto 0) => S01_AXI_awsize(2 downto 0),
      S01_AXI_awvalid => S01_AXI_awvalid,
      S01_AXI_bid(0) => S01_AXI_bid(0),
      S01_AXI_bready => S01_AXI_bready,
      S01_AXI_bresp(1 downto 0) => S01_AXI_bresp(1 downto 0),
      S01_AXI_bvalid => S01_AXI_bvalid,
      S01_AXI_rdata(31 downto 0) => S01_AXI_rdata(31 downto 0),
      S01_AXI_rid(0) => S01_AXI_rid(0),
      S01_AXI_rlast => S01_AXI_rlast,
      S01_AXI_rready => S01_AXI_rready,
      S01_AXI_rresp(1 downto 0) => S01_AXI_rresp(1 downto 0),
      S01_AXI_rvalid => S01_AXI_rvalid,
      S01_AXI_wdata(31 downto 0) => S01_AXI_wdata(31 downto 0),
      S01_AXI_wlast => S01_AXI_wlast,
      S01_AXI_wready => S01_AXI_wready,
      S01_AXI_wstrb(3 downto 0) => S01_AXI_wstrb(3 downto 0),
      S01_AXI_wvalid => S01_AXI_wvalid,
      S02_AXI_araddr(35 downto 0) => S02_AXI_araddr(35 downto 0),
      S02_AXI_arburst(1 downto 0) => S02_AXI_arburst(1 downto 0),
      S02_AXI_arcache(3 downto 0) => S02_AXI_arcache(3 downto 0),
      S02_AXI_arid(0) => S02_AXI_arid(0),
      S02_AXI_arlen(7 downto 0) => S02_AXI_arlen(7 downto 0),
      S02_AXI_arlock(0) => S02_AXI_arlock(0),
      S02_AXI_arprot(2 downto 0) => S02_AXI_arprot(2 downto 0),
      S02_AXI_arqos(3 downto 0) => S02_AXI_arqos(3 downto 0),
      S02_AXI_arready => S02_AXI_arready,
      S02_AXI_arregion(3 downto 0) => S02_AXI_arregion(3 downto 0),
      S02_AXI_arsize(2 downto 0) => S02_AXI_arsize(2 downto 0),
      S02_AXI_arvalid => S02_AXI_arvalid,
      S02_AXI_awaddr(35 downto 0) => S02_AXI_awaddr(35 downto 0),
      S02_AXI_awburst(1 downto 0) => S02_AXI_awburst(1 downto 0),
      S02_AXI_awcache(3 downto 0) => S02_AXI_awcache(3 downto 0),
      S02_AXI_awid(0) => S02_AXI_awid(0),
      S02_AXI_awlen(7 downto 0) => S02_AXI_awlen(7 downto 0),
      S02_AXI_awlock(0) => S02_AXI_awlock(0),
      S02_AXI_awprot(2 downto 0) => S02_AXI_awprot(2 downto 0),
      S02_AXI_awqos(3 downto 0) => S02_AXI_awqos(3 downto 0),
      S02_AXI_awready => S02_AXI_awready,
      S02_AXI_awregion(3 downto 0) => S02_AXI_awregion(3 downto 0),
      S02_AXI_awsize(2 downto 0) => S02_AXI_awsize(2 downto 0),
      S02_AXI_awvalid => S02_AXI_awvalid,
      S02_AXI_bid(0) => S02_AXI_bid(0),
      S02_AXI_bready => S02_AXI_bready,
      S02_AXI_bresp(1 downto 0) => S02_AXI_bresp(1 downto 0),
      S02_AXI_bvalid => S02_AXI_bvalid,
      S02_AXI_rdata(31 downto 0) => S02_AXI_rdata(31 downto 0),
      S02_AXI_rid(0) => S02_AXI_rid(0),
      S02_AXI_rlast => S02_AXI_rlast,
      S02_AXI_rready => S02_AXI_rready,
      S02_AXI_rresp(1 downto 0) => S02_AXI_rresp(1 downto 0),
      S02_AXI_rvalid => S02_AXI_rvalid,
      S02_AXI_wdata(31 downto 0) => S02_AXI_wdata(31 downto 0),
      S02_AXI_wlast => S02_AXI_wlast,
      S02_AXI_wready => S02_AXI_wready,
      S02_AXI_wstrb(3 downto 0) => S02_AXI_wstrb(3 downto 0),
      S02_AXI_wvalid => S02_AXI_wvalid,
      aclk => aclk,
      aclk1 => aclk1,
      aresetn => aresetn,
      ddr4_mem_calib_complete => ddr4_mem_calib_complete,
      s_sh_cl_rst_dimm_a_n => s_sh_cl_rst_dimm_a_n,
      s_sh_cl_rst_dimm_b_n => s_sh_cl_rst_dimm_b_n,
      s_sh_cl_rst_dimm_d_n => s_sh_cl_rst_dimm_d_n,
      s_sh_cl_sh_ddr_araddr(63 downto 0) => s_sh_cl_sh_ddr_araddr(63 downto 0),
      s_sh_cl_sh_ddr_arburst(1 downto 0) => s_sh_cl_sh_ddr_arburst(1 downto 0),
      s_sh_cl_sh_ddr_arid(15 downto 0) => s_sh_cl_sh_ddr_arid(15 downto 0),
      s_sh_cl_sh_ddr_arlen(7 downto 0) => s_sh_cl_sh_ddr_arlen(7 downto 0),
      s_sh_cl_sh_ddr_arsize(2 downto 0) => s_sh_cl_sh_ddr_arsize(2 downto 0),
      s_sh_cl_sh_ddr_arvalid => s_sh_cl_sh_ddr_arvalid,
      s_sh_cl_sh_ddr_awaddr(63 downto 0) => s_sh_cl_sh_ddr_awaddr(63 downto 0),
      s_sh_cl_sh_ddr_awburst(1 downto 0) => s_sh_cl_sh_ddr_awburst(1 downto 0),
      s_sh_cl_sh_ddr_awid(15 downto 0) => s_sh_cl_sh_ddr_awid(15 downto 0),
      s_sh_cl_sh_ddr_awlen(7 downto 0) => s_sh_cl_sh_ddr_awlen(7 downto 0),
      s_sh_cl_sh_ddr_awsize(2 downto 0) => s_sh_cl_sh_ddr_awsize(2 downto 0),
      s_sh_cl_sh_ddr_awvalid => s_sh_cl_sh_ddr_awvalid,
      s_sh_cl_sh_ddr_bready => s_sh_cl_sh_ddr_bready,
      s_sh_cl_sh_ddr_rready => s_sh_cl_sh_ddr_rready,
      s_sh_cl_sh_ddr_wdata(511 downto 0) => s_sh_cl_sh_ddr_wdata(511 downto 0),
      s_sh_cl_sh_ddr_wid(15 downto 0) => s_sh_cl_sh_ddr_wid(15 downto 0),
      s_sh_cl_sh_ddr_wlast => s_sh_cl_sh_ddr_wlast,
      s_sh_cl_sh_ddr_wstrb(63 downto 0) => s_sh_cl_sh_ddr_wstrb(63 downto 0),
      s_sh_cl_sh_ddr_wvalid => s_sh_cl_sh_ddr_wvalid,
      s_sh_clk_300m_dimm0_dn => s_sh_clk_300m_dimm0_dn,
      s_sh_clk_300m_dimm0_dp => s_sh_clk_300m_dimm0_dp,
      s_sh_clk_300m_dimm1_dn => s_sh_clk_300m_dimm1_dn,
      s_sh_clk_300m_dimm1_dp => s_sh_clk_300m_dimm1_dp,
      s_sh_clk_300m_dimm3_dn => s_sh_clk_300m_dimm3_dn,
      s_sh_clk_300m_dimm3_dp => s_sh_clk_300m_dimm3_dp,
      s_sh_clk_main_a0 => s_sh_clk_main_a0,
      s_sh_ddr_sh_stat_ack0 => s_sh_ddr_sh_stat_ack0,
      s_sh_ddr_sh_stat_ack1 => s_sh_ddr_sh_stat_ack1,
      s_sh_ddr_sh_stat_ack2 => s_sh_ddr_sh_stat_ack2,
      s_sh_ddr_sh_stat_int0(7 downto 0) => s_sh_ddr_sh_stat_int0(7 downto 0),
      s_sh_ddr_sh_stat_int1(7 downto 0) => s_sh_ddr_sh_stat_int1(7 downto 0),
      s_sh_ddr_sh_stat_int2(7 downto 0) => s_sh_ddr_sh_stat_int2(7 downto 0),
      s_sh_ddr_sh_stat_rdata0(31 downto 0) => s_sh_ddr_sh_stat_rdata0(31 downto 0),
      s_sh_ddr_sh_stat_rdata1(31 downto 0) => s_sh_ddr_sh_stat_rdata1(31 downto 0),
      s_sh_ddr_sh_stat_rdata2(31 downto 0) => s_sh_ddr_sh_stat_rdata2(31 downto 0),
      s_sh_m_a_act_n => s_sh_m_a_act_n,
      s_sh_m_a_ba(1 downto 0) => s_sh_m_a_ba(1 downto 0),
      s_sh_m_a_bg(1 downto 0) => s_sh_m_a_bg(1 downto 0),
      s_sh_m_a_cke(0) => s_sh_m_a_cke(0),
      s_sh_m_a_clk_dn(0) => s_sh_m_a_clk_dn(0),
      s_sh_m_a_clk_dp(0) => s_sh_m_a_clk_dp(0),
      s_sh_m_a_cs_n(0) => s_sh_m_a_cs_n(0),
      s_sh_m_a_dq(63 downto 0) => s_sh_m_a_dq(63 downto 0),
      s_sh_m_a_dqs_dn(17 downto 0) => s_sh_m_a_dqs_dn(17 downto 0),
      s_sh_m_a_dqs_dp(17 downto 0) => s_sh_m_a_dqs_dp(17 downto 0),
      s_sh_m_a_ecc(7 downto 0) => s_sh_m_a_ecc(7 downto 0),
      s_sh_m_a_ma(16 downto 0) => s_sh_m_a_ma(16 downto 0),
      s_sh_m_a_odt(0) => s_sh_m_a_odt(0),
      s_sh_m_a_par => s_sh_m_a_par,
      s_sh_m_b_act_n => s_sh_m_b_act_n,
      s_sh_m_b_ba(1 downto 0) => s_sh_m_b_ba(1 downto 0),
      s_sh_m_b_bg(1 downto 0) => s_sh_m_b_bg(1 downto 0),
      s_sh_m_b_cke(0) => s_sh_m_b_cke(0),
      s_sh_m_b_clk_dn(0) => s_sh_m_b_clk_dn(0),
      s_sh_m_b_clk_dp(0) => s_sh_m_b_clk_dp(0),
      s_sh_m_b_cs_n(0) => s_sh_m_b_cs_n(0),
      s_sh_m_b_dq(63 downto 0) => s_sh_m_b_dq(63 downto 0),
      s_sh_m_b_dqs_dn(17 downto 0) => s_sh_m_b_dqs_dn(17 downto 0),
      s_sh_m_b_dqs_dp(17 downto 0) => s_sh_m_b_dqs_dp(17 downto 0),
      s_sh_m_b_ecc(7 downto 0) => s_sh_m_b_ecc(7 downto 0),
      s_sh_m_b_ma(16 downto 0) => s_sh_m_b_ma(16 downto 0),
      s_sh_m_b_odt(0) => s_sh_m_b_odt(0),
      s_sh_m_b_par => s_sh_m_b_par,
      s_sh_m_d_act_n => s_sh_m_d_act_n,
      s_sh_m_d_ba(1 downto 0) => s_sh_m_d_ba(1 downto 0),
      s_sh_m_d_bg(1 downto 0) => s_sh_m_d_bg(1 downto 0),
      s_sh_m_d_cke(0) => s_sh_m_d_cke(0),
      s_sh_m_d_clk_dn(0) => s_sh_m_d_clk_dn(0),
      s_sh_m_d_clk_dp(0) => s_sh_m_d_clk_dp(0),
      s_sh_m_d_cs_n(0) => s_sh_m_d_cs_n(0),
      s_sh_m_d_dq(63 downto 0) => s_sh_m_d_dq(63 downto 0),
      s_sh_m_d_dqs_dn(17 downto 0) => s_sh_m_d_dqs_dn(17 downto 0),
      s_sh_m_d_dqs_dp(17 downto 0) => s_sh_m_d_dqs_dp(17 downto 0),
      s_sh_m_d_ecc(7 downto 0) => s_sh_m_d_ecc(7 downto 0),
      s_sh_m_d_ma(16 downto 0) => s_sh_m_d_ma(16 downto 0),
      s_sh_m_d_odt(0) => s_sh_m_d_odt(0),
      s_sh_m_d_par => s_sh_m_d_par,
      s_sh_rst_main_n => s_sh_rst_main_n,
      s_sh_sh_cl_ddr_arready => s_sh_sh_cl_ddr_arready,
      s_sh_sh_cl_ddr_awready => s_sh_sh_cl_ddr_awready,
      s_sh_sh_cl_ddr_bid(15 downto 0) => s_sh_sh_cl_ddr_bid(15 downto 0),
      s_sh_sh_cl_ddr_bresp(1 downto 0) => s_sh_sh_cl_ddr_bresp(1 downto 0),
      s_sh_sh_cl_ddr_bvalid => s_sh_sh_cl_ddr_bvalid,
      s_sh_sh_cl_ddr_is_ready => s_sh_sh_cl_ddr_is_ready,
      s_sh_sh_cl_ddr_rdata(511 downto 0) => s_sh_sh_cl_ddr_rdata(511 downto 0),
      s_sh_sh_cl_ddr_rid(15 downto 0) => s_sh_sh_cl_ddr_rid(15 downto 0),
      s_sh_sh_cl_ddr_rlast => s_sh_sh_cl_ddr_rlast,
      s_sh_sh_cl_ddr_rresp(1 downto 0) => s_sh_sh_cl_ddr_rresp(1 downto 0),
      s_sh_sh_cl_ddr_rvalid => s_sh_sh_cl_ddr_rvalid,
      s_sh_sh_cl_ddr_wready => s_sh_sh_cl_ddr_wready,
      s_sh_sh_ddr_stat_addr0(7 downto 0) => s_sh_sh_ddr_stat_addr0(7 downto 0),
      s_sh_sh_ddr_stat_addr1(7 downto 0) => s_sh_sh_ddr_stat_addr1(7 downto 0),
      s_sh_sh_ddr_stat_addr2(7 downto 0) => s_sh_sh_ddr_stat_addr2(7 downto 0),
      s_sh_sh_ddr_stat_rd0 => s_sh_sh_ddr_stat_rd0,
      s_sh_sh_ddr_stat_rd1 => s_sh_sh_ddr_stat_rd1,
      s_sh_sh_ddr_stat_rd2 => s_sh_sh_ddr_stat_rd2,
      s_sh_sh_ddr_stat_wdata0(31 downto 0) => s_sh_sh_ddr_stat_wdata0(31 downto 0),
      s_sh_sh_ddr_stat_wdata1(31 downto 0) => s_sh_sh_ddr_stat_wdata1(31 downto 0),
      s_sh_sh_ddr_stat_wdata2(31 downto 0) => s_sh_sh_ddr_stat_wdata2(31 downto 0),
      s_sh_sh_ddr_stat_wr0 => s_sh_sh_ddr_stat_wr0,
      s_sh_sh_ddr_stat_wr1 => s_sh_sh_ddr_stat_wr1,
      s_sh_sh_ddr_stat_wr2 => s_sh_sh_ddr_stat_wr2
    );
end STRUCTURE;
