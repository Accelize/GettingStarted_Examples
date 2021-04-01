-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Mar 30 13:18:27 2021
-- Host        : ip-172-31-9-235.eu-west-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cl_k3_0_sim_netlist.vhdl
-- Design      : cl_k3_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvu9p-flgb2104-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_control_s_axi is
  port (
    FSM_sequential_rstate_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 22 downto 0 );
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    ap_start : out STD_LOGIC;
    \addr_reg[8]\ : out STD_LOGIC;
    \addr_reg[7]\ : out STD_LOGIC;
    \addr_reg[6]\ : out STD_LOGIC;
    \addr_reg[5]\ : out STD_LOGIC;
    \addr_reg[4]\ : out STD_LOGIC;
    \addr_reg[3]\ : out STD_LOGIC;
    \addr_reg[2]\ : out STD_LOGIC;
    \addr_reg[1]\ : out STD_LOGIC;
    \addr_reg[0]\ : out STD_LOGIC;
    ap_start_pulse : out STD_LOGIC;
    \int_size_reg[31]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \int_size_reg[23]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[24]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[32]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[40]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[48]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[56]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[63]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    areset : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    int_ap_start_reg_0 : in STD_LOGIC;
    m_axi_gmem_BVALID : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ap_idle : in STD_LOGIC;
    m_axi_gmem_AWADDR : in STD_LOGIC_VECTOR ( 63 downto 0 );
    ap_start_r : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_control_s_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_control_s_axi is
  signal \FSM_onehot_wstate[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate_reg_n_0_[0]\ : STD_LOGIC;
  signal \^fsm_sequential_rstate_reg_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \addr[16]_i_10_n_0\ : STD_LOGIC;
  signal \addr[16]_i_2_n_0\ : STD_LOGIC;
  signal \addr[16]_i_3_n_0\ : STD_LOGIC;
  signal \addr[16]_i_4_n_0\ : STD_LOGIC;
  signal \addr[16]_i_5_n_0\ : STD_LOGIC;
  signal \addr[16]_i_6_n_0\ : STD_LOGIC;
  signal \addr[16]_i_7_n_0\ : STD_LOGIC;
  signal \addr[16]_i_8_n_0\ : STD_LOGIC;
  signal \addr[16]_i_9_n_0\ : STD_LOGIC;
  signal \addr[24]_i_2_n_0\ : STD_LOGIC;
  signal \addr[24]_i_3_n_0\ : STD_LOGIC;
  signal \addr[24]_i_4_n_0\ : STD_LOGIC;
  signal \addr[24]_i_5_n_0\ : STD_LOGIC;
  signal \addr[24]_i_6_n_0\ : STD_LOGIC;
  signal \addr[24]_i_7_n_0\ : STD_LOGIC;
  signal \addr[24]_i_8_n_0\ : STD_LOGIC;
  signal \addr[24]_i_9_n_0\ : STD_LOGIC;
  signal \addr[32]_i_2_n_0\ : STD_LOGIC;
  signal \addr[32]_i_3_n_0\ : STD_LOGIC;
  signal \addr[32]_i_4_n_0\ : STD_LOGIC;
  signal \addr[32]_i_5_n_0\ : STD_LOGIC;
  signal \addr[32]_i_6_n_0\ : STD_LOGIC;
  signal \addr[32]_i_7_n_0\ : STD_LOGIC;
  signal \addr[32]_i_8_n_0\ : STD_LOGIC;
  signal \addr[32]_i_9_n_0\ : STD_LOGIC;
  signal \addr[40]_i_2_n_0\ : STD_LOGIC;
  signal \addr[40]_i_3_n_0\ : STD_LOGIC;
  signal \addr[40]_i_4_n_0\ : STD_LOGIC;
  signal \addr[40]_i_5_n_0\ : STD_LOGIC;
  signal \addr[40]_i_6_n_0\ : STD_LOGIC;
  signal \addr[40]_i_7_n_0\ : STD_LOGIC;
  signal \addr[40]_i_8_n_0\ : STD_LOGIC;
  signal \addr[40]_i_9_n_0\ : STD_LOGIC;
  signal \addr[48]_i_2_n_0\ : STD_LOGIC;
  signal \addr[48]_i_3_n_0\ : STD_LOGIC;
  signal \addr[48]_i_4_n_0\ : STD_LOGIC;
  signal \addr[48]_i_5_n_0\ : STD_LOGIC;
  signal \addr[48]_i_6_n_0\ : STD_LOGIC;
  signal \addr[48]_i_7_n_0\ : STD_LOGIC;
  signal \addr[48]_i_8_n_0\ : STD_LOGIC;
  signal \addr[48]_i_9_n_0\ : STD_LOGIC;
  signal \addr[56]_i_2_n_0\ : STD_LOGIC;
  signal \addr[56]_i_3_n_0\ : STD_LOGIC;
  signal \addr[56]_i_4_n_0\ : STD_LOGIC;
  signal \addr[56]_i_5_n_0\ : STD_LOGIC;
  signal \addr[56]_i_6_n_0\ : STD_LOGIC;
  signal \addr[56]_i_7_n_0\ : STD_LOGIC;
  signal \addr[56]_i_8_n_0\ : STD_LOGIC;
  signal \addr[56]_i_9_n_0\ : STD_LOGIC;
  signal \addr[63]_i_3_n_0\ : STD_LOGIC;
  signal \addr[63]_i_4_n_0\ : STD_LOGIC;
  signal \addr[63]_i_5_n_0\ : STD_LOGIC;
  signal \addr[63]_i_6_n_0\ : STD_LOGIC;
  signal \addr[63]_i_7_n_0\ : STD_LOGIC;
  signal \addr[63]_i_8_n_0\ : STD_LOGIC;
  signal \addr[63]_i_9_n_0\ : STD_LOGIC;
  signal \addr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[48]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[48]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[48]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[48]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[48]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[48]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[48]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[56]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[56]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[56]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[56]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[56]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[56]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[56]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[56]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_2\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_3\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_4\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_5\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_6\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_7\ : STD_LOGIC;
  signal \^ap_start\ : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal ctrl_length : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ctrl_offset : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \final_burst_len[7]_i_2_n_0\ : STD_LOGIC;
  signal int_ap_done : STD_LOGIC;
  signal int_ap_done_i_1_n_0 : STD_LOGIC;
  signal int_ap_start3_out : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_auto_restart : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal int_ier9_out : STD_LOGIC;
  signal \int_ier[1]_i_2_n_0\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal int_isr6_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_output_r[31]_i_1_n_0\ : STD_LOGIC;
  signal \int_output_r[31]_i_3_n_0\ : STD_LOGIC;
  signal \int_output_r[63]_i_1_n_0\ : STD_LOGIC;
  signal int_output_r_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_output_r_reg04_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \int_p_xcl_gv_p1[31]_i_1_n_0\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1[31]_i_3_n_0\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1[63]_i_1_n_0\ : STD_LOGIC;
  signal int_p_xcl_gv_p1_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_p_xcl_gv_p1_reg01_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \int_p_xcl_gv_p1_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[10]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[11]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[12]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[13]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[14]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[15]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[16]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[17]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[18]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[19]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[1]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[20]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[21]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[22]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[23]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[24]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[25]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[26]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[27]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[28]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[29]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[2]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[30]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[31]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[32]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[33]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[34]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[35]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[36]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[37]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[38]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[39]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[3]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[40]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[41]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[42]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[43]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[44]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[45]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[46]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[47]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[48]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[49]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[4]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[50]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[51]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[52]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[53]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[54]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[55]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[56]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[57]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[58]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[59]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[5]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[60]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[61]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[62]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[63]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[6]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[7]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[8]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p1_reg_n_0_[9]\ : STD_LOGIC;
  signal int_size0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \int_size[31]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_7_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal rnext : STD_LOGIC;
  signal \^s_axi_control_bvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \NLW_addr_reg[63]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_addr_reg[63]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_wstate[1]_i_1\ : label is "soft_lutpair14";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[0]\ : label is "WRDATA:010,WRRESP:100,WRIDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:010,WRRESP:100,WRIDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:010,WRRESP:100,WRIDLE:001";
  attribute SOFT_HLUTNM of FSM_sequential_rstate_i_1 : label is "soft_lutpair17";
  attribute FSM_ENCODED_STATES of FSM_sequential_rstate_reg : label is "RDIDLE:0,RDDATA:1";
  attribute SOFT_HLUTNM of \addr[8]_i_1\ : label is "soft_lutpair13";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \addr_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[32]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[40]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[48]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[56]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[63]_i_2\ : label is 16;
  attribute SOFT_HLUTNM of \final_burst_len[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \final_burst_len[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \final_burst_len[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \final_burst_len[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \final_burst_len[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \final_burst_len[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_ier[1]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_output_r[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_output_r[10]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \int_output_r[11]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \int_output_r[12]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \int_output_r[13]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \int_output_r[14]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \int_output_r[15]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \int_output_r[16]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \int_output_r[17]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \int_output_r[18]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \int_output_r[19]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \int_output_r[1]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \int_output_r[20]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \int_output_r[21]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \int_output_r[22]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \int_output_r[23]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \int_output_r[24]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \int_output_r[25]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \int_output_r[26]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \int_output_r[27]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \int_output_r[28]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \int_output_r[29]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \int_output_r[2]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \int_output_r[30]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \int_output_r[31]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \int_output_r[32]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_output_r[33]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \int_output_r[34]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \int_output_r[35]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \int_output_r[36]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \int_output_r[37]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \int_output_r[38]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \int_output_r[39]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \int_output_r[3]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \int_output_r[40]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \int_output_r[41]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \int_output_r[42]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \int_output_r[43]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \int_output_r[44]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \int_output_r[45]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \int_output_r[46]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \int_output_r[47]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \int_output_r[48]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \int_output_r[49]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \int_output_r[4]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \int_output_r[50]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \int_output_r[51]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \int_output_r[52]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \int_output_r[53]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \int_output_r[54]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \int_output_r[55]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \int_output_r[56]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \int_output_r[57]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \int_output_r[58]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \int_output_r[59]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \int_output_r[5]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \int_output_r[60]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \int_output_r[61]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \int_output_r[62]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \int_output_r[63]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \int_output_r[6]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \int_output_r[7]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \int_output_r[8]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \int_output_r[9]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[10]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[11]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[12]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[13]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[14]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[15]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[16]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[17]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[18]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[19]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[1]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[20]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[21]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[22]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[23]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[24]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[25]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[26]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[27]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[28]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[29]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[2]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[30]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[31]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[31]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[32]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[33]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[34]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[35]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[36]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[37]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[38]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[39]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[3]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[40]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[41]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[42]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[43]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[44]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[45]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[46]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[47]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[48]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[49]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[4]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[50]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[51]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[52]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[53]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[54]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[55]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[56]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[57]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[58]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[59]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[5]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[60]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[61]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[62]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[63]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[6]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[7]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[8]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p1[9]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \int_size[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_size[10]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \int_size[11]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \int_size[12]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \int_size[13]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \int_size[14]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \int_size[15]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \int_size[16]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \int_size[17]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \int_size[18]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \int_size[19]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \int_size[1]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \int_size[20]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \int_size[21]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \int_size[22]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \int_size[23]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \int_size[24]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \int_size[25]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \int_size[26]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \int_size[27]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \int_size[28]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \int_size[29]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \int_size[2]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \int_size[30]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \int_size[31]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \int_size[3]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \int_size[4]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \int_size[5]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \int_size[6]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \int_size[7]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \int_size[8]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \int_size[9]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of s_axi_control_ARREADY_INST_0 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of s_axi_control_AWREADY_INST_0 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of start_i_1 : label is "soft_lutpair13";
begin
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  FSM_sequential_rstate_reg_0 <= \^fsm_sequential_rstate_reg_0\;
  Q(22 downto 0) <= \^q\(22 downto 0);
  ap_start <= \^ap_start\;
  s_axi_control_BVALID <= \^s_axi_control_bvalid\;
\FSM_onehot_wstate[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_control_AWVALID,
      I1 => \FSM_onehot_wstate_reg_n_0_[0]\,
      I2 => \^s_axi_control_bvalid\,
      I3 => s_axi_control_BREADY,
      O => \FSM_onehot_wstate[0]_i_1_n_0\
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_wstate_reg_n_0_[0]\,
      I1 => s_axi_control_AWVALID,
      I2 => s_axi_control_WVALID,
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      O => \FSM_onehot_wstate[1]_i_1_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_control_BREADY,
      I1 => \^s_axi_control_bvalid\,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => s_axi_control_WVALID,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[0]_i_1_n_0\,
      Q => \FSM_onehot_wstate_reg_n_0_[0]\,
      S => areset
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => areset
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^s_axi_control_bvalid\,
      R => areset
    );
FSM_sequential_rstate_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => s_axi_control_RREADY,
      I1 => \^fsm_sequential_rstate_reg_0\,
      I2 => s_axi_control_ARVALID,
      O => rnext
    );
FSM_sequential_rstate_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => rnext,
      Q => \^fsm_sequential_rstate_reg_0\,
      R => areset
    );
\addr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(0),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(0),
      O => \addr_reg[0]\
    );
\addr[16]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(9),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(9),
      O => \addr[16]_i_10_n_0\
    );
\addr[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_start_r,
      I1 => \^ap_start\,
      O => \addr[16]_i_2_n_0\
    );
\addr[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(16),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(16),
      O => \addr[16]_i_3_n_0\
    );
\addr[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(15),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(15),
      O => \addr[16]_i_4_n_0\
    );
\addr[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(14),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(14),
      O => \addr[16]_i_5_n_0\
    );
\addr[16]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(13),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(13),
      O => \addr[16]_i_6_n_0\
    );
\addr[16]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(12),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(12),
      O => \addr[16]_i_7_n_0\
    );
\addr[16]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(11),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(11),
      O => \addr[16]_i_8_n_0\
    );
\addr[16]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"33A3"
    )
        port map (
      I0 => ctrl_offset(10),
      I1 => m_axi_gmem_AWADDR(10),
      I2 => \^ap_start\,
      I3 => ap_start_r,
      O => \addr[16]_i_9_n_0\
    );
\addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(1),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(1),
      O => \addr_reg[1]\
    );
\addr[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(24),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(24),
      O => \addr[24]_i_2_n_0\
    );
\addr[24]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(23),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(23),
      O => \addr[24]_i_3_n_0\
    );
\addr[24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(22),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(22),
      O => \addr[24]_i_4_n_0\
    );
\addr[24]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(21),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(21),
      O => \addr[24]_i_5_n_0\
    );
\addr[24]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(20),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(20),
      O => \addr[24]_i_6_n_0\
    );
\addr[24]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(19),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(19),
      O => \addr[24]_i_7_n_0\
    );
\addr[24]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(18),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(18),
      O => \addr[24]_i_8_n_0\
    );
\addr[24]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(17),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(17),
      O => \addr[24]_i_9_n_0\
    );
\addr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(2),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(2),
      O => \addr_reg[2]\
    );
\addr[32]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(32),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(32),
      O => \addr[32]_i_2_n_0\
    );
\addr[32]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(31),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(31),
      O => \addr[32]_i_3_n_0\
    );
\addr[32]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(30),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(30),
      O => \addr[32]_i_4_n_0\
    );
\addr[32]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(29),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(29),
      O => \addr[32]_i_5_n_0\
    );
\addr[32]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(28),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(28),
      O => \addr[32]_i_6_n_0\
    );
\addr[32]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(27),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(27),
      O => \addr[32]_i_7_n_0\
    );
\addr[32]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(26),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(26),
      O => \addr[32]_i_8_n_0\
    );
\addr[32]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(25),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(25),
      O => \addr[32]_i_9_n_0\
    );
\addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(3),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(3),
      O => \addr_reg[3]\
    );
\addr[40]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(40),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(40),
      O => \addr[40]_i_2_n_0\
    );
\addr[40]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(39),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(39),
      O => \addr[40]_i_3_n_0\
    );
\addr[40]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(38),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(38),
      O => \addr[40]_i_4_n_0\
    );
\addr[40]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(37),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(37),
      O => \addr[40]_i_5_n_0\
    );
\addr[40]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(36),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(36),
      O => \addr[40]_i_6_n_0\
    );
\addr[40]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(35),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(35),
      O => \addr[40]_i_7_n_0\
    );
\addr[40]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(34),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(34),
      O => \addr[40]_i_8_n_0\
    );
\addr[40]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(33),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(33),
      O => \addr[40]_i_9_n_0\
    );
\addr[48]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(48),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(48),
      O => \addr[48]_i_2_n_0\
    );
\addr[48]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(47),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(47),
      O => \addr[48]_i_3_n_0\
    );
\addr[48]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(46),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(46),
      O => \addr[48]_i_4_n_0\
    );
\addr[48]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(45),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(45),
      O => \addr[48]_i_5_n_0\
    );
\addr[48]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(44),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(44),
      O => \addr[48]_i_6_n_0\
    );
\addr[48]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(43),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(43),
      O => \addr[48]_i_7_n_0\
    );
\addr[48]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(42),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(42),
      O => \addr[48]_i_8_n_0\
    );
\addr[48]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(41),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(41),
      O => \addr[48]_i_9_n_0\
    );
\addr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(4),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(4),
      O => \addr_reg[4]\
    );
\addr[56]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(56),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(56),
      O => \addr[56]_i_2_n_0\
    );
\addr[56]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(55),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(55),
      O => \addr[56]_i_3_n_0\
    );
\addr[56]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(54),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(54),
      O => \addr[56]_i_4_n_0\
    );
\addr[56]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(53),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(53),
      O => \addr[56]_i_5_n_0\
    );
\addr[56]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(52),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(52),
      O => \addr[56]_i_6_n_0\
    );
\addr[56]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(51),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(51),
      O => \addr[56]_i_7_n_0\
    );
\addr[56]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(50),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(50),
      O => \addr[56]_i_8_n_0\
    );
\addr[56]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(49),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(49),
      O => \addr[56]_i_9_n_0\
    );
\addr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(5),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(5),
      O => \addr_reg[5]\
    );
\addr[63]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(63),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(63),
      O => \addr[63]_i_3_n_0\
    );
\addr[63]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(62),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(62),
      O => \addr[63]_i_4_n_0\
    );
\addr[63]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(61),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(61),
      O => \addr[63]_i_5_n_0\
    );
\addr[63]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(60),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(60),
      O => \addr[63]_i_6_n_0\
    );
\addr[63]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(59),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(59),
      O => \addr[63]_i_7_n_0\
    );
\addr[63]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(58),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(58),
      O => \addr[63]_i_8_n_0\
    );
\addr[63]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(57),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(57),
      O => \addr[63]_i_9_n_0\
    );
\addr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(6),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(6),
      O => \addr_reg[6]\
    );
\addr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(7),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(7),
      O => \addr_reg[7]\
    );
\addr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_AWADDR(8),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(8),
      O => \addr_reg[8]\
    );
\addr_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \addr_reg[16]_i_1_n_0\,
      CO(6) => \addr_reg[16]_i_1_n_1\,
      CO(5) => \addr_reg[16]_i_1_n_2\,
      CO(4) => \addr_reg[16]_i_1_n_3\,
      CO(3) => \addr_reg[16]_i_1_n_4\,
      CO(2) => \addr_reg[16]_i_1_n_5\,
      CO(1) => \addr_reg[16]_i_1_n_6\,
      CO(0) => \addr_reg[16]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \addr[16]_i_2_n_0\,
      DI(0) => '0',
      O(7 downto 0) => O(7 downto 0),
      S(7) => \addr[16]_i_3_n_0\,
      S(6) => \addr[16]_i_4_n_0\,
      S(5) => \addr[16]_i_5_n_0\,
      S(4) => \addr[16]_i_6_n_0\,
      S(3) => \addr[16]_i_7_n_0\,
      S(2) => \addr[16]_i_8_n_0\,
      S(1) => \addr[16]_i_9_n_0\,
      S(0) => \addr[16]_i_10_n_0\
    );
\addr_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[24]_i_1_n_0\,
      CO(6) => \addr_reg[24]_i_1_n_1\,
      CO(5) => \addr_reg[24]_i_1_n_2\,
      CO(4) => \addr_reg[24]_i_1_n_3\,
      CO(3) => \addr_reg[24]_i_1_n_4\,
      CO(2) => \addr_reg[24]_i_1_n_5\,
      CO(1) => \addr_reg[24]_i_1_n_6\,
      CO(0) => \addr_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \addr_reg[24]\(7 downto 0),
      S(7) => \addr[24]_i_2_n_0\,
      S(6) => \addr[24]_i_3_n_0\,
      S(5) => \addr[24]_i_4_n_0\,
      S(4) => \addr[24]_i_5_n_0\,
      S(3) => \addr[24]_i_6_n_0\,
      S(2) => \addr[24]_i_7_n_0\,
      S(1) => \addr[24]_i_8_n_0\,
      S(0) => \addr[24]_i_9_n_0\
    );
\addr_reg[32]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[24]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[32]_i_1_n_0\,
      CO(6) => \addr_reg[32]_i_1_n_1\,
      CO(5) => \addr_reg[32]_i_1_n_2\,
      CO(4) => \addr_reg[32]_i_1_n_3\,
      CO(3) => \addr_reg[32]_i_1_n_4\,
      CO(2) => \addr_reg[32]_i_1_n_5\,
      CO(1) => \addr_reg[32]_i_1_n_6\,
      CO(0) => \addr_reg[32]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \addr_reg[32]\(7 downto 0),
      S(7) => \addr[32]_i_2_n_0\,
      S(6) => \addr[32]_i_3_n_0\,
      S(5) => \addr[32]_i_4_n_0\,
      S(4) => \addr[32]_i_5_n_0\,
      S(3) => \addr[32]_i_6_n_0\,
      S(2) => \addr[32]_i_7_n_0\,
      S(1) => \addr[32]_i_8_n_0\,
      S(0) => \addr[32]_i_9_n_0\
    );
\addr_reg[40]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[32]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[40]_i_1_n_0\,
      CO(6) => \addr_reg[40]_i_1_n_1\,
      CO(5) => \addr_reg[40]_i_1_n_2\,
      CO(4) => \addr_reg[40]_i_1_n_3\,
      CO(3) => \addr_reg[40]_i_1_n_4\,
      CO(2) => \addr_reg[40]_i_1_n_5\,
      CO(1) => \addr_reg[40]_i_1_n_6\,
      CO(0) => \addr_reg[40]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \addr_reg[40]\(7 downto 0),
      S(7) => \addr[40]_i_2_n_0\,
      S(6) => \addr[40]_i_3_n_0\,
      S(5) => \addr[40]_i_4_n_0\,
      S(4) => \addr[40]_i_5_n_0\,
      S(3) => \addr[40]_i_6_n_0\,
      S(2) => \addr[40]_i_7_n_0\,
      S(1) => \addr[40]_i_8_n_0\,
      S(0) => \addr[40]_i_9_n_0\
    );
\addr_reg[48]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[40]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[48]_i_1_n_0\,
      CO(6) => \addr_reg[48]_i_1_n_1\,
      CO(5) => \addr_reg[48]_i_1_n_2\,
      CO(4) => \addr_reg[48]_i_1_n_3\,
      CO(3) => \addr_reg[48]_i_1_n_4\,
      CO(2) => \addr_reg[48]_i_1_n_5\,
      CO(1) => \addr_reg[48]_i_1_n_6\,
      CO(0) => \addr_reg[48]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \addr_reg[48]\(7 downto 0),
      S(7) => \addr[48]_i_2_n_0\,
      S(6) => \addr[48]_i_3_n_0\,
      S(5) => \addr[48]_i_4_n_0\,
      S(4) => \addr[48]_i_5_n_0\,
      S(3) => \addr[48]_i_6_n_0\,
      S(2) => \addr[48]_i_7_n_0\,
      S(1) => \addr[48]_i_8_n_0\,
      S(0) => \addr[48]_i_9_n_0\
    );
\addr_reg[56]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[48]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[56]_i_1_n_0\,
      CO(6) => \addr_reg[56]_i_1_n_1\,
      CO(5) => \addr_reg[56]_i_1_n_2\,
      CO(4) => \addr_reg[56]_i_1_n_3\,
      CO(3) => \addr_reg[56]_i_1_n_4\,
      CO(2) => \addr_reg[56]_i_1_n_5\,
      CO(1) => \addr_reg[56]_i_1_n_6\,
      CO(0) => \addr_reg[56]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \addr_reg[56]\(7 downto 0),
      S(7) => \addr[56]_i_2_n_0\,
      S(6) => \addr[56]_i_3_n_0\,
      S(5) => \addr[56]_i_4_n_0\,
      S(4) => \addr[56]_i_5_n_0\,
      S(3) => \addr[56]_i_6_n_0\,
      S(2) => \addr[56]_i_7_n_0\,
      S(1) => \addr[56]_i_8_n_0\,
      S(0) => \addr[56]_i_9_n_0\
    );
\addr_reg[63]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[56]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_addr_reg[63]_i_2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \addr_reg[63]_i_2_n_2\,
      CO(4) => \addr_reg[63]_i_2_n_3\,
      CO(3) => \addr_reg[63]_i_2_n_4\,
      CO(2) => \addr_reg[63]_i_2_n_5\,
      CO(1) => \addr_reg[63]_i_2_n_6\,
      CO(0) => \addr_reg[63]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_addr_reg[63]_i_2_O_UNCONNECTED\(7),
      O(6 downto 0) => \addr_reg[63]\(6 downto 0),
      S(7) => '0',
      S(6) => \addr[63]_i_3_n_0\,
      S(5) => \addr[63]_i_4_n_0\,
      S(4) => \addr[63]_i_5_n_0\,
      S(3) => \addr[63]_i_6_n_0\,
      S(2) => \addr[63]_i_7_n_0\,
      S(1) => \addr[63]_i_8_n_0\,
      S(0) => \addr[63]_i_9_n_0\
    );
\final_burst_len[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctrl_length(0),
      O => D(0)
    );
\final_burst_len[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => ctrl_length(0),
      I1 => ctrl_length(1),
      O => D(1)
    );
\final_burst_len[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => ctrl_length(1),
      I1 => ctrl_length(0),
      I2 => ctrl_length(2),
      O => D(2)
    );
\final_burst_len[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => ctrl_length(2),
      I1 => ctrl_length(0),
      I2 => ctrl_length(1),
      I3 => ctrl_length(3),
      O => D(3)
    );
\final_burst_len[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => ctrl_length(3),
      I1 => ctrl_length(1),
      I2 => ctrl_length(0),
      I3 => ctrl_length(2),
      I4 => ctrl_length(4),
      O => D(4)
    );
\final_burst_len[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => ctrl_length(4),
      I1 => ctrl_length(2),
      I2 => ctrl_length(0),
      I3 => ctrl_length(1),
      I4 => ctrl_length(3),
      I5 => ctrl_length(5),
      O => D(5)
    );
\final_burst_len[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \final_burst_len[7]_i_2_n_0\,
      I1 => ctrl_length(6),
      O => D(6)
    );
\final_burst_len[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => ctrl_length(6),
      I1 => \final_burst_len[7]_i_2_n_0\,
      I2 => ctrl_length(7),
      O => D(7)
    );
\final_burst_len[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ctrl_length(4),
      I1 => ctrl_length(2),
      I2 => ctrl_length(0),
      I3 => ctrl_length(1),
      I4 => ctrl_length(3),
      I5 => ctrl_length(5),
      O => \final_burst_len[7]_i_2_n_0\
    );
