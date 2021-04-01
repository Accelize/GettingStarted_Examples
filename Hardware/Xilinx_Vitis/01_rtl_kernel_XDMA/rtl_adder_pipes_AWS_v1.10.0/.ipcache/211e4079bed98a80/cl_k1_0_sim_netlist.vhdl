-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Mar 30 13:12:48 2021
-- Host        : ip-172-31-9-235.eu-west-1.compute.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cl_k1_0_sim_netlist.vhdl
-- Design      : cl_k1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvu9p-flgb2104-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_control_s_axi is
  port (
    FSM_sequential_rstate_reg_0 : out STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 22 downto 0 );
    done_reg : out STD_LOGIC;
    ap_start : out STD_LOGIC;
    \addr_reg[0][8]\ : out STD_LOGIC;
    \addr_reg[0][7]\ : out STD_LOGIC;
    \addr_reg[0][6]\ : out STD_LOGIC;
    \addr_reg[0][5]\ : out STD_LOGIC;
    \addr_reg[0][4]\ : out STD_LOGIC;
    \addr_reg[0][3]\ : out STD_LOGIC;
    \addr_reg[0][2]\ : out STD_LOGIC;
    \addr_reg[0][1]\ : out STD_LOGIC;
    \addr_reg[0][0]\ : out STD_LOGIC;
    ap_start_pulse : out STD_LOGIC;
    \int_size_reg[31]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \int_size_reg[23]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[0][24]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[0][32]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[0][40]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[0][48]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[0][56]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[0][63]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
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
    done : in STD_LOGIC;
    empty : in STD_LOGIC;
    ap_idle : in STD_LOGIC;
    ap_start_r : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_gmem_ARADDR : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_control_s_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_control_s_axi is
  signal \FSM_onehot_wstate[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate_reg_n_0_[0]\ : STD_LOGIC;
  signal \^fsm_sequential_rstate_reg_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \addr[0][16]_i_10_n_0\ : STD_LOGIC;
  signal \addr[0][16]_i_2_n_0\ : STD_LOGIC;
  signal \addr[0][16]_i_3_n_0\ : STD_LOGIC;
  signal \addr[0][16]_i_4_n_0\ : STD_LOGIC;
  signal \addr[0][16]_i_5_n_0\ : STD_LOGIC;
  signal \addr[0][16]_i_6_n_0\ : STD_LOGIC;
  signal \addr[0][16]_i_7_n_0\ : STD_LOGIC;
  signal \addr[0][16]_i_8_n_0\ : STD_LOGIC;
  signal \addr[0][16]_i_9_n_0\ : STD_LOGIC;
  signal \addr[0][24]_i_2_n_0\ : STD_LOGIC;
  signal \addr[0][24]_i_3_n_0\ : STD_LOGIC;
  signal \addr[0][24]_i_4_n_0\ : STD_LOGIC;
  signal \addr[0][24]_i_5_n_0\ : STD_LOGIC;
  signal \addr[0][24]_i_6_n_0\ : STD_LOGIC;
  signal \addr[0][24]_i_7_n_0\ : STD_LOGIC;
  signal \addr[0][24]_i_8_n_0\ : STD_LOGIC;
  signal \addr[0][24]_i_9_n_0\ : STD_LOGIC;
  signal \addr[0][32]_i_2_n_0\ : STD_LOGIC;
  signal \addr[0][32]_i_3_n_0\ : STD_LOGIC;
  signal \addr[0][32]_i_4_n_0\ : STD_LOGIC;
  signal \addr[0][32]_i_5_n_0\ : STD_LOGIC;
  signal \addr[0][32]_i_6_n_0\ : STD_LOGIC;
  signal \addr[0][32]_i_7_n_0\ : STD_LOGIC;
  signal \addr[0][32]_i_8_n_0\ : STD_LOGIC;
  signal \addr[0][32]_i_9_n_0\ : STD_LOGIC;
  signal \addr[0][40]_i_2_n_0\ : STD_LOGIC;
  signal \addr[0][40]_i_3_n_0\ : STD_LOGIC;
  signal \addr[0][40]_i_4_n_0\ : STD_LOGIC;
  signal \addr[0][40]_i_5_n_0\ : STD_LOGIC;
  signal \addr[0][40]_i_6_n_0\ : STD_LOGIC;
  signal \addr[0][40]_i_7_n_0\ : STD_LOGIC;
  signal \addr[0][40]_i_8_n_0\ : STD_LOGIC;
  signal \addr[0][40]_i_9_n_0\ : STD_LOGIC;
  signal \addr[0][48]_i_2_n_0\ : STD_LOGIC;
  signal \addr[0][48]_i_3_n_0\ : STD_LOGIC;
  signal \addr[0][48]_i_4_n_0\ : STD_LOGIC;
  signal \addr[0][48]_i_5_n_0\ : STD_LOGIC;
  signal \addr[0][48]_i_6_n_0\ : STD_LOGIC;
  signal \addr[0][48]_i_7_n_0\ : STD_LOGIC;
  signal \addr[0][48]_i_8_n_0\ : STD_LOGIC;
  signal \addr[0][48]_i_9_n_0\ : STD_LOGIC;
  signal \addr[0][56]_i_2_n_0\ : STD_LOGIC;
  signal \addr[0][56]_i_3_n_0\ : STD_LOGIC;
  signal \addr[0][56]_i_4_n_0\ : STD_LOGIC;
  signal \addr[0][56]_i_5_n_0\ : STD_LOGIC;
  signal \addr[0][56]_i_6_n_0\ : STD_LOGIC;
  signal \addr[0][56]_i_7_n_0\ : STD_LOGIC;
  signal \addr[0][56]_i_8_n_0\ : STD_LOGIC;
  signal \addr[0][56]_i_9_n_0\ : STD_LOGIC;
  signal \addr[0][63]_i_3_n_0\ : STD_LOGIC;
  signal \addr[0][63]_i_4_n_0\ : STD_LOGIC;
  signal \addr[0][63]_i_5_n_0\ : STD_LOGIC;
  signal \addr[0][63]_i_6_n_0\ : STD_LOGIC;
  signal \addr[0][63]_i_7_n_0\ : STD_LOGIC;
  signal \addr[0][63]_i_8_n_0\ : STD_LOGIC;
  signal \addr[0][63]_i_9_n_0\ : STD_LOGIC;
  signal \addr_reg[0][16]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[0][16]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[0][16]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[0][16]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[0][16]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[0][16]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[0][16]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[0][16]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[0][24]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[0][24]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[0][24]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[0][24]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[0][24]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[0][24]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[0][24]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[0][24]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[0][32]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[0][32]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[0][32]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[0][32]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[0][32]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[0][32]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[0][32]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[0][32]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[0][40]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[0][40]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[0][40]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[0][40]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[0][40]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[0][40]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[0][40]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[0][40]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[0][48]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[0][48]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[0][48]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[0][48]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[0][48]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[0][48]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[0][48]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[0][48]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[0][56]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[0][56]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[0][56]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[0][56]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[0][56]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[0][56]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[0][56]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[0][56]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[0][63]_i_2_n_2\ : STD_LOGIC;
  signal \addr_reg[0][63]_i_2_n_3\ : STD_LOGIC;
  signal \addr_reg[0][63]_i_2_n_4\ : STD_LOGIC;
  signal \addr_reg[0][63]_i_2_n_5\ : STD_LOGIC;
  signal \addr_reg[0][63]_i_2_n_6\ : STD_LOGIC;
  signal \addr_reg[0][63]_i_2_n_7\ : STD_LOGIC;
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
  signal \int_input_r[31]_i_1_n_0\ : STD_LOGIC;
  signal \int_input_r[31]_i_3_n_0\ : STD_LOGIC;
  signal \int_input_r[63]_i_1_n_0\ : STD_LOGIC;
  signal int_input_r_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_input_r_reg04_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_isr6_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0[31]_i_1_n_0\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0[31]_i_3_n_0\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0[63]_i_1_n_0\ : STD_LOGIC;
  signal int_p_xcl_gv_p0_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_p_xcl_gv_p0_reg01_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \int_p_xcl_gv_p0_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[10]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[11]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[12]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[13]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[14]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[15]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[16]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[17]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[18]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[19]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[1]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[20]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[21]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[22]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[23]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[24]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[25]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[26]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[27]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[28]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[29]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[2]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[30]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[31]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[32]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[33]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[34]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[35]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[36]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[37]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[38]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[39]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[3]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[40]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[41]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[42]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[43]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[44]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[45]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[46]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[47]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[48]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[49]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[4]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[50]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[51]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[52]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[53]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[54]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[55]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[56]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[57]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[58]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[59]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[5]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[60]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[61]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[62]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[63]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[6]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[7]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[8]\ : STD_LOGIC;
  signal \int_p_xcl_gv_p0_reg_n_0_[9]\ : STD_LOGIC;
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
  signal \NLW_addr_reg[0][63]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_addr_reg[0][63]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_wstate[1]_i_1\ : label is "soft_lutpair20";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[0]\ : label is "WRDATA:010,WRRESP:100,WRIDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:010,WRRESP:100,WRIDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:010,WRRESP:100,WRIDLE:001";
  attribute SOFT_HLUTNM of FSM_sequential_rstate_i_1 : label is "soft_lutpair21";
  attribute FSM_ENCODED_STATES of FSM_sequential_rstate_reg : label is "RDIDLE:0,RDDATA:1";
  attribute SOFT_HLUTNM of \addr[0][8]_i_1\ : label is "soft_lutpair19";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \addr_reg[0][16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[0][24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[0][32]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[0][40]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[0][48]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[0][56]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[0][63]_i_2\ : label is 16;
  attribute SOFT_HLUTNM of \final_burst_len[1]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \final_burst_len[2]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \final_burst_len[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \final_burst_len[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \final_burst_len[6]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \final_burst_len[7]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \int_ier[1]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_input_r[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \int_input_r[10]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \int_input_r[11]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \int_input_r[12]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \int_input_r[13]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \int_input_r[14]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \int_input_r[15]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \int_input_r[16]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \int_input_r[17]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \int_input_r[18]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \int_input_r[19]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \int_input_r[1]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \int_input_r[20]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \int_input_r[21]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \int_input_r[22]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \int_input_r[23]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \int_input_r[24]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \int_input_r[25]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \int_input_r[26]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \int_input_r[27]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \int_input_r[28]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \int_input_r[29]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \int_input_r[2]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \int_input_r[30]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \int_input_r[31]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \int_input_r[32]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \int_input_r[33]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \int_input_r[34]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \int_input_r[35]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \int_input_r[36]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \int_input_r[37]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \int_input_r[38]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \int_input_r[39]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \int_input_r[3]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \int_input_r[40]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \int_input_r[41]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \int_input_r[42]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \int_input_r[43]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \int_input_r[44]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \int_input_r[45]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \int_input_r[46]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \int_input_r[47]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \int_input_r[48]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \int_input_r[49]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \int_input_r[4]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \int_input_r[50]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \int_input_r[51]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \int_input_r[52]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \int_input_r[53]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \int_input_r[54]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \int_input_r[55]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \int_input_r[56]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \int_input_r[57]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \int_input_r[58]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \int_input_r[59]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \int_input_r[5]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \int_input_r[60]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \int_input_r[61]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \int_input_r[62]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \int_input_r[63]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \int_input_r[6]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \int_input_r[7]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \int_input_r[8]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \int_input_r[9]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[10]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[11]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[12]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[13]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[14]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[15]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[16]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[17]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[18]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[19]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[1]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[20]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[21]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[22]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[23]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[24]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[25]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[26]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[27]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[28]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[29]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[2]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[30]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[31]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[31]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[32]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[33]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[34]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[35]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[36]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[37]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[38]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[39]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[3]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[40]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[41]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[42]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[43]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[44]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[45]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[46]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[47]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[48]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[49]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[4]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[50]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[51]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[52]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[53]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[54]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[55]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[56]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[57]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[58]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[59]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[5]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[60]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[61]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[62]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[63]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[6]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[7]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[8]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \int_p_xcl_gv_p0[9]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \int_size[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \int_size[10]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \int_size[11]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \int_size[12]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \int_size[13]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \int_size[14]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \int_size[15]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \int_size[16]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \int_size[17]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \int_size[18]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \int_size[19]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \int_size[1]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \int_size[20]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \int_size[21]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \int_size[22]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \int_size[23]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \int_size[24]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \int_size[25]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \int_size[26]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \int_size[27]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \int_size[28]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \int_size[29]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \int_size[2]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \int_size[30]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \int_size[31]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \int_size[3]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \int_size[4]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \int_size[5]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \int_size[6]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \int_size[7]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \int_size[8]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \int_size[9]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of s_axi_control_ARREADY_INST_0 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of s_axi_control_AWREADY_INST_0 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of start_i_1 : label is "soft_lutpair19";
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
\addr[0][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(0),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(0),
      O => \addr_reg[0][0]\
    );
\addr[0][16]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(9),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(9),
      O => \addr[0][16]_i_10_n_0\
    );
\addr[0][16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_start_r,
      I1 => \^ap_start\,
      O => \addr[0][16]_i_2_n_0\
    );
\addr[0][16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(16),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(16),
      O => \addr[0][16]_i_3_n_0\
    );
\addr[0][16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(15),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(15),
      O => \addr[0][16]_i_4_n_0\
    );
\addr[0][16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(14),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(14),
      O => \addr[0][16]_i_5_n_0\
    );
\addr[0][16]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(13),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(13),
      O => \addr[0][16]_i_6_n_0\
    );
\addr[0][16]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(12),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(12),
      O => \addr[0][16]_i_7_n_0\
    );
\addr[0][16]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(11),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(11),
      O => \addr[0][16]_i_8_n_0\
    );
\addr[0][16]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"33A3"
    )
        port map (
      I0 => ctrl_offset(10),
      I1 => m_axi_gmem_ARADDR(10),
      I2 => \^ap_start\,
      I3 => ap_start_r,
      O => \addr[0][16]_i_9_n_0\
    );
\addr[0][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(1),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(1),
      O => \addr_reg[0][1]\
    );
\addr[0][24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(24),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(24),
      O => \addr[0][24]_i_2_n_0\
    );
\addr[0][24]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(23),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(23),
      O => \addr[0][24]_i_3_n_0\
    );
\addr[0][24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(22),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(22),
      O => \addr[0][24]_i_4_n_0\
    );
\addr[0][24]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(21),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(21),
      O => \addr[0][24]_i_5_n_0\
    );
\addr[0][24]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(20),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(20),
      O => \addr[0][24]_i_6_n_0\
    );
\addr[0][24]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(19),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(19),
      O => \addr[0][24]_i_7_n_0\
    );
\addr[0][24]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(18),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(18),
      O => \addr[0][24]_i_8_n_0\
    );
\addr[0][24]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(17),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(17),
      O => \addr[0][24]_i_9_n_0\
    );
\addr[0][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(2),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(2),
      O => \addr_reg[0][2]\
    );
\addr[0][32]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(32),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(32),
      O => \addr[0][32]_i_2_n_0\
    );
\addr[0][32]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(31),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(31),
      O => \addr[0][32]_i_3_n_0\
    );
\addr[0][32]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(30),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(30),
      O => \addr[0][32]_i_4_n_0\
    );
\addr[0][32]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(29),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(29),
      O => \addr[0][32]_i_5_n_0\
    );
\addr[0][32]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(28),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(28),
      O => \addr[0][32]_i_6_n_0\
    );
\addr[0][32]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(27),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(27),
      O => \addr[0][32]_i_7_n_0\
    );
\addr[0][32]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(26),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(26),
      O => \addr[0][32]_i_8_n_0\
    );
\addr[0][32]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(25),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(25),
      O => \addr[0][32]_i_9_n_0\
    );
\addr[0][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(3),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(3),
      O => \addr_reg[0][3]\
    );
\addr[0][40]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(40),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(40),
      O => \addr[0][40]_i_2_n_0\
    );
\addr[0][40]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(39),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(39),
      O => \addr[0][40]_i_3_n_0\
    );
\addr[0][40]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(38),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(38),
      O => \addr[0][40]_i_4_n_0\
    );
\addr[0][40]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(37),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(37),
      O => \addr[0][40]_i_5_n_0\
    );
\addr[0][40]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(36),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(36),
      O => \addr[0][40]_i_6_n_0\
    );
\addr[0][40]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(35),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(35),
      O => \addr[0][40]_i_7_n_0\
    );
\addr[0][40]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(34),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(34),
      O => \addr[0][40]_i_8_n_0\
    );
\addr[0][40]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(33),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(33),
      O => \addr[0][40]_i_9_n_0\
    );
\addr[0][48]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(48),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(48),
      O => \addr[0][48]_i_2_n_0\
    );
\addr[0][48]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(47),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(47),
      O => \addr[0][48]_i_3_n_0\
    );
\addr[0][48]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(46),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(46),
      O => \addr[0][48]_i_4_n_0\
    );
\addr[0][48]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(45),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(45),
      O => \addr[0][48]_i_5_n_0\
    );
\addr[0][48]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(44),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(44),
      O => \addr[0][48]_i_6_n_0\
    );
\addr[0][48]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(43),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(43),
      O => \addr[0][48]_i_7_n_0\
    );
\addr[0][48]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(42),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(42),
      O => \addr[0][48]_i_8_n_0\
    );
\addr[0][48]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(41),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(41),
      O => \addr[0][48]_i_9_n_0\
    );
\addr[0][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(4),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(4),
      O => \addr_reg[0][4]\
    );
\addr[0][56]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(56),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(56),
      O => \addr[0][56]_i_2_n_0\
    );
\addr[0][56]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(55),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(55),
      O => \addr[0][56]_i_3_n_0\
    );
\addr[0][56]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(54),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(54),
      O => \addr[0][56]_i_4_n_0\
    );
