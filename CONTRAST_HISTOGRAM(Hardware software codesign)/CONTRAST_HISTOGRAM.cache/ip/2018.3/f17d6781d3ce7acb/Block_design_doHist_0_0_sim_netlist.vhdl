-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Nov 18 00:19:01 2022
-- Host        : Ravi running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Block_design_doHist_0_0_sim_netlist.vhdl
-- Design      : Block_design_doHist_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist_CTRL_BUS_s_axi is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_done : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \idxPixel_reg_123_reg[11]\ : out STD_LOGIC;
    \idxPixel_reg_123_reg[2]\ : out STD_LOGIC;
    \idxPixel_reg_123_reg[9]\ : out STD_LOGIC;
    \idxPixel_reg_123_reg[6]\ : out STD_LOGIC;
    s_axi_CTRL_BUS_RVALID : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    \ap_CS_fsm_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_BUS_BVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_clk : in STD_LOGIC;
    s_axi_CTRL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_CTRL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_BUS_WVALID : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    int_ap_ready_reg_0 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_CTRL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_RREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_ARVALID : in STD_LOGIC;
    ap_NS_fsm113_out : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist_CTRL_BUS_s_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist_CTRL_BUS_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ap_done\ : STD_LOGIC;
  signal ap_idle : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal \^idxpixel_reg_123_reg[11]\ : STD_LOGIC;
  signal \^idxpixel_reg_123_reg[2]\ : STD_LOGIC;
  signal \^idxpixel_reg_123_reg[6]\ : STD_LOGIC;
  signal \^idxpixel_reg_123_reg[9]\ : STD_LOGIC;
  signal int_ap_done : STD_LOGIC;
  signal int_ap_done_i_1_n_0 : STD_LOGIC;
  signal int_ap_done_i_2_n_0 : STD_LOGIC;
  signal int_ap_idle : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_start3_out : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_auto_restart : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal \int_ier[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_2_n_0\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal int_isr6_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal rdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_ctrl_bus_bvalid\ : STD_LOGIC;
  signal \^s_axi_ctrl_bus_rvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \idxHist_reg_112[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of int_ap_done_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of int_ap_idle_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of int_ap_start_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of int_ap_start_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of int_auto_restart_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_ier[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_isr[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdata[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[7]_i_2\ : label is "soft_lutpair0";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  SR(0) <= \^sr\(0);
  ap_done <= \^ap_done\;
  \idxPixel_reg_123_reg[11]\ <= \^idxpixel_reg_123_reg[11]\;
  \idxPixel_reg_123_reg[2]\ <= \^idxpixel_reg_123_reg[2]\;
  \idxPixel_reg_123_reg[6]\ <= \^idxpixel_reg_123_reg[6]\;
  \idxPixel_reg_123_reg[9]\ <= \^idxpixel_reg_123_reg[9]\;
  s_axi_CTRL_BUS_BVALID <= \^s_axi_ctrl_bus_bvalid\;
  s_axi_CTRL_BUS_RVALID <= \^s_axi_ctrl_bus_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F727"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_CTRL_BUS_ARVALID,
      I2 => \^s_axi_ctrl_bus_rvalid\,
      I3 => s_axi_CTRL_BUS_RREADY,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
        port map (
      I0 => \^s_axi_ctrl_bus_rvalid\,
      I1 => s_axi_CTRL_BUS_RREADY,
      I2 => s_axi_CTRL_BUS_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_ctrl_bus_rvalid\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0C1D1D"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_CTRL_BUS_AWVALID,
      I3 => s_axi_CTRL_BUS_BREADY,
      I4 => \^s_axi_ctrl_bus_bvalid\,
      O => \FSM_onehot_wstate[1]_i_1_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => s_axi_CTRL_BUS_AWVALID,
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => s_axi_CTRL_BUS_BREADY,
      I3 => \^s_axi_ctrl_bus_bvalid\,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
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
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_ctrl_bus_bvalid\,
      R => \^sr\(0)
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^ap_done\,
      I1 => Q(2),
      I2 => ap_start,
      I3 => Q(0),
      O => D(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ap_NS_fsm113_out,
      I1 => Q(1),
      I2 => ap_start,
      I3 => Q(0),
      O => D(1)
    );
histo_EN_A_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => int_ap_ready_reg_0(2),
      I1 => int_ap_ready_reg_0(1),
      I2 => int_ap_ready_reg_0(0),
      O => \^idxpixel_reg_123_reg[2]\
    );
histo_EN_A_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => int_ap_ready_reg_0(6),
      I1 => int_ap_ready_reg_0(5),
      I2 => int_ap_ready_reg_0(4),
      I3 => int_ap_ready_reg_0(3),
      O => \^idxpixel_reg_123_reg[6]\
    );
histo_EN_A_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => int_ap_ready_reg_0(9),
      I1 => int_ap_ready_reg_0(10),
      I2 => int_ap_ready_reg_0(8),
      I3 => int_ap_ready_reg_0(7),
      O => \^idxpixel_reg_123_reg[9]\
    );
histo_EN_A_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => int_ap_ready_reg_0(11),
      I1 => int_ap_ready_reg_0(12),
      I2 => int_ap_ready_reg_0(13),
      I3 => int_ap_ready_reg_0(14),
      I4 => int_ap_ready_reg_0(15),
      I5 => int_ap_ready_reg_0(16),
      O => \^idxpixel_reg_123_reg[11]\
    );
histo_Rst_A_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\idxHist_reg_112[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      I2 => ap_NS_fsm113_out,
      O => \ap_CS_fsm_reg[0]\(0)
    );
int_ap_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFF0000"
    )
        port map (
      I0 => int_ap_done_i_2_n_0,
      I1 => ar_hs,
      I2 => s_axi_CTRL_BUS_ARADDR(0),
      I3 => s_axi_CTRL_BUS_ARADDR(1),
      I4 => \^ap_done\,
      I5 => int_ap_done,
      O => int_ap_done_i_1_n_0
    );
int_ap_done_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_CTRL_BUS_ARADDR(2),
      I1 => s_axi_CTRL_BUS_ARADDR(3),
      O => int_ap_done_i_2_n_0
    );
int_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_done_i_1_n_0,
      Q => int_ap_done,
      R => \^sr\(0)
    );
int_ap_idle_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      O => ap_idle
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => int_ap_idle,
      R => \^sr\(0)
    );
int_ap_ready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => Q(2),
      I1 => \^idxpixel_reg_123_reg[11]\,
      I2 => \^idxpixel_reg_123_reg[9]\,
      I3 => \^idxpixel_reg_123_reg[6]\,
      I4 => \^idxpixel_reg_123_reg[2]\,
      O => \^ap_done\
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_done\,
      Q => int_ap_ready,
      R => \^sr\(0)
    );
int_ap_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => int_auto_restart,
      I1 => \^ap_done\,
      I2 => int_ap_start3_out,
      I3 => ap_start,
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WDATA(0),
      I1 => \int_ier[1]_i_2_n_0\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[3]\,
      O => int_ap_start3_out
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => ap_start,
      R => \^sr\(0)
    );
int_auto_restart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WDATA(2),
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => int_auto_restart,
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => int_auto_restart,
      R => \^sr\(0)
    );
int_gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WDATA(0),
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => \^sr\(0)
    );
\int_ier[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WDATA(0),
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => \int_ier_reg_n_0_[0]\,
      O => \int_ier[0]_i_1_n_0\
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WDATA(1),
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => \p_0_in__0\,
      O => \int_ier[1]_i_1_n_0\
    );
\int_ier[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WSTRB(0),
      I1 => s_axi_CTRL_BUS_WVALID,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \waddr_reg_n_0_[0]\,
      I4 => \waddr_reg_n_0_[1]\,
      O => \int_ier[1]_i_2_n_0\
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[0]_i_1_n_0\,
      Q => \int_ier_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[1]_i_1_n_0\,
      Q => \p_0_in__0\,
      R => \^sr\(0)
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WDATA(0),
      I1 => int_isr6_out,
      I2 => \int_ier_reg_n_0_[0]\,
      I3 => \^ap_done\,
      I4 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \int_ier[1]_i_2_n_0\,
      O => int_isr6_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WDATA(1),
      I1 => int_isr6_out,
      I2 => \p_0_in__0\,
      I3 => \^ap_done\,
      I4 => p_1_in,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => p_1_in,
      R => \^sr\(0)
    );