int_ap_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F000"
    )
        port map (
      I0 => \rdata[0]_i_5_n_0\,
      I1 => ar_hs,
      I2 => m_axi_gmem_BVALID,
      I3 => int_ap_start_reg_0,
      I4 => int_ap_done,
      O => int_ap_done_i_1_n_0
    );
int_ap_done_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_done_i_1_n_0,
      Q => int_ap_done,
      R => areset
    );
int_ap_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFF80"
    )
        port map (
      I0 => int_auto_restart,
      I1 => m_axi_gmem_BVALID,
      I2 => int_ap_start_reg_0,
      I3 => int_ap_start3_out,
      I4 => \^ap_start\,
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => s_axi_control_WDATA(0),
      I3 => s_axi_control_WSTRB(0),
      I4 => \int_output_r[31]_i_3_n_0\,
      O => int_ap_start3_out
    );
int_ap_start_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => \^ap_start\,
      R => areset
    );
int_auto_restart_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[4]\,
      I4 => \int_output_r[31]_i_3_n_0\,
      I5 => int_auto_restart,
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => int_auto_restart,
      R => areset
    );
int_gie_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => \waddr_reg_n_0_[2]\,
      I2 => s_axi_control_WSTRB(0),
      I3 => \waddr_reg_n_0_[4]\,
      I4 => \int_output_r[31]_i_3_n_0\,
      I5 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => areset
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => s_axi_control_WSTRB(0),
      I4 => \int_ier[1]_i_2_n_0\,
      O => int_ier9_out
    );
\int_ier[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => s_axi_control_WVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => \waddr_reg_n_0_[0]\,
      I3 => \waddr_reg_n_0_[1]\,
      I4 => \waddr_reg_n_0_[5]\,
      O => \int_ier[1]_i_2_n_0\
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_ier9_out,
      D => s_axi_control_WDATA(0),
      Q => \int_ier_reg_n_0_[0]\,
      R => areset
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_ier9_out,
      D => s_axi_control_WDATA(1),
      Q => p_0_in,
      R => areset
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7777777F8888888"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => int_isr6_out,
      I2 => \int_ier_reg_n_0_[0]\,
      I3 => int_ap_start_reg_0,
      I4 => m_axi_gmem_BVALID,
      I5 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(0),
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \int_ier[1]_i_2_n_0\,
      O => int_isr6_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7777777F8888888"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => int_isr6_out,
      I2 => p_0_in,
      I3 => int_ap_start_reg_0,
      I4 => m_axi_gmem_BVALID,
      I5 => p_1_in,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => areset
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => p_1_in,
      R => areset
    );
\int_output_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(0),
      O => int_output_r_reg04_out(0)
    );
\int_output_r[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(10),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(10),
      O => int_output_r_reg04_out(10)
    );
\int_output_r[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(11),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(11),
      O => int_output_r_reg04_out(11)
    );
\int_output_r[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(12),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(12),
      O => int_output_r_reg04_out(12)
    );
\int_output_r[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(13),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(13),
      O => int_output_r_reg04_out(13)
    );
\int_output_r[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(14),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(14),
      O => int_output_r_reg04_out(14)
    );
\int_output_r[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(15),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(15),
      O => int_output_r_reg04_out(15)
    );
\int_output_r[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(16),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(16),
      O => int_output_r_reg04_out(16)
    );
\int_output_r[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(17),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(17),
      O => int_output_r_reg04_out(17)
    );
\int_output_r[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(18),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(18),
      O => int_output_r_reg04_out(18)
    );
\int_output_r[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(19),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(19),
      O => int_output_r_reg04_out(19)
    );
\int_output_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(1),
      O => int_output_r_reg04_out(1)
    );
\int_output_r[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(20),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(20),
      O => int_output_r_reg04_out(20)
    );
\int_output_r[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(21),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(21),
      O => int_output_r_reg04_out(21)
    );
\int_output_r[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(22),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(22),
      O => int_output_r_reg04_out(22)
    );
\int_output_r[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(23),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(23),
      O => int_output_r_reg04_out(23)
    );
\int_output_r[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(24),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(24),
      O => int_output_r_reg04_out(24)
    );
\int_output_r[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(25),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(25),
      O => int_output_r_reg04_out(25)
    );
\int_output_r[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(26),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(26),
      O => int_output_r_reg04_out(26)
    );
\int_output_r[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(27),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(27),
      O => int_output_r_reg04_out(27)
    );
\int_output_r[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(28),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(28),
      O => int_output_r_reg04_out(28)
    );
\int_output_r[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(29),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(29),
      O => int_output_r_reg04_out(29)
    );
\int_output_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(2),
      O => int_output_r_reg04_out(2)
    );
\int_output_r[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(30),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(30),
      O => int_output_r_reg04_out(30)
    );
\int_output_r[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \int_output_r[31]_i_3_n_0\,
      O => \int_output_r[31]_i_1_n_0\
    );
\int_output_r[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(31),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(31),
      O => int_output_r_reg04_out(31)
    );
\int_output_r[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[5]\,
      I1 => \waddr_reg_n_0_[1]\,
      I2 => \waddr_reg_n_0_[0]\,
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      I4 => s_axi_control_WVALID,
      I5 => \waddr_reg_n_0_[3]\,
      O => \int_output_r[31]_i_3_n_0\
    );
\int_output_r[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(32),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(0),
      O => int_output_r_reg0(0)
    );
\int_output_r[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(33),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(1),
      O => int_output_r_reg0(1)
    );
\int_output_r[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(34),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(2),
      O => int_output_r_reg0(2)
    );
\int_output_r[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(35),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(3),
      O => int_output_r_reg0(3)
    );
\int_output_r[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(36),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(4),
      O => int_output_r_reg0(4)
    );
\int_output_r[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(37),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(5),
      O => int_output_r_reg0(5)
    );
\int_output_r[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(38),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(6),
      O => int_output_r_reg0(6)
    );
\int_output_r[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(39),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(7),
      O => int_output_r_reg0(7)
    );
\int_output_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(3),
      O => int_output_r_reg04_out(3)
    );
\int_output_r[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(40),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(8),
      O => int_output_r_reg0(8)
    );
\int_output_r[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(41),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(9),
      O => int_output_r_reg0(9)
    );
\int_output_r[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(42),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(10),
      O => int_output_r_reg0(10)
    );
\int_output_r[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(43),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(11),
      O => int_output_r_reg0(11)
    );
\int_output_r[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(44),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(12),
      O => int_output_r_reg0(12)
    );
\int_output_r[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(45),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(13),
      O => int_output_r_reg0(13)
    );
\int_output_r[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(46),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(14),
      O => int_output_r_reg0(14)
    );
\int_output_r[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(47),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(15),
      O => int_output_r_reg0(15)
    );
\int_output_r[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(48),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(16),
      O => int_output_r_reg0(16)
    );
\int_output_r[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(49),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(17),
      O => int_output_r_reg0(17)
    );
\int_output_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(4),
      O => int_output_r_reg04_out(4)
    );
\int_output_r[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(50),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(18),
      O => int_output_r_reg0(18)
    );
\int_output_r[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(51),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(19),
      O => int_output_r_reg0(19)
    );
\int_output_r[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(52),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(20),
      O => int_output_r_reg0(20)
    );
\int_output_r[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(53),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(21),
      O => int_output_r_reg0(21)
    );
\int_output_r[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(54),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(22),
      O => int_output_r_reg0(22)
    );
\int_output_r[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(55),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(23),
      O => int_output_r_reg0(23)
    );
\int_output_r[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(56),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(24),
      O => int_output_r_reg0(24)
    );
\int_output_r[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(57),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(25),
      O => int_output_r_reg0(25)
    );
\int_output_r[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(58),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(26),
      O => int_output_r_reg0(26)
    );
\int_output_r[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(59),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(27),
      O => int_output_r_reg0(27)
    );
\int_output_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(5),
      O => int_output_r_reg04_out(5)
    );
\int_output_r[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(60),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(28),
      O => int_output_r_reg0(28)
    );
\int_output_r[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(61),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(29),
      O => int_output_r_reg0(29)
    );
\int_output_r[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(62),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(30),
      O => int_output_r_reg0(30)
    );
\int_output_r[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \int_output_r[31]_i_3_n_0\,
      O => \int_output_r[63]_i_1_n_0\
    );
\int_output_r[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(63),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(31),
      O => int_output_r_reg0(31)
    );
\int_output_r[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(6),
      O => int_output_r_reg04_out(6)
    );
\int_output_r[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(7),
      O => int_output_r_reg04_out(7)
    );
\int_output_r[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(8),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(8),
      O => int_output_r_reg04_out(8)
    );
\int_output_r[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(9),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(9),
      O => int_output_r_reg04_out(9)
    );
\int_output_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(0),
      Q => ctrl_offset(0),
      R => areset
    );
\int_output_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(10),
      Q => ctrl_offset(10),
      R => areset
    );
\int_output_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(11),
      Q => ctrl_offset(11),
      R => areset
    );
\int_output_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(12),
      Q => ctrl_offset(12),
      R => areset
    );
\int_output_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(13),
      Q => ctrl_offset(13),
      R => areset
    );
\int_output_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(14),
      Q => ctrl_offset(14),
      R => areset
    );
\int_output_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(15),
      Q => ctrl_offset(15),
      R => areset
    );
\int_output_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(16),
      Q => ctrl_offset(16),
      R => areset
    );
\int_output_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(17),
      Q => ctrl_offset(17),
      R => areset
    );
\int_output_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(18),
      Q => ctrl_offset(18),
      R => areset
    );
\int_output_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(19),
      Q => ctrl_offset(19),
      R => areset
    );
\int_output_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(1),
      Q => ctrl_offset(1),
      R => areset
    );
\int_output_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(20),
      Q => ctrl_offset(20),
      R => areset
    );
\int_output_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(21),
      Q => ctrl_offset(21),
      R => areset
    );
\int_output_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(22),
      Q => ctrl_offset(22),
      R => areset
    );
\int_output_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(23),
      Q => ctrl_offset(23),
      R => areset
    );
\int_output_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(24),
      Q => ctrl_offset(24),
      R => areset
    );
\int_output_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(25),
      Q => ctrl_offset(25),
      R => areset
    );
\int_output_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(26),
      Q => ctrl_offset(26),
      R => areset
    );
\int_output_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(27),
      Q => ctrl_offset(27),
      R => areset
    );
\int_output_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(28),
      Q => ctrl_offset(28),
      R => areset
    );
\int_output_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(29),
      Q => ctrl_offset(29),
      R => areset
    );
\int_output_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(2),
      Q => ctrl_offset(2),
      R => areset
    );
\int_output_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(30),
      Q => ctrl_offset(30),
      R => areset
    );
\int_output_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(31),
      Q => ctrl_offset(31),
      R => areset
    );
\int_output_r_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(0),
      Q => ctrl_offset(32),
      R => areset
    );
\int_output_r_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(1),
      Q => ctrl_offset(33),
      R => areset
    );
\int_output_r_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(2),
      Q => ctrl_offset(34),
      R => areset
    );
\int_output_r_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(3),
      Q => ctrl_offset(35),
      R => areset
    );
\int_output_r_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(4),
      Q => ctrl_offset(36),
      R => areset
    );
\int_output_r_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(5),
      Q => ctrl_offset(37),
      R => areset
    );
\int_output_r_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(6),
      Q => ctrl_offset(38),
      R => areset
    );
\int_output_r_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(7),
      Q => ctrl_offset(39),
      R => areset
    );
\int_output_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(3),
      Q => ctrl_offset(3),
      R => areset
    );
\int_output_r_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(8),
      Q => ctrl_offset(40),
      R => areset
    );
\int_output_r_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(9),
      Q => ctrl_offset(41),
      R => areset
    );
\int_output_r_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(10),
      Q => ctrl_offset(42),
      R => areset
    );
\int_output_r_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(11),
      Q => ctrl_offset(43),
      R => areset
    );
\int_output_r_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(12),
      Q => ctrl_offset(44),
      R => areset
    );
\int_output_r_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(13),
      Q => ctrl_offset(45),
      R => areset
    );
\int_output_r_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(14),
      Q => ctrl_offset(46),
      R => areset
    );
\int_output_r_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(15),
      Q => ctrl_offset(47),
      R => areset
    );
\int_output_r_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(16),
      Q => ctrl_offset(48),
      R => areset
    );
\int_output_r_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(17),
      Q => ctrl_offset(49),
      R => areset
    );
\int_output_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(4),
      Q => ctrl_offset(4),
      R => areset
    );
\int_output_r_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(18),
      Q => ctrl_offset(50),
      R => areset
    );
\int_output_r_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(19),
      Q => ctrl_offset(51),
      R => areset
    );
\int_output_r_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(20),
      Q => ctrl_offset(52),
      R => areset
    );
\int_output_r_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(21),
      Q => ctrl_offset(53),
      R => areset
    );
\int_output_r_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(22),
      Q => ctrl_offset(54),
      R => areset
    );
\int_output_r_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(23),
      Q => ctrl_offset(55),
      R => areset
    );
\int_output_r_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(24),
      Q => ctrl_offset(56),
      R => areset
    );
\int_output_r_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(25),
      Q => ctrl_offset(57),
      R => areset
    );
\int_output_r_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(26),
      Q => ctrl_offset(58),
      R => areset
    );
\int_output_r_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(27),
      Q => ctrl_offset(59),
      R => areset
    );
\int_output_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(5),
      Q => ctrl_offset(5),
      R => areset
    );
\int_output_r_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(28),
      Q => ctrl_offset(60),
      R => areset
    );
\int_output_r_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(29),
      Q => ctrl_offset(61),
      R => areset
    );
\int_output_r_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(30),
      Q => ctrl_offset(62),
      R => areset
    );
\int_output_r_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[63]_i_1_n_0\,
      D => int_output_r_reg0(31),
      Q => ctrl_offset(63),
      R => areset
    );
\int_output_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(6),
      Q => ctrl_offset(6),
      R => areset
    );
\int_output_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(7),
      Q => ctrl_offset(7),
      R => areset
    );
\int_output_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(8),
      Q => ctrl_offset(8),
      R => areset
    );
\int_output_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_output_r[31]_i_1_n_0\,
      D => int_output_r_reg04_out(9),
      Q => ctrl_offset(9),
      R => areset
    );
\int_p_xcl_gv_p1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[0]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(0),
      O => int_p_xcl_gv_p1_reg01_out(0)
    );
\int_p_xcl_gv_p1[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[10]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(10),
      O => int_p_xcl_gv_p1_reg01_out(10)
    );
\int_p_xcl_gv_p1[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[11]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(11),
      O => int_p_xcl_gv_p1_reg01_out(11)
    );
\int_p_xcl_gv_p1[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[12]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(12),
      O => int_p_xcl_gv_p1_reg01_out(12)
    );
\int_p_xcl_gv_p1[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[13]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(13),
      O => int_p_xcl_gv_p1_reg01_out(13)
    );
\int_p_xcl_gv_p1[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[14]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(14),
      O => int_p_xcl_gv_p1_reg01_out(14)
    );
\int_p_xcl_gv_p1[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[15]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(15),
      O => int_p_xcl_gv_p1_reg01_out(15)
    );
\int_p_xcl_gv_p1[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[16]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(16),
      O => int_p_xcl_gv_p1_reg01_out(16)
    );
\int_p_xcl_gv_p1[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[17]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(17),
      O => int_p_xcl_gv_p1_reg01_out(17)
    );
\int_p_xcl_gv_p1[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[18]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(18),
      O => int_p_xcl_gv_p1_reg01_out(18)
    );
\int_p_xcl_gv_p1[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[19]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(19),
      O => int_p_xcl_gv_p1_reg01_out(19)
    );
\int_p_xcl_gv_p1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[1]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(1),
      O => int_p_xcl_gv_p1_reg01_out(1)
    );
\int_p_xcl_gv_p1[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[20]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(20),
      O => int_p_xcl_gv_p1_reg01_out(20)
    );
\int_p_xcl_gv_p1[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[21]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(21),
      O => int_p_xcl_gv_p1_reg01_out(21)
    );
\int_p_xcl_gv_p1[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[22]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(22),
      O => int_p_xcl_gv_p1_reg01_out(22)
    );
\int_p_xcl_gv_p1[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[23]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(23),
      O => int_p_xcl_gv_p1_reg01_out(23)
    );
\int_p_xcl_gv_p1[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[24]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(24),
      O => int_p_xcl_gv_p1_reg01_out(24)
    );
\int_p_xcl_gv_p1[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[25]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(25),
      O => int_p_xcl_gv_p1_reg01_out(25)
    );
\int_p_xcl_gv_p1[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[26]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(26),
      O => int_p_xcl_gv_p1_reg01_out(26)
    );
\int_p_xcl_gv_p1[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[27]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(27),
      O => int_p_xcl_gv_p1_reg01_out(27)
    );
\int_p_xcl_gv_p1[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[28]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(28),
      O => int_p_xcl_gv_p1_reg01_out(28)
    );
\int_p_xcl_gv_p1[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[29]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(29),
      O => int_p_xcl_gv_p1_reg01_out(29)
    );
\int_p_xcl_gv_p1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[2]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(2),
      O => int_p_xcl_gv_p1_reg01_out(2)
    );
\int_p_xcl_gv_p1[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[30]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(30),
      O => int_p_xcl_gv_p1_reg01_out(30)
    );
\int_p_xcl_gv_p1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \waddr_reg_n_0_[5]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \int_p_xcl_gv_p1[31]_i_3_n_0\,
      O => \int_p_xcl_gv_p1[31]_i_1_n_0\
    );
\int_p_xcl_gv_p1[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[31]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(31),
      O => int_p_xcl_gv_p1_reg01_out(31)
    );
\int_p_xcl_gv_p1[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \waddr_reg_n_0_[1]\,
      I1 => \waddr_reg_n_0_[0]\,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => s_axi_control_WVALID,
      O => \int_p_xcl_gv_p1[31]_i_3_n_0\
    );
\int_p_xcl_gv_p1[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[32]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(0),
      O => int_p_xcl_gv_p1_reg0(0)
    );
\int_p_xcl_gv_p1[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[33]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(1),
      O => int_p_xcl_gv_p1_reg0(1)
    );
\int_p_xcl_gv_p1[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[34]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(2),
      O => int_p_xcl_gv_p1_reg0(2)
    );
\int_p_xcl_gv_p1[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[35]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(3),
      O => int_p_xcl_gv_p1_reg0(3)
    );
\int_p_xcl_gv_p1[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[36]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(4),
      O => int_p_xcl_gv_p1_reg0(4)
    );
\int_p_xcl_gv_p1[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[37]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(5),
      O => int_p_xcl_gv_p1_reg0(5)
    );
\int_p_xcl_gv_p1[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[38]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(6),
      O => int_p_xcl_gv_p1_reg0(6)
    );
\int_p_xcl_gv_p1[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[39]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(7),
      O => int_p_xcl_gv_p1_reg0(7)
    );
\int_p_xcl_gv_p1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[3]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(3),
      O => int_p_xcl_gv_p1_reg01_out(3)
    );
\int_p_xcl_gv_p1[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[40]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(8),
      O => int_p_xcl_gv_p1_reg0(8)
    );
\int_p_xcl_gv_p1[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[41]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(9),
      O => int_p_xcl_gv_p1_reg0(9)
    );
\int_p_xcl_gv_p1[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[42]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(10),
      O => int_p_xcl_gv_p1_reg0(10)
    );
\int_p_xcl_gv_p1[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[43]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(11),
      O => int_p_xcl_gv_p1_reg0(11)
    );
\int_p_xcl_gv_p1[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[44]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(12),
      O => int_p_xcl_gv_p1_reg0(12)
    );
\int_p_xcl_gv_p1[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[45]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(13),
      O => int_p_xcl_gv_p1_reg0(13)
    );
\int_p_xcl_gv_p1[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[46]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(14),
      O => int_p_xcl_gv_p1_reg0(14)
    );
\int_p_xcl_gv_p1[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[47]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(15),
      O => int_p_xcl_gv_p1_reg0(15)
    );
\int_p_xcl_gv_p1[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[48]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(16),
      O => int_p_xcl_gv_p1_reg0(16)
    );
\int_p_xcl_gv_p1[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[49]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(17),
      O => int_p_xcl_gv_p1_reg0(17)
    );
\int_p_xcl_gv_p1[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[4]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(4),
      O => int_p_xcl_gv_p1_reg01_out(4)
    );
\int_p_xcl_gv_p1[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[50]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(18),
      O => int_p_xcl_gv_p1_reg0(18)
    );
\int_p_xcl_gv_p1[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[51]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(19),
      O => int_p_xcl_gv_p1_reg0(19)
    );
\int_p_xcl_gv_p1[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[52]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(20),
      O => int_p_xcl_gv_p1_reg0(20)
    );
\int_p_xcl_gv_p1[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[53]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(21),
      O => int_p_xcl_gv_p1_reg0(21)
    );
\int_p_xcl_gv_p1[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[54]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(22),
      O => int_p_xcl_gv_p1_reg0(22)
    );
\int_p_xcl_gv_p1[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[55]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(23),
      O => int_p_xcl_gv_p1_reg0(23)
    );
\int_p_xcl_gv_p1[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[56]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(24),
      O => int_p_xcl_gv_p1_reg0(24)
    );
\int_p_xcl_gv_p1[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[57]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(25),
      O => int_p_xcl_gv_p1_reg0(25)
    );
\int_p_xcl_gv_p1[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[58]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(26),
      O => int_p_xcl_gv_p1_reg0(26)
    );
\int_p_xcl_gv_p1[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[59]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(27),
      O => int_p_xcl_gv_p1_reg0(27)
    );
\int_p_xcl_gv_p1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[5]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(5),
      O => int_p_xcl_gv_p1_reg01_out(5)
    );
\int_p_xcl_gv_p1[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[60]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(28),
      O => int_p_xcl_gv_p1_reg0(28)
    );
\int_p_xcl_gv_p1[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[61]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(29),
      O => int_p_xcl_gv_p1_reg0(29)
    );
\int_p_xcl_gv_p1[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[62]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(30),
      O => int_p_xcl_gv_p1_reg0(30)
    );
\int_p_xcl_gv_p1[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \waddr_reg_n_0_[5]\,
      I4 => \int_p_xcl_gv_p1[31]_i_3_n_0\,
      O => \int_p_xcl_gv_p1[63]_i_1_n_0\
    );
\int_p_xcl_gv_p1[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[63]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(31),
      O => int_p_xcl_gv_p1_reg0(31)
    );
\int_p_xcl_gv_p1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[6]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(6),
      O => int_p_xcl_gv_p1_reg01_out(6)
    );
\int_p_xcl_gv_p1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[7]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(7),
      O => int_p_xcl_gv_p1_reg01_out(7)
    );
\int_p_xcl_gv_p1[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[8]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(8),
      O => int_p_xcl_gv_p1_reg01_out(8)
    );
\int_p_xcl_gv_p1[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[9]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(9),
      O => int_p_xcl_gv_p1_reg01_out(9)
    );
\int_p_xcl_gv_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(0),
      Q => \int_p_xcl_gv_p1_reg_n_0_[0]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(10),
      Q => \int_p_xcl_gv_p1_reg_n_0_[10]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(11),
      Q => \int_p_xcl_gv_p1_reg_n_0_[11]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(12),
      Q => \int_p_xcl_gv_p1_reg_n_0_[12]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(13),
      Q => \int_p_xcl_gv_p1_reg_n_0_[13]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(14),
      Q => \int_p_xcl_gv_p1_reg_n_0_[14]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(15),
      Q => \int_p_xcl_gv_p1_reg_n_0_[15]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(16),
      Q => \int_p_xcl_gv_p1_reg_n_0_[16]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(17),
      Q => \int_p_xcl_gv_p1_reg_n_0_[17]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(18),
      Q => \int_p_xcl_gv_p1_reg_n_0_[18]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(19),
      Q => \int_p_xcl_gv_p1_reg_n_0_[19]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(1),
      Q => \int_p_xcl_gv_p1_reg_n_0_[1]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(20),
      Q => \int_p_xcl_gv_p1_reg_n_0_[20]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(21),
      Q => \int_p_xcl_gv_p1_reg_n_0_[21]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(22),
      Q => \int_p_xcl_gv_p1_reg_n_0_[22]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(23),
      Q => \int_p_xcl_gv_p1_reg_n_0_[23]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(24),
      Q => \int_p_xcl_gv_p1_reg_n_0_[24]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(25),
      Q => \int_p_xcl_gv_p1_reg_n_0_[25]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(26),
      Q => \int_p_xcl_gv_p1_reg_n_0_[26]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(27),
      Q => \int_p_xcl_gv_p1_reg_n_0_[27]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(28),
      Q => \int_p_xcl_gv_p1_reg_n_0_[28]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(29),
      Q => \int_p_xcl_gv_p1_reg_n_0_[29]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(2),
      Q => \int_p_xcl_gv_p1_reg_n_0_[2]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(30),
      Q => \int_p_xcl_gv_p1_reg_n_0_[30]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(31),
      Q => \int_p_xcl_gv_p1_reg_n_0_[31]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(0),
      Q => \int_p_xcl_gv_p1_reg_n_0_[32]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(1),
      Q => \int_p_xcl_gv_p1_reg_n_0_[33]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(2),
      Q => \int_p_xcl_gv_p1_reg_n_0_[34]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(3),
      Q => \int_p_xcl_gv_p1_reg_n_0_[35]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(4),
      Q => \int_p_xcl_gv_p1_reg_n_0_[36]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(5),
      Q => \int_p_xcl_gv_p1_reg_n_0_[37]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(6),
      Q => \int_p_xcl_gv_p1_reg_n_0_[38]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(7),
      Q => \int_p_xcl_gv_p1_reg_n_0_[39]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(3),
      Q => \int_p_xcl_gv_p1_reg_n_0_[3]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(8),
      Q => \int_p_xcl_gv_p1_reg_n_0_[40]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(9),
      Q => \int_p_xcl_gv_p1_reg_n_0_[41]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(10),
      Q => \int_p_xcl_gv_p1_reg_n_0_[42]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(11),
      Q => \int_p_xcl_gv_p1_reg_n_0_[43]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(12),
      Q => \int_p_xcl_gv_p1_reg_n_0_[44]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(13),
      Q => \int_p_xcl_gv_p1_reg_n_0_[45]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(14),
      Q => \int_p_xcl_gv_p1_reg_n_0_[46]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(15),
      Q => \int_p_xcl_gv_p1_reg_n_0_[47]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(16),
      Q => \int_p_xcl_gv_p1_reg_n_0_[48]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(17),
      Q => \int_p_xcl_gv_p1_reg_n_0_[49]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(4),
      Q => \int_p_xcl_gv_p1_reg_n_0_[4]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(18),
      Q => \int_p_xcl_gv_p1_reg_n_0_[50]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(19),
      Q => \int_p_xcl_gv_p1_reg_n_0_[51]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(20),
      Q => \int_p_xcl_gv_p1_reg_n_0_[52]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(21),
      Q => \int_p_xcl_gv_p1_reg_n_0_[53]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(22),
      Q => \int_p_xcl_gv_p1_reg_n_0_[54]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(23),
      Q => \int_p_xcl_gv_p1_reg_n_0_[55]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(24),
      Q => \int_p_xcl_gv_p1_reg_n_0_[56]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(25),
      Q => \int_p_xcl_gv_p1_reg_n_0_[57]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(26),
      Q => \int_p_xcl_gv_p1_reg_n_0_[58]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(27),
      Q => \int_p_xcl_gv_p1_reg_n_0_[59]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(5),
      Q => \int_p_xcl_gv_p1_reg_n_0_[5]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(28),
      Q => \int_p_xcl_gv_p1_reg_n_0_[60]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(29),
      Q => \int_p_xcl_gv_p1_reg_n_0_[61]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(30),
      Q => \int_p_xcl_gv_p1_reg_n_0_[62]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[63]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg0(31),
      Q => \int_p_xcl_gv_p1_reg_n_0_[63]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(6),
      Q => \int_p_xcl_gv_p1_reg_n_0_[6]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(7),
      Q => \int_p_xcl_gv_p1_reg_n_0_[7]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(8),
      Q => \int_p_xcl_gv_p1_reg_n_0_[8]\,
      R => areset
    );