\addr[0][56]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(53),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(53),
      O => \addr[0][56]_i_5_n_0\
    );
\addr[0][56]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(52),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(52),
      O => \addr[0][56]_i_6_n_0\
    );
\addr[0][56]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(51),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(51),
      O => \addr[0][56]_i_7_n_0\
    );
\addr[0][56]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(50),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(50),
      O => \addr[0][56]_i_8_n_0\
    );
\addr[0][56]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(49),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(49),
      O => \addr[0][56]_i_9_n_0\
    );
\addr[0][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(5),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(5),
      O => \addr_reg[0][5]\
    );
\addr[0][63]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(63),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(63),
      O => \addr[0][63]_i_3_n_0\
    );
\addr[0][63]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(62),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(62),
      O => \addr[0][63]_i_4_n_0\
    );
\addr[0][63]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(61),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(61),
      O => \addr[0][63]_i_5_n_0\
    );
\addr[0][63]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(60),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(60),
      O => \addr[0][63]_i_6_n_0\
    );
\addr[0][63]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(59),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(59),
      O => \addr[0][63]_i_7_n_0\
    );
\addr[0][63]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(58),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(58),
      O => \addr[0][63]_i_8_n_0\
    );
\addr[0][63]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(57),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(57),
      O => \addr[0][63]_i_9_n_0\
    );
\addr[0][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(6),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(6),
      O => \addr_reg[0][6]\
    );
\addr[0][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(7),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(7),
      O => \addr_reg[0][7]\
    );
\addr[0][8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => m_axi_gmem_ARADDR(8),
      I1 => ap_start_r,
      I2 => \^ap_start\,
      I3 => ctrl_offset(8),
      O => \addr_reg[0][8]\
    );
\addr_reg[0][16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \addr_reg[0][16]_i_1_n_0\,
      CO(6) => \addr_reg[0][16]_i_1_n_1\,
      CO(5) => \addr_reg[0][16]_i_1_n_2\,
      CO(4) => \addr_reg[0][16]_i_1_n_3\,
      CO(3) => \addr_reg[0][16]_i_1_n_4\,
      CO(2) => \addr_reg[0][16]_i_1_n_5\,
      CO(1) => \addr_reg[0][16]_i_1_n_6\,
      CO(0) => \addr_reg[0][16]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \addr[0][16]_i_2_n_0\,
      DI(0) => '0',
      O(7 downto 0) => O(7 downto 0),
      S(7) => \addr[0][16]_i_3_n_0\,
      S(6) => \addr[0][16]_i_4_n_0\,
      S(5) => \addr[0][16]_i_5_n_0\,
      S(4) => \addr[0][16]_i_6_n_0\,
      S(3) => \addr[0][16]_i_7_n_0\,
      S(2) => \addr[0][16]_i_8_n_0\,
      S(1) => \addr[0][16]_i_9_n_0\,
      S(0) => \addr[0][16]_i_10_n_0\
    );
\addr_reg[0][24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[0][16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[0][24]_i_1_n_0\,
      CO(6) => \addr_reg[0][24]_i_1_n_1\,
      CO(5) => \addr_reg[0][24]_i_1_n_2\,
      CO(4) => \addr_reg[0][24]_i_1_n_3\,
      CO(3) => \addr_reg[0][24]_i_1_n_4\,
      CO(2) => \addr_reg[0][24]_i_1_n_5\,
      CO(1) => \addr_reg[0][24]_i_1_n_6\,
      CO(0) => \addr_reg[0][24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \addr_reg[0][24]\(7 downto 0),
      S(7) => \addr[0][24]_i_2_n_0\,
      S(6) => \addr[0][24]_i_3_n_0\,
      S(5) => \addr[0][24]_i_4_n_0\,
      S(4) => \addr[0][24]_i_5_n_0\,
      S(3) => \addr[0][24]_i_6_n_0\,
      S(2) => \addr[0][24]_i_7_n_0\,
      S(1) => \addr[0][24]_i_8_n_0\,
      S(0) => \addr[0][24]_i_9_n_0\
    );
\addr_reg[0][32]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[0][24]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[0][32]_i_1_n_0\,
      CO(6) => \addr_reg[0][32]_i_1_n_1\,
      CO(5) => \addr_reg[0][32]_i_1_n_2\,
      CO(4) => \addr_reg[0][32]_i_1_n_3\,
      CO(3) => \addr_reg[0][32]_i_1_n_4\,
      CO(2) => \addr_reg[0][32]_i_1_n_5\,
      CO(1) => \addr_reg[0][32]_i_1_n_6\,
      CO(0) => \addr_reg[0][32]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \addr_reg[0][32]\(7 downto 0),
      S(7) => \addr[0][32]_i_2_n_0\,
      S(6) => \addr[0][32]_i_3_n_0\,
      S(5) => \addr[0][32]_i_4_n_0\,
      S(4) => \addr[0][32]_i_5_n_0\,
      S(3) => \addr[0][32]_i_6_n_0\,
      S(2) => \addr[0][32]_i_7_n_0\,
      S(1) => \addr[0][32]_i_8_n_0\,
      S(0) => \addr[0][32]_i_9_n_0\
    );
\addr_reg[0][40]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[0][32]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[0][40]_i_1_n_0\,
      CO(6) => \addr_reg[0][40]_i_1_n_1\,
      CO(5) => \addr_reg[0][40]_i_1_n_2\,
      CO(4) => \addr_reg[0][40]_i_1_n_3\,
      CO(3) => \addr_reg[0][40]_i_1_n_4\,
      CO(2) => \addr_reg[0][40]_i_1_n_5\,
      CO(1) => \addr_reg[0][40]_i_1_n_6\,
      CO(0) => \addr_reg[0][40]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \addr_reg[0][40]\(7 downto 0),
      S(7) => \addr[0][40]_i_2_n_0\,
      S(6) => \addr[0][40]_i_3_n_0\,
      S(5) => \addr[0][40]_i_4_n_0\,
      S(4) => \addr[0][40]_i_5_n_0\,
      S(3) => \addr[0][40]_i_6_n_0\,
      S(2) => \addr[0][40]_i_7_n_0\,
      S(1) => \addr[0][40]_i_8_n_0\,
      S(0) => \addr[0][40]_i_9_n_0\
    );
\addr_reg[0][48]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[0][40]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[0][48]_i_1_n_0\,
      CO(6) => \addr_reg[0][48]_i_1_n_1\,
      CO(5) => \addr_reg[0][48]_i_1_n_2\,
      CO(4) => \addr_reg[0][48]_i_1_n_3\,
      CO(3) => \addr_reg[0][48]_i_1_n_4\,
      CO(2) => \addr_reg[0][48]_i_1_n_5\,
      CO(1) => \addr_reg[0][48]_i_1_n_6\,
      CO(0) => \addr_reg[0][48]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \addr_reg[0][48]\(7 downto 0),
      S(7) => \addr[0][48]_i_2_n_0\,
      S(6) => \addr[0][48]_i_3_n_0\,
      S(5) => \addr[0][48]_i_4_n_0\,
      S(4) => \addr[0][48]_i_5_n_0\,
      S(3) => \addr[0][48]_i_6_n_0\,
      S(2) => \addr[0][48]_i_7_n_0\,
      S(1) => \addr[0][48]_i_8_n_0\,
      S(0) => \addr[0][48]_i_9_n_0\
    );
\addr_reg[0][56]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[0][48]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[0][56]_i_1_n_0\,
      CO(6) => \addr_reg[0][56]_i_1_n_1\,
      CO(5) => \addr_reg[0][56]_i_1_n_2\,
      CO(4) => \addr_reg[0][56]_i_1_n_3\,
      CO(3) => \addr_reg[0][56]_i_1_n_4\,
      CO(2) => \addr_reg[0][56]_i_1_n_5\,
      CO(1) => \addr_reg[0][56]_i_1_n_6\,
      CO(0) => \addr_reg[0][56]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \addr_reg[0][56]\(7 downto 0),
      S(7) => \addr[0][56]_i_2_n_0\,
      S(6) => \addr[0][56]_i_3_n_0\,
      S(5) => \addr[0][56]_i_4_n_0\,
      S(4) => \addr[0][56]_i_5_n_0\,
      S(3) => \addr[0][56]_i_6_n_0\,
      S(2) => \addr[0][56]_i_7_n_0\,
      S(1) => \addr[0][56]_i_8_n_0\,
      S(0) => \addr[0][56]_i_9_n_0\
    );
\addr_reg[0][63]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[0][56]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_addr_reg[0][63]_i_2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \addr_reg[0][63]_i_2_n_2\,
      CO(4) => \addr_reg[0][63]_i_2_n_3\,
      CO(3) => \addr_reg[0][63]_i_2_n_4\,
      CO(2) => \addr_reg[0][63]_i_2_n_5\,
      CO(1) => \addr_reg[0][63]_i_2_n_6\,
      CO(0) => \addr_reg[0][63]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_addr_reg[0][63]_i_2_O_UNCONNECTED\(7),
      O(6 downto 0) => \addr_reg[0][63]\(6 downto 0),
      S(7) => '0',
      S(6) => \addr[0][63]_i_3_n_0\,
      S(5) => \addr[0][63]_i_4_n_0\,
      S(4) => \addr[0][63]_i_5_n_0\,
      S(3) => \addr[0][63]_i_6_n_0\,
      S(2) => \addr[0][63]_i_7_n_0\,
      S(1) => \addr[0][63]_i_8_n_0\,
      S(0) => \addr[0][63]_i_9_n_0\
    );
ap_idle_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F8FFF8FFF8"
    )
        port map (
      I0 => done,
      I1 => empty,
      I2 => areset,
      I3 => ap_idle,
      I4 => ap_start_r,
      I5 => \^ap_start\,
      O => done_reg
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
      I0 => ctrl_length(1),
      I1 => ctrl_length(0),
      O => D(1)
    );
\final_burst_len[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => ctrl_length(2),
      I1 => ctrl_length(0),
      I2 => ctrl_length(1),
      O => D(2)
    );
\final_burst_len[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => ctrl_length(3),
      I1 => ctrl_length(1),
      I2 => ctrl_length(0),
      I3 => ctrl_length(2),
      O => D(3)
    );
\final_burst_len[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => ctrl_length(4),
      I1 => ctrl_length(2),
      I2 => ctrl_length(0),
      I3 => ctrl_length(1),
      I4 => ctrl_length(3),
      O => D(4)
    );
\final_burst_len[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => ctrl_length(5),
      I1 => ctrl_length(3),
      I2 => ctrl_length(1),
      I3 => ctrl_length(0),
      I4 => ctrl_length(2),
      I5 => ctrl_length(4),
      O => D(5)
    );
\final_burst_len[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => ctrl_length(6),
      I1 => \final_burst_len[7]_i_2_n_0\,
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
      I2 => empty,
      I3 => done,
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
      I1 => empty,
      I2 => done,
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
      I4 => \int_input_r[31]_i_3_n_0\,
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
      I4 => \int_input_r[31]_i_3_n_0\,
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
      I4 => \int_input_r[31]_i_3_n_0\,
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
\int_input_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(0),
      O => int_input_r_reg04_out(0)
    );
\int_input_r[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(10),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(10),
      O => int_input_r_reg04_out(10)
    );
\int_input_r[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(11),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(11),
      O => int_input_r_reg04_out(11)
    );
\int_input_r[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(12),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(12),
      O => int_input_r_reg04_out(12)
    );
\int_input_r[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(13),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(13),
      O => int_input_r_reg04_out(13)
    );
\int_input_r[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(14),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(14),
      O => int_input_r_reg04_out(14)
    );
\int_input_r[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(15),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(15),
      O => int_input_r_reg04_out(15)
    );
\int_input_r[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(16),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(16),
      O => int_input_r_reg04_out(16)
    );
\int_input_r[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(17),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(17),
      O => int_input_r_reg04_out(17)
    );
\int_input_r[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(18),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(18),
      O => int_input_r_reg04_out(18)
    );
\int_input_r[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(19),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(19),
      O => int_input_r_reg04_out(19)
    );
\int_input_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(1),
      O => int_input_r_reg04_out(1)
    );
\int_input_r[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(20),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(20),
      O => int_input_r_reg04_out(20)
    );
\int_input_r[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(21),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(21),
      O => int_input_r_reg04_out(21)
    );
\int_input_r[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(22),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(22),
      O => int_input_r_reg04_out(22)
    );
\int_input_r[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(23),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(23),
      O => int_input_r_reg04_out(23)
    );
\int_input_r[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(24),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(24),
      O => int_input_r_reg04_out(24)
    );
\int_input_r[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(25),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(25),
      O => int_input_r_reg04_out(25)
    );
\int_input_r[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(26),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(26),
      O => int_input_r_reg04_out(26)
    );
\int_input_r[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(27),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(27),
      O => int_input_r_reg04_out(27)
    );
\int_input_r[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(28),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(28),
      O => int_input_r_reg04_out(28)
    );
\int_input_r[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(29),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(29),
      O => int_input_r_reg04_out(29)
    );
\int_input_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(2),
      O => int_input_r_reg04_out(2)
    );
\int_input_r[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(30),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(30),
      O => int_input_r_reg04_out(30)
    );
\int_input_r[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \int_input_r[31]_i_3_n_0\,
      O => \int_input_r[31]_i_1_n_0\
    );
\int_input_r[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(31),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(31),
      O => int_input_r_reg04_out(31)
    );
\int_input_r[31]_i_3\: unisim.vcomponents.LUT6
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
      O => \int_input_r[31]_i_3_n_0\
    );
\int_input_r[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(32),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(0),
      O => int_input_r_reg0(0)
    );
\int_input_r[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(33),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(1),
      O => int_input_r_reg0(1)
    );
\int_input_r[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(34),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(2),
      O => int_input_r_reg0(2)
    );
\int_input_r[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(35),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(3),
      O => int_input_r_reg0(3)
    );
\int_input_r[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(36),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(4),
      O => int_input_r_reg0(4)
    );
\int_input_r[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(37),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(5),
      O => int_input_r_reg0(5)
    );
\int_input_r[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(38),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(6),
      O => int_input_r_reg0(6)
    );
\int_input_r[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(39),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(7),
      O => int_input_r_reg0(7)
    );
\int_input_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(3),
      O => int_input_r_reg04_out(3)
    );
\int_input_r[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(40),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(8),
      O => int_input_r_reg0(8)
    );
\int_input_r[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(41),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(9),
      O => int_input_r_reg0(9)
    );
\int_input_r[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(42),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(10),
      O => int_input_r_reg0(10)
    );
\int_input_r[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(43),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(11),
      O => int_input_r_reg0(11)
    );
\int_input_r[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(44),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(12),
      O => int_input_r_reg0(12)
    );
\int_input_r[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(45),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(13),
      O => int_input_r_reg0(13)
    );
\int_input_r[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(46),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(14),
      O => int_input_r_reg0(14)
    );
\int_input_r[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(47),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(15),
      O => int_input_r_reg0(15)
    );
\int_input_r[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(48),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(16),
      O => int_input_r_reg0(16)
    );
\int_input_r[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(49),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(17),
      O => int_input_r_reg0(17)
    );
\int_input_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(4),
      O => int_input_r_reg04_out(4)
    );
\int_input_r[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(50),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(18),
      O => int_input_r_reg0(18)
    );
\int_input_r[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(51),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(19),
      O => int_input_r_reg0(19)
    );
\int_input_r[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(52),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(20),
      O => int_input_r_reg0(20)
    );
\int_input_r[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(53),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(21),
      O => int_input_r_reg0(21)
    );
\int_input_r[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(54),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(22),
      O => int_input_r_reg0(22)
    );
\int_input_r[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(55),
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(23),
      O => int_input_r_reg0(23)
    );
\int_input_r[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(56),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(24),
      O => int_input_r_reg0(24)
    );
\int_input_r[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(57),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(25),
      O => int_input_r_reg0(25)
    );
\int_input_r[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(58),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(26),
      O => int_input_r_reg0(26)
    );
\int_input_r[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(59),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(27),
      O => int_input_r_reg0(27)
    );
\int_input_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(5),
      O => int_input_r_reg04_out(5)
    );
\int_input_r[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(60),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(28),
      O => int_input_r_reg0(28)
    );
\int_input_r[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(61),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(29),
      O => int_input_r_reg0(29)
    );
\int_input_r[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(62),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(30),
      O => int_input_r_reg0(30)
    );
\int_input_r[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \int_input_r[31]_i_3_n_0\,
      O => \int_input_r[63]_i_1_n_0\
    );
\int_input_r[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(63),
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(31),
      O => int_input_r_reg0(31)
    );
\int_input_r[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(6),
      O => int_input_r_reg04_out(6)
    );
\int_input_r[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(7),
      O => int_input_r_reg04_out(7)
    );
\int_input_r[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(8),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(8),
      O => int_input_r_reg04_out(8)
    );
\int_input_r[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ctrl_offset(9),
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(9),
      O => int_input_r_reg04_out(9)
    );
\int_input_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(0),
      Q => ctrl_offset(0),
      R => areset
    );
\int_input_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(10),
      Q => ctrl_offset(10),
      R => areset
    );
\int_input_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(11),
      Q => ctrl_offset(11),
      R => areset
    );
\int_input_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(12),
      Q => ctrl_offset(12),
      R => areset
    );
\int_input_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(13),
      Q => ctrl_offset(13),
      R => areset
    );
\int_input_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(14),
      Q => ctrl_offset(14),
      R => areset
    );
\int_input_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(15),
      Q => ctrl_offset(15),
      R => areset
    );
\int_input_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(16),
      Q => ctrl_offset(16),
      R => areset
    );