interrupt_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \int_isr_reg_n_0_[0]\,
      I1 => p_1_in,
      I2 => int_gie_reg_n_0,
      O => interrupt
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => s_axi_CTRL_BUS_ARADDR(0),
      I1 => s_axi_CTRL_BUS_ARADDR(1),
      I2 => \rdata[0]_i_2_n_0\,
      O => rdata(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \int_ier_reg_n_0_[0]\,
      I1 => \int_isr_reg_n_0_[0]\,
      I2 => s_axi_CTRL_BUS_ARADDR(3),
      I3 => s_axi_CTRL_BUS_ARADDR(2),
      I4 => ap_start,
      I5 => int_gie_reg_n_0,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80AA800A80A08000"
    )
        port map (
      I0 => \rdata[1]_i_2_n_0\,
      I1 => p_1_in,
      I2 => s_axi_CTRL_BUS_ARADDR(3),
      I3 => s_axi_CTRL_BUS_ARADDR(2),
      I4 => \p_0_in__0\,
      I5 => int_ap_done,
      O => rdata(1)
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_CTRL_BUS_ARADDR(1),
      I1 => s_axi_CTRL_BUS_ARADDR(0),
      O => \rdata[1]_i_2_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => int_ap_idle,
      I1 => s_axi_CTRL_BUS_ARADDR(2),
      I2 => s_axi_CTRL_BUS_ARADDR(3),
      I3 => s_axi_CTRL_BUS_ARADDR(0),
      I4 => s_axi_CTRL_BUS_ARADDR(1),
      O => rdata(2)
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => int_ap_ready,
      I1 => s_axi_CTRL_BUS_ARADDR(2),
      I2 => s_axi_CTRL_BUS_ARADDR(3),
      I3 => s_axi_CTRL_BUS_ARADDR(0),
      I4 => s_axi_CTRL_BUS_ARADDR(1),
      O => rdata(3)
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_CTRL_BUS_ARVALID,
      O => ar_hs
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => int_auto_restart,
      I1 => s_axi_CTRL_BUS_ARADDR(2),
      I2 => s_axi_CTRL_BUS_ARADDR(3),
      I3 => s_axi_CTRL_BUS_ARADDR(0),
      I4 => s_axi_CTRL_BUS_ARADDR(1),
      O => rdata(7)
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(0),
      Q => s_axi_CTRL_BUS_RDATA(0),
      R => '0'
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(1),
      Q => s_axi_CTRL_BUS_RDATA(1),
      R => '0'
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(2),
      Q => s_axi_CTRL_BUS_RDATA(2),
      R => '0'
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(3),
      Q => s_axi_CTRL_BUS_RDATA(3),
      R => '0'
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(7),
      Q => s_axi_CTRL_BUS_RDATA(4),
      R => '0'
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_CTRL_BUS_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      O => waddr
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_CTRL_BUS_AWADDR(0),
      Q => \waddr_reg_n_0_[0]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_CTRL_BUS_AWADDR(1),
      Q => \waddr_reg_n_0_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_CTRL_BUS_AWADDR(2),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_CTRL_BUS_AWADDR(3),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    inStream_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inStream_TVALID : in STD_LOGIC;
    inStream_TREADY : out STD_LOGIC;
    inStream_TKEEP : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TUSER : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inStream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    inStream_TDEST : in STD_LOGIC_VECTOR ( 5 downto 0 );
    histo_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_EN_A : out STD_LOGIC;
    histo_WEN_A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    histo_Din_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_Dout_A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_Clk_A : out STD_LOGIC;
    histo_Rst_A : out STD_LOGIC;
    s_axi_CTRL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_AWREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_WVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_WREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_ARVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_ARREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_RVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_RREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_BVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_CTRL_BUS_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist : entity is 4;
  attribute C_S_AXI_CTRL_BUS_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist : entity is 32;
  attribute C_S_AXI_CTRL_BUS_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist : entity is 4;
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist : entity is "6'b000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist : entity is "6'b000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist : entity is "6'b000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist : entity is "6'b001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist : entity is "6'b010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist : entity is "6'b100000";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist is
  signal \<const0>\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ap_NS_fsm113_out : STD_LOGIC;
  signal \^ap_clk\ : STD_LOGIC;
  signal ap_done : STD_LOGIC;
  signal doHist_CTRL_BUS_s_axi_U_n_6 : STD_LOGIC;
  signal doHist_CTRL_BUS_s_axi_U_n_7 : STD_LOGIC;
  signal doHist_CTRL_BUS_s_axi_U_n_8 : STD_LOGIC;
  signal doHist_CTRL_BUS_s_axi_U_n_9 : STD_LOGIC;
  signal \^histo_addr_a\ : STD_LOGIC_VECTOR ( 10 downto 2 );
  signal \histo_Din_A[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \histo_Din_A[12]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \histo_Din_A[12]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \histo_Din_A[12]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \histo_Din_A[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \histo_Din_A[16]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \histo_Din_A[16]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \histo_Din_A[16]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \histo_Din_A[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \histo_Din_A[20]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \histo_Din_A[20]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \histo_Din_A[20]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \histo_Din_A[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \histo_Din_A[24]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \histo_Din_A[24]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \histo_Din_A[24]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \histo_Din_A[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \histo_Din_A[28]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \histo_Din_A[28]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \histo_Din_A[28]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \histo_Din_A[31]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \histo_Din_A[31]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \histo_Din_A[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \histo_Din_A[4]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \histo_Din_A[4]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \histo_Din_A[4]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \histo_Din_A[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \histo_Din_A[8]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \histo_Din_A[8]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \histo_Din_A[8]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \^histo_rst_a\ : STD_LOGIC;
  signal \^histo_wen_a\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \histo_WEN_A[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal histo_addr_1_reg_194 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal histo_load_reg_199 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal idxHist_1_fu_140_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal idxHist_reg_112 : STD_LOGIC;
  signal \idxHist_reg_112[8]_i_3_n_0\ : STD_LOGIC;
  signal \idxHist_reg_112_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal idxPixel_1_fu_157_p2 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal idxPixel_1_reg_189 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal idxPixel_1_reg_1890 : STD_LOGIC;
  signal \idxPixel_1_reg_189_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \idxPixel_1_reg_189_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \idxPixel_1_reg_189_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \idxPixel_1_reg_189_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \idxPixel_1_reg_189_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \idxPixel_1_reg_189_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \idxPixel_1_reg_189_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \idxPixel_1_reg_189_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \idxPixel_1_reg_189_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \idxPixel_1_reg_189_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \idxPixel_1_reg_189_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \idxPixel_1_reg_189_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \idxPixel_1_reg_189_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \idxPixel_1_reg_189_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \idxPixel_1_reg_189_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal idxPixel_reg_123 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \^instream_tready\ : STD_LOGIC;
  signal inStream_V_data_V_0_ack_in : STD_LOGIC;
  signal inStream_V_data_V_0_load_A : STD_LOGIC;
  signal inStream_V_data_V_0_load_B : STD_LOGIC;
  signal inStream_V_data_V_0_payload_A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal inStream_V_data_V_0_payload_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal inStream_V_data_V_0_sel : STD_LOGIC;
  signal inStream_V_data_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal inStream_V_data_V_0_sel_wr : STD_LOGIC;
  signal inStream_V_data_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal inStream_V_data_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \inStream_V_data_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal inStream_V_dest_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \inStream_V_dest_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \inStream_V_dest_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_25_in : STD_LOGIC;
  signal \^s_axi_ctrl_bus_rdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tmp_3_fu_167_p1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tmp_4_fu_172_p2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_histo_Din_A[31]_INST_0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_histo_Din_A[31]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_idxPixel_1_reg_189_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_1\ : label is "soft_lutpair7";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute SOFT_HLUTNM of \histo_Addr_A[10]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \histo_Addr_A[2]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \histo_Addr_A[3]_INST_0_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \histo_Addr_A[4]_INST_0_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \histo_Addr_A[5]_INST_0_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \histo_Addr_A[6]_INST_0_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \histo_Addr_A[7]_INST_0_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \histo_Addr_A[8]_INST_0_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \histo_Addr_A[9]_INST_0_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \histo_Din_A[0]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \histo_Din_A[10]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \histo_Din_A[11]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \histo_Din_A[12]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \histo_Din_A[13]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \histo_Din_A[14]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \histo_Din_A[15]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \histo_Din_A[16]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \histo_Din_A[17]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \histo_Din_A[18]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \histo_Din_A[19]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \histo_Din_A[1]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \histo_Din_A[20]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \histo_Din_A[21]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \histo_Din_A[22]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \histo_Din_A[23]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \histo_Din_A[24]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \histo_Din_A[25]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \histo_Din_A[26]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \histo_Din_A[27]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \histo_Din_A[28]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \histo_Din_A[29]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \histo_Din_A[2]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \histo_Din_A[30]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \histo_Din_A[31]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \histo_Din_A[3]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \histo_Din_A[4]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \histo_Din_A[5]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \histo_Din_A[6]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \histo_Din_A[7]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \histo_Din_A[8]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \histo_Din_A[9]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of histo_EN_A_INST_0 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \histo_WEN_A[0]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \idxHist_reg_112[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \idxHist_reg_112[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \idxHist_reg_112[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \idxHist_reg_112[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \idxHist_reg_112[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \idxHist_reg_112[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \idxHist_reg_112[8]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of inStream_V_data_V_0_sel_rd_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of inStream_V_data_V_0_sel_wr_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \inStream_V_data_V_0_state[1]_i_1\ : label is "soft_lutpair10";
begin
  \^ap_clk\ <= ap_clk;
  histo_Addr_A(31) <= \<const0>\;
  histo_Addr_A(30) <= \<const0>\;
  histo_Addr_A(29) <= \<const0>\;
  histo_Addr_A(28) <= \<const0>\;
  histo_Addr_A(27) <= \<const0>\;
  histo_Addr_A(26) <= \<const0>\;
  histo_Addr_A(25) <= \<const0>\;
  histo_Addr_A(24) <= \<const0>\;
  histo_Addr_A(23) <= \<const0>\;
  histo_Addr_A(22) <= \<const0>\;
  histo_Addr_A(21) <= \<const0>\;
  histo_Addr_A(20) <= \<const0>\;
  histo_Addr_A(19) <= \<const0>\;
  histo_Addr_A(18) <= \<const0>\;
  histo_Addr_A(17) <= \<const0>\;
  histo_Addr_A(16) <= \<const0>\;
  histo_Addr_A(15) <= \<const0>\;
  histo_Addr_A(14) <= \<const0>\;
  histo_Addr_A(13) <= \<const0>\;
  histo_Addr_A(12) <= \<const0>\;
  histo_Addr_A(11) <= \<const0>\;
  histo_Addr_A(10 downto 2) <= \^histo_addr_a\(10 downto 2);
  histo_Addr_A(1) <= \<const0>\;
  histo_Addr_A(0) <= \<const0>\;
  histo_Clk_A <= \^ap_clk\;
  histo_Rst_A <= \^histo_rst_a\;
  histo_WEN_A(3) <= \^histo_wen_a\(0);
  histo_WEN_A(2) <= \^histo_wen_a\(0);
  histo_WEN_A(1) <= \^histo_wen_a\(0);
  histo_WEN_A(0) <= \^histo_wen_a\(0);
  inStream_TREADY <= \^instream_tready\;
  s_axi_CTRL_BUS_BRESP(1) <= \<const0>\;
  s_axi_CTRL_BUS_BRESP(0) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(31) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(30) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(29) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(28) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(27) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(26) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(25) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(24) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(23) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(22) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(21) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(20) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(19) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(18) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(17) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(16) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(15) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(14) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(13) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(12) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(11) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(10) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(9) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(8) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(7) <= \^s_axi_ctrl_bus_rdata\(7);
  s_axi_CTRL_BUS_RDATA(6) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(5) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(4) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(3 downto 0) <= \^s_axi_ctrl_bus_rdata\(3 downto 0);
  s_axi_CTRL_BUS_RRESP(1) <= \<const0>\;
  s_axi_CTRL_BUS_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => ap_NS_fsm113_out,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEFEE"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => ap_CS_fsm_state3,
      I2 => p_25_in,
      I3 => ap_CS_fsm_state4,
      I4 => ap_done,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => ap_done,
      I1 => ap_CS_fsm_state4,
      I2 => p_25_in,
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => \^histo_rst_a\
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => \^histo_rst_a\
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => \^histo_rst_a\
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => \^histo_rst_a\
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5,
      R => \^histo_rst_a\
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_CS_fsm_state5,
      Q => ap_CS_fsm_state6,
      R => \^histo_rst_a\
    );
doHist_CTRL_BUS_s_axi_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist_CTRL_BUS_s_axi
     port map (
      D(1 downto 0) => ap_NS_fsm(1 downto 0),
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_CTRL_BUS_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_CTRL_BUS_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_CTRL_BUS_WREADY,
      Q(2) => ap_CS_fsm_state4,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => \ap_CS_fsm_reg_n_0_[0]\,
      SR(0) => \^histo_rst_a\,
      \ap_CS_fsm_reg[0]\(0) => idxHist_reg_112,
      ap_NS_fsm113_out => ap_NS_fsm113_out,
      ap_clk => \^ap_clk\,
      ap_done => ap_done,
      ap_rst_n => ap_rst_n,
      \idxPixel_reg_123_reg[11]\ => doHist_CTRL_BUS_s_axi_U_n_6,
      \idxPixel_reg_123_reg[2]\ => doHist_CTRL_BUS_s_axi_U_n_7,
      \idxPixel_reg_123_reg[6]\ => doHist_CTRL_BUS_s_axi_U_n_9,
      \idxPixel_reg_123_reg[9]\ => doHist_CTRL_BUS_s_axi_U_n_8,
      int_ap_ready_reg_0(16 downto 0) => idxPixel_reg_123(16 downto 0),
      interrupt => interrupt,
      s_axi_CTRL_BUS_ARADDR(3 downto 0) => s_axi_CTRL_BUS_ARADDR(3 downto 0),
      s_axi_CTRL_BUS_ARVALID => s_axi_CTRL_BUS_ARVALID,
      s_axi_CTRL_BUS_AWADDR(3 downto 0) => s_axi_CTRL_BUS_AWADDR(3 downto 0),
      s_axi_CTRL_BUS_AWVALID => s_axi_CTRL_BUS_AWVALID,
      s_axi_CTRL_BUS_BREADY => s_axi_CTRL_BUS_BREADY,
      s_axi_CTRL_BUS_BVALID => s_axi_CTRL_BUS_BVALID,
      s_axi_CTRL_BUS_RDATA(4) => \^s_axi_ctrl_bus_rdata\(7),
      s_axi_CTRL_BUS_RDATA(3 downto 0) => \^s_axi_ctrl_bus_rdata\(3 downto 0),
      s_axi_CTRL_BUS_RREADY => s_axi_CTRL_BUS_RREADY,
      s_axi_CTRL_BUS_RVALID => s_axi_CTRL_BUS_RVALID,
      s_axi_CTRL_BUS_WDATA(2) => s_axi_CTRL_BUS_WDATA(7),
      s_axi_CTRL_BUS_WDATA(1 downto 0) => s_axi_CTRL_BUS_WDATA(1 downto 0),
      s_axi_CTRL_BUS_WSTRB(0) => s_axi_CTRL_BUS_WSTRB(0),
      s_axi_CTRL_BUS_WVALID => s_axi_CTRL_BUS_WVALID
    );
\histo_Addr_A[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => ap_CS_fsm_state6,
      I2 => \idxHist_reg_112_reg__0\(8),
      O => \^histo_addr_a\(10)
    );
\histo_Addr_A[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \idxHist_reg_112_reg__0\(0),
      I2 => tmp_3_fu_167_p1(0),
      I3 => ap_CS_fsm_state6,
      I4 => histo_addr_1_reg_194(0),
      O => \^histo_addr_a\(2)
    );
\histo_Addr_A[2]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_data_V_0_payload_B(0),
      I1 => inStream_V_data_V_0_sel,
      I2 => inStream_V_data_V_0_payload_A(0),
      O => tmp_3_fu_167_p1(0)
    );
\histo_Addr_A[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \idxHist_reg_112_reg__0\(1),
      I2 => tmp_3_fu_167_p1(1),
      I3 => ap_CS_fsm_state6,
      I4 => histo_addr_1_reg_194(1),
      O => \^histo_addr_a\(3)
    );
\histo_Addr_A[3]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_data_V_0_payload_B(1),
      I1 => inStream_V_data_V_0_sel,
      I2 => inStream_V_data_V_0_payload_A(1),
      O => tmp_3_fu_167_p1(1)
    );
\histo_Addr_A[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \idxHist_reg_112_reg__0\(2),
      I2 => tmp_3_fu_167_p1(2),
      I3 => ap_CS_fsm_state6,
      I4 => histo_addr_1_reg_194(2),
      O => \^histo_addr_a\(4)
    );
\histo_Addr_A[4]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_data_V_0_payload_B(2),
      I1 => inStream_V_data_V_0_sel,
      I2 => inStream_V_data_V_0_payload_A(2),
      O => tmp_3_fu_167_p1(2)
    );
\histo_Addr_A[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \idxHist_reg_112_reg__0\(3),
      I2 => tmp_3_fu_167_p1(3),
      I3 => ap_CS_fsm_state6,
      I4 => histo_addr_1_reg_194(3),
      O => \^histo_addr_a\(5)
    );
\histo_Addr_A[5]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_data_V_0_payload_B(3),
      I1 => inStream_V_data_V_0_sel,
      I2 => inStream_V_data_V_0_payload_A(3),
      O => tmp_3_fu_167_p1(3)
    );
\histo_Addr_A[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \idxHist_reg_112_reg__0\(4),
      I2 => tmp_3_fu_167_p1(4),
      I3 => ap_CS_fsm_state6,
      I4 => histo_addr_1_reg_194(4),
      O => \^histo_addr_a\(6)
    );
\histo_Addr_A[6]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_data_V_0_payload_B(4),
      I1 => inStream_V_data_V_0_sel,
      I2 => inStream_V_data_V_0_payload_A(4),
      O => tmp_3_fu_167_p1(4)
    );
\histo_Addr_A[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \idxHist_reg_112_reg__0\(5),
      I2 => tmp_3_fu_167_p1(5),
      I3 => ap_CS_fsm_state6,
      I4 => histo_addr_1_reg_194(5),
      O => \^histo_addr_a\(7)
    );
\histo_Addr_A[7]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_data_V_0_payload_B(5),
      I1 => inStream_V_data_V_0_sel,
      I2 => inStream_V_data_V_0_payload_A(5),
      O => tmp_3_fu_167_p1(5)
    );
\histo_Addr_A[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \idxHist_reg_112_reg__0\(6),
      I2 => tmp_3_fu_167_p1(6),
      I3 => ap_CS_fsm_state6,
      I4 => histo_addr_1_reg_194(6),
      O => \^histo_addr_a\(8)
    );
\histo_Addr_A[8]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_data_V_0_payload_B(6),
      I1 => inStream_V_data_V_0_sel,
      I2 => inStream_V_data_V_0_payload_A(6),
      O => tmp_3_fu_167_p1(6)
    );
\histo_Addr_A[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \idxHist_reg_112_reg__0\(7),
      I2 => tmp_3_fu_167_p1(7),
      I3 => ap_CS_fsm_state6,
      I4 => histo_addr_1_reg_194(7),
      O => \^histo_addr_a\(9)
    );
\histo_Addr_A[9]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_data_V_0_payload_B(7),
      I1 => inStream_V_data_V_0_sel,
      I2 => inStream_V_data_V_0_payload_A(7),
      O => tmp_3_fu_167_p1(7)
    );
\histo_Din_A[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => histo_load_reg_199(0),
      O => histo_Din_A(0)
    );
\histo_Din_A[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(10),
      O => histo_Din_A(10)
    );
\histo_Din_A[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(11),
      O => histo_Din_A(11)
    );
\histo_Din_A[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(12),
      O => histo_Din_A(12)
    );
\histo_Din_A[12]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \histo_Din_A[8]_INST_0_i_1_n_0\,
      CO(3) => \histo_Din_A[12]_INST_0_i_1_n_0\,
      CO(2) => \histo_Din_A[12]_INST_0_i_1_n_1\,
      CO(1) => \histo_Din_A[12]_INST_0_i_1_n_2\,
      CO(0) => \histo_Din_A[12]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_4_fu_172_p2(12 downto 9),
      S(3 downto 0) => histo_load_reg_199(12 downto 9)
    );
\histo_Din_A[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(13),
      O => histo_Din_A(13)
    );
\histo_Din_A[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(14),
      O => histo_Din_A(14)
    );
\histo_Din_A[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(15),
      O => histo_Din_A(15)
    );
\histo_Din_A[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(16),
      O => histo_Din_A(16)
    );
\histo_Din_A[16]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \histo_Din_A[12]_INST_0_i_1_n_0\,
      CO(3) => \histo_Din_A[16]_INST_0_i_1_n_0\,
      CO(2) => \histo_Din_A[16]_INST_0_i_1_n_1\,
      CO(1) => \histo_Din_A[16]_INST_0_i_1_n_2\,
      CO(0) => \histo_Din_A[16]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_4_fu_172_p2(16 downto 13),
      S(3 downto 0) => histo_load_reg_199(16 downto 13)
    );
\histo_Din_A[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(17),
      O => histo_Din_A(17)
    );
\histo_Din_A[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(18),
      O => histo_Din_A(18)
    );
\histo_Din_A[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(19),
      O => histo_Din_A(19)
    );
\histo_Din_A[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(1),
      O => histo_Din_A(1)
    );
\histo_Din_A[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(20),
      O => histo_Din_A(20)
    );
\histo_Din_A[20]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \histo_Din_A[16]_INST_0_i_1_n_0\,
      CO(3) => \histo_Din_A[20]_INST_0_i_1_n_0\,
      CO(2) => \histo_Din_A[20]_INST_0_i_1_n_1\,
      CO(1) => \histo_Din_A[20]_INST_0_i_1_n_2\,
      CO(0) => \histo_Din_A[20]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_4_fu_172_p2(20 downto 17),
      S(3 downto 0) => histo_load_reg_199(20 downto 17)
    );
\histo_Din_A[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(21),
      O => histo_Din_A(21)
    );
\histo_Din_A[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(22),
      O => histo_Din_A(22)
    );
\histo_Din_A[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(23),
      O => histo_Din_A(23)
    );
\histo_Din_A[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(24),
      O => histo_Din_A(24)
    );
\histo_Din_A[24]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \histo_Din_A[20]_INST_0_i_1_n_0\,
      CO(3) => \histo_Din_A[24]_INST_0_i_1_n_0\,
      CO(2) => \histo_Din_A[24]_INST_0_i_1_n_1\,
      CO(1) => \histo_Din_A[24]_INST_0_i_1_n_2\,
      CO(0) => \histo_Din_A[24]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_4_fu_172_p2(24 downto 21),
      S(3 downto 0) => histo_load_reg_199(24 downto 21)
    );
\histo_Din_A[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(25),
      O => histo_Din_A(25)
    );
\histo_Din_A[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(26),
      O => histo_Din_A(26)
    );
\histo_Din_A[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(27),
      O => histo_Din_A(27)
    );
\histo_Din_A[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(28),
      O => histo_Din_A(28)
    );
\histo_Din_A[28]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \histo_Din_A[24]_INST_0_i_1_n_0\,
      CO(3) => \histo_Din_A[28]_INST_0_i_1_n_0\,
      CO(2) => \histo_Din_A[28]_INST_0_i_1_n_1\,
      CO(1) => \histo_Din_A[28]_INST_0_i_1_n_2\,
      CO(0) => \histo_Din_A[28]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_4_fu_172_p2(28 downto 25),
      S(3 downto 0) => histo_load_reg_199(28 downto 25)
    );
\histo_Din_A[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(29),
      O => histo_Din_A(29)
    );
\histo_Din_A[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(2),
      O => histo_Din_A(2)
    );
\histo_Din_A[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(30),
      O => histo_Din_A(30)
    );
\histo_Din_A[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(31),
      O => histo_Din_A(31)
    );
\histo_Din_A[31]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \histo_Din_A[28]_INST_0_i_1_n_0\,
      CO(3 downto 2) => \NLW_histo_Din_A[31]_INST_0_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \histo_Din_A[31]_INST_0_i_1_n_2\,
      CO(0) => \histo_Din_A[31]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_histo_Din_A[31]_INST_0_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => tmp_4_fu_172_p2(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => histo_load_reg_199(31 downto 29)
    );
\histo_Din_A[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(3),
      O => histo_Din_A(3)
    );
\histo_Din_A[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(4),
      O => histo_Din_A(4)
    );
\histo_Din_A[4]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \histo_Din_A[4]_INST_0_i_1_n_0\,
      CO(2) => \histo_Din_A[4]_INST_0_i_1_n_1\,
      CO(1) => \histo_Din_A[4]_INST_0_i_1_n_2\,
      CO(0) => \histo_Din_A[4]_INST_0_i_1_n_3\,
      CYINIT => histo_load_reg_199(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_4_fu_172_p2(4 downto 1),
      S(3 downto 0) => histo_load_reg_199(4 downto 1)
    );
\histo_Din_A[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(5),
      O => histo_Din_A(5)
    );
\histo_Din_A[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(6),
      O => histo_Din_A(6)
    );
\histo_Din_A[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(7),
      O => histo_Din_A(7)
    );
\histo_Din_A[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(8),
      O => histo_Din_A(8)
    );
\histo_Din_A[8]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \histo_Din_A[4]_INST_0_i_1_n_0\,
      CO(3) => \histo_Din_A[8]_INST_0_i_1_n_0\,
      CO(2) => \histo_Din_A[8]_INST_0_i_1_n_1\,
      CO(1) => \histo_Din_A[8]_INST_0_i_1_n_2\,
      CO(0) => \histo_Din_A[8]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_4_fu_172_p2(8 downto 5),
      S(3 downto 0) => histo_load_reg_199(8 downto 5)
    );