\int_p_xcl_gv_p1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p1[31]_i_1_n_0\,
      D => int_p_xcl_gv_p1_reg01_out(9),
      Q => \int_p_xcl_gv_p1_reg_n_0_[9]\,
      R => areset
    );
\int_size[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_length(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(0),
      O => int_size0(0)
    );
\int_size[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(2),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(10),
      O => int_size0(10)
    );
\int_size[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(3),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(11),
      O => int_size0(11)
    );
\int_size[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(4),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(12),
      O => int_size0(12)
    );
\int_size[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(5),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(13),
      O => int_size0(13)
    );
\int_size[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(6),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(14),
      O => int_size0(14)
    );
\int_size[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(7),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(15),
      O => int_size0(15)
    );
\int_size[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(8),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(16),
      O => int_size0(16)
    );
\int_size[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(9),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(17),
      O => int_size0(17)
    );
\int_size[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(10),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(18),
      O => int_size0(18)
    );
\int_size[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(11),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(19),
      O => int_size0(19)
    );
\int_size[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_length(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(1),
      O => int_size0(1)
    );
\int_size[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(12),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(20),
      O => int_size0(20)
    );
\int_size[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(13),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(21),
      O => int_size0(21)
    );
\int_size[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(14),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(22),
      O => int_size0(22)
    );
\int_size[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(15),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(23),
      O => int_size0(23)
    );
\int_size[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(16),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(24),
      O => int_size0(24)
    );
\int_size[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(17),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(25),
      O => int_size0(25)
    );
\int_size[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(18),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(26),
      O => int_size0(26)
    );
\int_size[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(19),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(27),
      O => int_size0(27)
    );
\int_size[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(20),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(28),
      O => int_size0(28)
    );
\int_size[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(21),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(29),
      O => int_size0(29)
    );
\int_size[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_length(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(2),
      O => int_size0(2)
    );
\int_size[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(22),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(30),
      O => int_size0(30)
    );
\int_size[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[4]\,
      I3 => \int_ier[1]_i_2_n_0\,
      O => \int_size[31]_i_1_n_0\
    );
\int_size[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_length(31),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(31),
      O => int_size0(31)
    );
\int_size[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_length(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(3),
      O => int_size0(3)
    );
\int_size[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_length(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(4),
      O => int_size0(4)
    );
\int_size[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_length(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(5),
      O => int_size0(5)
    );
\int_size[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_length(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(6),
      O => int_size0(6)
    );
\int_size[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_length(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(7),
      O => int_size0(7)
    );
\int_size[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(8),
      O => int_size0(8)
    );
\int_size[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(9),
      O => int_size0(9)
    );
\int_size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(0),
      Q => ctrl_length(0),
      R => areset
    );
\int_size_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(10),
      Q => \^q\(2),
      R => areset
    );
\int_size_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(11),
      Q => \^q\(3),
      R => areset
    );
\int_size_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(12),
      Q => \^q\(4),
      R => areset
    );
\int_size_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(13),
      Q => \^q\(5),
      R => areset
    );
\int_size_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(14),
      Q => \^q\(6),
      R => areset
    );
\int_size_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(15),
      Q => \^q\(7),
      R => areset
    );
\int_size_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(16),
      Q => \^q\(8),
      R => areset
    );
\int_size_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(17),
      Q => \^q\(9),
      R => areset
    );
\int_size_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(18),
      Q => \^q\(10),
      R => areset
    );
\int_size_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(19),
      Q => \^q\(11),
      R => areset
    );
\int_size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(1),
      Q => ctrl_length(1),
      R => areset
    );
\int_size_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(20),
      Q => \^q\(12),
      R => areset
    );
\int_size_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(21),
      Q => \^q\(13),
      R => areset
    );
\int_size_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(22),
      Q => \^q\(14),
      R => areset
    );
\int_size_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(23),
      Q => \^q\(15),
      R => areset
    );
\int_size_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(24),
      Q => \^q\(16),
      R => areset
    );
\int_size_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(25),
      Q => \^q\(17),
      R => areset
    );
\int_size_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(26),
      Q => \^q\(18),
      R => areset
    );
\int_size_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(27),
      Q => \^q\(19),
      R => areset
    );
\int_size_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(28),
      Q => \^q\(20),
      R => areset
    );
\int_size_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(29),
      Q => \^q\(21),
      R => areset
    );
\int_size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(2),
      Q => ctrl_length(2),
      R => areset
    );
\int_size_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(30),
      Q => \^q\(22),
      R => areset
    );
\int_size_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(31),
      Q => ctrl_length(31),
      R => areset
    );
\int_size_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(3),
      Q => ctrl_length(3),
      R => areset
    );
\int_size_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(4),
      Q => ctrl_length(4),
      R => areset
    );
\int_size_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(5),
      Q => ctrl_length(5),
      R => areset
    );
\int_size_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(6),
      Q => ctrl_length(6),
      R => areset
    );
\int_size_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(7),
      Q => ctrl_length(7),
      R => areset
    );
\int_size_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(8),
      Q => \^q\(0),
      R => areset
    );
\int_size_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_size[31]_i_1_n_0\,
      D => int_size0(9),
      Q => \^q\(1),
      R => areset
    );
\num_transactions1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(15),
      O => \int_size_reg[23]_0\(7)
    );
\num_transactions1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(14),
      O => \int_size_reg[23]_0\(6)
    );
\num_transactions1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(13),
      O => \int_size_reg[23]_0\(5)
    );
\num_transactions1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(12),
      O => \int_size_reg[23]_0\(4)
    );
\num_transactions1_carry__0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(11),
      O => \int_size_reg[23]_0\(3)
    );
\num_transactions1_carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(10),
      O => \int_size_reg[23]_0\(2)
    );
\num_transactions1_carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(9),
      O => \int_size_reg[23]_0\(1)
    );
\num_transactions1_carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(8),
      O => \int_size_reg[23]_0\(0)
    );
\num_transactions1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctrl_length(31),
      O => \int_size_reg[31]_0\(7)
    );
\num_transactions1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(22),
      O => \int_size_reg[31]_0\(6)
    );
\num_transactions1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(21),
      O => \int_size_reg[31]_0\(5)
    );
\num_transactions1_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(20),
      O => \int_size_reg[31]_0\(4)
    );
\num_transactions1_carry__1_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(19),
      O => \int_size_reg[31]_0\(3)
    );
\num_transactions1_carry__1_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(18),
      O => \int_size_reg[31]_0\(2)
    );
\num_transactions1_carry__1_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(17),
      O => \int_size_reg[31]_0\(1)
    );
\num_transactions1_carry__1_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(16),
      O => \int_size_reg[31]_0\(0)
    );
num_transactions1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(7),
      O => S(7)
    );
num_transactions1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      O => S(6)
    );
num_transactions1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(5),
      O => S(5)
    );
num_transactions1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      O => S(4)
    );
num_transactions1_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      O => S(3)
    );
num_transactions1_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => S(2)
    );
num_transactions1_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => S(1)
    );
num_transactions1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => \^q\(0),
      I1 => \final_burst_len[7]_i_2_n_0\,
      I2 => ctrl_length(6),
      I3 => ctrl_length(7),
      O => S(0)
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => \rdata[0]_i_2_n_0\,
      I1 => \rdata[0]_i_3_n_0\,
      I2 => \rdata[0]_i_4_n_0\,
      I3 => \^ap_start\,
      I4 => \rdata[0]_i_5_n_0\,
      O => rdata(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \int_p_xcl_gv_p1_reg_n_0_[32]\,
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[0]\,
      I3 => \rdata[31]_i_4_n_0\,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => ctrl_length(0),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(32),
      I4 => ctrl_offset(0),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[0]_i_3_n_0\
    );
\rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFC00000A0C00000"
    )
        port map (
      I0 => \int_isr_reg_n_0_[0]\,
      I1 => \int_ier_reg_n_0_[0]\,
      I2 => s_axi_control_ARADDR(3),
      I3 => s_axi_control_ARADDR(2),
      I4 => \rdata[1]_i_5_n_0\,
      I5 => int_gie_reg_n_0,
      O => \rdata[0]_i_4_n_0\
    );
\rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axi_control_ARADDR(4),
      I1 => s_axi_control_ARADDR(1),
      I2 => s_axi_control_ARADDR(0),
      I3 => s_axi_control_ARADDR(5),
      I4 => s_axi_control_ARADDR(3),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[0]_i_5_n_0\
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[10]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[10]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[42]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(10)
    );
\rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(2),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(42),
      I4 => ctrl_offset(10),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[10]_i_2_n_0\
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[11]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[11]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[43]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(11)
    );
\rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(3),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(43),
      I4 => ctrl_offset(11),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[11]_i_2_n_0\
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[12]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[12]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[44]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(12)
    );
\rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(4),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(44),
      I4 => ctrl_offset(12),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[12]_i_2_n_0\
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[13]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[13]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[45]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(13)
    );
\rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(5),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(45),
      I4 => ctrl_offset(13),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[13]_i_2_n_0\
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[14]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[14]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[46]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(14)
    );
\rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(6),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(46),
      I4 => ctrl_offset(14),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[14]_i_2_n_0\
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[15]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[15]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[47]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(15)
    );
\rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(7),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(47),
      I4 => ctrl_offset(15),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[15]_i_2_n_0\
    );
\rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[16]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[16]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[48]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(16)
    );
\rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(8),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(48),
      I4 => ctrl_offset(16),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[16]_i_2_n_0\
    );
\rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[17]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[17]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[49]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(17)
    );
\rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(9),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(49),
      I4 => ctrl_offset(17),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[17]_i_2_n_0\
    );
\rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[18]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[18]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[50]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(18)
    );
\rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(10),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(50),
      I4 => ctrl_offset(18),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[18]_i_2_n_0\
    );
\rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[19]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[19]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[51]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(19)
    );
\rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(11),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(51),
      I4 => ctrl_offset(19),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[19]_i_2_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \rdata[1]_i_2_n_0\,
      I1 => \rdata[1]_i_3_n_0\,
      I2 => \rdata[1]_i_4_n_0\,
      O => rdata(1)
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C008000"
    )
        port map (
      I0 => p_1_in,
      I1 => \rdata[1]_i_5_n_0\,
      I2 => s_axi_control_ARADDR(2),
      I3 => s_axi_control_ARADDR(3),
      I4 => p_0_in,
      O => \rdata[1]_i_2_n_0\
    );
\rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[0]_i_5_n_0\,
      I1 => int_ap_done,
      I2 => \rdata[31]_i_6_n_0\,
      I3 => ctrl_length(1),
      I4 => ctrl_offset(33),
      I5 => \rdata[3]_i_3_n_0\,
      O => \rdata[1]_i_3_n_0\
    );
\rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_7_n_0\,
      I1 => ctrl_offset(1),
      I2 => \rdata[31]_i_4_n_0\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[1]\,
      I4 => \int_p_xcl_gv_p1_reg_n_0_[33]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[1]_i_4_n_0\
    );
\rdata[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_control_ARADDR(5),
      I1 => s_axi_control_ARADDR(0),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(4),
      O => \rdata[1]_i_5_n_0\
    );
\rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[20]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[20]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[52]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(20)
    );
\rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(12),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(52),
      I4 => ctrl_offset(20),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[20]_i_2_n_0\
    );
\rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[21]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[21]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[53]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(21)
    );
\rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(13),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(53),
      I4 => ctrl_offset(21),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[21]_i_2_n_0\
    );
\rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[22]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[22]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[54]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(22)
    );
\rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(14),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(54),
      I4 => ctrl_offset(22),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[22]_i_2_n_0\
    );
\rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[23]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[55]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(23)
    );
\rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(15),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(55),
      I4 => ctrl_offset(23),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[23]_i_2_n_0\
    );
\rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[24]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[24]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[56]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(24)
    );
\rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(16),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(56),
      I4 => ctrl_offset(24),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[24]_i_2_n_0\
    );
\rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[25]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[25]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[57]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(25)
    );
\rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(17),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(57),
      I4 => ctrl_offset(25),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[25]_i_2_n_0\
    );
\rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[26]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[26]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[58]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(26)
    );
\rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(18),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(58),
      I4 => ctrl_offset(26),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[26]_i_2_n_0\
    );
\rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[27]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[27]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[59]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(27)
    );
\rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(19),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(59),
      I4 => ctrl_offset(27),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[27]_i_2_n_0\
    );
\rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[28]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[28]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[60]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(28)
    );
\rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(20),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(60),
      I4 => ctrl_offset(28),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[28]_i_2_n_0\
    );
\rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[29]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[29]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[61]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(29)
    );
\rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(21),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(61),
      I4 => ctrl_offset(29),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[29]_i_2_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rdata[2]_i_2_n_0\,
      I1 => \rdata[2]_i_3_n_0\,
      O => rdata(2)
    );
\rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_7_n_0\,
      I1 => ctrl_offset(2),
      I2 => \rdata[31]_i_4_n_0\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[2]\,
      I4 => \int_p_xcl_gv_p1_reg_n_0_[34]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[2]_i_2_n_0\
    );
\rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[0]_i_5_n_0\,
      I1 => ap_idle,
      I2 => \rdata[31]_i_6_n_0\,
      I3 => ctrl_length(2),
      I4 => ctrl_offset(34),
      I5 => \rdata[3]_i_3_n_0\,
      O => \rdata[2]_i_3_n_0\
    );
\rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[30]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[30]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[62]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(30)
    );
\rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(22),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(62),
      I4 => ctrl_offset(30),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[30]_i_2_n_0\
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^fsm_sequential_rstate_reg_0\,
      I1 => s_axi_control_ARVALID,
      I2 => areset,
      O => ar_hs
    );
\rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[31]_i_3_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[31]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[63]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(31)
    );
\rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => ctrl_length(31),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(63),
      I4 => ctrl_offset(31),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[31]_i_3_n_0\
    );
\rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(1),
      I2 => s_axi_control_ARADDR(5),
      I3 => s_axi_control_ARADDR(4),
      I4 => s_axi_control_ARADDR(3),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[31]_i_4_n_0\
    );
\rdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => s_axi_control_ARADDR(2),
      I1 => s_axi_control_ARADDR(3),
      I2 => s_axi_control_ARADDR(0),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(5),
      I5 => s_axi_control_ARADDR(4),
      O => \rdata[31]_i_5_n_0\
    );
\rdata[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => s_axi_control_ARADDR(3),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[31]_i_6_n_0\
    );
\rdata[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(3),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[31]_i_7_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \rdata[3]_i_2_n_0\,
      I1 => \rdata[3]_i_3_n_0\,
      I2 => ctrl_offset(35),
      I3 => \rdata[3]_i_4_n_0\,
      O => rdata(3)
    );
\rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_7_n_0\,
      I1 => ctrl_offset(3),
      I2 => \rdata[31]_i_4_n_0\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[3]\,
      I4 => \int_p_xcl_gv_p1_reg_n_0_[35]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[3]_i_2_n_0\
    );
\rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => s_axi_control_ARADDR(3),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[3]_i_3_n_0\
    );
\rdata[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => ctrl_length(3),
      I1 => \rdata[31]_i_6_n_0\,
      I2 => int_ap_start_reg_0,
      I3 => m_axi_gmem_BVALID,
      I4 => \rdata[0]_i_5_n_0\,
      O => \rdata[3]_i_4_n_0\
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[4]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[4]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[36]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(4)
    );
\rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => ctrl_length(4),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(36),
      I4 => ctrl_offset(4),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[4]_i_2_n_0\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[5]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[5]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[37]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(5)
    );
\rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => ctrl_length(5),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(37),
      I4 => ctrl_offset(5),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[5]_i_2_n_0\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[6]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[6]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[38]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(6)
    );
\rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => ctrl_length(6),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(38),
      I4 => ctrl_offset(6),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[6]_i_2_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rdata[7]_i_2_n_0\,
      I1 => \rdata[7]_i_3_n_0\,
      O => rdata(7)
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_7_n_0\,
      I1 => ctrl_offset(7),
      I2 => \rdata[31]_i_4_n_0\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[7]\,
      I4 => \int_p_xcl_gv_p1_reg_n_0_[39]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[7]_i_2_n_0\
    );
\rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[0]_i_5_n_0\,
      I1 => int_auto_restart,
      I2 => \rdata[31]_i_6_n_0\,
      I3 => ctrl_length(7),
      I4 => ctrl_offset(39),
      I5 => \rdata[3]_i_3_n_0\,
      O => \rdata[7]_i_3_n_0\
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[8]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[8]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[40]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(8)
    );
\rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(0),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(40),
      I4 => ctrl_offset(8),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[8]_i_2_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \rdata[9]_i_2_n_0\,
      I1 => \rdata[31]_i_4_n_0\,
      I2 => \int_p_xcl_gv_p1_reg_n_0_[9]\,
      I3 => \int_p_xcl_gv_p1_reg_n_0_[41]\,
      I4 => \rdata[31]_i_5_n_0\,
      O => rdata(9)
    );
\rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[31]_i_6_n_0\,
      I1 => \^q\(1),
      I2 => \rdata[3]_i_3_n_0\,
      I3 => ctrl_offset(41),
      I4 => ctrl_offset(9),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[9]_i_2_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(0),
      Q => s_axi_control_RDATA(0),
      R => '0'
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(10),
      Q => s_axi_control_RDATA(10),
      R => '0'
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(11),
      Q => s_axi_control_RDATA(11),
      R => '0'
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(12),
      Q => s_axi_control_RDATA(12),
      R => '0'
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(13),
      Q => s_axi_control_RDATA(13),
      R => '0'
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(14),
      Q => s_axi_control_RDATA(14),
      R => '0'
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(15),
      Q => s_axi_control_RDATA(15),
      R => '0'
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(16),
      Q => s_axi_control_RDATA(16),
      R => '0'
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(17),
      Q => s_axi_control_RDATA(17),
      R => '0'
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(18),
      Q => s_axi_control_RDATA(18),
      R => '0'
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(19),
      Q => s_axi_control_RDATA(19),
      R => '0'
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(1),
      Q => s_axi_control_RDATA(1),
      R => '0'
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(20),
      Q => s_axi_control_RDATA(20),
      R => '0'
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(21),
      Q => s_axi_control_RDATA(21),
      R => '0'
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(22),
      Q => s_axi_control_RDATA(22),
      R => '0'
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(23),
      Q => s_axi_control_RDATA(23),
      R => '0'
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(24),
      Q => s_axi_control_RDATA(24),
      R => '0'
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(25),
      Q => s_axi_control_RDATA(25),
      R => '0'
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(26),
      Q => s_axi_control_RDATA(26),
      R => '0'
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(27),
      Q => s_axi_control_RDATA(27),
      R => '0'
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(28),
      Q => s_axi_control_RDATA(28),
      R => '0'
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(29),
      Q => s_axi_control_RDATA(29),
      R => '0'
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(2),
      Q => s_axi_control_RDATA(2),
      R => '0'
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(30),
      Q => s_axi_control_RDATA(30),
      R => '0'
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(31),
      Q => s_axi_control_RDATA(31),
      R => '0'
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(3),
      Q => s_axi_control_RDATA(3),
      R => '0'
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(4),
      Q => s_axi_control_RDATA(4),
      R => '0'
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(5),
      Q => s_axi_control_RDATA(5),
      R => '0'
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(6),
      Q => s_axi_control_RDATA(6),
      R => '0'
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(7),
      Q => s_axi_control_RDATA(7),
      R => '0'
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(8),
      Q => s_axi_control_RDATA(8),
      R => '0'
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(9),
      Q => s_axi_control_RDATA(9),
      R => '0'
    );
s_axi_control_ARREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => areset,
      I1 => \^fsm_sequential_rstate_reg_0\,
      O => s_axi_control_ARREADY
    );
s_axi_control_AWREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_wstate_reg_n_0_[0]\,
      I1 => areset,
      O => s_axi_control_AWREADY
    );
start_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ap_start\,
      I1 => ap_start_r,
      O => ap_start_pulse
    );
\waddr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_wstate_reg_n_0_[0]\,
      I1 => s_axi_control_AWVALID,
      I2 => areset,
      O => waddr
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(0),
      Q => \waddr_reg_n_0_[0]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(1),
      Q => \waddr_reg_n_0_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(2),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(3),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(4),
      Q => \waddr_reg_n_0_[4]\,
      R => '0'
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(5),
      Q => \waddr_reg_n_0_[5]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter is
  port (
    is_zero_r_reg_0 : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    \num_transactions_reg[16]\ : out STD_LOGIC;
    wfirst_reg : out STD_LOGIC;
    areset : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    is_zero_r_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_WREADY : in STD_LOGIC;
    start : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    w_almost_final_transaction : in STD_LOGIC;
    \count_r_reg[7]_0\ : in STD_LOGIC;
    \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    wfirst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter is
  signal \count_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[7]\ : STD_LOGIC;
  signal is_zero_r : STD_LOGIC;
  signal is_zero_r_i_2_n_0 : STD_LOGIC;
  signal is_zero_r_i_3_n_0 : STD_LOGIC;
  signal is_zero_r_i_4_n_0 : STD_LOGIC;
  signal is_zero_r_i_5_n_0 : STD_LOGIC;
  signal is_zero_r_i_6_n_0 : STD_LOGIC;
  signal \^is_zero_r_reg_0\ : STD_LOGIC;
  signal \m_axi_gmem_AWLEN[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_gmem_AWLEN[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_gmem_AWLEN[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \m_axi_gmem_AWLEN[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \m_axi_gmem_AWLEN[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \m_axi_gmem_AWLEN[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \^num_transactions_reg[16]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_r[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count_r[1]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_r[4]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_r[6]_i_2__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of is_zero_r_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of wfirst_i_1 : label is "soft_lutpair6";
begin
  is_zero_r_reg_0 <= \^is_zero_r_reg_0\;
  \num_transactions_reg[16]\ <= \^num_transactions_reg[16]\;
\count_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => is_zero_r_reg_1(0),
      I1 => m_axi_gmem_WREADY,
      I2 => \^is_zero_r_reg_0\,
      I3 => start,
      O => \state_reg[1]\
    );
\count_r[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5C5C5C5CCC5C5C5C"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => \^num_transactions_reg[16]\,
      I3 => w_almost_final_transaction,
      I4 => \^is_zero_r_reg_0\,
      I5 => \count_r_reg[7]_0\,
      O => p_0_in(0)
    );
\count_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99F099F099F0F0F0"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      I1 => \count_r_reg_n_0_[1]\,
      I2 => Q(1),
      I3 => \^num_transactions_reg[16]\,
      I4 => \count_r[1]_i_2_n_0\,
      I5 => \count_r_reg[7]_0\,
      O => p_0_in(1)
    );
\count_r[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => w_almost_final_transaction,
      I1 => \^is_zero_r_reg_0\,
      O => \count_r[1]_i_2_n_0\
    );
\count_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C9C9FF00FF00FF00"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      I1 => \count_r_reg_n_0_[2]\,
      I2 => \count_r_reg_n_0_[1]\,
      I3 => Q(2),
      I4 => \^num_transactions_reg[16]\,
      I5 => is_zero_r_i_3_n_0,
      O => p_0_in(2)
    );
\count_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACACACCCACACAC"
    )
        port map (
      I0 => \count_r[3]_i_2_n_0\,
      I1 => Q(3),
      I2 => \^num_transactions_reg[16]\,
      I3 => w_almost_final_transaction,
      I4 => \^is_zero_r_reg_0\,
      I5 => \count_r_reg[7]_0\,
      O => p_0_in(3)
    );
\count_r[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E1"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      I1 => \count_r_reg_n_0_[1]\,
      I2 => \count_r_reg_n_0_[3]\,
      I3 => \count_r_reg_n_0_[2]\,
      O => \count_r[3]_i_2_n_0\
    );
\count_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACACACCCACACAC"
    )
        port map (
      I0 => \count_r[4]_i_2_n_0\,
      I1 => Q(4),
      I2 => \^num_transactions_reg[16]\,
      I3 => w_almost_final_transaction,
      I4 => \^is_zero_r_reg_0\,
      I5 => \count_r_reg[7]_0\,
      O => p_0_in(4)
    );
\count_r[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE01"
    )
        port map (
      I0 => \count_r_reg_n_0_[1]\,
      I1 => \count_r_reg_n_0_[0]\,
      I2 => \count_r_reg_n_0_[2]\,
      I3 => \count_r_reg_n_0_[4]\,
      I4 => \count_r_reg_n_0_[3]\,
      O => \count_r[4]_i_2_n_0\
    );
\count_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACACACCCACACAC"
    )
        port map (
      I0 => \count_r[5]_i_2__0_n_0\,
      I1 => Q(5),
      I2 => \^num_transactions_reg[16]\,
      I3 => w_almost_final_transaction,
      I4 => \^is_zero_r_reg_0\,
      I5 => \count_r_reg[7]_0\,
      O => p_0_in(5)
    );
\count_r[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0001"
    )
        port map (
      I0 => \count_r_reg_n_0_[2]\,
      I1 => \count_r_reg_n_0_[0]\,
      I2 => \count_r_reg_n_0_[1]\,
      I3 => \count_r_reg_n_0_[3]\,
      I4 => \count_r_reg_n_0_[5]\,
      I5 => \count_r_reg_n_0_[4]\,
      O => \count_r[5]_i_2__0_n_0\
    );
\count_r[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C9C9FF00FF00FF00"
    )
        port map (
      I0 => \count_r[6]_i_2__0_n_0\,
      I1 => \count_r_reg_n_0_[6]\,
      I2 => \count_r_reg_n_0_[5]\,
      I3 => Q(6),
      I4 => \^num_transactions_reg[16]\,
      I5 => is_zero_r_i_3_n_0,
      O => p_0_in(6)
    );
\count_r[6]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \count_r_reg_n_0_[3]\,
      I1 => \count_r_reg_n_0_[1]\,
      I2 => \count_r_reg_n_0_[0]\,
      I3 => \count_r_reg_n_0_[2]\,
      I4 => \count_r_reg_n_0_[4]\,
      O => \count_r[6]_i_2__0_n_0\
    );
\count_r[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACACACCCACACAC"
    )
        port map (
      I0 => \count_r[7]_i_2__0_n_0\,
      I1 => Q(7),
      I2 => \^num_transactions_reg[16]\,
      I3 => w_almost_final_transaction,
      I4 => \^is_zero_r_reg_0\,
      I5 => \count_r_reg[7]_0\,
      O => p_0_in(7)
    );
\count_r[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E1"
    )
        port map (
      I0 => \count_r_reg_n_0_[5]\,
      I1 => \count_r[6]_i_2__0_n_0\,
      I2 => \count_r_reg_n_0_[7]\,
      I3 => \count_r_reg_n_0_[6]\,
      O => \count_r[7]_i_2__0_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => p_0_in(0),
      Q => \count_r_reg_n_0_[0]\,
      S => areset
    );
\count_r_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => p_0_in(1),
      Q => \count_r_reg_n_0_[1]\,
      S => areset
    );