\int_input_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(17),
      Q => ctrl_offset(17),
      R => areset
    );
\int_input_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(18),
      Q => ctrl_offset(18),
      R => areset
    );
\int_input_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(19),
      Q => ctrl_offset(19),
      R => areset
    );
\int_input_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(1),
      Q => ctrl_offset(1),
      R => areset
    );
\int_input_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(20),
      Q => ctrl_offset(20),
      R => areset
    );
\int_input_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(21),
      Q => ctrl_offset(21),
      R => areset
    );
\int_input_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(22),
      Q => ctrl_offset(22),
      R => areset
    );
\int_input_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(23),
      Q => ctrl_offset(23),
      R => areset
    );
\int_input_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(24),
      Q => ctrl_offset(24),
      R => areset
    );
\int_input_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(25),
      Q => ctrl_offset(25),
      R => areset
    );
\int_input_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(26),
      Q => ctrl_offset(26),
      R => areset
    );
\int_input_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(27),
      Q => ctrl_offset(27),
      R => areset
    );
\int_input_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(28),
      Q => ctrl_offset(28),
      R => areset
    );
\int_input_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(29),
      Q => ctrl_offset(29),
      R => areset
    );
\int_input_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(2),
      Q => ctrl_offset(2),
      R => areset
    );
\int_input_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(30),
      Q => ctrl_offset(30),
      R => areset
    );
\int_input_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(31),
      Q => ctrl_offset(31),
      R => areset
    );
\int_input_r_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(0),
      Q => ctrl_offset(32),
      R => areset
    );
\int_input_r_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(1),
      Q => ctrl_offset(33),
      R => areset
    );
\int_input_r_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(2),
      Q => ctrl_offset(34),
      R => areset
    );
\int_input_r_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(3),
      Q => ctrl_offset(35),
      R => areset
    );
\int_input_r_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(4),
      Q => ctrl_offset(36),
      R => areset
    );
\int_input_r_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(5),
      Q => ctrl_offset(37),
      R => areset
    );
\int_input_r_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(6),
      Q => ctrl_offset(38),
      R => areset
    );
\int_input_r_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(7),
      Q => ctrl_offset(39),
      R => areset
    );
\int_input_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(3),
      Q => ctrl_offset(3),
      R => areset
    );
\int_input_r_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(8),
      Q => ctrl_offset(40),
      R => areset
    );
\int_input_r_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(9),
      Q => ctrl_offset(41),
      R => areset
    );
\int_input_r_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(10),
      Q => ctrl_offset(42),
      R => areset
    );
\int_input_r_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(11),
      Q => ctrl_offset(43),
      R => areset
    );
\int_input_r_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(12),
      Q => ctrl_offset(44),
      R => areset
    );
\int_input_r_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(13),
      Q => ctrl_offset(45),
      R => areset
    );
\int_input_r_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(14),
      Q => ctrl_offset(46),
      R => areset
    );
\int_input_r_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(15),
      Q => ctrl_offset(47),
      R => areset
    );
\int_input_r_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(16),
      Q => ctrl_offset(48),
      R => areset
    );
\int_input_r_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(17),
      Q => ctrl_offset(49),
      R => areset
    );
\int_input_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(4),
      Q => ctrl_offset(4),
      R => areset
    );
\int_input_r_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(18),
      Q => ctrl_offset(50),
      R => areset
    );
\int_input_r_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(19),
      Q => ctrl_offset(51),
      R => areset
    );
\int_input_r_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(20),
      Q => ctrl_offset(52),
      R => areset
    );
\int_input_r_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(21),
      Q => ctrl_offset(53),
      R => areset
    );
\int_input_r_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(22),
      Q => ctrl_offset(54),
      R => areset
    );
\int_input_r_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(23),
      Q => ctrl_offset(55),
      R => areset
    );
\int_input_r_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(24),
      Q => ctrl_offset(56),
      R => areset
    );
\int_input_r_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(25),
      Q => ctrl_offset(57),
      R => areset
    );
\int_input_r_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(26),
      Q => ctrl_offset(58),
      R => areset
    );
\int_input_r_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(27),
      Q => ctrl_offset(59),
      R => areset
    );
\int_input_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(5),
      Q => ctrl_offset(5),
      R => areset
    );
\int_input_r_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(28),
      Q => ctrl_offset(60),
      R => areset
    );
\int_input_r_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(29),
      Q => ctrl_offset(61),
      R => areset
    );
\int_input_r_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(30),
      Q => ctrl_offset(62),
      R => areset
    );
\int_input_r_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[63]_i_1_n_0\,
      D => int_input_r_reg0(31),
      Q => ctrl_offset(63),
      R => areset
    );
\int_input_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(6),
      Q => ctrl_offset(6),
      R => areset
    );
\int_input_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(7),
      Q => ctrl_offset(7),
      R => areset
    );
\int_input_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(8),
      Q => ctrl_offset(8),
      R => areset
    );
\int_input_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_input_r[31]_i_1_n_0\,
      D => int_input_r_reg04_out(9),
      Q => ctrl_offset(9),
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
      I3 => done,
      I4 => empty,
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
      I3 => done,
      I4 => empty,
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
\int_p_xcl_gv_p0[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[0]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(0),
      O => int_p_xcl_gv_p0_reg01_out(0)
    );
\int_p_xcl_gv_p0[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[10]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(10),
      O => int_p_xcl_gv_p0_reg01_out(10)
    );
\int_p_xcl_gv_p0[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[11]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(11),
      O => int_p_xcl_gv_p0_reg01_out(11)
    );
\int_p_xcl_gv_p0[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[12]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(12),
      O => int_p_xcl_gv_p0_reg01_out(12)
    );
\int_p_xcl_gv_p0[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[13]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(13),
      O => int_p_xcl_gv_p0_reg01_out(13)
    );
\int_p_xcl_gv_p0[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[14]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(14),
      O => int_p_xcl_gv_p0_reg01_out(14)
    );
\int_p_xcl_gv_p0[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[15]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(15),
      O => int_p_xcl_gv_p0_reg01_out(15)
    );
\int_p_xcl_gv_p0[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[16]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(16),
      O => int_p_xcl_gv_p0_reg01_out(16)
    );
\int_p_xcl_gv_p0[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[17]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(17),
      O => int_p_xcl_gv_p0_reg01_out(17)
    );
\int_p_xcl_gv_p0[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[18]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(18),
      O => int_p_xcl_gv_p0_reg01_out(18)
    );
\int_p_xcl_gv_p0[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[19]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(19),
      O => int_p_xcl_gv_p0_reg01_out(19)
    );
\int_p_xcl_gv_p0[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[1]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(1),
      O => int_p_xcl_gv_p0_reg01_out(1)
    );
\int_p_xcl_gv_p0[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[20]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(20),
      O => int_p_xcl_gv_p0_reg01_out(20)
    );
\int_p_xcl_gv_p0[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[21]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(21),
      O => int_p_xcl_gv_p0_reg01_out(21)
    );
\int_p_xcl_gv_p0[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[22]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(22),
      O => int_p_xcl_gv_p0_reg01_out(22)
    );
\int_p_xcl_gv_p0[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[23]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(23),
      O => int_p_xcl_gv_p0_reg01_out(23)
    );
\int_p_xcl_gv_p0[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[24]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(24),
      O => int_p_xcl_gv_p0_reg01_out(24)
    );
\int_p_xcl_gv_p0[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[25]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(25),
      O => int_p_xcl_gv_p0_reg01_out(25)
    );
\int_p_xcl_gv_p0[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[26]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(26),
      O => int_p_xcl_gv_p0_reg01_out(26)
    );
\int_p_xcl_gv_p0[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[27]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(27),
      O => int_p_xcl_gv_p0_reg01_out(27)
    );
\int_p_xcl_gv_p0[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[28]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(28),
      O => int_p_xcl_gv_p0_reg01_out(28)
    );
\int_p_xcl_gv_p0[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[29]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(29),
      O => int_p_xcl_gv_p0_reg01_out(29)
    );
\int_p_xcl_gv_p0[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[2]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(2),
      O => int_p_xcl_gv_p0_reg01_out(2)
    );
\int_p_xcl_gv_p0[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[30]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(30),
      O => int_p_xcl_gv_p0_reg01_out(30)
    );
\int_p_xcl_gv_p0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \waddr_reg_n_0_[5]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \int_p_xcl_gv_p0[31]_i_3_n_0\,
      O => \int_p_xcl_gv_p0[31]_i_1_n_0\
    );
\int_p_xcl_gv_p0[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[31]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(31),
      O => int_p_xcl_gv_p0_reg01_out(31)
    );
\int_p_xcl_gv_p0[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \waddr_reg_n_0_[1]\,
      I1 => \waddr_reg_n_0_[0]\,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => s_axi_control_WVALID,
      O => \int_p_xcl_gv_p0[31]_i_3_n_0\
    );
\int_p_xcl_gv_p0[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[32]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(0),
      O => int_p_xcl_gv_p0_reg0(0)
    );
\int_p_xcl_gv_p0[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[33]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(1),
      O => int_p_xcl_gv_p0_reg0(1)
    );
\int_p_xcl_gv_p0[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[34]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(2),
      O => int_p_xcl_gv_p0_reg0(2)
    );
\int_p_xcl_gv_p0[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[35]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(3),
      O => int_p_xcl_gv_p0_reg0(3)
    );
\int_p_xcl_gv_p0[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[36]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(4),
      O => int_p_xcl_gv_p0_reg0(4)
    );
\int_p_xcl_gv_p0[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[37]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(5),
      O => int_p_xcl_gv_p0_reg0(5)
    );
\int_p_xcl_gv_p0[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[38]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(6),
      O => int_p_xcl_gv_p0_reg0(6)
    );
\int_p_xcl_gv_p0[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[39]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(7),
      O => int_p_xcl_gv_p0_reg0(7)
    );
\int_p_xcl_gv_p0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[3]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(3),
      O => int_p_xcl_gv_p0_reg01_out(3)
    );
\int_p_xcl_gv_p0[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[40]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(8),
      O => int_p_xcl_gv_p0_reg0(8)
    );
\int_p_xcl_gv_p0[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[41]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(9),
      O => int_p_xcl_gv_p0_reg0(9)
    );
\int_p_xcl_gv_p0[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[42]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(10),
      O => int_p_xcl_gv_p0_reg0(10)
    );
\int_p_xcl_gv_p0[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[43]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(11),
      O => int_p_xcl_gv_p0_reg0(11)
    );
\int_p_xcl_gv_p0[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[44]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(12),
      O => int_p_xcl_gv_p0_reg0(12)
    );
\int_p_xcl_gv_p0[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[45]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(13),
      O => int_p_xcl_gv_p0_reg0(13)
    );
\int_p_xcl_gv_p0[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[46]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(14),
      O => int_p_xcl_gv_p0_reg0(14)
    );
\int_p_xcl_gv_p0[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[47]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(15),
      O => int_p_xcl_gv_p0_reg0(15)
    );
\int_p_xcl_gv_p0[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[48]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(16),
      O => int_p_xcl_gv_p0_reg0(16)
    );
\int_p_xcl_gv_p0[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[49]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(17),
      O => int_p_xcl_gv_p0_reg0(17)
    );
\int_p_xcl_gv_p0[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[4]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(4),
      O => int_p_xcl_gv_p0_reg01_out(4)
    );
\int_p_xcl_gv_p0[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[50]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(18),
      O => int_p_xcl_gv_p0_reg0(18)
    );
\int_p_xcl_gv_p0[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[51]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(19),
      O => int_p_xcl_gv_p0_reg0(19)
    );
\int_p_xcl_gv_p0[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[52]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(20),
      O => int_p_xcl_gv_p0_reg0(20)
    );
\int_p_xcl_gv_p0[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[53]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(21),
      O => int_p_xcl_gv_p0_reg0(21)
    );
\int_p_xcl_gv_p0[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[54]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(22),
      O => int_p_xcl_gv_p0_reg0(22)
    );
\int_p_xcl_gv_p0[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[55]\,
      I1 => s_axi_control_WSTRB(2),
      I2 => s_axi_control_WDATA(23),
      O => int_p_xcl_gv_p0_reg0(23)
    );
\int_p_xcl_gv_p0[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[56]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(24),
      O => int_p_xcl_gv_p0_reg0(24)
    );
\int_p_xcl_gv_p0[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[57]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(25),
      O => int_p_xcl_gv_p0_reg0(25)
    );
\int_p_xcl_gv_p0[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[58]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(26),
      O => int_p_xcl_gv_p0_reg0(26)
    );
\int_p_xcl_gv_p0[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[59]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(27),
      O => int_p_xcl_gv_p0_reg0(27)
    );
\int_p_xcl_gv_p0[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[5]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(5),
      O => int_p_xcl_gv_p0_reg01_out(5)
    );
\int_p_xcl_gv_p0[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[60]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(28),
      O => int_p_xcl_gv_p0_reg0(28)
    );
\int_p_xcl_gv_p0[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[61]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(29),
      O => int_p_xcl_gv_p0_reg0(29)
    );
\int_p_xcl_gv_p0[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[62]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(30),
      O => int_p_xcl_gv_p0_reg0(30)
    );
\int_p_xcl_gv_p0[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \waddr_reg_n_0_[5]\,
      I4 => \int_p_xcl_gv_p0[31]_i_3_n_0\,
      O => \int_p_xcl_gv_p0[63]_i_1_n_0\
    );
\int_p_xcl_gv_p0[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[63]\,
      I1 => s_axi_control_WSTRB(3),
      I2 => s_axi_control_WDATA(31),
      O => int_p_xcl_gv_p0_reg0(31)
    );
\int_p_xcl_gv_p0[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[6]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(6),
      O => int_p_xcl_gv_p0_reg01_out(6)
    );
\int_p_xcl_gv_p0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[7]\,
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(7),
      O => int_p_xcl_gv_p0_reg01_out(7)
    );
\int_p_xcl_gv_p0[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[8]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(8),
      O => int_p_xcl_gv_p0_reg01_out(8)
    );
\int_p_xcl_gv_p0[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_p_xcl_gv_p0_reg_n_0_[9]\,
      I1 => s_axi_control_WSTRB(1),
      I2 => s_axi_control_WDATA(9),
      O => int_p_xcl_gv_p0_reg01_out(9)
    );
\int_p_xcl_gv_p0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(0),
      Q => \int_p_xcl_gv_p0_reg_n_0_[0]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(10),
      Q => \int_p_xcl_gv_p0_reg_n_0_[10]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(11),
      Q => \int_p_xcl_gv_p0_reg_n_0_[11]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(12),
      Q => \int_p_xcl_gv_p0_reg_n_0_[12]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(13),
      Q => \int_p_xcl_gv_p0_reg_n_0_[13]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(14),
      Q => \int_p_xcl_gv_p0_reg_n_0_[14]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(15),
      Q => \int_p_xcl_gv_p0_reg_n_0_[15]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(16),
      Q => \int_p_xcl_gv_p0_reg_n_0_[16]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(17),
      Q => \int_p_xcl_gv_p0_reg_n_0_[17]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(18),
      Q => \int_p_xcl_gv_p0_reg_n_0_[18]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(19),
      Q => \int_p_xcl_gv_p0_reg_n_0_[19]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(1),
      Q => \int_p_xcl_gv_p0_reg_n_0_[1]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(20),
      Q => \int_p_xcl_gv_p0_reg_n_0_[20]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(21),
      Q => \int_p_xcl_gv_p0_reg_n_0_[21]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(22),
      Q => \int_p_xcl_gv_p0_reg_n_0_[22]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(23),
      Q => \int_p_xcl_gv_p0_reg_n_0_[23]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(24),
      Q => \int_p_xcl_gv_p0_reg_n_0_[24]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(25),
      Q => \int_p_xcl_gv_p0_reg_n_0_[25]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(26),
      Q => \int_p_xcl_gv_p0_reg_n_0_[26]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(27),
      Q => \int_p_xcl_gv_p0_reg_n_0_[27]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(28),
      Q => \int_p_xcl_gv_p0_reg_n_0_[28]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(29),
      Q => \int_p_xcl_gv_p0_reg_n_0_[29]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(2),
      Q => \int_p_xcl_gv_p0_reg_n_0_[2]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(30),
      Q => \int_p_xcl_gv_p0_reg_n_0_[30]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(31),
      Q => \int_p_xcl_gv_p0_reg_n_0_[31]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(0),
      Q => \int_p_xcl_gv_p0_reg_n_0_[32]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(1),
      Q => \int_p_xcl_gv_p0_reg_n_0_[33]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(2),
      Q => \int_p_xcl_gv_p0_reg_n_0_[34]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(3),
      Q => \int_p_xcl_gv_p0_reg_n_0_[35]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(4),
      Q => \int_p_xcl_gv_p0_reg_n_0_[36]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(5),
      Q => \int_p_xcl_gv_p0_reg_n_0_[37]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(6),
      Q => \int_p_xcl_gv_p0_reg_n_0_[38]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(7),
      Q => \int_p_xcl_gv_p0_reg_n_0_[39]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(3),
      Q => \int_p_xcl_gv_p0_reg_n_0_[3]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(8),
      Q => \int_p_xcl_gv_p0_reg_n_0_[40]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(9),
      Q => \int_p_xcl_gv_p0_reg_n_0_[41]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(10),
      Q => \int_p_xcl_gv_p0_reg_n_0_[42]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(11),
      Q => \int_p_xcl_gv_p0_reg_n_0_[43]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(12),
      Q => \int_p_xcl_gv_p0_reg_n_0_[44]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(13),
      Q => \int_p_xcl_gv_p0_reg_n_0_[45]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(14),
      Q => \int_p_xcl_gv_p0_reg_n_0_[46]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(15),
      Q => \int_p_xcl_gv_p0_reg_n_0_[47]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(16),
      Q => \int_p_xcl_gv_p0_reg_n_0_[48]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(17),
      Q => \int_p_xcl_gv_p0_reg_n_0_[49]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(4),
      Q => \int_p_xcl_gv_p0_reg_n_0_[4]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(18),
      Q => \int_p_xcl_gv_p0_reg_n_0_[50]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(19),
      Q => \int_p_xcl_gv_p0_reg_n_0_[51]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(20),
      Q => \int_p_xcl_gv_p0_reg_n_0_[52]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(21),
      Q => \int_p_xcl_gv_p0_reg_n_0_[53]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(22),
      Q => \int_p_xcl_gv_p0_reg_n_0_[54]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(23),
      Q => \int_p_xcl_gv_p0_reg_n_0_[55]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(24),
      Q => \int_p_xcl_gv_p0_reg_n_0_[56]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(25),
      Q => \int_p_xcl_gv_p0_reg_n_0_[57]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(26),
      Q => \int_p_xcl_gv_p0_reg_n_0_[58]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(27),
      Q => \int_p_xcl_gv_p0_reg_n_0_[59]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(5),
      Q => \int_p_xcl_gv_p0_reg_n_0_[5]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(28),
      Q => \int_p_xcl_gv_p0_reg_n_0_[60]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(29),
      Q => \int_p_xcl_gv_p0_reg_n_0_[61]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(30),
      Q => \int_p_xcl_gv_p0_reg_n_0_[62]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[63]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg0(31),
      Q => \int_p_xcl_gv_p0_reg_n_0_[63]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(6),
      Q => \int_p_xcl_gv_p0_reg_n_0_[6]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(7),
      Q => \int_p_xcl_gv_p0_reg_n_0_[7]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(8),
      Q => \int_p_xcl_gv_p0_reg_n_0_[8]\,
      R => areset
    );