\histo_Din_A[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => tmp_4_fu_172_p2(9),
      O => histo_Din_A(9)
    );
histo_EN_A_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => ap_CS_fsm_state6,
      I2 => idxPixel_1_reg_1890,
      O => histo_EN_A
    );
histo_EN_A_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => doHist_CTRL_BUS_s_axi_U_n_7,
      I1 => doHist_CTRL_BUS_s_axi_U_n_9,
      I2 => doHist_CTRL_BUS_s_axi_U_n_8,
      I3 => doHist_CTRL_BUS_s_axi_U_n_6,
      I4 => p_0_in(0),
      I5 => ap_CS_fsm_state4,
      O => idxPixel_1_reg_1890
    );
\histo_WEN_A[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => ap_NS_fsm113_out,
      O => \^histo_wen_a\(0)
    );
\histo_WEN_A[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAA"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \idxHist_reg_112_reg__0\(2),
      I2 => \idxHist_reg_112_reg__0\(1),
      I3 => \idxHist_reg_112_reg__0\(0),
      I4 => \histo_WEN_A[0]_INST_0_i_2_n_0\,
      O => ap_NS_fsm113_out
    );
\histo_WEN_A[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \idxHist_reg_112_reg__0\(3),
      I1 => \idxHist_reg_112_reg__0\(4),
      I2 => \idxHist_reg_112_reg__0\(5),
      I3 => \idxHist_reg_112_reg__0\(6),
      I4 => \idxHist_reg_112_reg__0\(7),
      I5 => \idxHist_reg_112_reg__0\(8),
      O => \histo_WEN_A[0]_INST_0_i_2_n_0\
    );