\count_r_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => p_0_in(2),
      Q => \count_r_reg_n_0_[2]\,
      S => areset
    );
\count_r_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => p_0_in(3),
      Q => \count_r_reg_n_0_[3]\,
      S => areset
    );
\count_r_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => p_0_in(4),
      Q => \count_r_reg_n_0_[4]\,
      S => areset
    );
\count_r_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => p_0_in(5),
      Q => \count_r_reg_n_0_[5]\,
      S => areset
    );
\count_r_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => p_0_in(6),
      Q => \count_r_reg_n_0_[6]\,
      S => areset
    );
\count_r_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => p_0_in(7),
      Q => \count_r_reg_n_0_[7]\,
      S => areset
    );
is_zero_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => \^num_transactions_reg[16]\,
      I1 => m_axi_gmem_WREADY,
      I2 => is_zero_r_reg_1(0),
      O => is_zero_r
    );
is_zero_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF030001000300"
    )
        port map (
      I0 => is_zero_r_i_3_n_0,
      I1 => Q(1),
      I2 => Q(0),
      I3 => is_zero_r_i_4_n_0,
      I4 => \^num_transactions_reg[16]\,
      I5 => is_zero_r_i_5_n_0,
      O => is_zero_r_i_2_n_0
    );
is_zero_r_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => m_axi_gmem_WREADY,
      I1 => is_zero_r_reg_1(0),
      I2 => \^is_zero_r_reg_0\,
      I3 => w_almost_final_transaction,
      O => is_zero_r_i_3_n_0
    );
is_zero_r_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(7),
      I5 => Q(6),
      O => is_zero_r_i_4_n_0
    );
is_zero_r_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000070000000000"
    )
        port map (
      I0 => w_almost_final_transaction,
      I1 => \^is_zero_r_reg_0\,
      I2 => \count_r_reg_n_0_[1]\,
      I3 => \count_r_reg_n_0_[0]\,
      I4 => \count_r_reg[7]_0\,
      I5 => is_zero_r_i_6_n_0,
      O => is_zero_r_i_5_n_0
    );
is_zero_r_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \count_r_reg_n_0_[4]\,
      I1 => \count_r_reg_n_0_[5]\,
      I2 => \count_r_reg_n_0_[2]\,
      I3 => \count_r_reg_n_0_[3]\,
      I4 => \count_r_reg_n_0_[7]\,
      I5 => \count_r_reg_n_0_[6]\,
      O => is_zero_r_i_6_n_0
    );
is_zero_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => is_zero_r_i_2_n_0,
      Q => \^is_zero_r_reg_0\,
      R => areset
    );
\m_axi_gmem_AWLEN[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_axi_gmem_AWLEN[7]_INST_0_i_2_n_0\,
      I1 => \m_axi_gmem_AWLEN[7]_INST_0_i_3_n_0\,
      I2 => \m_axi_gmem_AWLEN[7]_INST_0_i_4_n_0\,
      I3 => \m_axi_gmem_AWLEN[7]_INST_0_i_5_n_0\,
      I4 => \m_axi_gmem_AWLEN[7]_INST_0_i_6_n_0\,
      I5 => \m_axi_gmem_AWLEN[7]_INST_0_i_7_n_0\,
      O => \^num_transactions_reg[16]\
    );
\m_axi_gmem_AWLEN[7]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(16),
      I1 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(15),
      I2 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(18),
      I3 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(17),
      O => \m_axi_gmem_AWLEN[7]_INST_0_i_2_n_0\
    );
\m_axi_gmem_AWLEN[7]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(20),
      I1 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(19),
      I2 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(22),
      I3 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(21),
      O => \m_axi_gmem_AWLEN[7]_INST_0_i_3_n_0\
    );
\m_axi_gmem_AWLEN[7]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(8),
      I1 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(7),
      I2 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(10),
      I3 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(9),
      O => \m_axi_gmem_AWLEN[7]_INST_0_i_4_n_0\
    );
\m_axi_gmem_AWLEN[7]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(12),
      I1 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(11),
      I2 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(14),
      I3 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(13),
      O => \m_axi_gmem_AWLEN[7]_INST_0_i_5_n_0\
    );
\m_axi_gmem_AWLEN[7]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(4),
      I1 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(3),
      I2 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(6),
      I3 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(5),
      O => \m_axi_gmem_AWLEN[7]_INST_0_i_6_n_0\
    );
\m_axi_gmem_AWLEN[7]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(0),
      I1 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(23),
      I2 => start,
      I3 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(2),
      I4 => \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(1),
      O => \m_axi_gmem_AWLEN[7]_INST_0_i_7_n_0\
    );
wfirst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => wfirst,
      I1 => is_zero_r_reg_1(0),
      I2 => m_axi_gmem_WREADY,
      I3 => \^is_zero_r_reg_0\,
      O => wfirst_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0\ is
  port (
    m_axi_gmem_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    areset : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    start : in STD_LOGIC;
    m_axi_gmem_AWLEN_0_sp_1 : in STD_LOGIC;
    \m_axi_gmem_AWLEN[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_AWREADY : in STD_LOGIC;
    is_zero_r_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0\ : entity is "krnl_output_stage_rtl_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0\ is
  signal \count_r[0]_i_10__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_11__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_12__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_13__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_14__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_15__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_16__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_17__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_18__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_9__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_10__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_11__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_12__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_13__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_14__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_15__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_16__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_4__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_5__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_7__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_9__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_10__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_11__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_12__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_13__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_14__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_15__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_16__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_17__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_5__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_7__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_9__0_n_0\ : STD_LOGIC;
  signal count_r_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \count_r_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_10\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_11\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_12\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_13\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_14\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_15\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_8\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_9\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_10\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_11\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_12\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_13\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_14\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_15\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_8\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_9\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_10\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_11\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_12\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_13\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_14\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_15\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_8\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_9\ : STD_LOGIC;
  signal is_zero_r : STD_LOGIC;
  signal \is_zero_r_i_2__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_3__2_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_4__2_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_5__2_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_6__1_n_0\ : STD_LOGIC;
  signal is_zero_r_reg_n_0 : STD_LOGIC;
  signal m_axi_gmem_AWLEN_0_sn_1 : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal \NLW_count_r_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_r_reg[0]_i_2__0\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[16]_i_1__0\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[8]_i_1__0\ : label is 16;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axi_gmem_AWLEN[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axi_gmem_AWLEN[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axi_gmem_AWLEN[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axi_gmem_AWLEN[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axi_gmem_AWLEN[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axi_gmem_AWLEN[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axi_gmem_AWLEN[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axi_gmem_AWLEN[7]_INST_0\ : label is "soft_lutpair3";
begin
  m_axi_gmem_AWLEN_0_sn_1 <= m_axi_gmem_AWLEN_0_sp_1;
\count_r[0]_i_10__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_10__0_n_0\
    );
\count_r[0]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(7),
      I1 => Q(7),
      I2 => start,
      O => \count_r[0]_i_11__0_n_0\
    );
\count_r[0]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(6),
      I1 => Q(6),
      I2 => start,
      O => \count_r[0]_i_12__0_n_0\
    );
\count_r[0]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(5),
      I1 => Q(5),
      I2 => start,
      O => \count_r[0]_i_13__0_n_0\
    );
\count_r[0]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(4),
      I1 => Q(4),
      I2 => start,
      O => \count_r[0]_i_14__0_n_0\
    );
\count_r[0]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(3),
      I1 => Q(3),
      I2 => start,
      O => \count_r[0]_i_15__0_n_0\
    );
\count_r[0]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(2),
      I1 => Q(2),
      I2 => start,
      O => \count_r[0]_i_16__0_n_0\
    );
\count_r[0]_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(1),
      I1 => Q(1),
      I2 => start,
      O => \count_r[0]_i_17__0_n_0\
    );
\count_r[0]_i_18__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(0),
      I1 => Q(0),
      I2 => start,
      O => \count_r[0]_i_18__0_n_0\
    );
\count_r[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => start,
      I1 => is_zero_r_reg_0,
      I2 => m_axi_gmem_AWREADY,
      O => is_zero_r
    );
\count_r[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_3__0_n_0\
    );
\count_r[0]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_4__0_n_0\
    );
\count_r[0]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_5__0_n_0\
    );
\count_r[0]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_6__0_n_0\
    );
\count_r[0]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_7__0_n_0\
    );
\count_r[0]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_8__0_n_0\
    );
\count_r[0]_i_9__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_9__0_n_0\
    );
\count_r[16]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(22),
      I1 => Q(22),
      I2 => start,
      O => \count_r[16]_i_10__0_n_0\
    );
\count_r[16]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(21),
      I1 => Q(21),
      I2 => start,
      O => \count_r[16]_i_11__0_n_0\
    );
\count_r[16]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(20),
      I1 => Q(20),
      I2 => start,
      O => \count_r[16]_i_12__0_n_0\
    );
\count_r[16]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(19),
      I1 => Q(19),
      I2 => start,
      O => \count_r[16]_i_13__0_n_0\
    );
\count_r[16]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(18),
      I1 => Q(18),
      I2 => start,
      O => \count_r[16]_i_14__0_n_0\
    );
\count_r[16]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(17),
      I1 => Q(17),
      I2 => start,
      O => \count_r[16]_i_15__0_n_0\
    );
\count_r[16]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(16),
      I1 => Q(16),
      I2 => start,
      O => \count_r[16]_i_16__0_n_0\
    );
\count_r[16]_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_2__1_n_0\
    );
\count_r[16]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_3__0_n_0\
    );
\count_r[16]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_4__0_n_0\
    );
\count_r[16]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_5__0_n_0\
    );
\count_r[16]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_6__0_n_0\
    );
\count_r[16]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_7__0_n_0\
    );
\count_r[16]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_8__0_n_0\
    );
\count_r[16]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(23),
      I1 => Q(23),
      I2 => start,
      O => \count_r[16]_i_9__0_n_0\
    );
\count_r[8]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(15),
      I1 => Q(15),
      I2 => start,
      O => \count_r[8]_i_10__0_n_0\
    );
\count_r[8]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(14),
      I1 => Q(14),
      I2 => start,
      O => \count_r[8]_i_11__0_n_0\
    );
\count_r[8]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(13),
      I1 => Q(13),
      I2 => start,
      O => \count_r[8]_i_12__0_n_0\
    );
\count_r[8]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(12),
      I1 => Q(12),
      I2 => start,
      O => \count_r[8]_i_13__0_n_0\
    );
\count_r[8]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(11),
      I1 => Q(11),
      I2 => start,
      O => \count_r[8]_i_14__0_n_0\
    );
\count_r[8]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(10),
      I1 => Q(10),
      I2 => start,
      O => \count_r[8]_i_15__0_n_0\
    );
\count_r[8]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(9),
      I1 => Q(9),
      I2 => start,
      O => \count_r[8]_i_16__0_n_0\
    );
\count_r[8]_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(8),
      I1 => Q(8),
      I2 => start,
      O => \count_r[8]_i_17__0_n_0\
    );
\count_r[8]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_2__0_n_0\
    );
\count_r[8]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_3__0_n_0\
    );
\count_r[8]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_4__0_n_0\
    );
\count_r[8]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_5__0_n_0\
    );
\count_r[8]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_6__0_n_0\
    );
\count_r[8]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_7__0_n_0\
    );
\count_r[8]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_8__0_n_0\
    );
\count_r[8]_i_9__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_9__0_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[0]_i_2__0_n_15\,
      Q => count_r_reg(0),
      R => areset
    );
\count_r_reg[0]_i_2__0\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \count_r_reg[0]_i_2__0_n_0\,
      CO(6) => \count_r_reg[0]_i_2__0_n_1\,
      CO(5) => \count_r_reg[0]_i_2__0_n_2\,
      CO(4) => \count_r_reg[0]_i_2__0_n_3\,
      CO(3) => \count_r_reg[0]_i_2__0_n_4\,
      CO(2) => \count_r_reg[0]_i_2__0_n_5\,
      CO(1) => \count_r_reg[0]_i_2__0_n_6\,
      CO(0) => \count_r_reg[0]_i_2__0_n_7\,
      DI(7) => \count_r[0]_i_3__0_n_0\,
      DI(6) => \count_r[0]_i_4__0_n_0\,
      DI(5) => \count_r[0]_i_5__0_n_0\,
      DI(4) => \count_r[0]_i_6__0_n_0\,
      DI(3) => \count_r[0]_i_7__0_n_0\,
      DI(2) => \count_r[0]_i_8__0_n_0\,
      DI(1) => \count_r[0]_i_9__0_n_0\,
      DI(0) => \count_r[0]_i_10__0_n_0\,
      O(7) => \count_r_reg[0]_i_2__0_n_8\,
      O(6) => \count_r_reg[0]_i_2__0_n_9\,
      O(5) => \count_r_reg[0]_i_2__0_n_10\,
      O(4) => \count_r_reg[0]_i_2__0_n_11\,
      O(3) => \count_r_reg[0]_i_2__0_n_12\,
      O(2) => \count_r_reg[0]_i_2__0_n_13\,
      O(1) => \count_r_reg[0]_i_2__0_n_14\,
      O(0) => \count_r_reg[0]_i_2__0_n_15\,
      S(7) => \count_r[0]_i_11__0_n_0\,
      S(6) => \count_r[0]_i_12__0_n_0\,
      S(5) => \count_r[0]_i_13__0_n_0\,
      S(4) => \count_r[0]_i_14__0_n_0\,
      S(3) => \count_r[0]_i_15__0_n_0\,
      S(2) => \count_r[0]_i_16__0_n_0\,
      S(1) => \count_r[0]_i_17__0_n_0\,
      S(0) => \count_r[0]_i_18__0_n_0\
    );
\count_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[8]_i_1__0_n_13\,
      Q => count_r_reg(10),
      R => areset
    );
\count_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[8]_i_1__0_n_12\,
      Q => count_r_reg(11),
      R => areset
    );
\count_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[8]_i_1__0_n_11\,
      Q => count_r_reg(12),
      R => areset
    );
\count_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[8]_i_1__0_n_10\,
      Q => count_r_reg(13),
      R => areset
    );
\count_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[8]_i_1__0_n_9\,
      Q => count_r_reg(14),
      R => areset
    );
\count_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[8]_i_1__0_n_8\,
      Q => count_r_reg(15),
      R => areset
    );
\count_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[16]_i_1__0_n_15\,
      Q => count_r_reg(16),
      R => areset
    );
\count_r_reg[16]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[8]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_count_r_reg[16]_i_1__0_CO_UNCONNECTED\(7),
      CO(6) => \count_r_reg[16]_i_1__0_n_1\,
      CO(5) => \count_r_reg[16]_i_1__0_n_2\,
      CO(4) => \count_r_reg[16]_i_1__0_n_3\,
      CO(3) => \count_r_reg[16]_i_1__0_n_4\,
      CO(2) => \count_r_reg[16]_i_1__0_n_5\,
      CO(1) => \count_r_reg[16]_i_1__0_n_6\,
      CO(0) => \count_r_reg[16]_i_1__0_n_7\,
      DI(7) => '0',
      DI(6) => \count_r[16]_i_2__1_n_0\,
      DI(5) => \count_r[16]_i_3__0_n_0\,
      DI(4) => \count_r[16]_i_4__0_n_0\,
      DI(3) => \count_r[16]_i_5__0_n_0\,
      DI(2) => \count_r[16]_i_6__0_n_0\,
      DI(1) => \count_r[16]_i_7__0_n_0\,
      DI(0) => \count_r[16]_i_8__0_n_0\,
      O(7) => \count_r_reg[16]_i_1__0_n_8\,
      O(6) => \count_r_reg[16]_i_1__0_n_9\,
      O(5) => \count_r_reg[16]_i_1__0_n_10\,
      O(4) => \count_r_reg[16]_i_1__0_n_11\,
      O(3) => \count_r_reg[16]_i_1__0_n_12\,
      O(2) => \count_r_reg[16]_i_1__0_n_13\,
      O(1) => \count_r_reg[16]_i_1__0_n_14\,
      O(0) => \count_r_reg[16]_i_1__0_n_15\,
      S(7) => \count_r[16]_i_9__0_n_0\,
      S(6) => \count_r[16]_i_10__0_n_0\,
      S(5) => \count_r[16]_i_11__0_n_0\,
      S(4) => \count_r[16]_i_12__0_n_0\,
      S(3) => \count_r[16]_i_13__0_n_0\,
      S(2) => \count_r[16]_i_14__0_n_0\,
      S(1) => \count_r[16]_i_15__0_n_0\,
      S(0) => \count_r[16]_i_16__0_n_0\
    );
\count_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[16]_i_1__0_n_14\,
      Q => count_r_reg(17),
      R => areset
    );
\count_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[16]_i_1__0_n_13\,
      Q => count_r_reg(18),
      R => areset
    );
\count_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[16]_i_1__0_n_12\,
      Q => count_r_reg(19),
      R => areset
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[0]_i_2__0_n_14\,
      Q => count_r_reg(1),
      R => areset
    );
\count_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[16]_i_1__0_n_11\,
      Q => count_r_reg(20),
      R => areset
    );
\count_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[16]_i_1__0_n_10\,
      Q => count_r_reg(21),
      R => areset
    );
\count_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[16]_i_1__0_n_9\,
      Q => count_r_reg(22),
      R => areset
    );
\count_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[16]_i_1__0_n_8\,
      Q => count_r_reg(23),
      R => areset
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[0]_i_2__0_n_13\,
      Q => count_r_reg(2),
      R => areset
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[0]_i_2__0_n_12\,
      Q => count_r_reg(3),
      R => areset
    );
\count_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[0]_i_2__0_n_11\,
      Q => count_r_reg(4),
      R => areset
    );
\count_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[0]_i_2__0_n_10\,
      Q => count_r_reg(5),
      R => areset
    );
\count_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[0]_i_2__0_n_9\,
      Q => count_r_reg(6),
      R => areset
    );
\count_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[0]_i_2__0_n_8\,
      Q => count_r_reg(7),
      R => areset
    );
\count_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[8]_i_1__0_n_15\,
      Q => count_r_reg(8),
      R => areset
    );
\count_r_reg[8]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[0]_i_2__0_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[8]_i_1__0_n_0\,
      CO(6) => \count_r_reg[8]_i_1__0_n_1\,
      CO(5) => \count_r_reg[8]_i_1__0_n_2\,
      CO(4) => \count_r_reg[8]_i_1__0_n_3\,
      CO(3) => \count_r_reg[8]_i_1__0_n_4\,
      CO(2) => \count_r_reg[8]_i_1__0_n_5\,
      CO(1) => \count_r_reg[8]_i_1__0_n_6\,
      CO(0) => \count_r_reg[8]_i_1__0_n_7\,
      DI(7) => \count_r[8]_i_2__0_n_0\,
      DI(6) => \count_r[8]_i_3__0_n_0\,
      DI(5) => \count_r[8]_i_4__0_n_0\,
      DI(4) => \count_r[8]_i_5__0_n_0\,
      DI(3) => \count_r[8]_i_6__0_n_0\,
      DI(2) => \count_r[8]_i_7__0_n_0\,
      DI(1) => \count_r[8]_i_8__0_n_0\,
      DI(0) => \count_r[8]_i_9__0_n_0\,
      O(7) => \count_r_reg[8]_i_1__0_n_8\,
      O(6) => \count_r_reg[8]_i_1__0_n_9\,
      O(5) => \count_r_reg[8]_i_1__0_n_10\,
      O(4) => \count_r_reg[8]_i_1__0_n_11\,
      O(3) => \count_r_reg[8]_i_1__0_n_12\,
      O(2) => \count_r_reg[8]_i_1__0_n_13\,
      O(1) => \count_r_reg[8]_i_1__0_n_14\,
      O(0) => \count_r_reg[8]_i_1__0_n_15\,
      S(7) => \count_r[8]_i_10__0_n_0\,
      S(6) => \count_r[8]_i_11__0_n_0\,
      S(5) => \count_r[8]_i_12__0_n_0\,
      S(4) => \count_r[8]_i_13__0_n_0\,
      S(3) => \count_r[8]_i_14__0_n_0\,
      S(2) => \count_r[8]_i_15__0_n_0\,
      S(1) => \count_r[8]_i_16__0_n_0\,
      S(0) => \count_r[8]_i_17__0_n_0\
    );
\count_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => \count_r_reg[8]_i_1__0_n_14\,
      Q => count_r_reg(9),
      R => areset
    );
\is_zero_r_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000FFFF"
    )
        port map (
      I0 => \is_zero_r_i_2__0_n_0\,
      I1 => \is_zero_r_i_3__2_n_0\,
      I2 => \is_zero_r_i_4__2_n_0\,
      I3 => \is_zero_r_i_5__2_n_0\,
      I4 => m_axi_gmem_AWLEN_0_sn_1,
      O => p_0_in_0
    );
\is_zero_r_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => m_axi_gmem_AWREADY,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(0),
      I3 => \is_zero_r_i_6__1_n_0\,
      O => \is_zero_r_i_2__0_n_0\
    );
\is_zero_r_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_r_reg(15),
      I1 => count_r_reg(16),
      I2 => count_r_reg(13),
      I3 => count_r_reg(14),
      I4 => count_r_reg(18),
      I5 => count_r_reg(17),
      O => \is_zero_r_i_3__2_n_0\
    );
\is_zero_r_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_r_reg(21),
      I1 => count_r_reg(22),
      I2 => count_r_reg(19),
      I3 => count_r_reg(20),
      I4 => start,
      I5 => count_r_reg(23),
      O => \is_zero_r_i_4__2_n_0\
    );
\is_zero_r_i_5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_r_reg(3),
      I1 => count_r_reg(4),
      I2 => count_r_reg(1),
      I3 => count_r_reg(2),
      I4 => count_r_reg(6),
      I5 => count_r_reg(5),
      O => \is_zero_r_i_5__2_n_0\
    );
\is_zero_r_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_r_reg(9),
      I1 => count_r_reg(10),
      I2 => count_r_reg(7),
      I3 => count_r_reg(8),
      I4 => count_r_reg(12),
      I5 => count_r_reg(11),
      O => \is_zero_r_i_6__1_n_0\
    );
is_zero_r_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => p_0_in_0,
      Q => is_zero_r_reg_n_0,
      S => areset
    );
\m_axi_gmem_AWLEN[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => m_axi_gmem_AWLEN_0_sn_1,
      I2 => \m_axi_gmem_AWLEN[7]\(0),
      O => m_axi_gmem_AWLEN(0)
    );
\m_axi_gmem_AWLEN[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => m_axi_gmem_AWLEN_0_sn_1,
      I2 => \m_axi_gmem_AWLEN[7]\(1),
      O => m_axi_gmem_AWLEN(1)
    );
\m_axi_gmem_AWLEN[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => m_axi_gmem_AWLEN_0_sn_1,
      I2 => \m_axi_gmem_AWLEN[7]\(2),
      O => m_axi_gmem_AWLEN(2)
    );
\m_axi_gmem_AWLEN[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => m_axi_gmem_AWLEN_0_sn_1,
      I2 => \m_axi_gmem_AWLEN[7]\(3),
      O => m_axi_gmem_AWLEN(3)
    );
\m_axi_gmem_AWLEN[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => m_axi_gmem_AWLEN_0_sn_1,
      I2 => \m_axi_gmem_AWLEN[7]\(4),
      O => m_axi_gmem_AWLEN(4)
    );
\m_axi_gmem_AWLEN[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => m_axi_gmem_AWLEN_0_sn_1,
      I2 => \m_axi_gmem_AWLEN[7]\(5),
      O => m_axi_gmem_AWLEN(5)
    );
\m_axi_gmem_AWLEN[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => m_axi_gmem_AWLEN_0_sn_1,
      I2 => \m_axi_gmem_AWLEN[7]\(6),
      O => m_axi_gmem_AWLEN(6)
    );
\m_axi_gmem_AWLEN[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => m_axi_gmem_AWLEN_0_sn_1,
      I2 => \m_axi_gmem_AWLEN[7]\(7),
      O => m_axi_gmem_AWLEN(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0_0\ is
  port (
    is_zero_r_reg_0 : out STD_LOGIC;
    is_zero_r_reg_1 : out STD_LOGIC;
    areset : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    start : in STD_LOGIC;
    m_axi_gmem_BVALID : in STD_LOGIC;
    ap_idle : in STD_LOGIC;
    ap_start_r : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    is_zero_r_reg_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0_0\ : entity is "krnl_output_stage_rtl_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0_0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0_0\ is
  signal \count_r[0]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_15_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_16_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_17_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_18_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_6_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_7_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_8_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_9_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_15_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_16_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_4_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_5_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_6_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_7_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_8_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_9_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_15_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_16_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_17_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_4_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_5_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_6_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_7_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_8_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_9_n_0\ : STD_LOGIC;
  signal count_r_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \count_r_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \is_zero_r_i_1__2_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_2__2_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_3__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_4__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_5__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_6__0_n_0\ : STD_LOGIC;
  signal \^is_zero_r_reg_0\ : STD_LOGIC;
  signal \NLW_count_r_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_r_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[8]_i_1\ : label is 16;
begin
  is_zero_r_reg_0 <= \^is_zero_r_reg_0\;
ap_idle_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F8FFF8FFF8"
    )
        port map (
      I0 => \^is_zero_r_reg_0\,
      I1 => m_axi_gmem_BVALID,
      I2 => areset,
      I3 => ap_idle,
      I4 => ap_start_r,
      I5 => ap_start,
      O => is_zero_r_reg_1
    );
\count_r[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_10_n_0\
    );
\count_r[0]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(7),
      I1 => Q(7),
      I2 => start,
      O => \count_r[0]_i_11_n_0\
    );
\count_r[0]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(6),
      I1 => Q(6),
      I2 => start,
      O => \count_r[0]_i_12_n_0\
    );
\count_r[0]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(5),
      I1 => Q(5),
      I2 => start,
      O => \count_r[0]_i_13_n_0\
    );
\count_r[0]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(4),
      I1 => Q(4),
      I2 => start,
      O => \count_r[0]_i_14_n_0\
    );
\count_r[0]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(3),
      I1 => Q(3),
      I2 => start,
      O => \count_r[0]_i_15_n_0\
    );
\count_r[0]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(2),
      I1 => Q(2),
      I2 => start,
      O => \count_r[0]_i_16_n_0\
    );
\count_r[0]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(1),
      I1 => Q(1),
      I2 => start,
      O => \count_r[0]_i_17_n_0\
    );
\count_r[0]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(0),
      I1 => Q(0),
      I2 => start,
      O => \count_r[0]_i_18_n_0\
    );
\count_r[0]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_axi_gmem_BVALID,
      I1 => start,
      O => \count_r[0]_i_1__2_n_0\
    );
\count_r[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_3_n_0\
    );
\count_r[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_4_n_0\
    );
\count_r[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_5_n_0\
    );
\count_r[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_6_n_0\
    );
\count_r[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_7_n_0\
    );
\count_r[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_8_n_0\
    );
\count_r[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_9_n_0\
    );
\count_r[16]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(22),
      I1 => Q(22),
      I2 => start,
      O => \count_r[16]_i_10_n_0\
    );
\count_r[16]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(21),
      I1 => Q(21),
      I2 => start,
      O => \count_r[16]_i_11_n_0\
    );
\count_r[16]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(20),
      I1 => Q(20),
      I2 => start,
      O => \count_r[16]_i_12_n_0\
    );
\count_r[16]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(19),
      I1 => Q(19),
      I2 => start,
      O => \count_r[16]_i_13_n_0\
    );
