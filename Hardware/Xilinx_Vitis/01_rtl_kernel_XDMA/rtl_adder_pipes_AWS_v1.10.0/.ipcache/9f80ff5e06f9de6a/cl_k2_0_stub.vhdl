-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Mar 30 13:14:40 2021
-- Host        : ip-172-31-9-235.eu-west-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cl_k2_0_stub.vhdl
-- Design      : cl_k2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu9p-flgb2104-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_clk_2 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_rst_n_2 : in STD_LOGIC;
    p0_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p0_TVALID : in STD_LOGIC;
    p0_TREADY : out STD_LOGIC;
    p1_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    p1_TVALID : out STD_LOGIC;
    p1_TREADY : in STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    drm_to_uip_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    drm_to_uip_tvalid : in STD_LOGIC;
    drm_to_uip_tready : out STD_LOGIC;
    uip_to_drm_tready : in STD_LOGIC;
    uip_to_drm_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    uip_to_drm_tvalid : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_clk_2,ap_rst_n,ap_rst_n_2,p0_TDATA[31:0],p0_TVALID,p0_TREADY,p1_TDATA[31:0],p1_TVALID,p1_TREADY,s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_AWADDR[5:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_ARADDR[5:0],s_axi_control_RVALID,s_axi_control_RREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_BRESP[1:0],drm_to_uip_tdata[31:0],drm_to_uip_tvalid,drm_to_uip_tready,uip_to_drm_tready,uip_to_drm_tdata[31:0],uip_to_drm_tvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "krnl_adder_stage_rtl,Vivado 2020.2";
begin
end;