\histo_addr_1_reg_194[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888888888888888"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => p_0_in(0),
      I2 => doHist_CTRL_BUS_s_axi_U_n_6,
      I3 => doHist_CTRL_BUS_s_axi_U_n_8,
      I4 => doHist_CTRL_BUS_s_axi_U_n_9,
      I5 => doHist_CTRL_BUS_s_axi_U_n_7,
      O => p_25_in
    );
\histo_addr_1_reg_194_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => p_25_in,
      D => tmp_3_fu_167_p1(0),
      Q => histo_addr_1_reg_194(0),
      R => '0'
    );
\histo_addr_1_reg_194_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => p_25_in,
      D => tmp_3_fu_167_p1(1),
      Q => histo_addr_1_reg_194(1),
      R => '0'
    );
\histo_addr_1_reg_194_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => p_25_in,
      D => tmp_3_fu_167_p1(2),
      Q => histo_addr_1_reg_194(2),
      R => '0'
    );
\histo_addr_1_reg_194_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => p_25_in,
      D => tmp_3_fu_167_p1(3),
      Q => histo_addr_1_reg_194(3),
      R => '0'
    );
\histo_addr_1_reg_194_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => p_25_in,
      D => tmp_3_fu_167_p1(4),
      Q => histo_addr_1_reg_194(4),
      R => '0'
    );