\count_r[16]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(18),
      I1 => Q(18),
      I2 => start,
      O => \count_r[16]_i_14_n_0\
    );
\count_r[16]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(17),
      I1 => Q(17),
      I2 => start,
      O => \count_r[16]_i_15_n_0\
    );
\count_r[16]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(16),
      I1 => Q(16),
      I2 => start,
      O => \count_r[16]_i_16_n_0\
    );
\count_r[16]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_2__0_n_0\
    );
\count_r[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_3_n_0\
    );
\count_r[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_4_n_0\
    );
\count_r[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_5_n_0\
    );
\count_r[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_6_n_0\
    );
\count_r[16]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_7_n_0\
    );
\count_r[16]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_8_n_0\
    );
\count_r[16]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(23),
      I1 => Q(23),
      I2 => start,
      O => \count_r[16]_i_9_n_0\
    );
\count_r[8]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(15),
      I1 => Q(15),
      I2 => start,
      O => \count_r[8]_i_10_n_0\
    );
\count_r[8]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(14),
      I1 => Q(14),
      I2 => start,
      O => \count_r[8]_i_11_n_0\
    );
\count_r[8]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(13),
      I1 => Q(13),
      I2 => start,
      O => \count_r[8]_i_12_n_0\
    );
\count_r[8]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(12),
      I1 => Q(12),
      I2 => start,
      O => \count_r[8]_i_13_n_0\
    );
\count_r[8]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(11),
      I1 => Q(11),
      I2 => start,
      O => \count_r[8]_i_14_n_0\
    );
\count_r[8]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(10),
      I1 => Q(10),
      I2 => start,
      O => \count_r[8]_i_15_n_0\
    );
\count_r[8]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(9),
      I1 => Q(9),
      I2 => start,
      O => \count_r[8]_i_16_n_0\
    );
\count_r[8]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(8),
      I1 => Q(8),
      I2 => start,
      O => \count_r[8]_i_17_n_0\
    );
\count_r[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_2_n_0\
    );
\count_r[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_3_n_0\
    );
\count_r[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_4_n_0\
    );
\count_r[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_5_n_0\
    );
\count_r[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_6_n_0\
    );
\count_r[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_7_n_0\
    );
\count_r[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_8_n_0\
    );
\count_r[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_9_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[0]_i_2_n_15\,
      Q => count_r_reg(0),
      R => areset
    );
\count_r_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \count_r_reg[0]_i_2_n_0\,
      CO(6) => \count_r_reg[0]_i_2_n_1\,
      CO(5) => \count_r_reg[0]_i_2_n_2\,
      CO(4) => \count_r_reg[0]_i_2_n_3\,
      CO(3) => \count_r_reg[0]_i_2_n_4\,
      CO(2) => \count_r_reg[0]_i_2_n_5\,
      CO(1) => \count_r_reg[0]_i_2_n_6\,
      CO(0) => \count_r_reg[0]_i_2_n_7\,
      DI(7) => \count_r[0]_i_3_n_0\,
      DI(6) => \count_r[0]_i_4_n_0\,
      DI(5) => \count_r[0]_i_5_n_0\,
      DI(4) => \count_r[0]_i_6_n_0\,
      DI(3) => \count_r[0]_i_7_n_0\,
      DI(2) => \count_r[0]_i_8_n_0\,
      DI(1) => \count_r[0]_i_9_n_0\,
      DI(0) => \count_r[0]_i_10_n_0\,
      O(7) => \count_r_reg[0]_i_2_n_8\,
      O(6) => \count_r_reg[0]_i_2_n_9\,
      O(5) => \count_r_reg[0]_i_2_n_10\,
      O(4) => \count_r_reg[0]_i_2_n_11\,
      O(3) => \count_r_reg[0]_i_2_n_12\,
      O(2) => \count_r_reg[0]_i_2_n_13\,
      O(1) => \count_r_reg[0]_i_2_n_14\,
      O(0) => \count_r_reg[0]_i_2_n_15\,
      S(7) => \count_r[0]_i_11_n_0\,
      S(6) => \count_r[0]_i_12_n_0\,
      S(5) => \count_r[0]_i_13_n_0\,
      S(4) => \count_r[0]_i_14_n_0\,
      S(3) => \count_r[0]_i_15_n_0\,
      S(2) => \count_r[0]_i_16_n_0\,
      S(1) => \count_r[0]_i_17_n_0\,
      S(0) => \count_r[0]_i_18_n_0\
    );
\count_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[8]_i_1_n_13\,
      Q => count_r_reg(10),
      R => areset
    );
\count_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[8]_i_1_n_12\,
      Q => count_r_reg(11),
      R => areset
    );
\count_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[8]_i_1_n_11\,
      Q => count_r_reg(12),
      R => areset
    );
\count_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[8]_i_1_n_10\,
      Q => count_r_reg(13),
      R => areset
    );
\count_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[8]_i_1_n_9\,
      Q => count_r_reg(14),
      R => areset
    );
\count_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[8]_i_1_n_8\,
      Q => count_r_reg(15),
      R => areset
    );
\count_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[16]_i_1_n_15\,
      Q => count_r_reg(16),
      R => areset
    );
\count_r_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_count_r_reg[16]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \count_r_reg[16]_i_1_n_1\,
      CO(5) => \count_r_reg[16]_i_1_n_2\,
      CO(4) => \count_r_reg[16]_i_1_n_3\,
      CO(3) => \count_r_reg[16]_i_1_n_4\,
      CO(2) => \count_r_reg[16]_i_1_n_5\,
      CO(1) => \count_r_reg[16]_i_1_n_6\,
      CO(0) => \count_r_reg[16]_i_1_n_7\,
      DI(7) => '0',
      DI(6) => \count_r[16]_i_2__0_n_0\,
      DI(5) => \count_r[16]_i_3_n_0\,
      DI(4) => \count_r[16]_i_4_n_0\,
      DI(3) => \count_r[16]_i_5_n_0\,
      DI(2) => \count_r[16]_i_6_n_0\,
      DI(1) => \count_r[16]_i_7_n_0\,
      DI(0) => \count_r[16]_i_8_n_0\,
      O(7) => \count_r_reg[16]_i_1_n_8\,
      O(6) => \count_r_reg[16]_i_1_n_9\,
      O(5) => \count_r_reg[16]_i_1_n_10\,
      O(4) => \count_r_reg[16]_i_1_n_11\,
      O(3) => \count_r_reg[16]_i_1_n_12\,
      O(2) => \count_r_reg[16]_i_1_n_13\,
      O(1) => \count_r_reg[16]_i_1_n_14\,
      O(0) => \count_r_reg[16]_i_1_n_15\,
      S(7) => \count_r[16]_i_9_n_0\,
      S(6) => \count_r[16]_i_10_n_0\,
      S(5) => \count_r[16]_i_11_n_0\,
      S(4) => \count_r[16]_i_12_n_0\,
      S(3) => \count_r[16]_i_13_n_0\,
      S(2) => \count_r[16]_i_14_n_0\,
      S(1) => \count_r[16]_i_15_n_0\,
      S(0) => \count_r[16]_i_16_n_0\
    );
\count_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[16]_i_1_n_14\,
      Q => count_r_reg(17),
      R => areset
    );
\count_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[16]_i_1_n_13\,
      Q => count_r_reg(18),
      R => areset
    );
\count_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[16]_i_1_n_12\,
      Q => count_r_reg(19),
      R => areset
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[0]_i_2_n_14\,
      Q => count_r_reg(1),
      R => areset
    );
\count_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[16]_i_1_n_11\,
      Q => count_r_reg(20),
      R => areset
    );
\count_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[16]_i_1_n_10\,
      Q => count_r_reg(21),
      R => areset
    );
\count_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[16]_i_1_n_9\,
      Q => count_r_reg(22),
      R => areset
    );
\count_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[16]_i_1_n_8\,
      Q => count_r_reg(23),
      R => areset
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[0]_i_2_n_13\,
      Q => count_r_reg(2),
      R => areset
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[0]_i_2_n_12\,
      Q => count_r_reg(3),
      R => areset
    );
\count_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[0]_i_2_n_11\,
      Q => count_r_reg(4),
      R => areset
    );
\count_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[0]_i_2_n_10\,
      Q => count_r_reg(5),
      R => areset
    );
\count_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[0]_i_2_n_9\,
      Q => count_r_reg(6),
      R => areset
    );
\count_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[0]_i_2_n_8\,
      Q => count_r_reg(7),
      R => areset
    );
\count_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[8]_i_1_n_15\,
      Q => count_r_reg(8),
      R => areset
    );
\count_r_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[8]_i_1_n_0\,
      CO(6) => \count_r_reg[8]_i_1_n_1\,
      CO(5) => \count_r_reg[8]_i_1_n_2\,
      CO(4) => \count_r_reg[8]_i_1_n_3\,
      CO(3) => \count_r_reg[8]_i_1_n_4\,
      CO(2) => \count_r_reg[8]_i_1_n_5\,
      CO(1) => \count_r_reg[8]_i_1_n_6\,
      CO(0) => \count_r_reg[8]_i_1_n_7\,
      DI(7) => \count_r[8]_i_2_n_0\,
      DI(6) => \count_r[8]_i_3_n_0\,
      DI(5) => \count_r[8]_i_4_n_0\,
      DI(4) => \count_r[8]_i_5_n_0\,
      DI(3) => \count_r[8]_i_6_n_0\,
      DI(2) => \count_r[8]_i_7_n_0\,
      DI(1) => \count_r[8]_i_8_n_0\,
      DI(0) => \count_r[8]_i_9_n_0\,
      O(7) => \count_r_reg[8]_i_1_n_8\,
      O(6) => \count_r_reg[8]_i_1_n_9\,
      O(5) => \count_r_reg[8]_i_1_n_10\,
      O(4) => \count_r_reg[8]_i_1_n_11\,
      O(3) => \count_r_reg[8]_i_1_n_12\,
      O(2) => \count_r_reg[8]_i_1_n_13\,
      O(1) => \count_r_reg[8]_i_1_n_14\,
      O(0) => \count_r_reg[8]_i_1_n_15\,
      S(7) => \count_r[8]_i_10_n_0\,
      S(6) => \count_r[8]_i_11_n_0\,
      S(5) => \count_r[8]_i_12_n_0\,
      S(4) => \count_r[8]_i_13_n_0\,
      S(3) => \count_r[8]_i_14_n_0\,
      S(2) => \count_r[8]_i_15_n_0\,
      S(1) => \count_r[8]_i_16_n_0\,
      S(0) => \count_r[8]_i_17_n_0\
    );
\count_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__2_n_0\,
      D => \count_r_reg[8]_i_1_n_14\,
      Q => count_r_reg(9),
      R => areset
    );
\is_zero_r_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBFBBB0"
    )
        port map (
      I0 => \is_zero_r_i_2__2_n_0\,
      I1 => is_zero_r_reg_2,
      I2 => m_axi_gmem_BVALID,
      I3 => start,
      I4 => \^is_zero_r_reg_0\,
      O => \is_zero_r_i_1__2_n_0\
    );
\is_zero_r_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \is_zero_r_i_3__1_n_0\,
      I1 => \is_zero_r_i_4__1_n_0\,
      I2 => \is_zero_r_i_5__1_n_0\,
      I3 => \is_zero_r_i_6__0_n_0\,
      I4 => count_r_reg(0),
      I5 => count_r_reg(1),
      O => \is_zero_r_i_2__2_n_0\
    );
\is_zero_r_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_r_reg(4),
      I1 => count_r_reg(5),
      I2 => count_r_reg(2),
      I3 => count_r_reg(3),
      I4 => count_r_reg(7),
      I5 => count_r_reg(6),
      O => \is_zero_r_i_3__1_n_0\
    );
\is_zero_r_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => count_r_reg(22),
      I1 => count_r_reg(23),
      I2 => count_r_reg(20),
      I3 => count_r_reg(21),
      I4 => start,
      I5 => m_axi_gmem_BVALID,
      O => \is_zero_r_i_4__1_n_0\
    );
\is_zero_r_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_r_reg(16),
      I1 => count_r_reg(17),
      I2 => count_r_reg(14),
      I3 => count_r_reg(15),
      I4 => count_r_reg(19),
      I5 => count_r_reg(18),
      O => \is_zero_r_i_5__1_n_0\
    );
\is_zero_r_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_r_reg(10),
      I1 => count_r_reg(11),
      I2 => count_r_reg(8),
      I3 => count_r_reg(9),
      I4 => count_r_reg(13),
      I5 => count_r_reg(12),
      O => \is_zero_r_i_6__0_n_0\
    );
is_zero_r_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \is_zero_r_i_1__2_n_0\,
      Q => \^is_zero_r_reg_0\,
      S => areset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0_1\ is
  port (
    \count_r_reg[14]_0\ : out STD_LOGIC;
    areset : in STD_LOGIC;
    \count_r_reg[23]_0\ : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0_1\ : entity is "krnl_output_stage_rtl_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0_1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0_1\ is
  signal \count_r[0]_i_10__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_11__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_12__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_13__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_14__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_15__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_16__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_17__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_18__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_4__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_5__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_6__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_7__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_8__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_9__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_10__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_11__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_12__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_13__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_14__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_15__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_16__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_4__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_5__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_6__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_7__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_8__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_9__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_10__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_11__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_12__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_13__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_14__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_15__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_16__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_17__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_4__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_5__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_6__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_7__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_8__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_9__1_n_0\ : STD_LOGIC;
  signal count_r_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \count_r_reg[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__1_n_1\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__1_n_10\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__1_n_11\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__1_n_12\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__1_n_13\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__1_n_14\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__1_n_15\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__1_n_2\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__1_n_3\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__1_n_4\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__1_n_5\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__1_n_6\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__1_n_7\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__1_n_8\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__1_n_9\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_10\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_11\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_12\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_13\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_14\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_15\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_8\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_9\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_10\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_11\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_12\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_13\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_14\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_15\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_8\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_9\ : STD_LOGIC;
  signal w_almost_final_transaction_i_2_n_0 : STD_LOGIC;
  signal w_almost_final_transaction_i_3_n_0 : STD_LOGIC;
  signal w_almost_final_transaction_i_4_n_0 : STD_LOGIC;
  signal w_almost_final_transaction_i_5_n_0 : STD_LOGIC;
  signal \NLW_count_r_reg[16]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_r_reg[0]_i_2__1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[16]_i_1__1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[8]_i_1__1\ : label is 16;
begin
\count_r[0]_i_10__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_10__1_n_0\
    );
\count_r[0]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(7),
      I1 => Q(7),
      I2 => start,
      O => \count_r[0]_i_11__1_n_0\
    );
\count_r[0]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(6),
      I1 => Q(6),
      I2 => start,
      O => \count_r[0]_i_12__1_n_0\
    );
\count_r[0]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(5),
      I1 => Q(5),
      I2 => start,
      O => \count_r[0]_i_13__1_n_0\
    );
\count_r[0]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(4),
      I1 => Q(4),
      I2 => start,
      O => \count_r[0]_i_14__1_n_0\
    );
\count_r[0]_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(3),
      I1 => Q(3),
      I2 => start,
      O => \count_r[0]_i_15__1_n_0\
    );
\count_r[0]_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(2),
      I1 => Q(2),
      I2 => start,
      O => \count_r[0]_i_16__1_n_0\
    );
\count_r[0]_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(1),
      I1 => Q(1),
      I2 => start,
      O => \count_r[0]_i_17__1_n_0\
    );
\count_r[0]_i_18__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(0),
      I1 => Q(0),
      I2 => start,
      O => \count_r[0]_i_18__1_n_0\
    );
\count_r[0]_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_3__1_n_0\
    );
\count_r[0]_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_4__1_n_0\
    );
\count_r[0]_i_5__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_5__1_n_0\
    );
\count_r[0]_i_6__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_6__1_n_0\
    );
\count_r[0]_i_7__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_7__1_n_0\
    );
\count_r[0]_i_8__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_8__1_n_0\
    );
\count_r[0]_i_9__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_9__1_n_0\
    );
\count_r[16]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(22),
      I1 => Q(22),
      I2 => start,
      O => \count_r[16]_i_10__1_n_0\
    );
\count_r[16]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(21),
      I1 => Q(21),
      I2 => start,
      O => \count_r[16]_i_11__1_n_0\
    );
\count_r[16]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(20),
      I1 => Q(20),
      I2 => start,
      O => \count_r[16]_i_12__1_n_0\
    );
\count_r[16]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(19),
      I1 => Q(19),
      I2 => start,
      O => \count_r[16]_i_13__1_n_0\
    );
\count_r[16]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(18),
      I1 => Q(18),
      I2 => start,
      O => \count_r[16]_i_14__1_n_0\
    );
\count_r[16]_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(17),
      I1 => Q(17),
      I2 => start,
      O => \count_r[16]_i_15__1_n_0\
    );
\count_r[16]_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(16),
      I1 => Q(16),
      I2 => start,
      O => \count_r[16]_i_16__1_n_0\
    );
\count_r[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_2_n_0\
    );
\count_r[16]_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_3__1_n_0\
    );
\count_r[16]_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_4__1_n_0\
    );
\count_r[16]_i_5__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_5__1_n_0\
    );
\count_r[16]_i_6__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_6__1_n_0\
    );
\count_r[16]_i_7__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_7__1_n_0\
    );
\count_r[16]_i_8__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_8__1_n_0\
    );
\count_r[16]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(23),
      I1 => Q(23),
      I2 => start,
      O => \count_r[16]_i_9__1_n_0\
    );
\count_r[8]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(15),
      I1 => Q(15),
      I2 => start,
      O => \count_r[8]_i_10__1_n_0\
    );
\count_r[8]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(14),
      I1 => Q(14),
      I2 => start,
      O => \count_r[8]_i_11__1_n_0\
    );
\count_r[8]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(13),
      I1 => Q(13),
      I2 => start,
      O => \count_r[8]_i_12__1_n_0\
    );
\count_r[8]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(12),
      I1 => Q(12),
      I2 => start,
      O => \count_r[8]_i_13__1_n_0\
    );
\count_r[8]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(11),
      I1 => Q(11),
      I2 => start,
      O => \count_r[8]_i_14__1_n_0\
    );
\count_r[8]_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(10),
      I1 => Q(10),
      I2 => start,
      O => \count_r[8]_i_15__1_n_0\
    );
\count_r[8]_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(9),
      I1 => Q(9),
      I2 => start,
      O => \count_r[8]_i_16__1_n_0\
    );
\count_r[8]_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(8),
      I1 => Q(8),
      I2 => start,
      O => \count_r[8]_i_17__1_n_0\
    );
\count_r[8]_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_2__1_n_0\
    );
\count_r[8]_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_3__1_n_0\
    );
\count_r[8]_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_4__1_n_0\
    );
\count_r[8]_i_5__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_5__1_n_0\
    );
\count_r[8]_i_6__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_6__1_n_0\
    );
\count_r[8]_i_7__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_7__1_n_0\
    );
\count_r[8]_i_8__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_8__1_n_0\
    );
\count_r[8]_i_9__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_9__1_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[0]_i_2__1_n_15\,
      Q => count_r_reg(0),
      R => areset
    );
\count_r_reg[0]_i_2__1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \count_r_reg[0]_i_2__1_n_0\,
      CO(6) => \count_r_reg[0]_i_2__1_n_1\,
      CO(5) => \count_r_reg[0]_i_2__1_n_2\,
      CO(4) => \count_r_reg[0]_i_2__1_n_3\,
      CO(3) => \count_r_reg[0]_i_2__1_n_4\,
      CO(2) => \count_r_reg[0]_i_2__1_n_5\,
      CO(1) => \count_r_reg[0]_i_2__1_n_6\,
      CO(0) => \count_r_reg[0]_i_2__1_n_7\,
      DI(7) => \count_r[0]_i_3__1_n_0\,
      DI(6) => \count_r[0]_i_4__1_n_0\,
      DI(5) => \count_r[0]_i_5__1_n_0\,
      DI(4) => \count_r[0]_i_6__1_n_0\,
      DI(3) => \count_r[0]_i_7__1_n_0\,
      DI(2) => \count_r[0]_i_8__1_n_0\,
      DI(1) => \count_r[0]_i_9__1_n_0\,
      DI(0) => \count_r[0]_i_10__1_n_0\,
      O(7) => \count_r_reg[0]_i_2__1_n_8\,
      O(6) => \count_r_reg[0]_i_2__1_n_9\,
      O(5) => \count_r_reg[0]_i_2__1_n_10\,
      O(4) => \count_r_reg[0]_i_2__1_n_11\,
      O(3) => \count_r_reg[0]_i_2__1_n_12\,
      O(2) => \count_r_reg[0]_i_2__1_n_13\,
      O(1) => \count_r_reg[0]_i_2__1_n_14\,
      O(0) => \count_r_reg[0]_i_2__1_n_15\,
      S(7) => \count_r[0]_i_11__1_n_0\,
      S(6) => \count_r[0]_i_12__1_n_0\,
      S(5) => \count_r[0]_i_13__1_n_0\,
      S(4) => \count_r[0]_i_14__1_n_0\,
      S(3) => \count_r[0]_i_15__1_n_0\,
      S(2) => \count_r[0]_i_16__1_n_0\,
      S(1) => \count_r[0]_i_17__1_n_0\,
      S(0) => \count_r[0]_i_18__1_n_0\
    );
\count_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[8]_i_1__1_n_13\,
      Q => count_r_reg(10),
      R => areset
    );
\count_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[8]_i_1__1_n_12\,
      Q => count_r_reg(11),
      R => areset
    );
\count_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[8]_i_1__1_n_11\,
      Q => count_r_reg(12),
      R => areset
    );
\count_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[8]_i_1__1_n_10\,
      Q => count_r_reg(13),
      R => areset
    );
\count_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[8]_i_1__1_n_9\,
      Q => count_r_reg(14),
      R => areset
    );
\count_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[8]_i_1__1_n_8\,
      Q => count_r_reg(15),
      R => areset
    );
\count_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[16]_i_1__1_n_15\,
      Q => count_r_reg(16),
      R => areset
    );
\count_r_reg[16]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[8]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_count_r_reg[16]_i_1__1_CO_UNCONNECTED\(7),
      CO(6) => \count_r_reg[16]_i_1__1_n_1\,
      CO(5) => \count_r_reg[16]_i_1__1_n_2\,
      CO(4) => \count_r_reg[16]_i_1__1_n_3\,
      CO(3) => \count_r_reg[16]_i_1__1_n_4\,
      CO(2) => \count_r_reg[16]_i_1__1_n_5\,
      CO(1) => \count_r_reg[16]_i_1__1_n_6\,
      CO(0) => \count_r_reg[16]_i_1__1_n_7\,
      DI(7) => '0',
      DI(6) => \count_r[16]_i_2_n_0\,
      DI(5) => \count_r[16]_i_3__1_n_0\,
      DI(4) => \count_r[16]_i_4__1_n_0\,
      DI(3) => \count_r[16]_i_5__1_n_0\,
      DI(2) => \count_r[16]_i_6__1_n_0\,
      DI(1) => \count_r[16]_i_7__1_n_0\,
      DI(0) => \count_r[16]_i_8__1_n_0\,
      O(7) => \count_r_reg[16]_i_1__1_n_8\,
      O(6) => \count_r_reg[16]_i_1__1_n_9\,
      O(5) => \count_r_reg[16]_i_1__1_n_10\,
      O(4) => \count_r_reg[16]_i_1__1_n_11\,
      O(3) => \count_r_reg[16]_i_1__1_n_12\,
      O(2) => \count_r_reg[16]_i_1__1_n_13\,
      O(1) => \count_r_reg[16]_i_1__1_n_14\,
      O(0) => \count_r_reg[16]_i_1__1_n_15\,
      S(7) => \count_r[16]_i_9__1_n_0\,
      S(6) => \count_r[16]_i_10__1_n_0\,
      S(5) => \count_r[16]_i_11__1_n_0\,
      S(4) => \count_r[16]_i_12__1_n_0\,
      S(3) => \count_r[16]_i_13__1_n_0\,
      S(2) => \count_r[16]_i_14__1_n_0\,
      S(1) => \count_r[16]_i_15__1_n_0\,
      S(0) => \count_r[16]_i_16__1_n_0\
    );
\count_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[16]_i_1__1_n_14\,
      Q => count_r_reg(17),
      R => areset
    );
\count_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[16]_i_1__1_n_13\,
      Q => count_r_reg(18),
      R => areset
    );
\count_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[16]_i_1__1_n_12\,
      Q => count_r_reg(19),
      R => areset
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[0]_i_2__1_n_14\,
      Q => count_r_reg(1),
      R => areset
    );
\count_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[16]_i_1__1_n_11\,
      Q => count_r_reg(20),
      R => areset
    );
\count_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[16]_i_1__1_n_10\,
      Q => count_r_reg(21),
      R => areset
    );
\count_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[16]_i_1__1_n_9\,
      Q => count_r_reg(22),
      R => areset
    );
\count_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[16]_i_1__1_n_8\,
      Q => count_r_reg(23),
      R => areset
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[0]_i_2__1_n_13\,
      Q => count_r_reg(2),
      R => areset
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[0]_i_2__1_n_12\,
      Q => count_r_reg(3),
      R => areset
    );
\count_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[0]_i_2__1_n_11\,
      Q => count_r_reg(4),
      R => areset
    );
\count_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[0]_i_2__1_n_10\,
      Q => count_r_reg(5),
      R => areset
    );
\count_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[0]_i_2__1_n_9\,
      Q => count_r_reg(6),
      R => areset
    );
\count_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[0]_i_2__1_n_8\,
      Q => count_r_reg(7),
      R => areset
    );
\count_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[8]_i_1__1_n_15\,
      Q => count_r_reg(8),
      R => areset
    );
\count_r_reg[8]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[0]_i_2__1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[8]_i_1__1_n_0\,
      CO(6) => \count_r_reg[8]_i_1__1_n_1\,
      CO(5) => \count_r_reg[8]_i_1__1_n_2\,
      CO(4) => \count_r_reg[8]_i_1__1_n_3\,
      CO(3) => \count_r_reg[8]_i_1__1_n_4\,
      CO(2) => \count_r_reg[8]_i_1__1_n_5\,
      CO(1) => \count_r_reg[8]_i_1__1_n_6\,
      CO(0) => \count_r_reg[8]_i_1__1_n_7\,
      DI(7) => \count_r[8]_i_2__1_n_0\,
      DI(6) => \count_r[8]_i_3__1_n_0\,
      DI(5) => \count_r[8]_i_4__1_n_0\,
      DI(4) => \count_r[8]_i_5__1_n_0\,
      DI(3) => \count_r[8]_i_6__1_n_0\,
      DI(2) => \count_r[8]_i_7__1_n_0\,
      DI(1) => \count_r[8]_i_8__1_n_0\,
      DI(0) => \count_r[8]_i_9__1_n_0\,
      O(7) => \count_r_reg[8]_i_1__1_n_8\,
      O(6) => \count_r_reg[8]_i_1__1_n_9\,
      O(5) => \count_r_reg[8]_i_1__1_n_10\,
      O(4) => \count_r_reg[8]_i_1__1_n_11\,
      O(3) => \count_r_reg[8]_i_1__1_n_12\,
      O(2) => \count_r_reg[8]_i_1__1_n_13\,
      O(1) => \count_r_reg[8]_i_1__1_n_14\,
      O(0) => \count_r_reg[8]_i_1__1_n_15\,
      S(7) => \count_r[8]_i_10__1_n_0\,
      S(6) => \count_r[8]_i_11__1_n_0\,
      S(5) => \count_r[8]_i_12__1_n_0\,
      S(4) => \count_r[8]_i_13__1_n_0\,
      S(3) => \count_r[8]_i_14__1_n_0\,
      S(2) => \count_r[8]_i_15__1_n_0\,
      S(1) => \count_r[8]_i_16__1_n_0\,
      S(0) => \count_r[8]_i_17__1_n_0\
    );