\int_p_xcl_gv_p0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_p_xcl_gv_p0[31]_i_1_n_0\,
      D => int_p_xcl_gv_p0_reg01_out(9),
      Q => \int_p_xcl_gv_p0_reg_n_0_[9]\,
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
      I1 => ctrl_length(7),
      I2 => \final_burst_len[7]_i_2_n_0\,
      I3 => ctrl_length(6),
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
      I0 => \int_p_xcl_gv_p0_reg_n_0_[32]\,
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \int_p_xcl_gv_p0_reg_n_0_[0]\,
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
      INIT => X"FAC000000AC00000"
    )
        port map (
      I0 => int_gie_reg_n_0,
      I1 => \int_ier_reg_n_0_[0]\,
      I2 => s_axi_control_ARADDR(3),
      I3 => s_axi_control_ARADDR(2),
      I4 => \rdata[1]_i_5_n_0\,
      I5 => \int_isr_reg_n_0_[0]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[10]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[42]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[11]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[43]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[12]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[44]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[13]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[45]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[14]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[46]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[15]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[47]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[16]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[48]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[17]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[49]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[18]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[50]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[19]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[51]\,
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
      I3 => \int_p_xcl_gv_p0_reg_n_0_[1]\,
      I4 => \int_p_xcl_gv_p0_reg_n_0_[33]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[20]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[52]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[21]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[53]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[22]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[54]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[23]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[55]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[24]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[56]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[25]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[57]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[26]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[58]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[27]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[59]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[28]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[60]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[29]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[61]\,
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
      I3 => \int_p_xcl_gv_p0_reg_n_0_[2]\,
      I4 => \int_p_xcl_gv_p0_reg_n_0_[34]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[30]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[62]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[31]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[63]\,
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
      I3 => \int_p_xcl_gv_p0_reg_n_0_[3]\,
      I4 => \int_p_xcl_gv_p0_reg_n_0_[35]\,
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
      I2 => done,
      I3 => empty,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[4]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[36]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[5]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[37]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[6]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[38]\,
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
      I3 => \int_p_xcl_gv_p0_reg_n_0_[7]\,
      I4 => \int_p_xcl_gv_p0_reg_n_0_[39]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[8]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[40]\,
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
      I2 => \int_p_xcl_gv_p0_reg_n_0_[9]\,
      I3 => \int_p_xcl_gv_p0_reg_n_0_[41]\,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter is
  port (
    m_axi_gmem_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_ARREADY_0 : out STD_LOGIC;
    areset : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    start : in STD_LOGIC;
    is_zero_r_reg_0 : in STD_LOGIC;
    m_axi_gmem_ARREADY : in STD_LOGIC;
    is_zero_r_reg_1 : in STD_LOGIC;
    \m_axi_gmem_ARLEN[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ar_idle : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter is
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
  signal \count_r[16]_i_2_n_0\ : STD_LOGIC;
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
  signal is_zero_r_i_2_n_0 : STD_LOGIC;
  signal \is_zero_r_i_3__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_4__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_5__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_6__0_n_0\ : STD_LOGIC;
  signal is_zero_r_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \NLW_count_r_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_r_reg[0]_i_2__0\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[16]_i_1__0\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[8]_i_1__0\ : label is 16;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axi_gmem_ARLEN[0]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axi_gmem_ARLEN[1]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axi_gmem_ARLEN[2]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axi_gmem_ARLEN[3]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axi_gmem_ARLEN[4]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axi_gmem_ARLEN[5]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axi_gmem_ARLEN[6]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axi_gmem_ARLEN[7]_INST_0\ : label is "soft_lutpair16";
begin
ar_idle_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0080"
    )
        port map (
      I0 => m_axi_gmem_ARREADY,
      I1 => is_zero_r_reg_1,
      I2 => is_zero_r_reg_n_0,
      I3 => start,
      I4 => ar_idle,
      O => m_axi_gmem_ARREADY_0
    );
\count_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => start,
      I1 => is_zero_r_reg_1,
      I2 => m_axi_gmem_ARREADY,
      O => is_zero_r
    );
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
\count_r[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_2_n_0\
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
      INIT => X"8B"
    )
        port map (
      I0 => Q(23),
      I1 => start,
      I2 => count_r_reg(23),
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
      DI(6) => \count_r[16]_i_2_n_0\,
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
is_zero_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000FFFF"
    )
        port map (
      I0 => is_zero_r_i_2_n_0,
      I1 => \is_zero_r_i_3__0_n_0\,
      I2 => \is_zero_r_i_4__0_n_0\,
      I3 => \is_zero_r_i_5__0_n_0\,
      I4 => is_zero_r_reg_0,
      O => p_0_in
    );
is_zero_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => m_axi_gmem_ARREADY,
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(0),
      I3 => \is_zero_r_i_6__0_n_0\,
      O => is_zero_r_i_2_n_0
    );
\is_zero_r_i_3__0\: unisim.vcomponents.LUT6
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
      O => \is_zero_r_i_3__0_n_0\
    );
\is_zero_r_i_4__0\: unisim.vcomponents.LUT6
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
      O => \is_zero_r_i_4__0_n_0\
    );
\is_zero_r_i_5__0\: unisim.vcomponents.LUT6
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
      O => \is_zero_r_i_5__0_n_0\
    );
\is_zero_r_i_6__0\: unisim.vcomponents.LUT6
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
      O => \is_zero_r_i_6__0_n_0\
    );
is_zero_r_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => is_zero_r,
      D => p_0_in,
      Q => is_zero_r_reg_n_0,
      S => areset
    );
\m_axi_gmem_ARLEN[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => is_zero_r_reg_0,
      I2 => \m_axi_gmem_ARLEN[7]\(0),
      O => m_axi_gmem_ARLEN(0)
    );
\m_axi_gmem_ARLEN[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => is_zero_r_reg_0,
      I2 => \m_axi_gmem_ARLEN[7]\(1),
      O => m_axi_gmem_ARLEN(1)
    );
\m_axi_gmem_ARLEN[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => is_zero_r_reg_0,
      I2 => \m_axi_gmem_ARLEN[7]\(2),
      O => m_axi_gmem_ARLEN(2)
    );
\m_axi_gmem_ARLEN[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => is_zero_r_reg_0,
      I2 => \m_axi_gmem_ARLEN[7]\(3),
      O => m_axi_gmem_ARLEN(3)
    );
\m_axi_gmem_ARLEN[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => is_zero_r_reg_0,
      I2 => \m_axi_gmem_ARLEN[7]\(4),
      O => m_axi_gmem_ARLEN(4)
    );
\m_axi_gmem_ARLEN[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => is_zero_r_reg_0,
      I2 => \m_axi_gmem_ARLEN[7]\(5),
      O => m_axi_gmem_ARLEN(5)
    );
\m_axi_gmem_ARLEN[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => is_zero_r_reg_0,
      I2 => \m_axi_gmem_ARLEN[7]\(6),
      O => m_axi_gmem_ARLEN(6)
    );
\m_axi_gmem_ARLEN[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => is_zero_r_reg_0,
      I2 => \m_axi_gmem_ARLEN[7]\(7),
      O => m_axi_gmem_ARLEN(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter_0 is
  port (
    \num_transactions_reg[16]\ : out STD_LOGIC;
    is_zero_r_reg_0 : out STD_LOGIC;
    areset : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    start : in STD_LOGIC;
    m_axi_gmem_RVALID : in STD_LOGIC;
    m_axi_gmem_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_RLAST : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter_0 : entity is "krnl_input_stage_rtl_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter_0 is
  signal \count_r[0]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_15_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_16_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_17_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_18_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_1__0_n_0\ : STD_LOGIC;
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
  signal \is_zero_r_i_1__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_2__0_n_0\ : STD_LOGIC;
  signal is_zero_r_i_3_n_0 : STD_LOGIC;
  signal is_zero_r_i_4_n_0 : STD_LOGIC;
  signal is_zero_r_i_5_n_0 : STD_LOGIC;
  signal is_zero_r_i_6_n_0 : STD_LOGIC;
  signal is_zero_r_reg_n_0 : STD_LOGIC;
  signal \m_axi_gmem_ARLEN[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_gmem_ARLEN[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_gmem_ARLEN[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \m_axi_gmem_ARLEN[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \m_axi_gmem_ARLEN[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \m_axi_gmem_ARLEN[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \^num_transactions_reg[16]\ : STD_LOGIC;
  signal \NLW_count_r_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_r_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[8]_i_1\ : label is 16;
begin
  \num_transactions_reg[16]\ <= \^num_transactions_reg[16]\;
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
\count_r[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => start,
      I1 => m_axi_gmem_RLAST,
      I2 => m_axi_gmem_RID(0),
      I3 => m_axi_gmem_RVALID,
      O => \count_r[0]_i_1__0_n_0\
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
      INIT => X"8B"
    )
        port map (
      I0 => Q(23),
      I1 => start,
      I2 => count_r_reg(23),
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
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
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[8]_i_1_n_14\,
      Q => count_r_reg(9),
      R => areset
    );
\done[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => m_axi_gmem_RLAST,
      I2 => m_axi_gmem_RID(0),
      I3 => m_axi_gmem_RVALID,
      O => is_zero_r_reg_0
    );
\is_zero_r_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000FFFF"
    )
        port map (
      I0 => \is_zero_r_i_2__0_n_0\,
      I1 => is_zero_r_i_3_n_0,
      I2 => is_zero_r_i_4_n_0,
      I3 => is_zero_r_i_5_n_0,
      I4 => \^num_transactions_reg[16]\,
      O => \is_zero_r_i_1__0_n_0\
    );
\is_zero_r_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => m_axi_gmem_RVALID,
      I1 => m_axi_gmem_RID(0),
      I2 => m_axi_gmem_RLAST,
      I3 => count_r_reg(0),
      I4 => is_zero_r_i_6_n_0,
      O => \is_zero_r_i_2__0_n_0\
    );
is_zero_r_i_3: unisim.vcomponents.LUT6
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
      O => is_zero_r_i_3_n_0
    );
is_zero_r_i_4: unisim.vcomponents.LUT6
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
      O => is_zero_r_i_4_n_0
    );
is_zero_r_i_5: unisim.vcomponents.LUT6
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
      O => is_zero_r_i_5_n_0
    );
is_zero_r_i_6: unisim.vcomponents.LUT6
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
      O => is_zero_r_i_6_n_0
    );
is_zero_r_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \is_zero_r_i_1__0_n_0\,
      Q => is_zero_r_reg_n_0,
      S => areset
    );
\m_axi_gmem_ARLEN[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_axi_gmem_ARLEN[7]_INST_0_i_2_n_0\,
      I1 => \m_axi_gmem_ARLEN[7]_INST_0_i_3_n_0\,
      I2 => \m_axi_gmem_ARLEN[7]_INST_0_i_4_n_0\,
      I3 => \m_axi_gmem_ARLEN[7]_INST_0_i_5_n_0\,
      I4 => \m_axi_gmem_ARLEN[7]_INST_0_i_6_n_0\,
      I5 => \m_axi_gmem_ARLEN[7]_INST_0_i_7_n_0\,
      O => \^num_transactions_reg[16]\
    );
\m_axi_gmem_ARLEN[7]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(16),
      I1 => Q(15),
      I2 => Q(18),
      I3 => Q(17),
      O => \m_axi_gmem_ARLEN[7]_INST_0_i_2_n_0\
    );
\m_axi_gmem_ARLEN[7]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(20),
      I1 => Q(19),
      I2 => Q(22),
      I3 => Q(21),
      O => \m_axi_gmem_ARLEN[7]_INST_0_i_3_n_0\
    );
\m_axi_gmem_ARLEN[7]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(8),
      I1 => Q(7),
      I2 => Q(10),
      I3 => Q(9),
      O => \m_axi_gmem_ARLEN[7]_INST_0_i_4_n_0\
    );
\m_axi_gmem_ARLEN[7]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(12),
      I1 => Q(11),
      I2 => Q(14),
      I3 => Q(13),
      O => \m_axi_gmem_ARLEN[7]_INST_0_i_5_n_0\
    );
\m_axi_gmem_ARLEN[7]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(6),
      I3 => Q(5),
      O => \m_axi_gmem_ARLEN[7]_INST_0_i_6_n_0\
    );
\m_axi_gmem_ARLEN[7]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(23),
      I2 => start,
      I3 => Q(2),
      I4 => Q(1),
      O => \m_axi_gmem_ARLEN[7]_INST_0_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter__parameterized0\ is
  port (
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\ : out STD_LOGIC;
    areset : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    m_axi_gmem_ARREADY : in STD_LOGIC;
    \count_r_reg[1]_0\ : in STD_LOGIC;
    m_axi_gmem_RVALID : in STD_LOGIC;
    m_axi_gmem_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_RLAST : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    ar_idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter__parameterized0\ : entity is "krnl_input_stage_rtl_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter__parameterized0\ is
  signal \count_r[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[1]_i_3_n_0\ : STD_LOGIC;
  signal \count_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \is_zero_r_i_1__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_2__1_n_0\ : STD_LOGIC;
  signal stall_ar : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of arvalid_r_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_r[1]_i_3\ : label is "soft_lutpair12";
begin
arvalid_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001CCCD"
    )
        port map (
      I0 => prog_full,
      I1 => \count_r_reg[1]_0\,
      I2 => stall_ar,
      I3 => ar_idle,
      I4 => m_axi_gmem_ARREADY,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\
    );
\count_r[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      O => \count_r[0]_i_1__1_n_0\
    );
\count_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88788888"
    )
        port map (
      I0 => m_axi_gmem_ARREADY,
      I1 => \count_r_reg[1]_0\,
      I2 => m_axi_gmem_RVALID,
      I3 => m_axi_gmem_RID(0),
      I4 => m_axi_gmem_RLAST,
      O => \count_r[1]_i_1_n_0\
    );
\count_r[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF08000800F7FF"
    )
        port map (
      I0 => \count_r[1]_i_3_n_0\,
      I1 => m_axi_gmem_RVALID,
      I2 => m_axi_gmem_RID(0),
      I3 => m_axi_gmem_RLAST,
      I4 => \count_r_reg_n_0_[1]\,
      I5 => \count_r_reg_n_0_[0]\,
      O => \count_r[1]_i_2_n_0\
    );
\count_r[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => m_axi_gmem_ARREADY,
      I1 => \count_r_reg[1]_0\,
      O => \count_r[1]_i_3_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \count_r[1]_i_1_n_0\,
      D => \count_r[0]_i_1__1_n_0\,
      Q => \count_r_reg_n_0_[0]\,
      S => areset
    );
\count_r_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \count_r[1]_i_1_n_0\,
      D => \count_r[1]_i_2_n_0\,
      Q => \count_r_reg_n_0_[1]\,
      S => areset
    );
\is_zero_r_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFFF88820000888"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      I1 => \count_r_reg_n_0_[1]\,
      I2 => m_axi_gmem_ARREADY,
      I3 => \count_r_reg[1]_0\,
      I4 => \is_zero_r_i_2__1_n_0\,
      I5 => stall_ar,
      O => \is_zero_r_i_1__1_n_0\
    );
\is_zero_r_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => m_axi_gmem_RVALID,
      I1 => m_axi_gmem_RID(0),
      I2 => m_axi_gmem_RLAST,
      O => \is_zero_r_i_2__1_n_0\
    );
is_zero_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \is_zero_r_i_1__1_n_0\,
      Q => stall_ar,
      R => areset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  port (
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    leaving_empty0 : out STD_LOGIC;
    \count_value_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    ram_wr_en_pf : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ : in STD_LOGIC;
    clr_full : in STD_LOGIC;
    \count_value_i_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0\ : STD_LOGIC;
  signal going_full1 : STD_LOGIC;
  signal \^leaving_empty0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__1\ : label is "soft_lutpair0";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  leaving_empty0 <= \^leaving_empty0\;
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__1_n_0\
    );