\histo_addr_1_reg_194_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => p_25_in,
      D => tmp_3_fu_167_p1(5),
      Q => histo_addr_1_reg_194(5),
      R => '0'
    );
\histo_addr_1_reg_194_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => p_25_in,
      D => tmp_3_fu_167_p1(6),
      Q => histo_addr_1_reg_194(6),
      R => '0'
    );
\histo_addr_1_reg_194_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => p_25_in,
      D => tmp_3_fu_167_p1(7),
      Q => histo_addr_1_reg_194(7),
      R => '0'
    );
\histo_load_reg_199_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(0),
      Q => histo_load_reg_199(0),
      R => '0'
    );
\histo_load_reg_199_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(10),
      Q => histo_load_reg_199(10),
      R => '0'
    );
\histo_load_reg_199_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(11),
      Q => histo_load_reg_199(11),
      R => '0'
    );
\histo_load_reg_199_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(12),
      Q => histo_load_reg_199(12),
      R => '0'
    );
\histo_load_reg_199_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(13),
      Q => histo_load_reg_199(13),
      R => '0'
    );
\histo_load_reg_199_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(14),
      Q => histo_load_reg_199(14),
      R => '0'
    );
\histo_load_reg_199_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(15),
      Q => histo_load_reg_199(15),
      R => '0'
    );
\histo_load_reg_199_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(16),
      Q => histo_load_reg_199(16),
      R => '0'
    );
\histo_load_reg_199_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(17),
      Q => histo_load_reg_199(17),
      R => '0'
    );
\histo_load_reg_199_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(18),
      Q => histo_load_reg_199(18),
      R => '0'
    );
\histo_load_reg_199_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(19),
      Q => histo_load_reg_199(19),
      R => '0'
    );
\histo_load_reg_199_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(1),
      Q => histo_load_reg_199(1),
      R => '0'
    );
\histo_load_reg_199_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(20),
      Q => histo_load_reg_199(20),
      R => '0'
    );
\histo_load_reg_199_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(21),
      Q => histo_load_reg_199(21),
      R => '0'
    );
\histo_load_reg_199_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(22),
      Q => histo_load_reg_199(22),
      R => '0'
    );
\histo_load_reg_199_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(23),
      Q => histo_load_reg_199(23),
      R => '0'
    );
\histo_load_reg_199_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(24),
      Q => histo_load_reg_199(24),
      R => '0'
    );
\histo_load_reg_199_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(25),
      Q => histo_load_reg_199(25),
      R => '0'
    );
\histo_load_reg_199_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(26),
      Q => histo_load_reg_199(26),
      R => '0'
    );
\histo_load_reg_199_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(27),
      Q => histo_load_reg_199(27),
      R => '0'
    );
\histo_load_reg_199_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(28),
      Q => histo_load_reg_199(28),
      R => '0'
    );
\histo_load_reg_199_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(29),
      Q => histo_load_reg_199(29),
      R => '0'
    );
\histo_load_reg_199_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(2),
      Q => histo_load_reg_199(2),
      R => '0'
    );
\histo_load_reg_199_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(30),
      Q => histo_load_reg_199(30),
      R => '0'
    );
\histo_load_reg_199_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(31),
      Q => histo_load_reg_199(31),
      R => '0'
    );
\histo_load_reg_199_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(3),
      Q => histo_load_reg_199(3),
      R => '0'
    );
\histo_load_reg_199_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(4),
      Q => histo_load_reg_199(4),
      R => '0'
    );
\histo_load_reg_199_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(5),
      Q => histo_load_reg_199(5),
      R => '0'
    );
\histo_load_reg_199_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(6),
      Q => histo_load_reg_199(6),
      R => '0'
    );
\histo_load_reg_199_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(7),
      Q => histo_load_reg_199(7),
      R => '0'
    );
\histo_load_reg_199_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(8),
      Q => histo_load_reg_199(8),
      R => '0'
    );
\histo_load_reg_199_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => histo_Dout_A(9),
      Q => histo_load_reg_199(9),
      R => '0'
    );
\idxHist_reg_112[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \idxHist_reg_112_reg__0\(0),
      O => idxHist_1_fu_140_p2(0)
    );