\count_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r_reg[23]_0\,
      D => \count_r_reg[8]_i_1__1_n_14\,
      Q => count_r_reg(9),
      R => areset
    );
w_almost_final_transaction_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => w_almost_final_transaction_i_2_n_0,
      I1 => w_almost_final_transaction_i_3_n_0,
      I2 => w_almost_final_transaction_i_4_n_0,
      I3 => w_almost_final_transaction_i_5_n_0,
      O => \count_r_reg[14]_0\
    );
w_almost_final_transaction_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_r_reg(14),
      I1 => count_r_reg(15),
      I2 => count_r_reg(12),
      I3 => count_r_reg(13),
      I4 => count_r_reg(17),
      I5 => count_r_reg(16),
      O => w_almost_final_transaction_i_2_n_0
    );
w_almost_final_transaction_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => count_r_reg(2),
      I1 => count_r_reg(3),
      I2 => count_r_reg(0),
      I3 => count_r_reg(1),
      I4 => count_r_reg(5),
      I5 => count_r_reg(4),
      O => w_almost_final_transaction_i_3_n_0
    );
w_almost_final_transaction_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_r_reg(8),
      I1 => count_r_reg(9),
      I2 => count_r_reg(6),
      I3 => count_r_reg(7),
      I4 => count_r_reg(11),
      I5 => count_r_reg(10),
      O => w_almost_final_transaction_i_4_n_0
    );
w_almost_final_transaction_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_r_reg(20),
      I1 => count_r_reg(21),
      I2 => count_r_reg(18),
      I3 => count_r_reg(19),
      I4 => count_r_reg(23),
      I5 => count_r_reg(22),
      O => w_almost_final_transaction_i_5_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized1\ is
  port (
    awvalid_r_reg : out STD_LOGIC;
    areset : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    \count_r_reg[1]_0\ : in STD_LOGIC;
    m_axi_gmem_AWREADY : in STD_LOGIC;
    wfirst_pulse : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized1\ : entity is "krnl_output_stage_rtl_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized1\ is
  signal \count_r[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_r[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[5]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[6]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[6]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[7]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[7]_i_4_n_0\ : STD_LOGIC;
  signal \count_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[7]\ : STD_LOGIC;
  signal idle_aw : STD_LOGIC;
  signal \is_zero_r_i_1__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_2__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_3__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_4__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_5__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of awvalid_r_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_r[1]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_r[3]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count_r[6]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_r[6]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \is_zero_r_i_5__0\ : label is "soft_lutpair9";
begin
awvalid_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \count_r_reg[1]_0\,
      I1 => idle_aw,
      I2 => m_axi_gmem_AWREADY,
      O => awvalid_r_reg
    );
\count_r[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      O => \count_r[0]_i_1__3_n_0\
    );
\count_r[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95AA6A55"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      I1 => \count_r_reg[1]_0\,
      I2 => m_axi_gmem_AWREADY,
      I3 => wfirst_pulse,
      I4 => \count_r_reg_n_0_[1]\,
      O => \count_r[1]_i_1__0_n_0\
    );
\count_r[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7770888AEEE5111"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      I1 => wfirst_pulse,
      I2 => m_axi_gmem_AWREADY,
      I3 => \count_r_reg[1]_0\,
      I4 => \count_r_reg_n_0_[2]\,
      I5 => \count_r_reg_n_0_[1]\,
      O => \count_r[2]_i_1__0_n_0\
    );
\count_r[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F708EF10"
    )
        port map (
      I0 => \count_r_reg_n_0_[1]\,
      I1 => \count_r_reg_n_0_[0]\,
      I2 => \count_r[6]_i_2_n_0\,
      I3 => \count_r_reg_n_0_[3]\,
      I4 => \count_r_reg_n_0_[2]\,
      O => \count_r[3]_i_1__0_n_0\
    );
\count_r[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F0080FEFF0100"
    )
        port map (
      I0 => \count_r_reg_n_0_[2]\,
      I1 => \count_r_reg_n_0_[0]\,
      I2 => \count_r_reg_n_0_[1]\,
      I3 => \count_r[6]_i_2_n_0\,
      I4 => \count_r_reg_n_0_[4]\,
      I5 => \count_r_reg_n_0_[3]\,
      O => \count_r[4]_i_1__0_n_0\
    );
\count_r[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDD2222FFF2000D"
    )
        port map (
      I0 => \count_r[6]_i_3_n_0\,
      I1 => \count_r[6]_i_2_n_0\,
      I2 => \count_r_reg_n_0_[3]\,
      I3 => \count_r[5]_i_2_n_0\,
      I4 => \count_r_reg_n_0_[5]\,
      I5 => \count_r_reg_n_0_[4]\,
      O => \count_r[5]_i_1__0_n_0\
    );
\count_r[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEFEFEFE"
    )
        port map (
      I0 => \count_r_reg_n_0_[1]\,
      I1 => \count_r_reg_n_0_[0]\,
      I2 => wfirst_pulse,
      I3 => m_axi_gmem_AWREADY,
      I4 => \count_r_reg[1]_0\,
      I5 => \count_r_reg_n_0_[2]\,
      O => \count_r[5]_i_2_n_0\
    );
\count_r[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBF4040FF4000BF"
    )
        port map (
      I0 => \count_r[6]_i_2_n_0\,
      I1 => \count_r_reg_n_0_[4]\,
      I2 => \count_r[6]_i_3_n_0\,
      I3 => \count_r[7]_i_3__0_n_0\,
      I4 => \count_r_reg_n_0_[6]\,
      I5 => \count_r_reg_n_0_[5]\,
      O => \count_r[6]_i_1__0_n_0\
    );
\count_r[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \count_r_reg[1]_0\,
      I1 => m_axi_gmem_AWREADY,
      I2 => wfirst_pulse,
      O => \count_r[6]_i_2_n_0\
    );
\count_r[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \count_r_reg_n_0_[2]\,
      I1 => \count_r_reg_n_0_[0]\,
      I2 => \count_r_reg_n_0_[1]\,
      I3 => \count_r_reg_n_0_[3]\,
      O => \count_r[6]_i_3_n_0\
    );
\count_r[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => wfirst_pulse,
      I1 => m_axi_gmem_AWREADY,
      I2 => \count_r_reg[1]_0\,
      O => \count_r[7]_i_1__0_n_0\
    );
\count_r[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FF0FE01"
    )
        port map (
      I0 => \count_r[7]_i_3__0_n_0\,
      I1 => \count_r_reg_n_0_[5]\,
      I2 => \count_r[7]_i_4_n_0\,
      I3 => \count_r_reg_n_0_[7]\,
      I4 => \count_r_reg_n_0_[6]\,
      O => \count_r[7]_i_2_n_0\
    );
\count_r[7]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \count_r_reg_n_0_[3]\,
      I1 => \count_r_reg_n_0_[1]\,
      I2 => \count_r_reg_n_0_[0]\,
      I3 => \count_r[6]_i_2_n_0\,
      I4 => \count_r_reg_n_0_[2]\,
      I5 => \count_r_reg_n_0_[4]\,
      O => \count_r[7]_i_3__0_n_0\
    );
\count_r[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000000000000000"
    )
        port map (
      I0 => \count_r_reg[1]_0\,
      I1 => m_axi_gmem_AWREADY,
      I2 => wfirst_pulse,
      I3 => \count_r_reg_n_0_[5]\,
      I4 => \count_r_reg_n_0_[4]\,
      I5 => \count_r[6]_i_3_n_0\,
      O => \count_r[7]_i_4_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[7]_i_1__0_n_0\,
      D => \count_r[0]_i_1__3_n_0\,
      Q => \count_r_reg_n_0_[0]\,
      R => areset
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[7]_i_1__0_n_0\,
      D => \count_r[1]_i_1__0_n_0\,
      Q => \count_r_reg_n_0_[1]\,
      R => areset
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[7]_i_1__0_n_0\,
      D => \count_r[2]_i_1__0_n_0\,
      Q => \count_r_reg_n_0_[2]\,
      R => areset
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[7]_i_1__0_n_0\,
      D => \count_r[3]_i_1__0_n_0\,
      Q => \count_r_reg_n_0_[3]\,
      R => areset
    );
\count_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[7]_i_1__0_n_0\,
      D => \count_r[4]_i_1__0_n_0\,
      Q => \count_r_reg_n_0_[4]\,
      R => areset
    );
\count_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[7]_i_1__0_n_0\,
      D => \count_r[5]_i_1__0_n_0\,
      Q => \count_r_reg_n_0_[5]\,
      R => areset
    );
\count_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[7]_i_1__0_n_0\,
      D => \count_r[6]_i_1__0_n_0\,
      Q => \count_r_reg_n_0_[6]\,
      R => areset
    );
\count_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \count_r[7]_i_1__0_n_0\,
      D => \count_r[7]_i_2_n_0\,
      Q => \count_r_reg_n_0_[7]\,
      R => areset
    );
\is_zero_r_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFF8F80000F8"
    )
        port map (
      I0 => \is_zero_r_i_2__1_n_0\,
      I1 => \is_zero_r_i_3__0_n_0\,
      I2 => \is_zero_r_i_4__0_n_0\,
      I3 => \is_zero_r_i_5__0_n_0\,
      I4 => wfirst_pulse,
      I5 => idle_aw,
      O => \is_zero_r_i_1__1_n_0\
    );
\is_zero_r_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \is_zero_r_i_5__0_n_0\,
      I1 => \count_r_reg_n_0_[3]\,
      I2 => \count_r_reg_n_0_[7]\,
      I3 => \count_r_reg_n_0_[0]\,
      I4 => \count_r_reg_n_0_[1]\,
      I5 => \count_r_reg_n_0_[2]\,
      O => \is_zero_r_i_2__1_n_0\
    );
\is_zero_r_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_r_reg_n_0_[6]\,
      I1 => \count_r_reg_n_0_[5]\,
      I2 => \count_r_reg_n_0_[4]\,
      O => \is_zero_r_i_3__0_n_0\
    );
\is_zero_r_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \count_r_reg_n_0_[7]\,
      I1 => wfirst_pulse,
      I2 => \count_r_reg_n_0_[6]\,
      I3 => \count_r_reg_n_0_[5]\,
      I4 => \count_r_reg_n_0_[4]\,
      I5 => \count_r[6]_i_3_n_0\,
      O => \is_zero_r_i_4__0_n_0\
    );
\is_zero_r_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => m_axi_gmem_AWREADY,
      I1 => \count_r_reg[1]_0\,
      O => \is_zero_r_i_5__0_n_0\
    );
is_zero_r_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \is_zero_r_i_1__1_n_0\,
      Q => idle_aw,
      S => areset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_register_slice is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[1]_0\ : out STD_LOGIC;
    m_axi_gmem_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_WREADY : in STD_LOGIC;
    areset : in STD_LOGIC;
    ap_idle : in STD_LOGIC;
    p1_TVALID : in STD_LOGIC;
    p1_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_register_slice;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_register_slice is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \primary_data[31]_i_1_n_0\ : STD_LOGIC;
  signal secondary_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \secondary_data[31]_i_1_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_r[7]_i_3\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \primary_data[0]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair99";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\count_r[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => m_axi_gmem_WREADY,
      O => \state_reg[1]_0\
    );
\primary_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(0),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(0),
      O => p_1_in(0)
    );
\primary_data[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(10),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(10),
      O => p_1_in(10)
    );
\primary_data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(11),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(11),
      O => p_1_in(11)
    );
\primary_data[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(12),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(12),
      O => p_1_in(12)
    );
\primary_data[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(13),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(13),
      O => p_1_in(13)
    );
\primary_data[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(14),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(14),
      O => p_1_in(14)
    );
\primary_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(15),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(15),
      O => p_1_in(15)
    );
\primary_data[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(16),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(16),
      O => p_1_in(16)
    );
\primary_data[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(17),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(17),
      O => p_1_in(17)
    );
\primary_data[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(18),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(18),
      O => p_1_in(18)
    );
\primary_data[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(19),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(19),
      O => p_1_in(19)
    );
\primary_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(1),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(1),
      O => p_1_in(1)
    );
\primary_data[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(20),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(20),
      O => p_1_in(20)
    );
\primary_data[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(21),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(21),
      O => p_1_in(21)
    );
\primary_data[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(22),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(22),
      O => p_1_in(22)
    );
\primary_data[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(23),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(23),
      O => p_1_in(23)
    );
\primary_data[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(24),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(24),
      O => p_1_in(24)
    );
\primary_data[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(25),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(25),
      O => p_1_in(25)
    );
\primary_data[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(26),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(26),
      O => p_1_in(26)
    );
\primary_data[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(27),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(27),
      O => p_1_in(27)
    );
\primary_data[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(28),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(28),
      O => p_1_in(28)
    );
\primary_data[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(29),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(29),
      O => p_1_in(29)
    );
\primary_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(2),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(2),
      O => p_1_in(2)
    );
\primary_data[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(30),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(30),
      O => p_1_in(30)
    );
\primary_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \^q\(0),
      I1 => m_axi_gmem_WREADY,
      I2 => \^q\(1),
      O => \primary_data[31]_i_1_n_0\
    );
\primary_data[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(31),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(31),
      O => p_1_in(31)
    );
\primary_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(3),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(3),
      O => p_1_in(3)
    );
\primary_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(4),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(4),
      O => p_1_in(4)
    );
\primary_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(5),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(5),
      O => p_1_in(5)
    );
\primary_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(6),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(6),
      O => p_1_in(6)
    );
\primary_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(7),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(7),
      O => p_1_in(7)
    );
\primary_data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(8),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(8),
      O => p_1_in(8)
    );
\primary_data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAA08AA"
    )
        port map (
      I0 => secondary_data(9),
      I1 => \^q\(1),
      I2 => m_axi_gmem_WREADY,
      I3 => \^q\(0),
      I4 => p1_TDATA(9),
      O => p_1_in(9)
    );
\primary_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(0),
      Q => m_axi_gmem_WDATA(0),
      R => '0'
    );
\primary_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(10),
      Q => m_axi_gmem_WDATA(10),
      R => '0'
    );
\primary_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(11),
      Q => m_axi_gmem_WDATA(11),
      R => '0'
    );
\primary_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(12),
      Q => m_axi_gmem_WDATA(12),
      R => '0'
    );
\primary_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(13),
      Q => m_axi_gmem_WDATA(13),
      R => '0'
    );
\primary_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(14),
      Q => m_axi_gmem_WDATA(14),
      R => '0'
    );
\primary_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(15),
      Q => m_axi_gmem_WDATA(15),
      R => '0'
    );
\primary_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(16),
      Q => m_axi_gmem_WDATA(16),
      R => '0'
    );
\primary_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(17),
      Q => m_axi_gmem_WDATA(17),
      R => '0'
    );
\primary_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(18),
      Q => m_axi_gmem_WDATA(18),
      R => '0'
    );
\primary_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(19),
      Q => m_axi_gmem_WDATA(19),
      R => '0'
    );
\primary_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(1),
      Q => m_axi_gmem_WDATA(1),
      R => '0'
    );
\primary_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(20),
      Q => m_axi_gmem_WDATA(20),
      R => '0'
    );
\primary_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(21),
      Q => m_axi_gmem_WDATA(21),
      R => '0'
    );
\primary_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(22),
      Q => m_axi_gmem_WDATA(22),
      R => '0'
    );
\primary_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(23),
      Q => m_axi_gmem_WDATA(23),
      R => '0'
    );
\primary_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(24),
      Q => m_axi_gmem_WDATA(24),
      R => '0'
    );
\primary_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(25),
      Q => m_axi_gmem_WDATA(25),
      R => '0'
    );
\primary_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(26),
      Q => m_axi_gmem_WDATA(26),
      R => '0'
    );
\primary_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(27),
      Q => m_axi_gmem_WDATA(27),
      R => '0'
    );
\primary_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(28),
      Q => m_axi_gmem_WDATA(28),
      R => '0'
    );
\primary_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(29),
      Q => m_axi_gmem_WDATA(29),
      R => '0'
    );
\primary_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(2),
      Q => m_axi_gmem_WDATA(2),
      R => '0'
    );
\primary_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(30),
      Q => m_axi_gmem_WDATA(30),
      R => '0'
    );
\primary_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(31),
      Q => m_axi_gmem_WDATA(31),
      R => '0'
    );
\primary_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(3),
      Q => m_axi_gmem_WDATA(3),
      R => '0'
    );
\primary_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(4),
      Q => m_axi_gmem_WDATA(4),
      R => '0'
    );
\primary_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(5),
      Q => m_axi_gmem_WDATA(5),
      R => '0'
    );
\primary_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(6),
      Q => m_axi_gmem_WDATA(6),
      R => '0'
    );
\primary_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(7),
      Q => m_axi_gmem_WDATA(7),
      R => '0'
    );
\primary_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(8),
      Q => m_axi_gmem_WDATA(8),
      R => '0'
    );
\primary_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \primary_data[31]_i_1_n_0\,
      D => p_1_in(9),
      Q => m_axi_gmem_WDATA(9),
      R => '0'
    );
\secondary_data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \secondary_data[31]_i_1_n_0\
    );
\secondary_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(0),
      Q => secondary_data(0),
      R => '0'
    );
\secondary_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(10),
      Q => secondary_data(10),
      R => '0'
    );
\secondary_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(11),
      Q => secondary_data(11),
      R => '0'
    );
\secondary_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(12),
      Q => secondary_data(12),
      R => '0'
    );
\secondary_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(13),
      Q => secondary_data(13),
      R => '0'
    );
\secondary_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(14),
      Q => secondary_data(14),
      R => '0'
    );
\secondary_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(15),
      Q => secondary_data(15),
      R => '0'
    );
\secondary_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(16),
      Q => secondary_data(16),
      R => '0'
    );
\secondary_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(17),
      Q => secondary_data(17),
      R => '0'
    );
\secondary_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(18),
      Q => secondary_data(18),
      R => '0'
    );
\secondary_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(19),
      Q => secondary_data(19),
      R => '0'
    );
\secondary_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(1),
      Q => secondary_data(1),
      R => '0'
    );
\secondary_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(20),
      Q => secondary_data(20),
      R => '0'
    );
\secondary_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(21),
      Q => secondary_data(21),
      R => '0'
    );
\secondary_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(22),
      Q => secondary_data(22),
      R => '0'
    );
\secondary_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(23),
      Q => secondary_data(23),
      R => '0'
    );
\secondary_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(24),
      Q => secondary_data(24),
      R => '0'
    );
\secondary_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(25),
      Q => secondary_data(25),
      R => '0'
    );
\secondary_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(26),
      Q => secondary_data(26),
      R => '0'
    );
\secondary_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(27),
      Q => secondary_data(27),
      R => '0'
    );
\secondary_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(28),
      Q => secondary_data(28),
      R => '0'
    );
\secondary_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(29),
      Q => secondary_data(29),
      R => '0'
    );
\secondary_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(2),
      Q => secondary_data(2),
      R => '0'
    );
\secondary_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(30),
      Q => secondary_data(30),
      R => '0'
    );
\secondary_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(31),
      Q => secondary_data(31),
      R => '0'
    );
\secondary_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(3),
      Q => secondary_data(3),
      R => '0'
    );
\secondary_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(4),
      Q => secondary_data(4),
      R => '0'
    );
\secondary_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(5),
      Q => secondary_data(5),
      R => '0'
    );
\secondary_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(6),
      Q => secondary_data(6),
      R => '0'
    );
\secondary_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(7),
      Q => secondary_data(7),
      R => '0'
    );
\secondary_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(8),
      Q => secondary_data(8),
      R => '0'
    );
\secondary_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \secondary_data[31]_i_1_n_0\,
      D => p1_TDATA(9),
      Q => secondary_data(9),
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => p1_TVALID,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => m_axi_gmem_WREADY,
      O => state(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => areset,
      I1 => ap_idle,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC4C"
    )
        port map (
      I0 => m_axi_gmem_WREADY,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => p1_TVALID,
      O => state(1)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => state(0),
      Q => \^q\(0),
      R => \state[1]_i_1_n_0\
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => state(1),
      Q => \^q\(1),
      R => \state[1]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_axi_write_master is
  port (
    m_axi_gmem_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    is_zero_r_reg : out STD_LOGIC;
    is_zero_r_reg_0 : out STD_LOGIC;
    awvalid_r_reg_0 : out STD_LOGIC;
    is_zero_r_reg_1 : out STD_LOGIC;
    m_axi_gmem_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_start_pulse : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    areset : in STD_LOGIC;
    \addr_reg[0]_0\ : in STD_LOGIC;
    \addr_reg[1]_0\ : in STD_LOGIC;
    \addr_reg[2]_0\ : in STD_LOGIC;
    \addr_reg[3]_0\ : in STD_LOGIC;
    \addr_reg[4]_0\ : in STD_LOGIC;
    \addr_reg[5]_0\ : in STD_LOGIC;
    \addr_reg[6]_0\ : in STD_LOGIC;
    \addr_reg[7]_0\ : in STD_LOGIC;
    \addr_reg[8]_0\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[24]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[32]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[40]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[48]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[56]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[63]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 22 downto 0 );
    S : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \num_transactions_reg[15]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \num_transactions_reg[23]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_AWREADY : in STD_LOGIC;
    m_axi_gmem_BVALID : in STD_LOGIC;
    ap_idle : in STD_LOGIC;
    ap_start_r : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    is_zero_r_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_WREADY : in STD_LOGIC;
    \count_r_reg[7]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_axi_write_master;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_axi_write_master is
  signal \^awvalid_r_reg_0\ : STD_LOGIC;
  signal final_burst_len : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal inst_burst_cntr_n_1 : STD_LOGIC;
  signal inst_burst_cntr_n_2 : STD_LOGIC;
  signal inst_burst_cntr_n_3 : STD_LOGIC;
  signal inst_w_to_aw_cntr_n_0 : STD_LOGIC;
  signal inst_w_transaction_cntr_n_0 : STD_LOGIC;
  signal num_transactions : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal num_transactions0 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \num_transactions1_carry__0_n_0\ : STD_LOGIC;
  signal \num_transactions1_carry__0_n_1\ : STD_LOGIC;
  signal \num_transactions1_carry__0_n_2\ : STD_LOGIC;
  signal \num_transactions1_carry__0_n_3\ : STD_LOGIC;
  signal \num_transactions1_carry__0_n_4\ : STD_LOGIC;
  signal \num_transactions1_carry__0_n_5\ : STD_LOGIC;
  signal \num_transactions1_carry__0_n_6\ : STD_LOGIC;
  signal \num_transactions1_carry__0_n_7\ : STD_LOGIC;
  signal \num_transactions1_carry__1_n_1\ : STD_LOGIC;
  signal \num_transactions1_carry__1_n_2\ : STD_LOGIC;
  signal \num_transactions1_carry__1_n_3\ : STD_LOGIC;
  signal \num_transactions1_carry__1_n_4\ : STD_LOGIC;
  signal \num_transactions1_carry__1_n_5\ : STD_LOGIC;
  signal \num_transactions1_carry__1_n_6\ : STD_LOGIC;
  signal \num_transactions1_carry__1_n_7\ : STD_LOGIC;
  signal num_transactions1_carry_n_0 : STD_LOGIC;
  signal num_transactions1_carry_n_1 : STD_LOGIC;
  signal num_transactions1_carry_n_2 : STD_LOGIC;
  signal num_transactions1_carry_n_3 : STD_LOGIC;
  signal num_transactions1_carry_n_4 : STD_LOGIC;
  signal num_transactions1_carry_n_5 : STD_LOGIC;
  signal num_transactions1_carry_n_6 : STD_LOGIC;
  signal num_transactions1_carry_n_7 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal start : STD_LOGIC;
  signal w_almost_final_transaction : STD_LOGIC;
  signal wfirst : STD_LOGIC;
  signal wfirst_d1 : STD_LOGIC;
  signal wfirst_d10 : STD_LOGIC;
  signal wfirst_pulse : STD_LOGIC;
  signal wfirst_pulse0 : STD_LOGIC;
  signal \NLW_num_transactions1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of num_transactions1_carry : label is 35;
  attribute ADDER_THRESHOLD of \num_transactions1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \num_transactions1_carry__1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of wfirst_d1_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of wfirst_pulse_i_1 : label is "soft_lutpair10";
begin
  awvalid_r_reg_0 <= \^awvalid_r_reg_0\;
\addr[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => \^awvalid_r_reg_0\,
      I1 => m_axi_gmem_AWREADY,
      I2 => ap_start,
      I3 => ap_start_r,
      O => sel
    );
\addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0]_0\,
      Q => m_axi_gmem_AWADDR(0),
      R => '0'
    );
\addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => O(1),
      Q => m_axi_gmem_AWADDR(10),
      R => '0'
    );
\addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => O(2),
      Q => m_axi_gmem_AWADDR(11),
      R => '0'
    );
\addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => O(3),
      Q => m_axi_gmem_AWADDR(12),
      R => '0'
    );
\addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => O(4),
      Q => m_axi_gmem_AWADDR(13),
      R => '0'
    );
\addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => O(5),
      Q => m_axi_gmem_AWADDR(14),
      R => '0'
    );
\addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => O(6),
      Q => m_axi_gmem_AWADDR(15),
      R => '0'
    );
\addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => O(7),
      Q => m_axi_gmem_AWADDR(16),
      R => '0'
    );
\addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[24]_0\(0),
      Q => m_axi_gmem_AWADDR(17),
      R => '0'
    );
\addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[24]_0\(1),
      Q => m_axi_gmem_AWADDR(18),
      R => '0'
    );
\addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[24]_0\(2),
      Q => m_axi_gmem_AWADDR(19),
      R => '0'
    );
\addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[1]_0\,
      Q => m_axi_gmem_AWADDR(1),
      R => '0'
    );
\addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[24]_0\(3),
      Q => m_axi_gmem_AWADDR(20),
      R => '0'
    );
\addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[24]_0\(4),
      Q => m_axi_gmem_AWADDR(21),
      R => '0'
    );
\addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[24]_0\(5),
      Q => m_axi_gmem_AWADDR(22),
      R => '0'
    );
\addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[24]_0\(6),
      Q => m_axi_gmem_AWADDR(23),
      R => '0'
    );
\addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[24]_0\(7),
      Q => m_axi_gmem_AWADDR(24),
      R => '0'
    );
\addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[32]_0\(0),
      Q => m_axi_gmem_AWADDR(25),
      R => '0'
    );
\addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[32]_0\(1),
      Q => m_axi_gmem_AWADDR(26),
      R => '0'
    );
\addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[32]_0\(2),
      Q => m_axi_gmem_AWADDR(27),
      R => '0'
    );
\addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[32]_0\(3),
      Q => m_axi_gmem_AWADDR(28),
      R => '0'
    );
\addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[32]_0\(4),
      Q => m_axi_gmem_AWADDR(29),
      R => '0'
    );
\addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[2]_0\,
      Q => m_axi_gmem_AWADDR(2),
      R => '0'
    );
\addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[32]_0\(5),
      Q => m_axi_gmem_AWADDR(30),
      R => '0'
    );
\addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[32]_0\(6),
      Q => m_axi_gmem_AWADDR(31),
      R => '0'
    );
\addr_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[32]_0\(7),
      Q => m_axi_gmem_AWADDR(32),
      R => '0'
    );