\count_value_i[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__1_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__1_n_0\
    );
\count_value_i[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__1_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__1_n_0\
    );
\count_value_i[6]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[1]_0\(1),
      I2 => \count_value_i_reg[1]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__1_n_0\
    );
\count_value_i[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2__1_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__1_n_0\
    );
\count_value_i[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2__1_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__1_n_0\
    );
\count_value_i[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__1_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1__1_n_0\
    );
\count_value_i[9]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \count_value_i_reg[0]_0\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[5]_i_1__1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[6]_i_1__1_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[7]_i_1__1_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[8]_i_1__1_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[9]_i_1__1_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[0]_1\(0)
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003B2A2A2A"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\,
      I1 => \count_value_i_reg[0]_0\,
      I2 => \^leaving_empty0\,
      I3 => going_full1,
      I4 => ram_wr_en_pf,
      I5 => clr_full,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4_n_0\,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\(9),
      I2 => \^q\(9),
      I3 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0\,
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0\,
      O => \^leaving_empty0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(9),
      I2 => \^q\(9),
      I3 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0\,
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0\,
      O => going_full1
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\(6),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\(3),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(0),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(6),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(3),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(8),
      I2 => \^q\(9),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(9),
      O => S(1)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(7),
      I2 => \^q\(8),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(8),
      O => S(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(5),
      I2 => \^q\(6),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(6),
      O => \count_value_i_reg[6]_0\(4)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(4),
      I2 => \^q\(5),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(5),
      O => \count_value_i_reg[6]_0\(3)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(3),
      I2 => \^q\(4),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(4),
      O => \count_value_i_reg[6]_0\(2)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(2),
      I2 => \^q\(3),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(3),
      O => \count_value_i_reg[6]_0\(1)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(1),
      I2 => \^q\(2),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(2),
      O => \count_value_i_reg[6]_0\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[0]_0\,
      I2 => ram_wr_en_pf,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(0),
      O => DI(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(6),
      I2 => \^q\(7),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(7),
      O => \count_value_i_reg[6]_0\(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_1\ is
  port (
    ram_empty_i0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \gen_pntr_flags_cc.ram_empty_i_reg\ : in STD_LOGIC;
    leaving_empty0 : in STD_LOGIC;
    ram_wr_en_pf : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[9]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_1\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\ : STD_LOGIC;
  signal going_empty1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__0\ : label is "soft_lutpair5";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__0_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__0_n_0\
    );
\count_value_i[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[9]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__0_n_0\
    );
\count_value_i[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2__0_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__0_n_0\
    );
\count_value_i[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2__0_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__0_n_0\
    );
\count_value_i[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__0_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1__0_n_0\
    );
\count_value_i[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ram_wr_en_pf,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[7]_i_1__0_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[8]_i_1__0_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[9]_i_1__0_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[9]_0\(0)
    );
\gen_pntr_flags_cc.ram_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_reg\,
      I1 => going_empty1,
      I2 => leaving_empty0,
      I3 => ram_wr_en_pf,
      I4 => ram_empty_i,
      O => ram_empty_i0
    );
\gen_pntr_flags_cc.ram_empty_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\,
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(9),
      I2 => \^q\(9),
      I3 => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\,
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\,
      O => going_empty1
    );
\gen_pntr_flags_cc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(0),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(6),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(3),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  signal \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__2\ : label is "soft_lutpair3";
begin
  \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ <= \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\;
  Q(9 downto 0) <= \^q\(9 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__2_n_0\
    );
\count_value_i[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__2_n_0\
    );
\count_value_i[6]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__2_n_0\
    );
\count_value_i[6]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[0]_0\(1),
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__2_n_0\
    );
\count_value_i[7]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2__2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__2_n_0\
    );
\count_value_i[8]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2__2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__2_n_0\
    );
\count_value_i[9]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__2_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1__2_n_0\
    );
\count_value_i[9]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[4]_i_1__2_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[5]_i_1__2_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[6]_i_1__2_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[7]_i_1__2_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[8]_i_1__2_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[9]_i_1__2_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[0]_1\(0)
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ram_wr_en_pf : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_2\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1\ : label is "soft_lutpair8";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1\ : label is 35;
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1_n_0\
    );
\count_value_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[0]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2_n_0\
    );
\count_value_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1_n_0\
    );
\count_value_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1_n_0\
    );
\count_value_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1_n_0\
    );
\count_value_i[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ram_wr_en_pf,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[5]_i_1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[6]_i_1_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[7]_i_1_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[8]_i_1_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[9]_i_1_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[0]_0\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(7),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F75108AE08AEF751"
    )
        port map (
      I0 => \^q\(0),
      I1 => ram_wr_en_pf,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(0),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9969"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(0),
      I2 => ram_wr_en_pf,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(6),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(5),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(4),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(3),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(2),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(1),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0\,
      O(7 downto 2) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1 downto 0) => D(9 downto 8),
      S(7 downto 2) => B"000000",
      S(1 downto 0) => S(1 downto 0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0\,
      CO(6) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1\,
      CO(5) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2\,
      CO(4) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3\,
      CO(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4\,
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7\,
      DI(7) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\,
      DI(6) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\,
      DI(5) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\,
      DI(4) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\,
      DI(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0\,
      DI(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0\,
      DI(1) => DI(0),
      DI(0) => '0',
      O(7 downto 0) => D(7 downto 0),
      S(7 downto 2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(5 downto 0),
      S(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0\,
      S(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    clr_full : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    prog_full_i217_in : in STD_LOGIC;
    ram_wr_en_pf_q : in STD_LOGIC;
    ram_rd_en_pf_q : in STD_LOGIC;
    prog_full : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  signal \^clr_full\ : STD_LOGIC;
  signal \^rst_d1\ : STD_LOGIC;
begin
  clr_full <= \^clr_full\;
  rst_d1 <= \^rst_d1\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => Q(0),
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51550040"
    )
        port map (
      I0 => \^clr_full\,
      I1 => prog_full_i217_in,
      I2 => ram_wr_en_pf_q,
      I3 => ram_rd_en_pf_q,
      I4 => prog_full,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => Q(0),
      O => \^clr_full\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  port (
    ram_wr_en_pf : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[9]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_rst_cc.fifo_wr_rst_cc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal rst_i : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
\gen_rst_cc.fifo_wr_rst_cc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \gen_rst_cc.fifo_wr_rst_cc\(0),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(0),
      Q => \gen_rst_cc.fifo_wr_rst_cc\(1),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(1),
      Q => \^q\(0),
      S => rst_i
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[9]\,
      I2 => \^q\(0),
      I3 => rst_d1,
      O => ram_wr_en_pf
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32768;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1024;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 10;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 1023;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "p0_d32";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 31;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 1023;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "p0_d32";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 32768;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 31;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_0\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 1,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(14 downto 5) => addrb(9 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => dina(31 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED\(31 downto 0),
      DOUTBDOUT(31 downto 0) => doutb(31 downto 0),
      DOUTPADOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => '1',
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_axi_read_master is
  port (
    m_axi_gmem_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    arvalid_r_reg_0 : out STD_LOGIC;
    m_axi_gmem_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_fwft.empty_fwft_i_reg\ : out STD_LOGIC;
    ap_start_pulse : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    areset : in STD_LOGIC;
    \addr_reg[0][0]_0\ : in STD_LOGIC;
    \addr_reg[0][1]_0\ : in STD_LOGIC;
    \addr_reg[0][2]_0\ : in STD_LOGIC;
    \addr_reg[0][3]_0\ : in STD_LOGIC;
    \addr_reg[0][4]_0\ : in STD_LOGIC;
    \addr_reg[0][5]_0\ : in STD_LOGIC;
    \addr_reg[0][6]_0\ : in STD_LOGIC;
    \addr_reg[0][7]_0\ : in STD_LOGIC;
    \addr_reg[0][8]_0\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[0][24]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[0][32]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[0][40]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[0][48]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[0][56]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \addr_reg[0][63]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 22 downto 0 );
    S : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \num_transactions_reg[15]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \num_transactions_reg[23]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_ARREADY : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_start_r : in STD_LOGIC;
    m_axi_gmem_RVALID : in STD_LOGIC;
    m_axi_gmem_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_RLAST : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    empty : in STD_LOGIC;
    done : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_axi_read_master;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_axi_read_master is
  signal ar_idle : STD_LOGIC;
  signal \^arvalid_r_reg_0\ : STD_LOGIC;
  signal final_burst_len : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \inst_ar_to_r_transaction_cntr_n_0_[0]\ : STD_LOGIC;
  signal inst_ar_transaction_cntr_n_8 : STD_LOGIC;
  signal \inst_r_transaction_cntr_n_0_[0]\ : STD_LOGIC;
  signal \inst_r_transaction_cntr_n_1_[0]\ : STD_LOGIC;
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
  signal read_done : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal start : STD_LOGIC;
  signal \NLW_num_transactions1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of num_transactions1_carry : label is 35;
  attribute ADDER_THRESHOLD of \num_transactions1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \num_transactions1_carry__1\ : label is 35;
begin
  arvalid_r_reg_0 <= \^arvalid_r_reg_0\;
\addr[0][63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => \^arvalid_r_reg_0\,
      I1 => m_axi_gmem_ARREADY,
      I2 => ap_start,
      I3 => ap_start_r,
      O => sel
    );
\addr_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][0]_0\,
      Q => m_axi_gmem_ARADDR(0),
      R => '0'
    );
\addr_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => O(1),
      Q => m_axi_gmem_ARADDR(10),
      R => '0'
    );
\addr_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => O(2),
      Q => m_axi_gmem_ARADDR(11),
      R => '0'
    );
\addr_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => O(3),
      Q => m_axi_gmem_ARADDR(12),
      R => '0'
    );
\addr_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => O(4),
      Q => m_axi_gmem_ARADDR(13),
      R => '0'
    );
\addr_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => O(5),
      Q => m_axi_gmem_ARADDR(14),
      R => '0'
    );
\addr_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => O(6),
      Q => m_axi_gmem_ARADDR(15),
      R => '0'
    );
\addr_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => O(7),
      Q => m_axi_gmem_ARADDR(16),
      R => '0'
    );
\addr_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][24]_0\(0),
      Q => m_axi_gmem_ARADDR(17),
      R => '0'
    );
\addr_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][24]_0\(1),
      Q => m_axi_gmem_ARADDR(18),
      R => '0'
    );
\addr_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][24]_0\(2),
      Q => m_axi_gmem_ARADDR(19),
      R => '0'
    );
\addr_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][1]_0\,
      Q => m_axi_gmem_ARADDR(1),
      R => '0'
    );
\addr_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][24]_0\(3),
      Q => m_axi_gmem_ARADDR(20),
      R => '0'
    );
\addr_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][24]_0\(4),
      Q => m_axi_gmem_ARADDR(21),
      R => '0'
    );
\addr_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][24]_0\(5),
      Q => m_axi_gmem_ARADDR(22),
      R => '0'
    );
\addr_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][24]_0\(6),
      Q => m_axi_gmem_ARADDR(23),
      R => '0'
    );
\addr_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][24]_0\(7),
      Q => m_axi_gmem_ARADDR(24),
      R => '0'
    );
\addr_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][32]_0\(0),
      Q => m_axi_gmem_ARADDR(25),
      R => '0'
    );
\addr_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][32]_0\(1),
      Q => m_axi_gmem_ARADDR(26),
      R => '0'
    );
\addr_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][32]_0\(2),
      Q => m_axi_gmem_ARADDR(27),
      R => '0'
    );
\addr_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][32]_0\(3),
      Q => m_axi_gmem_ARADDR(28),
      R => '0'
    );
\addr_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][32]_0\(4),
      Q => m_axi_gmem_ARADDR(29),
      R => '0'
    );
\addr_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][2]_0\,
      Q => m_axi_gmem_ARADDR(2),
      R => '0'
    );
\addr_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][32]_0\(5),
      Q => m_axi_gmem_ARADDR(30),
      R => '0'
    );
\addr_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][32]_0\(6),
      Q => m_axi_gmem_ARADDR(31),
      R => '0'
    );
\addr_reg[0][32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][32]_0\(7),
      Q => m_axi_gmem_ARADDR(32),
      R => '0'
    );
\addr_reg[0][33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][40]_0\(0),
      Q => m_axi_gmem_ARADDR(33),
      R => '0'
    );
\addr_reg[0][34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][40]_0\(1),
      Q => m_axi_gmem_ARADDR(34),
      R => '0'
    );
\addr_reg[0][35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][40]_0\(2),
      Q => m_axi_gmem_ARADDR(35),
      R => '0'
    );
\addr_reg[0][36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][40]_0\(3),
      Q => m_axi_gmem_ARADDR(36),
      R => '0'
    );
\addr_reg[0][37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][40]_0\(4),
      Q => m_axi_gmem_ARADDR(37),
      R => '0'
    );
\addr_reg[0][38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][40]_0\(5),
      Q => m_axi_gmem_ARADDR(38),
      R => '0'
    );
\addr_reg[0][39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][40]_0\(6),
      Q => m_axi_gmem_ARADDR(39),
      R => '0'
    );
\addr_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][3]_0\,
      Q => m_axi_gmem_ARADDR(3),
      R => '0'
    );
\addr_reg[0][40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][40]_0\(7),
      Q => m_axi_gmem_ARADDR(40),
      R => '0'
    );
\addr_reg[0][41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][48]_0\(0),
      Q => m_axi_gmem_ARADDR(41),
      R => '0'
    );
\addr_reg[0][42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][48]_0\(1),
      Q => m_axi_gmem_ARADDR(42),
      R => '0'
    );
\addr_reg[0][43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][48]_0\(2),
      Q => m_axi_gmem_ARADDR(43),
      R => '0'
    );
\addr_reg[0][44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][48]_0\(3),
      Q => m_axi_gmem_ARADDR(44),
      R => '0'
    );
\addr_reg[0][45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][48]_0\(4),
      Q => m_axi_gmem_ARADDR(45),
      R => '0'
    );
\addr_reg[0][46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][48]_0\(5),
      Q => m_axi_gmem_ARADDR(46),
      R => '0'
    );
\addr_reg[0][47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][48]_0\(6),
      Q => m_axi_gmem_ARADDR(47),
      R => '0'
    );
\addr_reg[0][48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][48]_0\(7),
      Q => m_axi_gmem_ARADDR(48),
      R => '0'
    );
\addr_reg[0][49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][56]_0\(0),
      Q => m_axi_gmem_ARADDR(49),
      R => '0'
    );
\addr_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][4]_0\,
      Q => m_axi_gmem_ARADDR(4),
      R => '0'
    );
\addr_reg[0][50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][56]_0\(1),
      Q => m_axi_gmem_ARADDR(50),
      R => '0'
    );
\addr_reg[0][51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][56]_0\(2),
      Q => m_axi_gmem_ARADDR(51),
      R => '0'
    );
\addr_reg[0][52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][56]_0\(3),
      Q => m_axi_gmem_ARADDR(52),
      R => '0'
    );
\addr_reg[0][53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][56]_0\(4),
      Q => m_axi_gmem_ARADDR(53),
      R => '0'
    );
\addr_reg[0][54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][56]_0\(5),
      Q => m_axi_gmem_ARADDR(54),
      R => '0'
    );
\addr_reg[0][55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][56]_0\(6),
      Q => m_axi_gmem_ARADDR(55),
      R => '0'
    );
\addr_reg[0][56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][56]_0\(7),
      Q => m_axi_gmem_ARADDR(56),
      R => '0'
    );
\addr_reg[0][57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][63]_0\(0),
      Q => m_axi_gmem_ARADDR(57),
      R => '0'
    );
\addr_reg[0][58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][63]_0\(1),
      Q => m_axi_gmem_ARADDR(58),
      R => '0'
    );
\addr_reg[0][59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][63]_0\(2),
      Q => m_axi_gmem_ARADDR(59),
      R => '0'
    );
\addr_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][5]_0\,
      Q => m_axi_gmem_ARADDR(5),
      R => '0'
    );
\addr_reg[0][60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][63]_0\(3),
      Q => m_axi_gmem_ARADDR(60),
      R => '0'
    );
\addr_reg[0][61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][63]_0\(4),
      Q => m_axi_gmem_ARADDR(61),
      R => '0'
    );
\addr_reg[0][62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][63]_0\(5),
      Q => m_axi_gmem_ARADDR(62),
      R => '0'
    );
\addr_reg[0][63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][63]_0\(6),
      Q => m_axi_gmem_ARADDR(63),
      R => '0'
    );
\addr_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][6]_0\,
      Q => m_axi_gmem_ARADDR(6),
      R => '0'
    );
\addr_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][7]_0\,
      Q => m_axi_gmem_ARADDR(7),
      R => '0'
    );
\addr_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => \addr_reg[0][8]_0\,
      Q => m_axi_gmem_ARADDR(8),
      R => '0'
    );
\addr_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sel,
      D => O(0),
      Q => m_axi_gmem_ARADDR(9),
      R => '0'
    );
ar_idle_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inst_ar_transaction_cntr_n_8,
      Q => ar_idle,
      S => areset
    );
arvalid_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \inst_ar_to_r_transaction_cntr_n_0_[0]\,
      Q => \^arvalid_r_reg_0\,
      R => areset
    );
done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => empty,
      I1 => done,
      I2 => read_done,
      O => \gen_fwft.empty_fwft_i_reg\
    );