\idxHist_reg_112[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \idxHist_reg_112_reg__0\(0),
      I1 => \idxHist_reg_112_reg__0\(1),
      O => idxHist_1_fu_140_p2(1)
    );
\idxHist_reg_112[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \idxHist_reg_112_reg__0\(0),
      I1 => \idxHist_reg_112_reg__0\(1),
      I2 => \idxHist_reg_112_reg__0\(2),
      O => idxHist_1_fu_140_p2(2)
    );
\idxHist_reg_112[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \idxHist_reg_112_reg__0\(1),
      I1 => \idxHist_reg_112_reg__0\(0),
      I2 => \idxHist_reg_112_reg__0\(2),
      I3 => \idxHist_reg_112_reg__0\(3),
      O => idxHist_1_fu_140_p2(3)
    );
\idxHist_reg_112[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \idxHist_reg_112_reg__0\(2),
      I1 => \idxHist_reg_112_reg__0\(0),
      I2 => \idxHist_reg_112_reg__0\(1),
      I3 => \idxHist_reg_112_reg__0\(3),
      I4 => \idxHist_reg_112_reg__0\(4),
      O => idxHist_1_fu_140_p2(4)
    );
\idxHist_reg_112[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \idxHist_reg_112_reg__0\(3),
      I1 => \idxHist_reg_112_reg__0\(1),
      I2 => \idxHist_reg_112_reg__0\(0),
      I3 => \idxHist_reg_112_reg__0\(2),
      I4 => \idxHist_reg_112_reg__0\(4),
      I5 => \idxHist_reg_112_reg__0\(5),
      O => idxHist_1_fu_140_p2(5)
    );
\idxHist_reg_112[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \idxHist_reg_112[8]_i_3_n_0\,
      I1 => \idxHist_reg_112_reg__0\(6),
      O => idxHist_1_fu_140_p2(6)
    );
\idxHist_reg_112[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \idxHist_reg_112[8]_i_3_n_0\,
      I1 => \idxHist_reg_112_reg__0\(6),
      I2 => \idxHist_reg_112_reg__0\(7),
      O => idxHist_1_fu_140_p2(7)
    );
\idxHist_reg_112[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \idxHist_reg_112_reg__0\(6),
      I1 => \idxHist_reg_112[8]_i_3_n_0\,
      I2 => \idxHist_reg_112_reg__0\(7),
      I3 => \idxHist_reg_112_reg__0\(8),
      O => idxHist_1_fu_140_p2(8)
    );
\idxHist_reg_112[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \idxHist_reg_112_reg__0\(5),
      I1 => \idxHist_reg_112_reg__0\(3),
      I2 => \idxHist_reg_112_reg__0\(1),
      I3 => \idxHist_reg_112_reg__0\(0),
      I4 => \idxHist_reg_112_reg__0\(2),
      I5 => \idxHist_reg_112_reg__0\(4),
      O => \idxHist_reg_112[8]_i_3_n_0\
    );
\idxHist_reg_112_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_NS_fsm113_out,
      D => idxHist_1_fu_140_p2(0),
      Q => \idxHist_reg_112_reg__0\(0),
      R => idxHist_reg_112
    );
\idxHist_reg_112_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_NS_fsm113_out,
      D => idxHist_1_fu_140_p2(1),
      Q => \idxHist_reg_112_reg__0\(1),
      R => idxHist_reg_112
    );
\idxHist_reg_112_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_NS_fsm113_out,
      D => idxHist_1_fu_140_p2(2),
      Q => \idxHist_reg_112_reg__0\(2),
      R => idxHist_reg_112
    );
\idxHist_reg_112_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_NS_fsm113_out,
      D => idxHist_1_fu_140_p2(3),
      Q => \idxHist_reg_112_reg__0\(3),
      R => idxHist_reg_112
    );
\idxHist_reg_112_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_NS_fsm113_out,
      D => idxHist_1_fu_140_p2(4),
      Q => \idxHist_reg_112_reg__0\(4),
      R => idxHist_reg_112
    );
\idxHist_reg_112_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_NS_fsm113_out,
      D => idxHist_1_fu_140_p2(5),
      Q => \idxHist_reg_112_reg__0\(5),
      R => idxHist_reg_112
    );
\idxHist_reg_112_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_NS_fsm113_out,
      D => idxHist_1_fu_140_p2(6),
      Q => \idxHist_reg_112_reg__0\(6),
      R => idxHist_reg_112
    );
\idxHist_reg_112_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_NS_fsm113_out,
      D => idxHist_1_fu_140_p2(7),
      Q => \idxHist_reg_112_reg__0\(7),
      R => idxHist_reg_112
    );
\idxHist_reg_112_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_NS_fsm113_out,
      D => idxHist_1_fu_140_p2(8),
      Q => \idxHist_reg_112_reg__0\(8),
      R => idxHist_reg_112
    );
\idxPixel_1_reg_189[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => idxPixel_reg_123(0),
      O => idxPixel_1_fu_157_p2(0)
    );
\idxPixel_1_reg_189_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => idxPixel_1_reg_1890,
      D => idxPixel_1_fu_157_p2(0),
      Q => idxPixel_1_reg_189(0),
      R => '0'
    );
\idxPixel_1_reg_189_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => idxPixel_1_reg_1890,
      D => idxPixel_1_fu_157_p2(10),
      Q => idxPixel_1_reg_189(10),
      R => '0'
    );
\idxPixel_1_reg_189_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => idxPixel_1_reg_1890,
      D => idxPixel_1_fu_157_p2(11),
      Q => idxPixel_1_reg_189(11),
      R => '0'
    );
\idxPixel_1_reg_189_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => idxPixel_1_reg_1890,
      D => idxPixel_1_fu_157_p2(12),
      Q => idxPixel_1_reg_189(12),
      R => '0'
    );
\idxPixel_1_reg_189_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \idxPixel_1_reg_189_reg[8]_i_1_n_0\,
      CO(3) => \idxPixel_1_reg_189_reg[12]_i_1_n_0\,
      CO(2) => \idxPixel_1_reg_189_reg[12]_i_1_n_1\,
      CO(1) => \idxPixel_1_reg_189_reg[12]_i_1_n_2\,
      CO(0) => \idxPixel_1_reg_189_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => idxPixel_1_fu_157_p2(12 downto 9),
      S(3 downto 0) => idxPixel_reg_123(12 downto 9)
    );
\idxPixel_1_reg_189_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => idxPixel_1_reg_1890,
      D => idxPixel_1_fu_157_p2(13),
      Q => idxPixel_1_reg_189(13),
      R => '0'
    );
\idxPixel_1_reg_189_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => idxPixel_1_reg_1890,
      D => idxPixel_1_fu_157_p2(14),
      Q => idxPixel_1_reg_189(14),
      R => '0'
    );
\idxPixel_1_reg_189_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => idxPixel_1_reg_1890,
      D => idxPixel_1_fu_157_p2(15),
      Q => idxPixel_1_reg_189(15),
      R => '0'
    );
\idxPixel_1_reg_189_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => idxPixel_1_reg_1890,
      D => idxPixel_1_fu_157_p2(16),
      Q => idxPixel_1_reg_189(16),
      R => '0'
    );
\idxPixel_1_reg_189_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \idxPixel_1_reg_189_reg[12]_i_1_n_0\,
      CO(3) => \NLW_idxPixel_1_reg_189_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \idxPixel_1_reg_189_reg[16]_i_1_n_1\,
      CO(1) => \idxPixel_1_reg_189_reg[16]_i_1_n_2\,
      CO(0) => \idxPixel_1_reg_189_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => idxPixel_1_fu_157_p2(16 downto 13),
      S(3 downto 0) => idxPixel_reg_123(16 downto 13)
    );
\idxPixel_1_reg_189_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => idxPixel_1_reg_1890,
      D => idxPixel_1_fu_157_p2(1),
      Q => idxPixel_1_reg_189(1),
      R => '0'
    );
\idxPixel_1_reg_189_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => idxPixel_1_reg_1890,
      D => idxPixel_1_fu_157_p2(2),
      Q => idxPixel_1_reg_189(2),
      R => '0'
    );
\idxPixel_1_reg_189_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => idxPixel_1_reg_1890,
      D => idxPixel_1_fu_157_p2(3),
      Q => idxPixel_1_reg_189(3),
      R => '0'
    );