\addr_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[40]_0\(0),
      Q => m_axi_gmem_AWADDR(33),
      R => '0'
    );
\addr_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[40]_0\(1),
      Q => m_axi_gmem_AWADDR(34),
      R => '0'
    );
\addr_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[40]_0\(2),
      Q => m_axi_gmem_AWADDR(35),
      R => '0'
    );
\addr_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[40]_0\(3),
      Q => m_axi_gmem_AWADDR(36),
      R => '0'
    );
\addr_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[40]_0\(4),
      Q => m_axi_gmem_AWADDR(37),
      R => '0'
    );
\addr_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[40]_0\(5),
      Q => m_axi_gmem_AWADDR(38),
      R => '0'
    );
\addr_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[40]_0\(6),
      Q => m_axi_gmem_AWADDR(39),
      R => '0'
    );
\addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[3]_0\,
      Q => m_axi_gmem_AWADDR(3),
      R => '0'
    );
\addr_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[40]_0\(7),
      Q => m_axi_gmem_AWADDR(40),
      R => '0'
    );
\addr_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[48]_0\(0),
      Q => m_axi_gmem_AWADDR(41),
      R => '0'
    );
\addr_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[48]_0\(1),
      Q => m_axi_gmem_AWADDR(42),
      R => '0'
    );
\addr_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[48]_0\(2),
      Q => m_axi_gmem_AWADDR(43),
      R => '0'
    );
\addr_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[48]_0\(3),
      Q => m_axi_gmem_AWADDR(44),
      R => '0'
    );
\addr_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[48]_0\(4),
      Q => m_axi_gmem_AWADDR(45),
      R => '0'
    );
\addr_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[48]_0\(5),
      Q => m_axi_gmem_AWADDR(46),
      R => '0'
    );
\addr_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[48]_0\(6),
      Q => m_axi_gmem_AWADDR(47),
      R => '0'
    );
\addr_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[48]_0\(7),
      Q => m_axi_gmem_AWADDR(48),
      R => '0'
    );
\addr_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[56]_0\(0),
      Q => m_axi_gmem_AWADDR(49),
      R => '0'
    );
\addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[4]_0\,
      Q => m_axi_gmem_AWADDR(4),
      R => '0'
    );
\addr_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[56]_0\(1),
      Q => m_axi_gmem_AWADDR(50),
      R => '0'
    );
\addr_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[56]_0\(2),
      Q => m_axi_gmem_AWADDR(51),
      R => '0'
    );
\addr_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[56]_0\(3),
      Q => m_axi_gmem_AWADDR(52),
      R => '0'
    );
\addr_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[56]_0\(4),
      Q => m_axi_gmem_AWADDR(53),
      R => '0'
    );
\addr_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[56]_0\(5),
      Q => m_axi_gmem_AWADDR(54),
      R => '0'
    );
\addr_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[56]_0\(6),
      Q => m_axi_gmem_AWADDR(55),
      R => '0'
    );
\addr_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[56]_0\(7),
      Q => m_axi_gmem_AWADDR(56),
      R => '0'
    );
\addr_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[63]_0\(0),
      Q => m_axi_gmem_AWADDR(57),
      R => '0'
    );
\addr_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[63]_0\(1),
      Q => m_axi_gmem_AWADDR(58),
      R => '0'
    );
\addr_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[63]_0\(2),
      Q => m_axi_gmem_AWADDR(59),
      R => '0'
    );
\addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[5]_0\,
      Q => m_axi_gmem_AWADDR(5),
      R => '0'
    );
\addr_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[63]_0\(3),
      Q => m_axi_gmem_AWADDR(60),
      R => '0'
    );
\addr_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[63]_0\(4),
      Q => m_axi_gmem_AWADDR(61),
      R => '0'
    );
\addr_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[63]_0\(5),
      Q => m_axi_gmem_AWADDR(62),
      R => '0'
    );
\addr_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[63]_0\(6),
      Q => m_axi_gmem_AWADDR(63),
      R => '0'
    );
\addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[6]_0\,
      Q => m_axi_gmem_AWADDR(6),
      R => '0'
    );
\addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[7]_0\,
      Q => m_axi_gmem_AWADDR(7),
      R => '0'
    );
\addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[8]_0\,
      Q => m_axi_gmem_AWADDR(8),
      R => '0'
    );
\addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => O(0),
      Q => m_axi_gmem_AWADDR(9),
      R => '0'
    );
awvalid_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inst_w_to_aw_cntr_n_0,
      Q => \^awvalid_r_reg_0\,
      R => areset
    );
\final_burst_len_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => D(0),
      Q => final_burst_len(0),
      R => '0'
    );
\final_burst_len_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => D(1),
      Q => final_burst_len(1),
      R => '0'
    );
\final_burst_len_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => D(2),
      Q => final_burst_len(2),
      R => '0'
    );
\final_burst_len_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => D(3),
      Q => final_burst_len(3),
      R => '0'
    );
\final_burst_len_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => D(4),
      Q => final_burst_len(4),
      R => '0'
    );
\final_burst_len_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => D(5),
      Q => final_burst_len(5),
      R => '0'
    );
\final_burst_len_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => D(6),
      Q => final_burst_len(6),
      R => '0'
    );
\final_burst_len_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => D(7),
      Q => final_burst_len(7),
      R => '0'
    );
inst_aw_transaction_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0\
     port map (
      Q(23 downto 0) => num_transactions(23 downto 0),
      ap_clk => ap_clk,
      areset => areset,
      is_zero_r_reg_0 => \^awvalid_r_reg_0\,
      m_axi_gmem_AWLEN(7 downto 0) => m_axi_gmem_AWLEN(7 downto 0),
      \m_axi_gmem_AWLEN[7]\(7 downto 0) => final_burst_len(7 downto 0),
      m_axi_gmem_AWLEN_0_sp_1 => inst_burst_cntr_n_2,
      m_axi_gmem_AWREADY => m_axi_gmem_AWREADY,
      start => start
    );
inst_b_transaction_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0_0\
     port map (
      Q(23 downto 0) => num_transactions(23 downto 0),
      ap_clk => ap_clk,
      ap_idle => ap_idle,
      ap_start => ap_start,
      ap_start_r => ap_start_r,
      areset => areset,
      is_zero_r_reg_0 => is_zero_r_reg_0,
      is_zero_r_reg_1 => is_zero_r_reg_1,
      is_zero_r_reg_2 => inst_burst_cntr_n_2,
      m_axi_gmem_BVALID => m_axi_gmem_BVALID,
      start => start
    );
inst_burst_cntr: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter
     port map (
      Q(7 downto 0) => final_burst_len(7 downto 0),
      ap_clk => ap_clk,
      areset => areset,
      \count_r_reg[7]_0\ => \count_r_reg[7]\,
      is_zero_r_reg_0 => is_zero_r_reg,
      is_zero_r_reg_1(0) => is_zero_r_reg_2(0),
      \m_axi_gmem_AWLEN[7]_INST_0_i_1_0\(23 downto 0) => num_transactions(23 downto 0),
      m_axi_gmem_WREADY => m_axi_gmem_WREADY,
      \num_transactions_reg[16]\ => inst_burst_cntr_n_2,
      start => start,
      \state_reg[1]\ => inst_burst_cntr_n_1,
      w_almost_final_transaction => w_almost_final_transaction,
      wfirst => wfirst,
      wfirst_reg => inst_burst_cntr_n_3
    );
inst_w_to_aw_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized1\
     port map (
      ap_clk => ap_clk,
      areset => areset,
      awvalid_r_reg => inst_w_to_aw_cntr_n_0,
      \count_r_reg[1]_0\ => \^awvalid_r_reg_0\,
      m_axi_gmem_AWREADY => m_axi_gmem_AWREADY,
      wfirst_pulse => wfirst_pulse
    );
inst_w_transaction_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_counter__parameterized0_1\
     port map (
      Q(23 downto 0) => num_transactions(23 downto 0),
      ap_clk => ap_clk,
      areset => areset,
      \count_r_reg[14]_0\ => inst_w_transaction_cntr_n_0,
      \count_r_reg[23]_0\ => inst_burst_cntr_n_1,
      start => start
    );
num_transactions1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => num_transactions1_carry_n_0,
      CO(6) => num_transactions1_carry_n_1,
      CO(5) => num_transactions1_carry_n_2,
      CO(4) => num_transactions1_carry_n_3,
      CO(3) => num_transactions1_carry_n_4,
      CO(2) => num_transactions1_carry_n_5,
      CO(1) => num_transactions1_carry_n_6,
      CO(0) => num_transactions1_carry_n_7,
      DI(7 downto 0) => Q(7 downto 0),
      O(7 downto 0) => num_transactions0(7 downto 0),
      S(7 downto 0) => S(7 downto 0)
    );
\num_transactions1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => num_transactions1_carry_n_0,
      CI_TOP => '0',
      CO(7) => \num_transactions1_carry__0_n_0\,
      CO(6) => \num_transactions1_carry__0_n_1\,
      CO(5) => \num_transactions1_carry__0_n_2\,
      CO(4) => \num_transactions1_carry__0_n_3\,
      CO(3) => \num_transactions1_carry__0_n_4\,
      CO(2) => \num_transactions1_carry__0_n_5\,
      CO(1) => \num_transactions1_carry__0_n_6\,
      CO(0) => \num_transactions1_carry__0_n_7\,
      DI(7 downto 0) => Q(15 downto 8),
      O(7 downto 0) => num_transactions0(15 downto 8),
      S(7 downto 0) => \num_transactions_reg[15]_0\(7 downto 0)
    );
\num_transactions1_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \num_transactions1_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_num_transactions1_carry__1_CO_UNCONNECTED\(7),
      CO(6) => \num_transactions1_carry__1_n_1\,
      CO(5) => \num_transactions1_carry__1_n_2\,
      CO(4) => \num_transactions1_carry__1_n_3\,
      CO(3) => \num_transactions1_carry__1_n_4\,
      CO(2) => \num_transactions1_carry__1_n_5\,
      CO(1) => \num_transactions1_carry__1_n_6\,
      CO(0) => \num_transactions1_carry__1_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => Q(22 downto 16),
      O(7 downto 0) => num_transactions0(23 downto 16),
      S(7 downto 0) => \num_transactions_reg[23]_0\(7 downto 0)
    );
\num_transactions_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(0),
      Q => num_transactions(0),
      R => '0'
    );
\num_transactions_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(10),
      Q => num_transactions(10),
      R => '0'
    );
\num_transactions_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(11),
      Q => num_transactions(11),
      R => '0'
    );
\num_transactions_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(12),
      Q => num_transactions(12),
      R => '0'
    );
\num_transactions_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(13),
      Q => num_transactions(13),
      R => '0'
    );
\num_transactions_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(14),
      Q => num_transactions(14),
      R => '0'
    );
\num_transactions_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(15),
      Q => num_transactions(15),
      R => '0'
    );
\num_transactions_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(16),
      Q => num_transactions(16),
      R => '0'
    );
\num_transactions_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(17),
      Q => num_transactions(17),
      R => '0'
    );
\num_transactions_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(18),
      Q => num_transactions(18),
      R => '0'
    );
\num_transactions_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(19),
      Q => num_transactions(19),
      R => '0'
    );
\num_transactions_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(1),
      Q => num_transactions(1),
      R => '0'
    );
\num_transactions_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(20),
      Q => num_transactions(20),
      R => '0'
    );
\num_transactions_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(21),
      Q => num_transactions(21),
      R => '0'
    );
\num_transactions_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(22),
      Q => num_transactions(22),
      R => '0'
    );
\num_transactions_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(23),
      Q => num_transactions(23),
      R => '0'
    );
\num_transactions_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(2),
      Q => num_transactions(2),
      R => '0'
    );
\num_transactions_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(3),
      Q => num_transactions(3),
      R => '0'
    );
\num_transactions_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(4),
      Q => num_transactions(4),
      R => '0'
    );
\num_transactions_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(5),
      Q => num_transactions(5),
      R => '0'
    );
\num_transactions_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(6),
      Q => num_transactions(6),
      R => '0'
    );
\num_transactions_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(7),
      Q => num_transactions(7),
      R => '0'
    );
\num_transactions_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(8),
      Q => num_transactions(8),
      R => '0'
    );
\num_transactions_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => num_transactions0(9),
      Q => num_transactions(9),
      R => '0'
    );
start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_start_pulse,
      Q => start,
      R => '0'
    );
w_almost_final_transaction_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inst_w_transaction_cntr_n_0,
      Q => w_almost_final_transaction,
      R => '0'
    );
wfirst_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wfirst,
      I1 => is_zero_r_reg_2(0),
      O => wfirst_d10
    );
wfirst_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => wfirst_d10,
      Q => wfirst_d1,
      R => '0'
    );
wfirst_pulse_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => is_zero_r_reg_2(0),
      I1 => wfirst,
      I2 => wfirst_d1,
      O => wfirst_pulse0
    );
wfirst_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => wfirst_pulse0,
      Q => wfirst_pulse,
      R => '0'
    );
wfirst_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inst_burst_cntr_n_3,
      Q => wfirst,
      S => areset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_int is
  port (
    awvalid_r_reg : out STD_LOGIC;
    p1_TREADY : out STD_LOGIC;
    m_axi_gmem_WVALID : out STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    FSM_sequential_rstate_reg : out STD_LOGIC;
    s_axi_control_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]\ : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_control_AWREADY : out STD_LOGIC;
    is_zero_r_reg : out STD_LOGIC;
    m_axi_gmem_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_AWREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_gmem_BVALID : in STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p1_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_gmem_WREADY : in STD_LOGIC;
    p1_TVALID : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_int;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_int is
  signal ap_idle : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal ap_start_pulse : STD_LOGIC;
  signal ap_start_r : STD_LOGIC;
  signal areset : STD_LOGIC;
  signal areset_i_1_n_0 : STD_LOGIC;
  signal ctrl_length : STD_LOGIC_VECTOR ( 30 downto 8 );
  signal final_burst_len0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal inst_axi_write_master_n_65 : STD_LOGIC;
  signal inst_axi_write_master_n_67 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_1 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_100 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_101 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_102 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_103 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_104 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_105 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_106 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_107 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_108 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_109 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_110 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_111 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_112 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_113 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_114 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_115 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_116 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_117 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_118 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_119 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_120 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_121 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_122 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_123 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_124 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_125 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_2 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_3 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_37 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_38 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_39 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_4 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_40 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_41 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_42 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_43 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_44 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_45 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_47 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_48 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_49 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_5 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_50 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_51 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_52 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_53 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_54 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_55 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_56 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_57 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_58 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_59 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_6 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_60 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_61 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_62 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_63 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_64 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_65 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_66 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_67 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_68 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_69 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_7 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_70 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_71 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_72 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_73 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_74 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_75 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_76 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_77 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_78 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_79 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_80 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_81 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_82 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_83 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_84 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_85 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_86 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_87 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_88 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_89 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_90 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_91 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_92 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_93 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_94 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_95 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_96 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_97 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_98 : STD_LOGIC;
  signal inst_krnl_output_stage_control_s_axi_n_99 : STD_LOGIC;
  signal inst_register_slice_n_2 : STD_LOGIC;
  signal \^m_axi_gmem_awaddr\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^m_axi_gmem_wvalid\ : STD_LOGIC;
begin
  m_axi_gmem_AWADDR(63 downto 0) <= \^m_axi_gmem_awaddr\(63 downto 0);
  m_axi_gmem_WVALID <= \^m_axi_gmem_wvalid\;
ap_idle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inst_axi_write_master_n_67,
      Q => ap_idle,
      R => '0'
    );
ap_start_r_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_start,
      Q => ap_start_r,
      R => '0'
    );
areset_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => areset_i_1_n_0
    );
areset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => areset_i_1_n_0,
      Q => areset,
      R => '0'
    );
inst_axi_write_master: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_axi_write_master
     port map (
      D(7) => inst_krnl_output_stage_control_s_axi_n_1,
      D(6) => inst_krnl_output_stage_control_s_axi_n_2,
      D(5) => inst_krnl_output_stage_control_s_axi_n_3,
      D(4) => inst_krnl_output_stage_control_s_axi_n_4,
      D(3) => inst_krnl_output_stage_control_s_axi_n_5,
      D(2) => inst_krnl_output_stage_control_s_axi_n_6,
      D(1) => inst_krnl_output_stage_control_s_axi_n_7,
      D(0) => final_burst_len0(0),
      O(7) => inst_krnl_output_stage_control_s_axi_n_71,
      O(6) => inst_krnl_output_stage_control_s_axi_n_72,
      O(5) => inst_krnl_output_stage_control_s_axi_n_73,
      O(4) => inst_krnl_output_stage_control_s_axi_n_74,
      O(3) => inst_krnl_output_stage_control_s_axi_n_75,
      O(2) => inst_krnl_output_stage_control_s_axi_n_76,
      O(1) => inst_krnl_output_stage_control_s_axi_n_77,
      O(0) => inst_krnl_output_stage_control_s_axi_n_78,
      Q(22 downto 0) => ctrl_length(30 downto 8),
      S(7) => inst_krnl_output_stage_control_s_axi_n_63,
      S(6) => inst_krnl_output_stage_control_s_axi_n_64,
      S(5) => inst_krnl_output_stage_control_s_axi_n_65,
      S(4) => inst_krnl_output_stage_control_s_axi_n_66,
      S(3) => inst_krnl_output_stage_control_s_axi_n_67,
      S(2) => inst_krnl_output_stage_control_s_axi_n_68,
      S(1) => inst_krnl_output_stage_control_s_axi_n_69,
      S(0) => inst_krnl_output_stage_control_s_axi_n_70,
      \addr_reg[0]_0\ => inst_krnl_output_stage_control_s_axi_n_45,
      \addr_reg[1]_0\ => inst_krnl_output_stage_control_s_axi_n_44,
      \addr_reg[24]_0\(7) => inst_krnl_output_stage_control_s_axi_n_79,
      \addr_reg[24]_0\(6) => inst_krnl_output_stage_control_s_axi_n_80,
      \addr_reg[24]_0\(5) => inst_krnl_output_stage_control_s_axi_n_81,
      \addr_reg[24]_0\(4) => inst_krnl_output_stage_control_s_axi_n_82,
      \addr_reg[24]_0\(3) => inst_krnl_output_stage_control_s_axi_n_83,
      \addr_reg[24]_0\(2) => inst_krnl_output_stage_control_s_axi_n_84,
      \addr_reg[24]_0\(1) => inst_krnl_output_stage_control_s_axi_n_85,
      \addr_reg[24]_0\(0) => inst_krnl_output_stage_control_s_axi_n_86,
      \addr_reg[2]_0\ => inst_krnl_output_stage_control_s_axi_n_43,
      \addr_reg[32]_0\(7) => inst_krnl_output_stage_control_s_axi_n_87,
      \addr_reg[32]_0\(6) => inst_krnl_output_stage_control_s_axi_n_88,
      \addr_reg[32]_0\(5) => inst_krnl_output_stage_control_s_axi_n_89,
      \addr_reg[32]_0\(4) => inst_krnl_output_stage_control_s_axi_n_90,
      \addr_reg[32]_0\(3) => inst_krnl_output_stage_control_s_axi_n_91,
      \addr_reg[32]_0\(2) => inst_krnl_output_stage_control_s_axi_n_92,
      \addr_reg[32]_0\(1) => inst_krnl_output_stage_control_s_axi_n_93,
      \addr_reg[32]_0\(0) => inst_krnl_output_stage_control_s_axi_n_94,
      \addr_reg[3]_0\ => inst_krnl_output_stage_control_s_axi_n_42,
      \addr_reg[40]_0\(7) => inst_krnl_output_stage_control_s_axi_n_95,
      \addr_reg[40]_0\(6) => inst_krnl_output_stage_control_s_axi_n_96,
      \addr_reg[40]_0\(5) => inst_krnl_output_stage_control_s_axi_n_97,
      \addr_reg[40]_0\(4) => inst_krnl_output_stage_control_s_axi_n_98,
      \addr_reg[40]_0\(3) => inst_krnl_output_stage_control_s_axi_n_99,
      \addr_reg[40]_0\(2) => inst_krnl_output_stage_control_s_axi_n_100,
      \addr_reg[40]_0\(1) => inst_krnl_output_stage_control_s_axi_n_101,
      \addr_reg[40]_0\(0) => inst_krnl_output_stage_control_s_axi_n_102,
      \addr_reg[48]_0\(7) => inst_krnl_output_stage_control_s_axi_n_103,
      \addr_reg[48]_0\(6) => inst_krnl_output_stage_control_s_axi_n_104,
      \addr_reg[48]_0\(5) => inst_krnl_output_stage_control_s_axi_n_105,
      \addr_reg[48]_0\(4) => inst_krnl_output_stage_control_s_axi_n_106,
      \addr_reg[48]_0\(3) => inst_krnl_output_stage_control_s_axi_n_107,
      \addr_reg[48]_0\(2) => inst_krnl_output_stage_control_s_axi_n_108,
      \addr_reg[48]_0\(1) => inst_krnl_output_stage_control_s_axi_n_109,
      \addr_reg[48]_0\(0) => inst_krnl_output_stage_control_s_axi_n_110,
      \addr_reg[4]_0\ => inst_krnl_output_stage_control_s_axi_n_41,
      \addr_reg[56]_0\(7) => inst_krnl_output_stage_control_s_axi_n_111,
      \addr_reg[56]_0\(6) => inst_krnl_output_stage_control_s_axi_n_112,
      \addr_reg[56]_0\(5) => inst_krnl_output_stage_control_s_axi_n_113,
      \addr_reg[56]_0\(4) => inst_krnl_output_stage_control_s_axi_n_114,
      \addr_reg[56]_0\(3) => inst_krnl_output_stage_control_s_axi_n_115,
      \addr_reg[56]_0\(2) => inst_krnl_output_stage_control_s_axi_n_116,
      \addr_reg[56]_0\(1) => inst_krnl_output_stage_control_s_axi_n_117,
      \addr_reg[56]_0\(0) => inst_krnl_output_stage_control_s_axi_n_118,
      \addr_reg[5]_0\ => inst_krnl_output_stage_control_s_axi_n_40,
      \addr_reg[63]_0\(6) => inst_krnl_output_stage_control_s_axi_n_119,
      \addr_reg[63]_0\(5) => inst_krnl_output_stage_control_s_axi_n_120,
      \addr_reg[63]_0\(4) => inst_krnl_output_stage_control_s_axi_n_121,
      \addr_reg[63]_0\(3) => inst_krnl_output_stage_control_s_axi_n_122,
      \addr_reg[63]_0\(2) => inst_krnl_output_stage_control_s_axi_n_123,
      \addr_reg[63]_0\(1) => inst_krnl_output_stage_control_s_axi_n_124,
      \addr_reg[63]_0\(0) => inst_krnl_output_stage_control_s_axi_n_125,
      \addr_reg[6]_0\ => inst_krnl_output_stage_control_s_axi_n_39,
      \addr_reg[7]_0\ => inst_krnl_output_stage_control_s_axi_n_38,
      \addr_reg[8]_0\ => inst_krnl_output_stage_control_s_axi_n_37,
      ap_clk => ap_clk,
      ap_idle => ap_idle,
      ap_start => ap_start,
      ap_start_pulse => ap_start_pulse,
      ap_start_r => ap_start_r,
      areset => areset,
      awvalid_r_reg_0 => awvalid_r_reg,
      \count_r_reg[7]\ => inst_register_slice_n_2,
      is_zero_r_reg => is_zero_r_reg,
      is_zero_r_reg_0 => inst_axi_write_master_n_65,
      is_zero_r_reg_1 => inst_axi_write_master_n_67,
      is_zero_r_reg_2(0) => \^m_axi_gmem_wvalid\,
      m_axi_gmem_AWADDR(63 downto 0) => \^m_axi_gmem_awaddr\(63 downto 0),
      m_axi_gmem_AWLEN(7 downto 0) => m_axi_gmem_AWLEN(7 downto 0),
      m_axi_gmem_AWREADY => m_axi_gmem_AWREADY,
      m_axi_gmem_BVALID => m_axi_gmem_BVALID,
      m_axi_gmem_WREADY => m_axi_gmem_WREADY,
      \num_transactions_reg[15]_0\(7) => inst_krnl_output_stage_control_s_axi_n_55,
      \num_transactions_reg[15]_0\(6) => inst_krnl_output_stage_control_s_axi_n_56,
      \num_transactions_reg[15]_0\(5) => inst_krnl_output_stage_control_s_axi_n_57,
      \num_transactions_reg[15]_0\(4) => inst_krnl_output_stage_control_s_axi_n_58,
      \num_transactions_reg[15]_0\(3) => inst_krnl_output_stage_control_s_axi_n_59,
      \num_transactions_reg[15]_0\(2) => inst_krnl_output_stage_control_s_axi_n_60,
      \num_transactions_reg[15]_0\(1) => inst_krnl_output_stage_control_s_axi_n_61,
      \num_transactions_reg[15]_0\(0) => inst_krnl_output_stage_control_s_axi_n_62,
      \num_transactions_reg[23]_0\(7) => inst_krnl_output_stage_control_s_axi_n_47,
      \num_transactions_reg[23]_0\(6) => inst_krnl_output_stage_control_s_axi_n_48,
      \num_transactions_reg[23]_0\(5) => inst_krnl_output_stage_control_s_axi_n_49,
      \num_transactions_reg[23]_0\(4) => inst_krnl_output_stage_control_s_axi_n_50,
      \num_transactions_reg[23]_0\(3) => inst_krnl_output_stage_control_s_axi_n_51,
      \num_transactions_reg[23]_0\(2) => inst_krnl_output_stage_control_s_axi_n_52,
      \num_transactions_reg[23]_0\(1) => inst_krnl_output_stage_control_s_axi_n_53,
      \num_transactions_reg[23]_0\(0) => inst_krnl_output_stage_control_s_axi_n_54
    );