\done_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \inst_r_transaction_cntr_n_1_[0]\,
      Q => read_done,
      R => '0'
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
\inst_ar_to_r_transaction_cntr[0]\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter__parameterized0\
     port map (
      ap_clk => ap_clk,
      ar_idle => ar_idle,
      areset => areset,
      \count_r_reg[1]_0\ => \^arvalid_r_reg_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\ => \inst_ar_to_r_transaction_cntr_n_0_[0]\,
      m_axi_gmem_ARREADY => m_axi_gmem_ARREADY,
      m_axi_gmem_RID(0) => m_axi_gmem_RID(0),
      m_axi_gmem_RLAST => m_axi_gmem_RLAST,
      m_axi_gmem_RVALID => m_axi_gmem_RVALID,
      prog_full => prog_full
    );
inst_ar_transaction_cntr: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter
     port map (
      Q(23 downto 0) => num_transactions(23 downto 0),
      ap_clk => ap_clk,
      ar_idle => ar_idle,
      areset => areset,
      is_zero_r_reg_0 => \inst_r_transaction_cntr_n_0_[0]\,
      is_zero_r_reg_1 => \^arvalid_r_reg_0\,
      m_axi_gmem_ARLEN(7 downto 0) => m_axi_gmem_ARLEN(7 downto 0),
      \m_axi_gmem_ARLEN[7]\(7 downto 0) => final_burst_len(7 downto 0),
      m_axi_gmem_ARREADY => m_axi_gmem_ARREADY,
      m_axi_gmem_ARREADY_0 => inst_ar_transaction_cntr_n_8,
      start => start
    );