\idxPixel_1_reg_189_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => idxPixel_1_reg_1890,
      D => idxPixel_1_fu_157_p2(4),
      Q => idxPixel_1_reg_189(4),
      R => '0'
    );
\idxPixel_1_reg_189_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \idxPixel_1_reg_189_reg[4]_i_1_n_0\,
      CO(2) => \idxPixel_1_reg_189_reg[4]_i_1_n_1\,
      CO(1) => \idxPixel_1_reg_189_reg[4]_i_1_n_2\,
      CO(0) => \idxPixel_1_reg_189_reg[4]_i_1_n_3\,
      CYINIT => idxPixel_reg_123(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => idxPixel_1_fu_157_p2(4 downto 1),
      S(3 downto 0) => idxPixel_reg_123(4 downto 1)
    );
\idxPixel_1_reg_189_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => idxPixel_1_reg_1890,
      D => idxPixel_1_fu_157_p2(5),
      Q => idxPixel_1_reg_189(5),
      R => '0'
    );
\idxPixel_1_reg_189_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => idxPixel_1_reg_1890,
      D => idxPixel_1_fu_157_p2(6),
      Q => idxPixel_1_reg_189(6),
      R => '0'
    );
\idxPixel_1_reg_189_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => idxPixel_1_reg_1890,
      D => idxPixel_1_fu_157_p2(7),
      Q => idxPixel_1_reg_189(7),
      R => '0'
    );
\idxPixel_1_reg_189_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => idxPixel_1_reg_1890,
      D => idxPixel_1_fu_157_p2(8),
      Q => idxPixel_1_reg_189(8),
      R => '0'
    );
\idxPixel_1_reg_189_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \idxPixel_1_reg_189_reg[4]_i_1_n_0\,
      CO(3) => \idxPixel_1_reg_189_reg[8]_i_1_n_0\,
      CO(2) => \idxPixel_1_reg_189_reg[8]_i_1_n_1\,
      CO(1) => \idxPixel_1_reg_189_reg[8]_i_1_n_2\,
      CO(0) => \idxPixel_1_reg_189_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => idxPixel_1_fu_157_p2(8 downto 5),
      S(3 downto 0) => idxPixel_reg_123(8 downto 5)
    );
\idxPixel_1_reg_189_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => idxPixel_1_reg_1890,
      D => idxPixel_1_fu_157_p2(9),
      Q => idxPixel_1_reg_189(9),
      R => '0'
    );
\idxPixel_reg_123_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => idxPixel_1_reg_189(0),
      Q => idxPixel_reg_123(0),
      R => ap_CS_fsm_state3
    );
\idxPixel_reg_123_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => idxPixel_1_reg_189(10),
      Q => idxPixel_reg_123(10),
      R => ap_CS_fsm_state3
    );
\idxPixel_reg_123_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => idxPixel_1_reg_189(11),
      Q => idxPixel_reg_123(11),
      R => ap_CS_fsm_state3
    );
\idxPixel_reg_123_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => idxPixel_1_reg_189(12),
      Q => idxPixel_reg_123(12),
      R => ap_CS_fsm_state3
    );
\idxPixel_reg_123_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => idxPixel_1_reg_189(13),
      Q => idxPixel_reg_123(13),
      R => ap_CS_fsm_state3
    );
\idxPixel_reg_123_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => idxPixel_1_reg_189(14),
      Q => idxPixel_reg_123(14),
      R => ap_CS_fsm_state3
    );
\idxPixel_reg_123_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => idxPixel_1_reg_189(15),
      Q => idxPixel_reg_123(15),
      R => ap_CS_fsm_state3
    );
\idxPixel_reg_123_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => idxPixel_1_reg_189(16),
      Q => idxPixel_reg_123(16),
      R => ap_CS_fsm_state3
    );
\idxPixel_reg_123_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => idxPixel_1_reg_189(1),
      Q => idxPixel_reg_123(1),
      R => ap_CS_fsm_state3
    );
\idxPixel_reg_123_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => idxPixel_1_reg_189(2),
      Q => idxPixel_reg_123(2),
      R => ap_CS_fsm_state3
    );
\idxPixel_reg_123_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => idxPixel_1_reg_189(3),
      Q => idxPixel_reg_123(3),
      R => ap_CS_fsm_state3
    );
\idxPixel_reg_123_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => idxPixel_1_reg_189(4),
      Q => idxPixel_reg_123(4),
      R => ap_CS_fsm_state3
    );
\idxPixel_reg_123_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => idxPixel_1_reg_189(5),
      Q => idxPixel_reg_123(5),
      R => ap_CS_fsm_state3
    );
\idxPixel_reg_123_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => idxPixel_1_reg_189(6),
      Q => idxPixel_reg_123(6),
      R => ap_CS_fsm_state3
    );
\idxPixel_reg_123_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => idxPixel_1_reg_189(7),
      Q => idxPixel_reg_123(7),
      R => ap_CS_fsm_state3
    );
\idxPixel_reg_123_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => idxPixel_1_reg_189(8),
      Q => idxPixel_reg_123(8),
      R => ap_CS_fsm_state3
    );
\idxPixel_reg_123_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => idxPixel_1_reg_189(9),
      Q => idxPixel_reg_123(9),
      R => ap_CS_fsm_state3
    );
\inStream_V_data_V_0_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => p_0_in(0),
      I1 => inStream_V_data_V_0_ack_in,
      I2 => inStream_V_data_V_0_sel_wr,
      O => inStream_V_data_V_0_load_A
    );
\inStream_V_data_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(0),
      Q => inStream_V_data_V_0_payload_A(0),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(1),
      Q => inStream_V_data_V_0_payload_A(1),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(2),
      Q => inStream_V_data_V_0_payload_A(2),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(3),
      Q => inStream_V_data_V_0_payload_A(3),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(4),
      Q => inStream_V_data_V_0_payload_A(4),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(5),
      Q => inStream_V_data_V_0_payload_A(5),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(6),
      Q => inStream_V_data_V_0_payload_A(6),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(7),
      Q => inStream_V_data_V_0_payload_A(7),
      R => '0'
    );
\inStream_V_data_V_0_payload_B[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => inStream_V_data_V_0_sel_wr,
      I1 => p_0_in(0),
      I2 => inStream_V_data_V_0_ack_in,
      O => inStream_V_data_V_0_load_B
    );
\inStream_V_data_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(0),
      Q => inStream_V_data_V_0_payload_B(0),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(1),
      Q => inStream_V_data_V_0_payload_B(1),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(2),
      Q => inStream_V_data_V_0_payload_B(2),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(3),
      Q => inStream_V_data_V_0_payload_B(3),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(4),
      Q => inStream_V_data_V_0_payload_B(4),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(5),
      Q => inStream_V_data_V_0_payload_B(5),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(6),
      Q => inStream_V_data_V_0_payload_B(6),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(7),
      Q => inStream_V_data_V_0_payload_B(7),
      R => '0'
    );
inStream_V_data_V_0_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_25_in,
      I1 => p_0_in(0),
      I2 => inStream_V_data_V_0_sel,
      O => inStream_V_data_V_0_sel_rd_i_1_n_0
    );
inStream_V_data_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => inStream_V_data_V_0_sel_rd_i_1_n_0,
      Q => inStream_V_data_V_0_sel,
      R => \^histo_rst_a\
    );
inStream_V_data_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => inStream_V_data_V_0_ack_in,
      I1 => inStream_TVALID,
      I2 => inStream_V_data_V_0_sel_wr,
      O => inStream_V_data_V_0_sel_wr_i_1_n_0
    );
inStream_V_data_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => inStream_V_data_V_0_sel_wr_i_1_n_0,
      Q => inStream_V_data_V_0_sel_wr,
      R => \^histo_rst_a\
    );
\inStream_V_data_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AAA000"
    )
        port map (
      I0 => ap_rst_n,
      I1 => p_25_in,
      I2 => inStream_TVALID,
      I3 => inStream_V_data_V_0_ack_in,
      I4 => p_0_in(0),
      O => \inStream_V_data_V_0_state[0]_i_1_n_0\
    );
\inStream_V_data_V_0_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAFF"
    )
        port map (
      I0 => p_25_in,
      I1 => inStream_TVALID,
      I2 => inStream_V_data_V_0_ack_in,
      I3 => p_0_in(0),
      O => inStream_V_data_V_0_state(1)
    );