inst_krnl_output_stage_control_s_axi: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_control_s_axi
     port map (
      D(7) => inst_krnl_output_stage_control_s_axi_n_1,
      D(6) => inst_krnl_output_stage_control_s_axi_n_2,
      D(5) => inst_krnl_output_stage_control_s_axi_n_3,
      D(4) => inst_krnl_output_stage_control_s_axi_n_4,
      D(3) => inst_krnl_output_stage_control_s_axi_n_5,
      D(2) => inst_krnl_output_stage_control_s_axi_n_6,
      D(1) => inst_krnl_output_stage_control_s_axi_n_7,
      D(0) => final_burst_len0(0),
      \FSM_onehot_wstate_reg[1]_0\ => \FSM_onehot_wstate_reg[1]\,
      FSM_sequential_rstate_reg_0 => FSM_sequential_rstate_reg,
      O(7) => inst_krnl_output_stage_control_s_axi_n_71,
      O(6) => inst_krnl_output_stage_control_s_axi_n_72,
      O(5) => inst_krnl_output_stage_control_s_axi_n_73,
      O(4) => inst_krnl_output_stage_control_s_axi_n_74,
      O(3) => inst_krnl_output_stage_control_s_axi_n_75,
      O(2) => inst_krnl_output_stage_control_s_axi_n_76,
      O(1) => inst_krnl_output_stage_control_s_axi_n_77,
      O(0) => inst_krnl_output_stage_control_s_axi_n_78,
      Q(22 downto 0) => ctrl_length(30 downto 8),
      S(7) => inst_krnl_output_stage_control_s_axi_n_63,
      S(6) => inst_krnl_output_stage_control_s_axi_n_64,
      S(5) => inst_krnl_output_stage_control_s_axi_n_65,
      S(4) => inst_krnl_output_stage_control_s_axi_n_66,
      S(3) => inst_krnl_output_stage_control_s_axi_n_67,
      S(2) => inst_krnl_output_stage_control_s_axi_n_68,
      S(1) => inst_krnl_output_stage_control_s_axi_n_69,
      S(0) => inst_krnl_output_stage_control_s_axi_n_70,
      \addr_reg[0]\ => inst_krnl_output_stage_control_s_axi_n_45,
      \addr_reg[1]\ => inst_krnl_output_stage_control_s_axi_n_44,
      \addr_reg[24]\(7) => inst_krnl_output_stage_control_s_axi_n_79,
      \addr_reg[24]\(6) => inst_krnl_output_stage_control_s_axi_n_80,
      \addr_reg[24]\(5) => inst_krnl_output_stage_control_s_axi_n_81,
      \addr_reg[24]\(4) => inst_krnl_output_stage_control_s_axi_n_82,
      \addr_reg[24]\(3) => inst_krnl_output_stage_control_s_axi_n_83,
      \addr_reg[24]\(2) => inst_krnl_output_stage_control_s_axi_n_84,
      \addr_reg[24]\(1) => inst_krnl_output_stage_control_s_axi_n_85,
      \addr_reg[24]\(0) => inst_krnl_output_stage_control_s_axi_n_86,
      \addr_reg[2]\ => inst_krnl_output_stage_control_s_axi_n_43,
      \addr_reg[32]\(7) => inst_krnl_output_stage_control_s_axi_n_87,
      \addr_reg[32]\(6) => inst_krnl_output_stage_control_s_axi_n_88,
      \addr_reg[32]\(5) => inst_krnl_output_stage_control_s_axi_n_89,
      \addr_reg[32]\(4) => inst_krnl_output_stage_control_s_axi_n_90,
      \addr_reg[32]\(3) => inst_krnl_output_stage_control_s_axi_n_91,
      \addr_reg[32]\(2) => inst_krnl_output_stage_control_s_axi_n_92,
      \addr_reg[32]\(1) => inst_krnl_output_stage_control_s_axi_n_93,
      \addr_reg[32]\(0) => inst_krnl_output_stage_control_s_axi_n_94,
      \addr_reg[3]\ => inst_krnl_output_stage_control_s_axi_n_42,
      \addr_reg[40]\(7) => inst_krnl_output_stage_control_s_axi_n_95,
      \addr_reg[40]\(6) => inst_krnl_output_stage_control_s_axi_n_96,
      \addr_reg[40]\(5) => inst_krnl_output_stage_control_s_axi_n_97,
      \addr_reg[40]\(4) => inst_krnl_output_stage_control_s_axi_n_98,
      \addr_reg[40]\(3) => inst_krnl_output_stage_control_s_axi_n_99,
      \addr_reg[40]\(2) => inst_krnl_output_stage_control_s_axi_n_100,
      \addr_reg[40]\(1) => inst_krnl_output_stage_control_s_axi_n_101,
      \addr_reg[40]\(0) => inst_krnl_output_stage_control_s_axi_n_102,
      \addr_reg[48]\(7) => inst_krnl_output_stage_control_s_axi_n_103,
      \addr_reg[48]\(6) => inst_krnl_output_stage_control_s_axi_n_104,
      \addr_reg[48]\(5) => inst_krnl_output_stage_control_s_axi_n_105,
      \addr_reg[48]\(4) => inst_krnl_output_stage_control_s_axi_n_106,
      \addr_reg[48]\(3) => inst_krnl_output_stage_control_s_axi_n_107,
      \addr_reg[48]\(2) => inst_krnl_output_stage_control_s_axi_n_108,
      \addr_reg[48]\(1) => inst_krnl_output_stage_control_s_axi_n_109,
      \addr_reg[48]\(0) => inst_krnl_output_stage_control_s_axi_n_110,
      \addr_reg[4]\ => inst_krnl_output_stage_control_s_axi_n_41,
      \addr_reg[56]\(7) => inst_krnl_output_stage_control_s_axi_n_111,
      \addr_reg[56]\(6) => inst_krnl_output_stage_control_s_axi_n_112,
      \addr_reg[56]\(5) => inst_krnl_output_stage_control_s_axi_n_113,
      \addr_reg[56]\(4) => inst_krnl_output_stage_control_s_axi_n_114,
      \addr_reg[56]\(3) => inst_krnl_output_stage_control_s_axi_n_115,
      \addr_reg[56]\(2) => inst_krnl_output_stage_control_s_axi_n_116,
      \addr_reg[56]\(1) => inst_krnl_output_stage_control_s_axi_n_117,
      \addr_reg[56]\(0) => inst_krnl_output_stage_control_s_axi_n_118,
      \addr_reg[5]\ => inst_krnl_output_stage_control_s_axi_n_40,
      \addr_reg[63]\(6) => inst_krnl_output_stage_control_s_axi_n_119,
      \addr_reg[63]\(5) => inst_krnl_output_stage_control_s_axi_n_120,
      \addr_reg[63]\(4) => inst_krnl_output_stage_control_s_axi_n_121,
      \addr_reg[63]\(3) => inst_krnl_output_stage_control_s_axi_n_122,
      \addr_reg[63]\(2) => inst_krnl_output_stage_control_s_axi_n_123,
      \addr_reg[63]\(1) => inst_krnl_output_stage_control_s_axi_n_124,
      \addr_reg[63]\(0) => inst_krnl_output_stage_control_s_axi_n_125,
      \addr_reg[6]\ => inst_krnl_output_stage_control_s_axi_n_39,
      \addr_reg[7]\ => inst_krnl_output_stage_control_s_axi_n_38,
      \addr_reg[8]\ => inst_krnl_output_stage_control_s_axi_n_37,
      ap_clk => ap_clk,
      ap_idle => ap_idle,
      ap_start => ap_start,
      ap_start_pulse => ap_start_pulse,
      ap_start_r => ap_start_r,
      areset => areset,
      int_ap_start_reg_0 => inst_axi_write_master_n_65,
      \int_size_reg[23]_0\(7) => inst_krnl_output_stage_control_s_axi_n_55,
      \int_size_reg[23]_0\(6) => inst_krnl_output_stage_control_s_axi_n_56,
      \int_size_reg[23]_0\(5) => inst_krnl_output_stage_control_s_axi_n_57,
      \int_size_reg[23]_0\(4) => inst_krnl_output_stage_control_s_axi_n_58,
      \int_size_reg[23]_0\(3) => inst_krnl_output_stage_control_s_axi_n_59,
      \int_size_reg[23]_0\(2) => inst_krnl_output_stage_control_s_axi_n_60,
      \int_size_reg[23]_0\(1) => inst_krnl_output_stage_control_s_axi_n_61,
      \int_size_reg[23]_0\(0) => inst_krnl_output_stage_control_s_axi_n_62,
      \int_size_reg[31]_0\(7) => inst_krnl_output_stage_control_s_axi_n_47,
      \int_size_reg[31]_0\(6) => inst_krnl_output_stage_control_s_axi_n_48,
      \int_size_reg[31]_0\(5) => inst_krnl_output_stage_control_s_axi_n_49,
      \int_size_reg[31]_0\(4) => inst_krnl_output_stage_control_s_axi_n_50,
      \int_size_reg[31]_0\(3) => inst_krnl_output_stage_control_s_axi_n_51,
      \int_size_reg[31]_0\(2) => inst_krnl_output_stage_control_s_axi_n_52,
      \int_size_reg[31]_0\(1) => inst_krnl_output_stage_control_s_axi_n_53,
      \int_size_reg[31]_0\(0) => inst_krnl_output_stage_control_s_axi_n_54,
      m_axi_gmem_AWADDR(63 downto 0) => \^m_axi_gmem_awaddr\(63 downto 0),
      m_axi_gmem_BVALID => m_axi_gmem_BVALID,
      s_axi_control_ARADDR(5 downto 0) => s_axi_control_ARADDR(5 downto 0),
      s_axi_control_ARREADY => s_axi_control_ARREADY,
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(5 downto 0) => s_axi_control_AWADDR(5 downto 0),
      s_axi_control_AWREADY => s_axi_control_AWREADY,
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 0) => s_axi_control_RDATA(31 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_WDATA(31 downto 0) => s_axi_control_WDATA(31 downto 0),
      s_axi_control_WSTRB(3 downto 0) => s_axi_control_WSTRB(3 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID
    );
inst_register_slice: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_register_slice
     port map (
      Q(1) => \^m_axi_gmem_wvalid\,
      Q(0) => p1_TREADY,
      ap_clk => ap_clk,
      ap_idle => ap_idle,
      areset => areset,
      m_axi_gmem_WDATA(31 downto 0) => m_axi_gmem_WDATA(31 downto 0),
      m_axi_gmem_WREADY => m_axi_gmem_WREADY,
      p1_TDATA(31 downto 0) => p1_TDATA(31 downto 0),
      p1_TVALID => p1_TVALID,
      \state_reg[1]_0\ => inst_register_slice_n_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl is
  port (
    awvalid_r_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_ARREADY : out STD_LOGIC;
    FSM_sequential_rstate_reg : out STD_LOGIC;
    s_axi_control_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]\ : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_control_AWREADY : out STD_LOGIC;
    is_zero_r_reg : out STD_LOGIC;
    m_axi_gmem_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_AWREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_gmem_BVALID : in STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p1_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_gmem_WREADY : in STD_LOGIC;
    p1_TVALID : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl is
begin
inst_krnl_output_stage_rtl_int: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl_int
     port map (
      \FSM_onehot_wstate_reg[1]\ => \FSM_onehot_wstate_reg[1]\,
      FSM_sequential_rstate_reg => FSM_sequential_rstate_reg,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      awvalid_r_reg => awvalid_r_reg,
      is_zero_r_reg => is_zero_r_reg,
      m_axi_gmem_AWADDR(63 downto 0) => m_axi_gmem_AWADDR(63 downto 0),
      m_axi_gmem_AWLEN(7 downto 0) => m_axi_gmem_AWLEN(7 downto 0),
      m_axi_gmem_AWREADY => m_axi_gmem_AWREADY,
      m_axi_gmem_BVALID => m_axi_gmem_BVALID,
      m_axi_gmem_WDATA(31 downto 0) => m_axi_gmem_WDATA(31 downto 0),
      m_axi_gmem_WREADY => m_axi_gmem_WREADY,
      m_axi_gmem_WVALID => Q(1),
      p1_TDATA(31 downto 0) => p1_TDATA(31 downto 0),
      p1_TREADY => Q(0),
      p1_TVALID => p1_TVALID,
      s_axi_control_ARADDR(5 downto 0) => s_axi_control_ARADDR(5 downto 0),
      s_axi_control_ARREADY => s_axi_control_ARREADY,
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(5 downto 0) => s_axi_control_AWADDR(5 downto 0),
      s_axi_control_AWREADY => s_axi_control_AWREADY,
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 0) => s_axi_control_RDATA(31 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_WDATA(31 downto 0) => s_axi_control_WDATA(31 downto 0),
      s_axi_control_WSTRB(3 downto 0) => s_axi_control_WSTRB(3 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    m_axi_gmem_AWVALID : out STD_LOGIC;
    m_axi_gmem_AWREADY : in STD_LOGIC;
    m_axi_gmem_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_WVALID : out STD_LOGIC;
    m_axi_gmem_WREADY : in STD_LOGIC;
    m_axi_gmem_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_WLAST : out STD_LOGIC;
    m_axi_gmem_ARVALID : out STD_LOGIC;
    m_axi_gmem_ARREADY : in STD_LOGIC;
    m_axi_gmem_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_RVALID : in STD_LOGIC;
    m_axi_gmem_RREADY : out STD_LOGIC;
    m_axi_gmem_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_RLAST : in STD_LOGIC;
    m_axi_gmem_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_BVALID : in STD_LOGIC;
    m_axi_gmem_BREADY : out STD_LOGIC;
    m_axi_gmem_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    p1_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p1_TVALID : in STD_LOGIC;
    p1_TREADY : out STD_LOGIC;
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
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cl_k3_0,krnl_output_stage_rtl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "krnl_output_stage_rtl,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst_n, ASSOCIATED_BUSIF m_axi_gmem:s_axi_control:p1, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_gmem_ARREADY : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem ARREADY";
  attribute X_INTERFACE_INFO of m_axi_gmem_ARVALID : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem ARVALID";
  attribute X_INTERFACE_INFO of m_axi_gmem_AWREADY : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem AWREADY";
  attribute X_INTERFACE_INFO of m_axi_gmem_AWVALID : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem AWVALID";
  attribute X_INTERFACE_INFO of m_axi_gmem_BREADY : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem BREADY";
  attribute X_INTERFACE_INFO of m_axi_gmem_BVALID : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem BVALID";
  attribute X_INTERFACE_INFO of m_axi_gmem_RLAST : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem RLAST";
  attribute X_INTERFACE_INFO of m_axi_gmem_RREADY : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem RREADY";
  attribute X_INTERFACE_INFO of m_axi_gmem_RVALID : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem RVALID";
  attribute X_INTERFACE_INFO of m_axi_gmem_WLAST : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem WLAST";
  attribute X_INTERFACE_INFO of m_axi_gmem_WREADY : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem WREADY";
  attribute X_INTERFACE_INFO of m_axi_gmem_WVALID : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem WVALID";
  attribute X_INTERFACE_INFO of p1_TREADY : signal is "xilinx.com:interface:axis:1.0 p1 TREADY";
  attribute X_INTERFACE_PARAMETER of p1_TREADY : signal is "XIL_INTERFACENAME p1, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of p1_TVALID : signal is "xilinx.com:interface:axis:1.0 p1 TVALID";
  attribute X_INTERFACE_INFO of s_axi_control_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY";
  attribute X_INTERFACE_INFO of s_axi_control_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID";
  attribute X_INTERFACE_INFO of s_axi_control_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY";
  attribute X_INTERFACE_INFO of s_axi_control_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID";
  attribute X_INTERFACE_INFO of s_axi_control_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BREADY";
  attribute X_INTERFACE_INFO of s_axi_control_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BVALID";
  attribute X_INTERFACE_INFO of s_axi_control_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RREADY";
  attribute X_INTERFACE_INFO of s_axi_control_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RVALID";
  attribute X_INTERFACE_INFO of s_axi_control_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WREADY";
  attribute X_INTERFACE_INFO of s_axi_control_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WVALID";
  attribute X_INTERFACE_INFO of m_axi_gmem_ARADDR : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem ARADDR";
  attribute X_INTERFACE_INFO of m_axi_gmem_ARBURST : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem ARBURST";
  attribute X_INTERFACE_INFO of m_axi_gmem_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_gmem_ARID : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem ARID";
  attribute X_INTERFACE_INFO of m_axi_gmem_ARLEN : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem ARLEN";
  attribute X_INTERFACE_INFO of m_axi_gmem_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_gmem_ARPROT : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem ARPROT";
  attribute X_INTERFACE_INFO of m_axi_gmem_ARQOS : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem ARQOS";
  attribute X_INTERFACE_INFO of m_axi_gmem_ARREGION : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem ARREGION";
  attribute X_INTERFACE_INFO of m_axi_gmem_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_gmem_AWADDR : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem AWADDR";
  attribute X_INTERFACE_INFO of m_axi_gmem_AWBURST : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem AWBURST";
  attribute X_INTERFACE_INFO of m_axi_gmem_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_gmem_AWID : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem AWID";
  attribute X_INTERFACE_INFO of m_axi_gmem_AWLEN : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem AWLEN";
  attribute X_INTERFACE_INFO of m_axi_gmem_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_gmem_AWPROT : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem AWPROT";
  attribute X_INTERFACE_INFO of m_axi_gmem_AWQOS : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem AWQOS";
  attribute X_INTERFACE_INFO of m_axi_gmem_AWREGION : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem AWREGION";
  attribute X_INTERFACE_INFO of m_axi_gmem_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_gmem_BID : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem BID";
  attribute X_INTERFACE_PARAMETER of m_axi_gmem_BID : signal is "XIL_INTERFACENAME m_axi_gmem, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_gmem_BRESP : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem BRESP";
  attribute X_INTERFACE_INFO of m_axi_gmem_RDATA : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem RDATA";
  attribute X_INTERFACE_INFO of m_axi_gmem_RID : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem RID";
  attribute X_INTERFACE_INFO of m_axi_gmem_RRESP : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem RRESP";
  attribute X_INTERFACE_INFO of m_axi_gmem_WDATA : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem WDATA";
  attribute X_INTERFACE_INFO of m_axi_gmem_WSTRB : signal is "xilinx.com:interface:aximm:1.0 m_axi_gmem WSTRB";
  attribute X_INTERFACE_INFO of p1_TDATA : signal is "xilinx.com:interface:axis:1.0 p1 TDATA";
  attribute X_INTERFACE_INFO of s_axi_control_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR";
  attribute X_INTERFACE_INFO of s_axi_control_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR";
  attribute X_INTERFACE_INFO of s_axi_control_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BRESP";
  attribute X_INTERFACE_PARAMETER of s_axi_control_BRESP : signal is "XIL_INTERFACENAME s_axi_control, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_control_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RDATA";
  attribute X_INTERFACE_INFO of s_axi_control_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RRESP";
  attribute X_INTERFACE_INFO of s_axi_control_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WDATA";
  attribute X_INTERFACE_INFO of s_axi_control_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB";
begin
  m_axi_gmem_ARADDR(63) <= \<const0>\;
  m_axi_gmem_ARADDR(62) <= \<const0>\;
  m_axi_gmem_ARADDR(61) <= \<const0>\;
  m_axi_gmem_ARADDR(60) <= \<const0>\;
  m_axi_gmem_ARADDR(59) <= \<const0>\;
  m_axi_gmem_ARADDR(58) <= \<const0>\;
  m_axi_gmem_ARADDR(57) <= \<const0>\;
  m_axi_gmem_ARADDR(56) <= \<const0>\;
  m_axi_gmem_ARADDR(55) <= \<const0>\;
  m_axi_gmem_ARADDR(54) <= \<const0>\;
  m_axi_gmem_ARADDR(53) <= \<const0>\;
  m_axi_gmem_ARADDR(52) <= \<const0>\;
  m_axi_gmem_ARADDR(51) <= \<const0>\;
  m_axi_gmem_ARADDR(50) <= \<const0>\;
  m_axi_gmem_ARADDR(49) <= \<const0>\;
  m_axi_gmem_ARADDR(48) <= \<const0>\;
  m_axi_gmem_ARADDR(47) <= \<const0>\;
  m_axi_gmem_ARADDR(46) <= \<const0>\;
  m_axi_gmem_ARADDR(45) <= \<const0>\;
  m_axi_gmem_ARADDR(44) <= \<const0>\;
  m_axi_gmem_ARADDR(43) <= \<const0>\;
  m_axi_gmem_ARADDR(42) <= \<const0>\;
  m_axi_gmem_ARADDR(41) <= \<const0>\;
  m_axi_gmem_ARADDR(40) <= \<const0>\;
  m_axi_gmem_ARADDR(39) <= \<const0>\;
  m_axi_gmem_ARADDR(38) <= \<const0>\;
  m_axi_gmem_ARADDR(37) <= \<const0>\;
  m_axi_gmem_ARADDR(36) <= \<const0>\;
  m_axi_gmem_ARADDR(35) <= \<const0>\;
  m_axi_gmem_ARADDR(34) <= \<const0>\;
  m_axi_gmem_ARADDR(33) <= \<const0>\;
  m_axi_gmem_ARADDR(32) <= \<const0>\;
  m_axi_gmem_ARADDR(31) <= \<const0>\;
  m_axi_gmem_ARADDR(30) <= \<const0>\;
  m_axi_gmem_ARADDR(29) <= \<const0>\;
  m_axi_gmem_ARADDR(28) <= \<const0>\;
  m_axi_gmem_ARADDR(27) <= \<const0>\;
  m_axi_gmem_ARADDR(26) <= \<const0>\;
  m_axi_gmem_ARADDR(25) <= \<const0>\;
  m_axi_gmem_ARADDR(24) <= \<const0>\;
  m_axi_gmem_ARADDR(23) <= \<const0>\;
  m_axi_gmem_ARADDR(22) <= \<const0>\;
  m_axi_gmem_ARADDR(21) <= \<const0>\;
  m_axi_gmem_ARADDR(20) <= \<const0>\;
  m_axi_gmem_ARADDR(19) <= \<const0>\;
  m_axi_gmem_ARADDR(18) <= \<const0>\;
  m_axi_gmem_ARADDR(17) <= \<const0>\;
  m_axi_gmem_ARADDR(16) <= \<const0>\;
  m_axi_gmem_ARADDR(15) <= \<const0>\;
  m_axi_gmem_ARADDR(14) <= \<const0>\;
  m_axi_gmem_ARADDR(13) <= \<const0>\;
  m_axi_gmem_ARADDR(12) <= \<const0>\;
  m_axi_gmem_ARADDR(11) <= \<const0>\;
  m_axi_gmem_ARADDR(10) <= \<const0>\;
  m_axi_gmem_ARADDR(9) <= \<const0>\;
  m_axi_gmem_ARADDR(8) <= \<const0>\;
  m_axi_gmem_ARADDR(7) <= \<const0>\;
  m_axi_gmem_ARADDR(6) <= \<const0>\;
  m_axi_gmem_ARADDR(5) <= \<const0>\;
  m_axi_gmem_ARADDR(4) <= \<const0>\;
  m_axi_gmem_ARADDR(3) <= \<const0>\;
  m_axi_gmem_ARADDR(2) <= \<const0>\;
  m_axi_gmem_ARADDR(1) <= \<const0>\;
  m_axi_gmem_ARADDR(0) <= \<const0>\;
  m_axi_gmem_ARBURST(1) <= \<const0>\;
  m_axi_gmem_ARBURST(0) <= \<const1>\;
  m_axi_gmem_ARCACHE(3) <= \<const0>\;
  m_axi_gmem_ARCACHE(2) <= \<const0>\;
  m_axi_gmem_ARCACHE(1) <= \<const1>\;
  m_axi_gmem_ARCACHE(0) <= \<const1>\;
  m_axi_gmem_ARID(0) <= \<const0>\;
  m_axi_gmem_ARLEN(7) <= \<const0>\;
  m_axi_gmem_ARLEN(6) <= \<const0>\;
  m_axi_gmem_ARLEN(5) <= \<const0>\;
  m_axi_gmem_ARLEN(4) <= \<const0>\;
  m_axi_gmem_ARLEN(3) <= \<const0>\;
  m_axi_gmem_ARLEN(2) <= \<const0>\;
  m_axi_gmem_ARLEN(1) <= \<const0>\;
  m_axi_gmem_ARLEN(0) <= \<const0>\;
  m_axi_gmem_ARLOCK(1) <= \<const0>\;
  m_axi_gmem_ARLOCK(0) <= \<const0>\;
  m_axi_gmem_ARPROT(2) <= \<const0>\;
  m_axi_gmem_ARPROT(1) <= \<const0>\;
  m_axi_gmem_ARPROT(0) <= \<const0>\;
  m_axi_gmem_ARQOS(3) <= \<const0>\;
  m_axi_gmem_ARQOS(2) <= \<const0>\;
  m_axi_gmem_ARQOS(1) <= \<const0>\;
  m_axi_gmem_ARQOS(0) <= \<const0>\;
  m_axi_gmem_ARREGION(3) <= \<const0>\;
  m_axi_gmem_ARREGION(2) <= \<const0>\;
  m_axi_gmem_ARREGION(1) <= \<const0>\;
  m_axi_gmem_ARREGION(0) <= \<const0>\;
  m_axi_gmem_ARSIZE(2) <= \<const0>\;
  m_axi_gmem_ARSIZE(1) <= \<const0>\;
  m_axi_gmem_ARSIZE(0) <= \<const0>\;
  m_axi_gmem_ARVALID <= \<const0>\;
  m_axi_gmem_AWBURST(1) <= \<const0>\;
  m_axi_gmem_AWBURST(0) <= \<const1>\;
  m_axi_gmem_AWCACHE(3) <= \<const0>\;
  m_axi_gmem_AWCACHE(2) <= \<const0>\;
  m_axi_gmem_AWCACHE(1) <= \<const1>\;
  m_axi_gmem_AWCACHE(0) <= \<const1>\;
  m_axi_gmem_AWID(0) <= \<const0>\;
  m_axi_gmem_AWLOCK(1) <= \<const0>\;
  m_axi_gmem_AWLOCK(0) <= \<const0>\;
  m_axi_gmem_AWPROT(2) <= \<const0>\;
  m_axi_gmem_AWPROT(1) <= \<const0>\;
  m_axi_gmem_AWPROT(0) <= \<const0>\;
  m_axi_gmem_AWQOS(3) <= \<const0>\;
  m_axi_gmem_AWQOS(2) <= \<const0>\;
  m_axi_gmem_AWQOS(1) <= \<const0>\;
  m_axi_gmem_AWQOS(0) <= \<const0>\;
  m_axi_gmem_AWREGION(3) <= \<const0>\;
  m_axi_gmem_AWREGION(2) <= \<const0>\;
  m_axi_gmem_AWREGION(1) <= \<const0>\;
  m_axi_gmem_AWREGION(0) <= \<const0>\;
  m_axi_gmem_AWSIZE(2) <= \<const0>\;
  m_axi_gmem_AWSIZE(1) <= \<const1>\;
  m_axi_gmem_AWSIZE(0) <= \<const0>\;
  m_axi_gmem_BREADY <= \<const1>\;
  m_axi_gmem_RREADY <= \<const0>\;
  m_axi_gmem_WSTRB(3) <= \<const1>\;
  m_axi_gmem_WSTRB(2) <= \<const1>\;
  m_axi_gmem_WSTRB(1) <= \<const1>\;
  m_axi_gmem_WSTRB(0) <= \<const1>\;
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_output_stage_rtl
     port map (
      \FSM_onehot_wstate_reg[1]\ => s_axi_control_WREADY,
      FSM_sequential_rstate_reg => s_axi_control_RVALID,
      Q(1) => m_axi_gmem_WVALID,
      Q(0) => p1_TREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      awvalid_r_reg => m_axi_gmem_AWVALID,
      is_zero_r_reg => m_axi_gmem_WLAST,
      m_axi_gmem_AWADDR(63 downto 0) => m_axi_gmem_AWADDR(63 downto 0),
      m_axi_gmem_AWLEN(7 downto 0) => m_axi_gmem_AWLEN(7 downto 0),
      m_axi_gmem_AWREADY => m_axi_gmem_AWREADY,
      m_axi_gmem_BVALID => m_axi_gmem_BVALID,
      m_axi_gmem_WDATA(31 downto 0) => m_axi_gmem_WDATA(31 downto 0),
      m_axi_gmem_WREADY => m_axi_gmem_WREADY,
      p1_TDATA(31 downto 0) => p1_TDATA(31 downto 0),
      p1_TVALID => p1_TVALID,
      s_axi_control_ARADDR(5 downto 0) => s_axi_control_ARADDR(5 downto 0),
      s_axi_control_ARREADY => s_axi_control_ARREADY,
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(5 downto 0) => s_axi_control_AWADDR(5 downto 0),
      s_axi_control_AWREADY => s_axi_control_AWREADY,
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 0) => s_axi_control_RDATA(31 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_WDATA(31 downto 0) => s_axi_control_WDATA(31 downto 0),
      s_axi_control_WSTRB(3 downto 0) => s_axi_control_WSTRB(3 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID
    );
end STRUCTURE;