\inst_r_transaction_cntr[0]\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_counter_0
     port map (
      Q(23 downto 0) => num_transactions(23 downto 0),
      ap_clk => ap_clk,
      areset => areset,
      is_zero_r_reg_0 => \inst_r_transaction_cntr_n_1_[0]\,
      m_axi_gmem_RID(0) => m_axi_gmem_RID(0),
      m_axi_gmem_RLAST => m_axi_gmem_RLAST,
      m_axi_gmem_RVALID => m_axi_gmem_RVALID,
      \num_transactions_reg[16]\ => \inst_r_transaction_cntr_n_0_[0]\,
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "16'b0000011100000111";
  attribute EN_AE : string;
  attribute EN_AE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1024;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 32768;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1024;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1019;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 252;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1019;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 254;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 32;
  attribute READ_MODE : integer;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "0707";
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 32;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal diff_pntr_pf_q : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \^empty\ : STD_LOGIC;
  signal empty_fwft_i0 : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0\ : STD_LOGIC;
  signal leaving_empty0 : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^prog_full\ : STD_LOGIC;
  signal prog_full_i217_in : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_rd_en_pf_q : STD_LOGIC;
  signal ram_wr_en_pf : STD_LOGIC;
  signal ram_wr_en_pf_q : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rdp_inst_n_0 : STD_LOGIC;
  signal rdp_inst_n_11 : STD_LOGIC;
  signal rdp_inst_n_12 : STD_LOGIC;
  signal rdp_inst_n_14 : STD_LOGIC;
  signal rdp_inst_n_15 : STD_LOGIC;
  signal rdp_inst_n_16 : STD_LOGIC;
  signal rdp_inst_n_17 : STD_LOGIC;
  signal rdp_inst_n_18 : STD_LOGIC;
  signal rdp_inst_n_19 : STD_LOGIC;
  signal rdp_inst_n_20 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_10 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rdpp1_inst_n_4 : STD_LOGIC;
  signal rdpp1_inst_n_5 : STD_LOGIC;
  signal rdpp1_inst_n_6 : STD_LOGIC;
  signal rdpp1_inst_n_7 : STD_LOGIC;
  signal rdpp1_inst_n_8 : STD_LOGIC;
  signal rdpp1_inst_n_9 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_2 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal wrpp1_inst_n_0 : STD_LOGIC;
  signal wrpp1_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_2 : STD_LOGIC;
  signal wrpp1_inst_n_3 : STD_LOGIC;
  signal wrpp1_inst_n_4 : STD_LOGIC;
  signal wrpp1_inst_n_5 : STD_LOGIC;
  signal wrpp1_inst_n_6 : STD_LOGIC;
  signal wrpp1_inst_n_7 : STD_LOGIC;
  signal wrpp1_inst_n_8 : STD_LOGIC;
  signal wrpp1_inst_n_9 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_1 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair11";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 31;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 1023;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 32768;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 1024;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair11";
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \<const0>\;
  full_n <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \^prog_full\;
  rd_data_count(10) <= \<const0>\;
  rd_data_count(9) <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(10) <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => xpm_fifo_rst_inst_n_1
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => xpm_fifo_rst_inst_n_1
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \^empty\,
      O => empty_fwft_i0
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => empty_fwft_i0,
      Q => \^empty\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_20,
      Q => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(10),
      Q => diff_pntr_pf_q(10),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(1),
      Q => diff_pntr_pf_q(1),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(2),
      Q => diff_pntr_pf_q(2),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(3),
      Q => diff_pntr_pf_q(3),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => diff_pntr_pf_q(4),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(5),
      Q => diff_pntr_pf_q(5),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(6),
      Q => diff_pntr_pf_q(6),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(7),
      Q => diff_pntr_pf_q(7),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(8),
      Q => diff_pntr_pf_q(8),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(9),
      Q => diff_pntr_pf_q(9),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => diff_pntr_pf_q(2),
      I1 => diff_pntr_pf_q(1),
      I2 => diff_pntr_pf_q(8),
      I3 => diff_pntr_pf_q(10),
      I4 => diff_pntr_pf_q(9),
      I5 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0\,
      O => prog_full_i217_in
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => diff_pntr_pf_q(7),
      I1 => diff_pntr_pf_q(6),
      I2 => diff_pntr_pf_q(3),
      I3 => diff_pntr_pf_q(4),
      I4 => diff_pntr_pf_q(5),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_2,
      Q => \^prog_full\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdpp1_inst_n_10,
      Q => ram_rd_en_pf_q,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_wr_en_pf,
      Q => ram_wr_en_pf_q,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(9 downto 0) => wr_pntr_ext(9 downto 0),
      addrb(9 downto 0) => rd_pntr_ext(9 downto 0),
      clka => wr_clk,
      clkb => '0',
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(31 downto 0) => din(31 downto 0),
      dinb(31 downto 0) => B"00000000000000000000000000000000",
      douta(31 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(31 downto 0),
      doutb(31 downto 0) => dout(31 downto 0),
      ena => '0',
      enb => rdpp1_inst_n_10,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => xpm_fifo_rst_inst_n_1,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => ram_wr_en_pf,
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
rdp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\
     port map (
      DI(0) => rdp_inst_n_0,
      Q(9 downto 0) => rd_pntr_ext(9 downto 0),
      S(1) => rdp_inst_n_11,
      S(0) => rdp_inst_n_12,
      clr_full => clr_full,
      \count_value_i_reg[0]_0\ => rdpp1_inst_n_10,
      \count_value_i_reg[0]_1\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[6]_0\(5) => rdp_inst_n_14,
      \count_value_i_reg[6]_0\(4) => rdp_inst_n_15,
      \count_value_i_reg[6]_0\(3) => rdp_inst_n_16,
      \count_value_i_reg[6]_0\(2) => rdp_inst_n_17,
      \count_value_i_reg[6]_0\(1) => rdp_inst_n_18,
      \count_value_i_reg[6]_0\(0) => rdp_inst_n_19,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ => rdp_inst_n_20,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\(9 downto 0) => wr_pntr_ext(9 downto 0),
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(9) => wrpp1_inst_n_0,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(8) => wrpp1_inst_n_1,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(7) => wrpp1_inst_n_2,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(6) => wrpp1_inst_n_3,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(5) => wrpp1_inst_n_4,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(4) => wrpp1_inst_n_5,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(3) => wrpp1_inst_n_6,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(2) => wrpp1_inst_n_7,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(1) => wrpp1_inst_n_8,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(0) => wrpp1_inst_n_9,
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_wr_en_pf => ram_wr_en_pf,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rdpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\
     port map (
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdpp1_inst_n_10,
      Q(9) => rdpp1_inst_n_0,
      Q(8) => rdpp1_inst_n_1,
      Q(7) => rdpp1_inst_n_2,
      Q(6) => rdpp1_inst_n_3,
      Q(5) => rdpp1_inst_n_4,
      Q(4) => rdpp1_inst_n_5,
      Q(3) => rdpp1_inst_n_6,
      Q(2) => rdpp1_inst_n_7,
      Q(1) => rdpp1_inst_n_8,
      Q(0) => rdpp1_inst_n_9,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[0]_1\(0) => xpm_fifo_rst_inst_n_1,
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rst_d1_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
     port map (
      Q(0) => xpm_fifo_rst_inst_n_1,
      clr_full => clr_full,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\ => rst_d1_inst_n_2,
      prog_full => \^prog_full\,
      prog_full_i217_in => prog_full_i217_in,
      ram_rd_en_pf_q => ram_rd_en_pf_q,
      ram_wr_en_pf_q => ram_wr_en_pf_q,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk
    );
wrp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_1\
     port map (
      Q(9 downto 0) => wr_pntr_ext(9 downto 0),
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \count_value_i_reg[9]_0\(0) => xpm_fifo_rst_inst_n_1,
      \gen_pntr_flags_cc.ram_empty_i_reg\ => rdpp1_inst_n_10,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(9) => rdpp1_inst_n_0,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(8) => rdpp1_inst_n_1,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(7) => rdpp1_inst_n_2,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(6) => rdpp1_inst_n_3,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(5) => rdpp1_inst_n_4,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(4) => rdpp1_inst_n_5,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(3) => rdpp1_inst_n_6,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(2) => rdpp1_inst_n_7,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(1) => rdpp1_inst_n_8,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(0) => rdpp1_inst_n_9,
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      ram_wr_en_pf => ram_wr_en_pf,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_2\
     port map (
      D(9 downto 0) => diff_pntr_pf_q0(10 downto 1),
      DI(0) => rdp_inst_n_0,
      Q(9) => wrpp1_inst_n_0,
      Q(8) => wrpp1_inst_n_1,
      Q(7) => wrpp1_inst_n_2,
      Q(6) => wrpp1_inst_n_3,
      Q(5) => wrpp1_inst_n_4,
      Q(4) => wrpp1_inst_n_5,
      Q(3) => wrpp1_inst_n_6,
      Q(2) => wrpp1_inst_n_7,
      Q(1) => wrpp1_inst_n_8,
      Q(0) => wrpp1_inst_n_9,
      S(1) => rdp_inst_n_11,
      S(0) => rdp_inst_n_12,
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\(7 downto 0) => rd_pntr_ext(7 downto 0),
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(5) => rdp_inst_n_14,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(4) => rdp_inst_n_15,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(3) => rdp_inst_n_16,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(2) => rdp_inst_n_17,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(1) => rdp_inst_n_18,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(0) => rdp_inst_n_19,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\ => rdpp1_inst_n_10,
      ram_wr_en_pf => ram_wr_en_pf,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
xpm_fifo_rst_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
     port map (
      Q(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[9]\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      ram_wr_en_pf => ram_wr_en_pf,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "no_ecc";
  attribute EN_ADV_FEATURE_SYNC : string;
  attribute EN_ADV_FEATURE_SYNC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "16'b0000011100000111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "auto";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 1;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 1024;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 1;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 254;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 11;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 32;
  attribute READ_MODE : string;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "fwft";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "0707";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 32;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 11;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "soft";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_n_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute CASCADE_HEIGHT of xpm_fifo_base_inst : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 1;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xpm_fifo_base_inst : label is "16'b0000011100000111";
  attribute EN_AE : string;
  attribute EN_AE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of xpm_fifo_base_inst : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xpm_fifo_base_inst : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of xpm_fifo_base_inst : label is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 1024;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 32768;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 1024;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b1";
  attribute KEEP_HIERARCHY of xpm_fifo_base_inst : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 1019;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 252;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 1019;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 10;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 254;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 11;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 11;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 10;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 32;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of xpm_fifo_base_inst : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute USE_ADV_FEATURES of xpm_fifo_base_inst : label is "0707";
  attribute VERSION : integer;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of xpm_fifo_base_inst : label is 1;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 32;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 11;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 11;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of xpm_fifo_base_inst : label is 10;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 10;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of xpm_fifo_base_inst : label is 5;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of xpm_fifo_base_inst : label is 3;
  attribute invalid : integer;
  attribute invalid of xpm_fifo_base_inst : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of xpm_fifo_base_inst : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of xpm_fifo_base_inst : label is 1;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  full <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  rd_data_count(10) <= \<const0>\;
  rd_data_count(9) <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(10) <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xpm_fifo_base_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
     port map (
      almost_empty => NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED,
      data_valid => NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED,
      dbiterr => NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED,
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      empty => empty,
      full => NLW_xpm_fifo_base_inst_full_UNCONNECTED,
      full_n => NLW_xpm_fifo_base_inst_full_n_UNCONNECTED,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_xpm_fifo_base_inst_overflow_UNCONNECTED,
      prog_empty => NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED,
      prog_full => prog_full,
      rd_clk => '0',
      rd_data_count(10 downto 0) => NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED(10 downto 0),
      rd_en => rd_en,
      rd_rst_busy => NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED,
      rst => rst,
      sbiterr => NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED,
      sleep => sleep,
      underflow => NLW_xpm_fifo_base_inst_underflow_UNCONNECTED,
      wr_ack => NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED,
      wr_clk => wr_clk,
      wr_data_count(10 downto 0) => NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED(10 downto 0),
      wr_en => wr_en,
      wr_rst_busy => NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_int is
  port (
    s_axi_control_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]\ : out STD_LOGIC;
    p0_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_control_AWREADY : out STD_LOGIC;
    FSM_sequential_rstate_reg : out STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    arvalid_r_reg : out STD_LOGIC;
    p0_TVALID : out STD_LOGIC;
    m_axi_gmem_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    m_axi_gmem_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p0_TREADY : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_gmem_ARREADY : in STD_LOGIC;
    m_axi_gmem_RVALID : in STD_LOGIC;
    m_axi_gmem_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_RLAST : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_int;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_int is
  signal ap_idle : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal ap_start_pulse : STD_LOGIC;
  signal ap_start_r : STD_LOGIC;
  signal areset : STD_LOGIC;
  signal ctrl_length : STD_LOGIC_VECTOR ( 30 downto 8 );
  signal ctrl_rd_fifo_prog_full : STD_LOGIC;
  signal done : STD_LOGIC;
  signal final_burst_len0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal inst_axi_read_master_n_73 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_100 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_101 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_102 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_103 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_104 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_105 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_106 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_107 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_108 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_109 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_110 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_111 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_112 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_113 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_114 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_115 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_116 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_117 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_118 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_119 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_120 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_121 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_122 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_123 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_124 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_125 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_126 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_28 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_30 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_31 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_32 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_33 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_34 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_35 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_36 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_37 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_38 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_40 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_41 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_42 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_43 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_44 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_45 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_46 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_47 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_48 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_49 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_50 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_51 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_52 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_53 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_54 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_55 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_56 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_57 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_58 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_59 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_60 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_61 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_62 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_63 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_72 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_73 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_74 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_75 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_76 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_77 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_78 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_79 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_80 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_81 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_82 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_83 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_84 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_85 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_86 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_87 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_88 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_89 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_90 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_91 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_92 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_93 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_94 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_95 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_96 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_97 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_98 : STD_LOGIC;
  signal inst_krnl_input_stage_control_s_axi_n_99 : STD_LOGIC;
  signal \^m_axi_gmem_araddr\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal rd_fifo_tvalid_n : STD_LOGIC;
  signal rd_tvalid : STD_LOGIC;
  signal \NLW_inst_rd_xpm_fifo_sync[0]_almost_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_inst_rd_xpm_fifo_sync[0]_almost_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_inst_rd_xpm_fifo_sync[0]_data_valid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_inst_rd_xpm_fifo_sync[0]_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_inst_rd_xpm_fifo_sync[0]_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_inst_rd_xpm_fifo_sync[0]_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_inst_rd_xpm_fifo_sync[0]_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_inst_rd_xpm_fifo_sync[0]_rd_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_inst_rd_xpm_fifo_sync[0]_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_inst_rd_xpm_fifo_sync[0]_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_inst_rd_xpm_fifo_sync[0]_wr_ack_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_inst_rd_xpm_fifo_sync[0]_wr_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_inst_rd_xpm_fifo_sync[0]_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_inst_rd_xpm_fifo_sync[0]_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \inst_rd_xpm_fifo_sync[0]\ : label is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \inst_rd_xpm_fifo_sync[0]\ : label is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \inst_rd_xpm_fifo_sync[0]\ : label is "no_ecc";
  attribute EN_ADV_FEATURE_SYNC : string;
  attribute EN_ADV_FEATURE_SYNC of \inst_rd_xpm_fifo_sync[0]\ : label is "16'b0000011100000111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \inst_rd_xpm_fifo_sync[0]\ : label is "auto";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \inst_rd_xpm_fifo_sync[0]\ : label is 1;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \inst_rd_xpm_fifo_sync[0]\ : label is 1024;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \inst_rd_xpm_fifo_sync[0]\ : label is 1;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \inst_rd_xpm_fifo_sync[0]\ : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \inst_rd_xpm_fifo_sync[0]\ : label is 254;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \inst_rd_xpm_fifo_sync[0]\ : label is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \inst_rd_xpm_fifo_sync[0]\ : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \inst_rd_xpm_fifo_sync[0]\ : label is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of \inst_rd_xpm_fifo_sync[0]\ : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of \inst_rd_xpm_fifo_sync[0]\ : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \inst_rd_xpm_fifo_sync[0]\ : label is 11;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \inst_rd_xpm_fifo_sync[0]\ : label is 32;
  attribute READ_MODE : string;
  attribute READ_MODE of \inst_rd_xpm_fifo_sync[0]\ : label is "fwft";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \inst_rd_xpm_fifo_sync[0]\ : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \inst_rd_xpm_fifo_sync[0]\ : label is "0707";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \inst_rd_xpm_fifo_sync[0]\ : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \inst_rd_xpm_fifo_sync[0]\ : label is 32;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \inst_rd_xpm_fifo_sync[0]\ : label is 11;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \inst_rd_xpm_fifo_sync[0]\ : label is "TRUE";
begin
  m_axi_gmem_ARADDR(63 downto 0) <= \^m_axi_gmem_araddr\(63 downto 0);
ap_idle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inst_krnl_input_stage_control_s_axi_n_28,
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
      O => p_0_in
    );
areset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => p_0_in,
      Q => areset,
      R => '0'
    );
done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inst_axi_read_master_n_73,
      Q => done,
      R => areset
    );
inst_axi_read_master: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_axi_read_master
     port map (
      D(7 downto 0) => final_burst_len0(7 downto 0),
      O(7) => inst_krnl_input_stage_control_s_axi_n_72,
      O(6) => inst_krnl_input_stage_control_s_axi_n_73,
      O(5) => inst_krnl_input_stage_control_s_axi_n_74,
      O(4) => inst_krnl_input_stage_control_s_axi_n_75,
      O(3) => inst_krnl_input_stage_control_s_axi_n_76,
      O(2) => inst_krnl_input_stage_control_s_axi_n_77,
      O(1) => inst_krnl_input_stage_control_s_axi_n_78,
      O(0) => inst_krnl_input_stage_control_s_axi_n_79,
      Q(22 downto 0) => ctrl_length(30 downto 8),
      S(7) => inst_krnl_input_stage_control_s_axi_n_56,
      S(6) => inst_krnl_input_stage_control_s_axi_n_57,
      S(5) => inst_krnl_input_stage_control_s_axi_n_58,
      S(4) => inst_krnl_input_stage_control_s_axi_n_59,
      S(3) => inst_krnl_input_stage_control_s_axi_n_60,
      S(2) => inst_krnl_input_stage_control_s_axi_n_61,
      S(1) => inst_krnl_input_stage_control_s_axi_n_62,
      S(0) => inst_krnl_input_stage_control_s_axi_n_63,
      \addr_reg[0][0]_0\ => inst_krnl_input_stage_control_s_axi_n_38,
      \addr_reg[0][1]_0\ => inst_krnl_input_stage_control_s_axi_n_37,
      \addr_reg[0][24]_0\(7) => inst_krnl_input_stage_control_s_axi_n_80,
      \addr_reg[0][24]_0\(6) => inst_krnl_input_stage_control_s_axi_n_81,
      \addr_reg[0][24]_0\(5) => inst_krnl_input_stage_control_s_axi_n_82,
      \addr_reg[0][24]_0\(4) => inst_krnl_input_stage_control_s_axi_n_83,
      \addr_reg[0][24]_0\(3) => inst_krnl_input_stage_control_s_axi_n_84,
      \addr_reg[0][24]_0\(2) => inst_krnl_input_stage_control_s_axi_n_85,
      \addr_reg[0][24]_0\(1) => inst_krnl_input_stage_control_s_axi_n_86,
      \addr_reg[0][24]_0\(0) => inst_krnl_input_stage_control_s_axi_n_87,
      \addr_reg[0][2]_0\ => inst_krnl_input_stage_control_s_axi_n_36,
      \addr_reg[0][32]_0\(7) => inst_krnl_input_stage_control_s_axi_n_88,
      \addr_reg[0][32]_0\(6) => inst_krnl_input_stage_control_s_axi_n_89,
      \addr_reg[0][32]_0\(5) => inst_krnl_input_stage_control_s_axi_n_90,
      \addr_reg[0][32]_0\(4) => inst_krnl_input_stage_control_s_axi_n_91,
      \addr_reg[0][32]_0\(3) => inst_krnl_input_stage_control_s_axi_n_92,
      \addr_reg[0][32]_0\(2) => inst_krnl_input_stage_control_s_axi_n_93,
      \addr_reg[0][32]_0\(1) => inst_krnl_input_stage_control_s_axi_n_94,
      \addr_reg[0][32]_0\(0) => inst_krnl_input_stage_control_s_axi_n_95,
      \addr_reg[0][3]_0\ => inst_krnl_input_stage_control_s_axi_n_35,
      \addr_reg[0][40]_0\(7) => inst_krnl_input_stage_control_s_axi_n_96,
      \addr_reg[0][40]_0\(6) => inst_krnl_input_stage_control_s_axi_n_97,
      \addr_reg[0][40]_0\(5) => inst_krnl_input_stage_control_s_axi_n_98,
      \addr_reg[0][40]_0\(4) => inst_krnl_input_stage_control_s_axi_n_99,
      \addr_reg[0][40]_0\(3) => inst_krnl_input_stage_control_s_axi_n_100,
      \addr_reg[0][40]_0\(2) => inst_krnl_input_stage_control_s_axi_n_101,
      \addr_reg[0][40]_0\(1) => inst_krnl_input_stage_control_s_axi_n_102,
      \addr_reg[0][40]_0\(0) => inst_krnl_input_stage_control_s_axi_n_103,
      \addr_reg[0][48]_0\(7) => inst_krnl_input_stage_control_s_axi_n_104,
      \addr_reg[0][48]_0\(6) => inst_krnl_input_stage_control_s_axi_n_105,
      \addr_reg[0][48]_0\(5) => inst_krnl_input_stage_control_s_axi_n_106,
      \addr_reg[0][48]_0\(4) => inst_krnl_input_stage_control_s_axi_n_107,
      \addr_reg[0][48]_0\(3) => inst_krnl_input_stage_control_s_axi_n_108,
      \addr_reg[0][48]_0\(2) => inst_krnl_input_stage_control_s_axi_n_109,
      \addr_reg[0][48]_0\(1) => inst_krnl_input_stage_control_s_axi_n_110,
      \addr_reg[0][48]_0\(0) => inst_krnl_input_stage_control_s_axi_n_111,
      \addr_reg[0][4]_0\ => inst_krnl_input_stage_control_s_axi_n_34,
      \addr_reg[0][56]_0\(7) => inst_krnl_input_stage_control_s_axi_n_112,
      \addr_reg[0][56]_0\(6) => inst_krnl_input_stage_control_s_axi_n_113,
      \addr_reg[0][56]_0\(5) => inst_krnl_input_stage_control_s_axi_n_114,
      \addr_reg[0][56]_0\(4) => inst_krnl_input_stage_control_s_axi_n_115,
      \addr_reg[0][56]_0\(3) => inst_krnl_input_stage_control_s_axi_n_116,
      \addr_reg[0][56]_0\(2) => inst_krnl_input_stage_control_s_axi_n_117,
      \addr_reg[0][56]_0\(1) => inst_krnl_input_stage_control_s_axi_n_118,
      \addr_reg[0][56]_0\(0) => inst_krnl_input_stage_control_s_axi_n_119,
      \addr_reg[0][5]_0\ => inst_krnl_input_stage_control_s_axi_n_33,
      \addr_reg[0][63]_0\(6) => inst_krnl_input_stage_control_s_axi_n_120,
      \addr_reg[0][63]_0\(5) => inst_krnl_input_stage_control_s_axi_n_121,
      \addr_reg[0][63]_0\(4) => inst_krnl_input_stage_control_s_axi_n_122,
      \addr_reg[0][63]_0\(3) => inst_krnl_input_stage_control_s_axi_n_123,
      \addr_reg[0][63]_0\(2) => inst_krnl_input_stage_control_s_axi_n_124,
      \addr_reg[0][63]_0\(1) => inst_krnl_input_stage_control_s_axi_n_125,
      \addr_reg[0][63]_0\(0) => inst_krnl_input_stage_control_s_axi_n_126,
      \addr_reg[0][6]_0\ => inst_krnl_input_stage_control_s_axi_n_32,
      \addr_reg[0][7]_0\ => inst_krnl_input_stage_control_s_axi_n_31,
      \addr_reg[0][8]_0\ => inst_krnl_input_stage_control_s_axi_n_30,
      ap_clk => ap_clk,
      ap_start => ap_start,
      ap_start_pulse => ap_start_pulse,
      ap_start_r => ap_start_r,
      areset => areset,
      arvalid_r_reg_0 => arvalid_r_reg,
      done => done,
      empty => rd_fifo_tvalid_n,
      \gen_fwft.empty_fwft_i_reg\ => inst_axi_read_master_n_73,
      m_axi_gmem_ARADDR(63 downto 0) => \^m_axi_gmem_araddr\(63 downto 0),
      m_axi_gmem_ARLEN(7 downto 0) => m_axi_gmem_ARLEN(7 downto 0),
      m_axi_gmem_ARREADY => m_axi_gmem_ARREADY,
      m_axi_gmem_RID(0) => m_axi_gmem_RID(0),
      m_axi_gmem_RLAST => m_axi_gmem_RLAST,
      m_axi_gmem_RVALID => m_axi_gmem_RVALID,
      \num_transactions_reg[15]_0\(7) => inst_krnl_input_stage_control_s_axi_n_48,
      \num_transactions_reg[15]_0\(6) => inst_krnl_input_stage_control_s_axi_n_49,
      \num_transactions_reg[15]_0\(5) => inst_krnl_input_stage_control_s_axi_n_50,
      \num_transactions_reg[15]_0\(4) => inst_krnl_input_stage_control_s_axi_n_51,
      \num_transactions_reg[15]_0\(3) => inst_krnl_input_stage_control_s_axi_n_52,
      \num_transactions_reg[15]_0\(2) => inst_krnl_input_stage_control_s_axi_n_53,
      \num_transactions_reg[15]_0\(1) => inst_krnl_input_stage_control_s_axi_n_54,
      \num_transactions_reg[15]_0\(0) => inst_krnl_input_stage_control_s_axi_n_55,
      \num_transactions_reg[23]_0\(7) => inst_krnl_input_stage_control_s_axi_n_40,
      \num_transactions_reg[23]_0\(6) => inst_krnl_input_stage_control_s_axi_n_41,
      \num_transactions_reg[23]_0\(5) => inst_krnl_input_stage_control_s_axi_n_42,
      \num_transactions_reg[23]_0\(4) => inst_krnl_input_stage_control_s_axi_n_43,
      \num_transactions_reg[23]_0\(3) => inst_krnl_input_stage_control_s_axi_n_44,
      \num_transactions_reg[23]_0\(2) => inst_krnl_input_stage_control_s_axi_n_45,
      \num_transactions_reg[23]_0\(1) => inst_krnl_input_stage_control_s_axi_n_46,
      \num_transactions_reg[23]_0\(0) => inst_krnl_input_stage_control_s_axi_n_47,
      prog_full => ctrl_rd_fifo_prog_full
    );
inst_krnl_input_stage_control_s_axi: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_control_s_axi
     port map (
      D(7 downto 0) => final_burst_len0(7 downto 0),
      \FSM_onehot_wstate_reg[1]_0\ => \FSM_onehot_wstate_reg[1]\,
      FSM_sequential_rstate_reg_0 => FSM_sequential_rstate_reg,
      O(7) => inst_krnl_input_stage_control_s_axi_n_72,
      O(6) => inst_krnl_input_stage_control_s_axi_n_73,
      O(5) => inst_krnl_input_stage_control_s_axi_n_74,
      O(4) => inst_krnl_input_stage_control_s_axi_n_75,
      O(3) => inst_krnl_input_stage_control_s_axi_n_76,
      O(2) => inst_krnl_input_stage_control_s_axi_n_77,
      O(1) => inst_krnl_input_stage_control_s_axi_n_78,
      O(0) => inst_krnl_input_stage_control_s_axi_n_79,
      Q(22 downto 0) => ctrl_length(30 downto 8),
      S(7) => inst_krnl_input_stage_control_s_axi_n_56,
      S(6) => inst_krnl_input_stage_control_s_axi_n_57,
      S(5) => inst_krnl_input_stage_control_s_axi_n_58,
      S(4) => inst_krnl_input_stage_control_s_axi_n_59,
      S(3) => inst_krnl_input_stage_control_s_axi_n_60,
      S(2) => inst_krnl_input_stage_control_s_axi_n_61,
      S(1) => inst_krnl_input_stage_control_s_axi_n_62,
      S(0) => inst_krnl_input_stage_control_s_axi_n_63,
      \addr_reg[0][0]\ => inst_krnl_input_stage_control_s_axi_n_38,
      \addr_reg[0][1]\ => inst_krnl_input_stage_control_s_axi_n_37,
      \addr_reg[0][24]\(7) => inst_krnl_input_stage_control_s_axi_n_80,
      \addr_reg[0][24]\(6) => inst_krnl_input_stage_control_s_axi_n_81,
      \addr_reg[0][24]\(5) => inst_krnl_input_stage_control_s_axi_n_82,
      \addr_reg[0][24]\(4) => inst_krnl_input_stage_control_s_axi_n_83,
      \addr_reg[0][24]\(3) => inst_krnl_input_stage_control_s_axi_n_84,
      \addr_reg[0][24]\(2) => inst_krnl_input_stage_control_s_axi_n_85,
      \addr_reg[0][24]\(1) => inst_krnl_input_stage_control_s_axi_n_86,
      \addr_reg[0][24]\(0) => inst_krnl_input_stage_control_s_axi_n_87,
      \addr_reg[0][2]\ => inst_krnl_input_stage_control_s_axi_n_36,
      \addr_reg[0][32]\(7) => inst_krnl_input_stage_control_s_axi_n_88,
      \addr_reg[0][32]\(6) => inst_krnl_input_stage_control_s_axi_n_89,
      \addr_reg[0][32]\(5) => inst_krnl_input_stage_control_s_axi_n_90,
      \addr_reg[0][32]\(4) => inst_krnl_input_stage_control_s_axi_n_91,
      \addr_reg[0][32]\(3) => inst_krnl_input_stage_control_s_axi_n_92,
      \addr_reg[0][32]\(2) => inst_krnl_input_stage_control_s_axi_n_93,
      \addr_reg[0][32]\(1) => inst_krnl_input_stage_control_s_axi_n_94,
      \addr_reg[0][32]\(0) => inst_krnl_input_stage_control_s_axi_n_95,
      \addr_reg[0][3]\ => inst_krnl_input_stage_control_s_axi_n_35,
      \addr_reg[0][40]\(7) => inst_krnl_input_stage_control_s_axi_n_96,
      \addr_reg[0][40]\(6) => inst_krnl_input_stage_control_s_axi_n_97,
      \addr_reg[0][40]\(5) => inst_krnl_input_stage_control_s_axi_n_98,
      \addr_reg[0][40]\(4) => inst_krnl_input_stage_control_s_axi_n_99,
      \addr_reg[0][40]\(3) => inst_krnl_input_stage_control_s_axi_n_100,
      \addr_reg[0][40]\(2) => inst_krnl_input_stage_control_s_axi_n_101,
      \addr_reg[0][40]\(1) => inst_krnl_input_stage_control_s_axi_n_102,
      \addr_reg[0][40]\(0) => inst_krnl_input_stage_control_s_axi_n_103,
      \addr_reg[0][48]\(7) => inst_krnl_input_stage_control_s_axi_n_104,
      \addr_reg[0][48]\(6) => inst_krnl_input_stage_control_s_axi_n_105,
      \addr_reg[0][48]\(5) => inst_krnl_input_stage_control_s_axi_n_106,
      \addr_reg[0][48]\(4) => inst_krnl_input_stage_control_s_axi_n_107,
      \addr_reg[0][48]\(3) => inst_krnl_input_stage_control_s_axi_n_108,
      \addr_reg[0][48]\(2) => inst_krnl_input_stage_control_s_axi_n_109,
      \addr_reg[0][48]\(1) => inst_krnl_input_stage_control_s_axi_n_110,
      \addr_reg[0][48]\(0) => inst_krnl_input_stage_control_s_axi_n_111,
      \addr_reg[0][4]\ => inst_krnl_input_stage_control_s_axi_n_34,
      \addr_reg[0][56]\(7) => inst_krnl_input_stage_control_s_axi_n_112,
      \addr_reg[0][56]\(6) => inst_krnl_input_stage_control_s_axi_n_113,
      \addr_reg[0][56]\(5) => inst_krnl_input_stage_control_s_axi_n_114,
      \addr_reg[0][56]\(4) => inst_krnl_input_stage_control_s_axi_n_115,
      \addr_reg[0][56]\(3) => inst_krnl_input_stage_control_s_axi_n_116,
      \addr_reg[0][56]\(2) => inst_krnl_input_stage_control_s_axi_n_117,
      \addr_reg[0][56]\(1) => inst_krnl_input_stage_control_s_axi_n_118,
      \addr_reg[0][56]\(0) => inst_krnl_input_stage_control_s_axi_n_119,
      \addr_reg[0][5]\ => inst_krnl_input_stage_control_s_axi_n_33,
      \addr_reg[0][63]\(6) => inst_krnl_input_stage_control_s_axi_n_120,
      \addr_reg[0][63]\(5) => inst_krnl_input_stage_control_s_axi_n_121,
      \addr_reg[0][63]\(4) => inst_krnl_input_stage_control_s_axi_n_122,
      \addr_reg[0][63]\(3) => inst_krnl_input_stage_control_s_axi_n_123,
      \addr_reg[0][63]\(2) => inst_krnl_input_stage_control_s_axi_n_124,
      \addr_reg[0][63]\(1) => inst_krnl_input_stage_control_s_axi_n_125,
      \addr_reg[0][63]\(0) => inst_krnl_input_stage_control_s_axi_n_126,
      \addr_reg[0][6]\ => inst_krnl_input_stage_control_s_axi_n_32,
      \addr_reg[0][7]\ => inst_krnl_input_stage_control_s_axi_n_31,
      \addr_reg[0][8]\ => inst_krnl_input_stage_control_s_axi_n_30,
      ap_clk => ap_clk,
      ap_idle => ap_idle,
      ap_start => ap_start,
      ap_start_pulse => ap_start_pulse,
      ap_start_r => ap_start_r,
      areset => areset,
      done => done,
      done_reg => inst_krnl_input_stage_control_s_axi_n_28,
      empty => rd_fifo_tvalid_n,
      \int_size_reg[23]_0\(7) => inst_krnl_input_stage_control_s_axi_n_48,
      \int_size_reg[23]_0\(6) => inst_krnl_input_stage_control_s_axi_n_49,
      \int_size_reg[23]_0\(5) => inst_krnl_input_stage_control_s_axi_n_50,
      \int_size_reg[23]_0\(4) => inst_krnl_input_stage_control_s_axi_n_51,
      \int_size_reg[23]_0\(3) => inst_krnl_input_stage_control_s_axi_n_52,
      \int_size_reg[23]_0\(2) => inst_krnl_input_stage_control_s_axi_n_53,
      \int_size_reg[23]_0\(1) => inst_krnl_input_stage_control_s_axi_n_54,
      \int_size_reg[23]_0\(0) => inst_krnl_input_stage_control_s_axi_n_55,
      \int_size_reg[31]_0\(7) => inst_krnl_input_stage_control_s_axi_n_40,
      \int_size_reg[31]_0\(6) => inst_krnl_input_stage_control_s_axi_n_41,
      \int_size_reg[31]_0\(5) => inst_krnl_input_stage_control_s_axi_n_42,
      \int_size_reg[31]_0\(4) => inst_krnl_input_stage_control_s_axi_n_43,
      \int_size_reg[31]_0\(3) => inst_krnl_input_stage_control_s_axi_n_44,
      \int_size_reg[31]_0\(2) => inst_krnl_input_stage_control_s_axi_n_45,
      \int_size_reg[31]_0\(1) => inst_krnl_input_stage_control_s_axi_n_46,
      \int_size_reg[31]_0\(0) => inst_krnl_input_stage_control_s_axi_n_47,
      m_axi_gmem_ARADDR(63 downto 0) => \^m_axi_gmem_araddr\(63 downto 0),
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
\inst_rd_xpm_fifo_sync[0]\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync
     port map (
      almost_empty => \NLW_inst_rd_xpm_fifo_sync[0]_almost_empty_UNCONNECTED\,
      almost_full => \NLW_inst_rd_xpm_fifo_sync[0]_almost_full_UNCONNECTED\,
      data_valid => \NLW_inst_rd_xpm_fifo_sync[0]_data_valid_UNCONNECTED\,
      dbiterr => \NLW_inst_rd_xpm_fifo_sync[0]_dbiterr_UNCONNECTED\,
      din(31 downto 0) => m_axi_gmem_RDATA(31 downto 0),
      dout(31 downto 0) => p0_TDATA(31 downto 0),
      empty => rd_fifo_tvalid_n,
      full => \NLW_inst_rd_xpm_fifo_sync[0]_full_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => \NLW_inst_rd_xpm_fifo_sync[0]_overflow_UNCONNECTED\,
      prog_empty => \NLW_inst_rd_xpm_fifo_sync[0]_prog_empty_UNCONNECTED\,
      prog_full => ctrl_rd_fifo_prog_full,
      rd_data_count(10 downto 0) => \NLW_inst_rd_xpm_fifo_sync[0]_rd_data_count_UNCONNECTED\(10 downto 0),
      rd_en => p0_TREADY,
      rd_rst_busy => \NLW_inst_rd_xpm_fifo_sync[0]_rd_rst_busy_UNCONNECTED\,
      rst => areset,
      sbiterr => \NLW_inst_rd_xpm_fifo_sync[0]_sbiterr_UNCONNECTED\,
      sleep => '0',
      underflow => \NLW_inst_rd_xpm_fifo_sync[0]_underflow_UNCONNECTED\,
      wr_ack => \NLW_inst_rd_xpm_fifo_sync[0]_wr_ack_UNCONNECTED\,
      wr_clk => ap_clk,
      wr_data_count(10 downto 0) => \NLW_inst_rd_xpm_fifo_sync[0]_wr_data_count_UNCONNECTED\(10 downto 0),
      wr_en => rd_tvalid,
      wr_rst_busy => \NLW_inst_rd_xpm_fifo_sync[0]_wr_rst_busy_UNCONNECTED\
    );
\inst_rd_xpm_fifo_sync[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_gmem_RVALID,
      I1 => m_axi_gmem_RID(0),
      O => rd_tvalid
    );
p0_TVALID_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_fifo_tvalid_n,
      O => p0_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl is
  port (
    s_axi_control_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]\ : out STD_LOGIC;
    p0_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_control_AWREADY : out STD_LOGIC;
    FSM_sequential_rstate_reg : out STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    arvalid_r_reg : out STD_LOGIC;
    p0_TVALID : out STD_LOGIC;
    m_axi_gmem_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    m_axi_gmem_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p0_TREADY : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_gmem_ARREADY : in STD_LOGIC;
    m_axi_gmem_RVALID : in STD_LOGIC;
    m_axi_gmem_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_RLAST : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl is
begin
inst_krnl_input_stage_rtl_int: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl_int
     port map (
      \FSM_onehot_wstate_reg[1]\ => \FSM_onehot_wstate_reg[1]\,
      FSM_sequential_rstate_reg => FSM_sequential_rstate_reg,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      arvalid_r_reg => arvalid_r_reg,
      m_axi_gmem_ARADDR(63 downto 0) => m_axi_gmem_ARADDR(63 downto 0),
      m_axi_gmem_ARLEN(7 downto 0) => m_axi_gmem_ARLEN(7 downto 0),
      m_axi_gmem_ARREADY => m_axi_gmem_ARREADY,
      m_axi_gmem_RDATA(31 downto 0) => m_axi_gmem_RDATA(31 downto 0),
      m_axi_gmem_RID(0) => m_axi_gmem_RID(0),
      m_axi_gmem_RLAST => m_axi_gmem_RLAST,
      m_axi_gmem_RVALID => m_axi_gmem_RVALID,
      p0_TDATA(31 downto 0) => p0_TDATA(31 downto 0),
      p0_TREADY => p0_TREADY,
      p0_TVALID => p0_TVALID,
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
    p0_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    p0_TVALID : out STD_LOGIC;
    p0_TREADY : in STD_LOGIC;
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
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cl_k1_0,krnl_input_stage_rtl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "krnl_input_stage_rtl,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst_n, ASSOCIATED_BUSIF m_axi_gmem:s_axi_control:p0, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, INSERT_VIP 0";
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
  attribute X_INTERFACE_INFO of p0_TREADY : signal is "xilinx.com:interface:axis:1.0 p0 TREADY";
  attribute X_INTERFACE_PARAMETER of p0_TREADY : signal is "XIL_INTERFACENAME p0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of p0_TVALID : signal is "xilinx.com:interface:axis:1.0 p0 TVALID";
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
  attribute X_INTERFACE_INFO of p0_TDATA : signal is "xilinx.com:interface:axis:1.0 p0 TDATA";
  attribute X_INTERFACE_INFO of s_axi_control_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR";
  attribute X_INTERFACE_INFO of s_axi_control_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR";
  attribute X_INTERFACE_INFO of s_axi_control_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BRESP";
  attribute X_INTERFACE_PARAMETER of s_axi_control_BRESP : signal is "XIL_INTERFACENAME s_axi_control, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_control_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RDATA";
  attribute X_INTERFACE_INFO of s_axi_control_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RRESP";
  attribute X_INTERFACE_INFO of s_axi_control_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WDATA";
  attribute X_INTERFACE_INFO of s_axi_control_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB";
begin
  m_axi_gmem_ARBURST(1) <= \<const0>\;
  m_axi_gmem_ARBURST(0) <= \<const1>\;
  m_axi_gmem_ARCACHE(3) <= \<const0>\;
  m_axi_gmem_ARCACHE(2) <= \<const0>\;
  m_axi_gmem_ARCACHE(1) <= \<const1>\;
  m_axi_gmem_ARCACHE(0) <= \<const1>\;
  m_axi_gmem_ARID(0) <= \<const0>\;
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
  m_axi_gmem_ARSIZE(1) <= \<const1>\;
  m_axi_gmem_ARSIZE(0) <= \<const0>\;
  m_axi_gmem_AWADDR(63) <= \<const0>\;
  m_axi_gmem_AWADDR(62) <= \<const0>\;
  m_axi_gmem_AWADDR(61) <= \<const0>\;
  m_axi_gmem_AWADDR(60) <= \<const0>\;
  m_axi_gmem_AWADDR(59) <= \<const0>\;
  m_axi_gmem_AWADDR(58) <= \<const0>\;
  m_axi_gmem_AWADDR(57) <= \<const0>\;
  m_axi_gmem_AWADDR(56) <= \<const0>\;
  m_axi_gmem_AWADDR(55) <= \<const0>\;
  m_axi_gmem_AWADDR(54) <= \<const0>\;
  m_axi_gmem_AWADDR(53) <= \<const0>\;
  m_axi_gmem_AWADDR(52) <= \<const0>\;
  m_axi_gmem_AWADDR(51) <= \<const0>\;
  m_axi_gmem_AWADDR(50) <= \<const0>\;
  m_axi_gmem_AWADDR(49) <= \<const0>\;
  m_axi_gmem_AWADDR(48) <= \<const0>\;
  m_axi_gmem_AWADDR(47) <= \<const0>\;
  m_axi_gmem_AWADDR(46) <= \<const0>\;
  m_axi_gmem_AWADDR(45) <= \<const0>\;
  m_axi_gmem_AWADDR(44) <= \<const0>\;
  m_axi_gmem_AWADDR(43) <= \<const0>\;
  m_axi_gmem_AWADDR(42) <= \<const0>\;
  m_axi_gmem_AWADDR(41) <= \<const0>\;
  m_axi_gmem_AWADDR(40) <= \<const0>\;
  m_axi_gmem_AWADDR(39) <= \<const0>\;
  m_axi_gmem_AWADDR(38) <= \<const0>\;
  m_axi_gmem_AWADDR(37) <= \<const0>\;
  m_axi_gmem_AWADDR(36) <= \<const0>\;
  m_axi_gmem_AWADDR(35) <= \<const0>\;
  m_axi_gmem_AWADDR(34) <= \<const0>\;
  m_axi_gmem_AWADDR(33) <= \<const0>\;
  m_axi_gmem_AWADDR(32) <= \<const0>\;
  m_axi_gmem_AWADDR(31) <= \<const0>\;
  m_axi_gmem_AWADDR(30) <= \<const0>\;
  m_axi_gmem_AWADDR(29) <= \<const0>\;
  m_axi_gmem_AWADDR(28) <= \<const0>\;
  m_axi_gmem_AWADDR(27) <= \<const0>\;
  m_axi_gmem_AWADDR(26) <= \<const0>\;
  m_axi_gmem_AWADDR(25) <= \<const0>\;
  m_axi_gmem_AWADDR(24) <= \<const0>\;
  m_axi_gmem_AWADDR(23) <= \<const0>\;
  m_axi_gmem_AWADDR(22) <= \<const0>\;
  m_axi_gmem_AWADDR(21) <= \<const0>\;
  m_axi_gmem_AWADDR(20) <= \<const0>\;
  m_axi_gmem_AWADDR(19) <= \<const0>\;
  m_axi_gmem_AWADDR(18) <= \<const0>\;
  m_axi_gmem_AWADDR(17) <= \<const0>\;
  m_axi_gmem_AWADDR(16) <= \<const0>\;
  m_axi_gmem_AWADDR(15) <= \<const0>\;
  m_axi_gmem_AWADDR(14) <= \<const0>\;
  m_axi_gmem_AWADDR(13) <= \<const0>\;
  m_axi_gmem_AWADDR(12) <= \<const0>\;
  m_axi_gmem_AWADDR(11) <= \<const0>\;
  m_axi_gmem_AWADDR(10) <= \<const0>\;
  m_axi_gmem_AWADDR(9) <= \<const0>\;
  m_axi_gmem_AWADDR(8) <= \<const0>\;
  m_axi_gmem_AWADDR(7) <= \<const0>\;
  m_axi_gmem_AWADDR(6) <= \<const0>\;
  m_axi_gmem_AWADDR(5) <= \<const0>\;
  m_axi_gmem_AWADDR(4) <= \<const0>\;
  m_axi_gmem_AWADDR(3) <= \<const0>\;
  m_axi_gmem_AWADDR(2) <= \<const0>\;
  m_axi_gmem_AWADDR(1) <= \<const0>\;
  m_axi_gmem_AWADDR(0) <= \<const0>\;
  m_axi_gmem_AWBURST(1) <= \<const0>\;
  m_axi_gmem_AWBURST(0) <= \<const1>\;
  m_axi_gmem_AWCACHE(3) <= \<const0>\;
  m_axi_gmem_AWCACHE(2) <= \<const0>\;
  m_axi_gmem_AWCACHE(1) <= \<const1>\;
  m_axi_gmem_AWCACHE(0) <= \<const1>\;
  m_axi_gmem_AWID(0) <= \<const0>\;
  m_axi_gmem_AWLEN(7) <= \<const0>\;
  m_axi_gmem_AWLEN(6) <= \<const0>\;
  m_axi_gmem_AWLEN(5) <= \<const0>\;
  m_axi_gmem_AWLEN(4) <= \<const0>\;
  m_axi_gmem_AWLEN(3) <= \<const0>\;
  m_axi_gmem_AWLEN(2) <= \<const0>\;
  m_axi_gmem_AWLEN(1) <= \<const0>\;
  m_axi_gmem_AWLEN(0) <= \<const0>\;
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
  m_axi_gmem_AWSIZE(1) <= \<const0>\;
  m_axi_gmem_AWSIZE(0) <= \<const0>\;
  m_axi_gmem_AWVALID <= \<const0>\;
  m_axi_gmem_BREADY <= \<const0>\;
  m_axi_gmem_RREADY <= \<const1>\;
  m_axi_gmem_WDATA(31) <= \<const0>\;
  m_axi_gmem_WDATA(30) <= \<const0>\;
  m_axi_gmem_WDATA(29) <= \<const0>\;
  m_axi_gmem_WDATA(28) <= \<const0>\;
  m_axi_gmem_WDATA(27) <= \<const0>\;
  m_axi_gmem_WDATA(26) <= \<const0>\;
  m_axi_gmem_WDATA(25) <= \<const0>\;
  m_axi_gmem_WDATA(24) <= \<const0>\;
  m_axi_gmem_WDATA(23) <= \<const0>\;
  m_axi_gmem_WDATA(22) <= \<const0>\;
  m_axi_gmem_WDATA(21) <= \<const0>\;
  m_axi_gmem_WDATA(20) <= \<const0>\;
  m_axi_gmem_WDATA(19) <= \<const0>\;
  m_axi_gmem_WDATA(18) <= \<const0>\;
  m_axi_gmem_WDATA(17) <= \<const0>\;
  m_axi_gmem_WDATA(16) <= \<const0>\;
  m_axi_gmem_WDATA(15) <= \<const0>\;
  m_axi_gmem_WDATA(14) <= \<const0>\;
  m_axi_gmem_WDATA(13) <= \<const0>\;
  m_axi_gmem_WDATA(12) <= \<const0>\;
  m_axi_gmem_WDATA(11) <= \<const0>\;
  m_axi_gmem_WDATA(10) <= \<const0>\;
  m_axi_gmem_WDATA(9) <= \<const0>\;
  m_axi_gmem_WDATA(8) <= \<const0>\;
  m_axi_gmem_WDATA(7) <= \<const0>\;
  m_axi_gmem_WDATA(6) <= \<const0>\;
  m_axi_gmem_WDATA(5) <= \<const0>\;
  m_axi_gmem_WDATA(4) <= \<const0>\;
  m_axi_gmem_WDATA(3) <= \<const0>\;
  m_axi_gmem_WDATA(2) <= \<const0>\;
  m_axi_gmem_WDATA(1) <= \<const0>\;
  m_axi_gmem_WDATA(0) <= \<const0>\;
  m_axi_gmem_WLAST <= \<const0>\;
  m_axi_gmem_WSTRB(3) <= \<const0>\;
  m_axi_gmem_WSTRB(2) <= \<const0>\;
  m_axi_gmem_WSTRB(1) <= \<const0>\;
  m_axi_gmem_WSTRB(0) <= \<const0>\;
  m_axi_gmem_WVALID <= \<const0>\;
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_krnl_input_stage_rtl
     port map (
      \FSM_onehot_wstate_reg[1]\ => s_axi_control_WREADY,
      FSM_sequential_rstate_reg => s_axi_control_RVALID,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      arvalid_r_reg => m_axi_gmem_ARVALID,
      m_axi_gmem_ARADDR(63 downto 0) => m_axi_gmem_ARADDR(63 downto 0),
      m_axi_gmem_ARLEN(7 downto 0) => m_axi_gmem_ARLEN(7 downto 0),
      m_axi_gmem_ARREADY => m_axi_gmem_ARREADY,
      m_axi_gmem_RDATA(31 downto 0) => m_axi_gmem_RDATA(31 downto 0),
      m_axi_gmem_RID(0) => m_axi_gmem_RID(0),
      m_axi_gmem_RLAST => m_axi_gmem_RLAST,
      m_axi_gmem_RVALID => m_axi_gmem_RVALID,
      p0_TDATA(31 downto 0) => p0_TDATA(31 downto 0),
      p0_TREADY => p0_TREADY,
      p0_TVALID => p0_TVALID,
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