\inStream_V_data_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => \inStream_V_data_V_0_state[0]_i_1_n_0\,
      Q => p_0_in(0),
      R => '0'
    );
\inStream_V_data_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => inStream_V_data_V_0_state(1),
      Q => inStream_V_data_V_0_ack_in,
      R => \^histo_rst_a\
    );
\inStream_V_dest_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AAA000"
    )
        port map (
      I0 => ap_rst_n,
      I1 => p_25_in,
      I2 => inStream_TVALID,
      I3 => \^instream_tready\,
      I4 => \inStream_V_dest_V_0_state_reg_n_0_[0]\,
      O => \inStream_V_dest_V_0_state[0]_i_1_n_0\
    );
\inStream_V_dest_V_0_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAFF"
    )
        port map (
      I0 => p_25_in,
      I1 => inStream_TVALID,
      I2 => \^instream_tready\,
      I3 => \inStream_V_dest_V_0_state_reg_n_0_[0]\,
      O => inStream_V_dest_V_0_state(1)
    );
\inStream_V_dest_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => \inStream_V_dest_V_0_state[0]_i_1_n_0\,
      Q => \inStream_V_dest_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\inStream_V_dest_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => inStream_V_dest_V_0_state(1),
      Q => \^instream_tready\,
      R => \^histo_rst_a\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_CTRL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_AWREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_WVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_WREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_BVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_ARVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_ARREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_RVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    inStream_TVALID : in STD_LOGIC;
    inStream_TREADY : out STD_LOGIC;
    inStream_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inStream_TDEST : in STD_LOGIC_VECTOR ( 5 downto 0 );
    inStream_TKEEP : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TUSER : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inStream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    histo_Clk_A : out STD_LOGIC;
    histo_Rst_A : out STD_LOGIC;
    histo_EN_A : out STD_LOGIC;
    histo_WEN_A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    histo_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_Din_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    histo_Dout_A : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Block_design_doHist_0_0,doHist,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "doHist,Vivado 2018.3";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute C_S_AXI_CTRL_BUS_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_ADDR_WIDTH of inst : label is 4;
  attribute C_S_AXI_CTRL_BUS_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CTRL_BUS_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "6'b000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "6'b000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "6'b000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "6'b001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of inst : label is "6'b010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of inst : label is "6'b100000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL_BUS:inStream, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of histo_Clk_A : signal is "xilinx.com:interface:bram:1.0 histo_PORTA CLK";
  attribute X_INTERFACE_INFO of histo_EN_A : signal is "xilinx.com:interface:bram:1.0 histo_PORTA EN";
  attribute X_INTERFACE_INFO of histo_Rst_A : signal is "xilinx.com:interface:bram:1.0 histo_PORTA RST";
  attribute X_INTERFACE_INFO of inStream_TREADY : signal is "xilinx.com:interface:axis:1.0 inStream TREADY";
  attribute X_INTERFACE_INFO of inStream_TVALID : signal is "xilinx.com:interface:axis:1.0 inStream TVALID";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {INTERRUPT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_CTRL_BUS_RREADY : signal is "XIL_INTERFACENAME s_axi_CTRL_BUS, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WVALID";
  attribute X_INTERFACE_INFO of histo_Addr_A : signal is "xilinx.com:interface:bram:1.0 histo_PORTA ADDR";
  attribute X_INTERFACE_INFO of histo_Din_A : signal is "xilinx.com:interface:bram:1.0 histo_PORTA DIN";
  attribute X_INTERFACE_INFO of histo_Dout_A : signal is "xilinx.com:interface:bram:1.0 histo_PORTA DOUT";
  attribute X_INTERFACE_PARAMETER of histo_Dout_A : signal is "XIL_INTERFACENAME histo_PORTA, MEM_WIDTH 32, MEM_SIZE 1024, MASTER_TYPE BRAM_CTRL, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ADDR {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} WE {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 4} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DIN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} DOUT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of histo_WEN_A : signal is "xilinx.com:interface:bram:1.0 histo_PORTA WE";
  attribute X_INTERFACE_INFO of inStream_TDATA : signal is "xilinx.com:interface:axis:1.0 inStream TDATA";
  attribute X_INTERFACE_INFO of inStream_TDEST : signal is "xilinx.com:interface:axis:1.0 inStream TDEST";
  attribute X_INTERFACE_INFO of inStream_TID : signal is "xilinx.com:interface:axis:1.0 inStream TID";
  attribute X_INTERFACE_PARAMETER of inStream_TID : signal is "XIL_INTERFACENAME inStream, TDATA_NUM_BYTES 1, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of inStream_TKEEP : signal is "xilinx.com:interface:axis:1.0 inStream TKEEP";
  attribute X_INTERFACE_INFO of inStream_TLAST : signal is "xilinx.com:interface:axis:1.0 inStream TLAST";
  attribute X_INTERFACE_INFO of inStream_TSTRB : signal is "xilinx.com:interface:axis:1.0 inStream TSTRB";
  attribute X_INTERFACE_INFO of inStream_TUSER : signal is "xilinx.com:interface:axis:1.0 inStream TUSER";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARADDR";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWADDR";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BRESP";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RDATA";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RRESP";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WDATA";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WSTRB";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_doHist
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      histo_Addr_A(31 downto 0) => histo_Addr_A(31 downto 0),
      histo_Clk_A => histo_Clk_A,
      histo_Din_A(31 downto 0) => histo_Din_A(31 downto 0),
      histo_Dout_A(31 downto 0) => histo_Dout_A(31 downto 0),
      histo_EN_A => histo_EN_A,
      histo_Rst_A => histo_Rst_A,
      histo_WEN_A(3 downto 0) => histo_WEN_A(3 downto 0),
      inStream_TDATA(7 downto 0) => inStream_TDATA(7 downto 0),
      inStream_TDEST(5 downto 0) => inStream_TDEST(5 downto 0),
      inStream_TID(4 downto 0) => inStream_TID(4 downto 0),
      inStream_TKEEP(0) => inStream_TKEEP(0),
      inStream_TLAST(0) => inStream_TLAST(0),
      inStream_TREADY => inStream_TREADY,
      inStream_TSTRB(0) => inStream_TSTRB(0),
      inStream_TUSER(1 downto 0) => inStream_TUSER(1 downto 0),
      inStream_TVALID => inStream_TVALID,
      interrupt => interrupt,
      s_axi_CTRL_BUS_ARADDR(3 downto 0) => s_axi_CTRL_BUS_ARADDR(3 downto 0),
      s_axi_CTRL_BUS_ARREADY => s_axi_CTRL_BUS_ARREADY,
      s_axi_CTRL_BUS_ARVALID => s_axi_CTRL_BUS_ARVALID,
      s_axi_CTRL_BUS_AWADDR(3 downto 0) => s_axi_CTRL_BUS_AWADDR(3 downto 0),
      s_axi_CTRL_BUS_AWREADY => s_axi_CTRL_BUS_AWREADY,
      s_axi_CTRL_BUS_AWVALID => s_axi_CTRL_BUS_AWVALID,
      s_axi_CTRL_BUS_BREADY => s_axi_CTRL_BUS_BREADY,
      s_axi_CTRL_BUS_BRESP(1 downto 0) => s_axi_CTRL_BUS_BRESP(1 downto 0),
      s_axi_CTRL_BUS_BVALID => s_axi_CTRL_BUS_BVALID,
      s_axi_CTRL_BUS_RDATA(31 downto 0) => s_axi_CTRL_BUS_RDATA(31 downto 0),
      s_axi_CTRL_BUS_RREADY => s_axi_CTRL_BUS_RREADY,
      s_axi_CTRL_BUS_RRESP(1 downto 0) => s_axi_CTRL_BUS_RRESP(1 downto 0),
      s_axi_CTRL_BUS_RVALID => s_axi_CTRL_BUS_RVALID,
      s_axi_CTRL_BUS_WDATA(31 downto 0) => s_axi_CTRL_BUS_WDATA(31 downto 0),
      s_axi_CTRL_BUS_WREADY => s_axi_CTRL_BUS_WREADY,
      s_axi_CTRL_BUS_WSTRB(3 downto 0) => s_axi_CTRL_BUS_WSTRB(3 downto 0),
      s_axi_CTRL_BUS_WVALID => s_axi_CTRL_BUS_WVALID
    );
end STRUCTURE;
