-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Mar 30 13:16:13 2021
-- Host        : ip-172-31-9-235.eu-west-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cl_k4_0_stub.vhdl
-- Design      : cl_k4_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu9p-flgb2104-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_clk_2 : in STD_LOGIC;
    ap_rst_n_2 : in STD_LOGIC;
    drm_to_uip0_tready : in STD_LOGIC;
    drm_to_uip0_tvalid : out STD_LOGIC;
    drm_to_uip0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    uip0_to_drm_tready : out STD_LOGIC;
    uip0_to_drm_tvalid : in STD_LOGIC;
    uip0_to_drm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_awvalid : in STD_LOGIC;
    s_axi_control_awready : out STD_LOGIC;
    s_axi_control_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_control_wvalid : in STD_LOGIC;
    s_axi_control_wready : out STD_LOGIC;
    s_axi_control_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_bvalid : out STD_LOGIC;
    s_axi_control_bready : in STD_LOGIC;
    s_axi_control_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_arvalid : in STD_LOGIC;
    s_axi_control_arready : out STD_LOGIC;
    s_axi_control_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_control_rvalid : out STD_LOGIC;
    s_axi_control_rready : in STD_LOGIC;
    s_axi_control_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,ap_clk_2,ap_rst_n_2,drm_to_uip0_tready,drm_to_uip0_tvalid,drm_to_uip0_tdata[31:0],uip0_to_drm_tready,uip0_to_drm_tvalid,uip0_to_drm_tdata[31:0],s_axi_control_awvalid,s_axi_control_awready,s_axi_control_awaddr[15:0],s_axi_control_wvalid,s_axi_control_wready,s_axi_control_wdata[31:0],s_axi_control_wstrb[3:0],s_axi_control_bvalid,s_axi_control_bready,s_axi_control_bresp[1:0],s_axi_control_arvalid,s_axi_control_arready,s_axi_control_araddr[15:0],s_axi_control_rvalid,s_axi_control_rready,s_axi_control_rdata[31:0],s_axi_control_rresp[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "kernel_drm_controller,Vivado 2020.2";
begin
end;
