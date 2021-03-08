-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.1 (lin64) Build 3080587 Fri Dec 11 14:53:26 MST 2020
-- Date        : Mon Mar  8 14:35:16 2021
-- Host        : I7MINT running 64-bit Linux Mint 20.1
-- Command     : write_vhdl -force -mode funcsim
--               /home/david/ebaz4205/projects/Display_LEDs/Display_LEDs.srcs/sources_1/bd/design_1/ip/design_1_tm1638_demo_0_0/design_1_tm1638_demo_0_0_sim_netlist.vhdl
-- Design      : design_1_tm1638_demo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_tm1638_demo_0_0_tm1638 is
  port (
    dio_out : out STD_LOGIC;
    \data_out_q_reg[4]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    tm_rw_reg : out STD_LOGIC;
    tm_latch_reg : out STD_LOGIC;
    tm_clk : out STD_LOGIC;
    \FSM_onehot_cur_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_onehot_cur_state_reg[0]_1\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \instruction_step_reg[3]\ : out STD_LOGIC;
    tm_cs_reg : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_q_reg[6]_0\ : in STD_LOGIC;
    \FSM_onehot_cur_state_reg[1]_0\ : in STD_LOGIC;
    counter_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    tm_latch : in STD_LOGIC;
    \keys_reg[0]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    tm_out : in STD_LOGIC;
    dio_in : in STD_LOGIC;
    tm_cs_reg_0 : in STD_LOGIC;
    tm_cs : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_tm1638_demo_0_0_tm1638 : entity is "tm1638";
end design_1_tm1638_demo_0_0_tm1638;

architecture STRUCTURE of design_1_tm1638_demo_0_0_tm1638 is
  signal \FSM_onehot_cur_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cur_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cur_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cur_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cur_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cur_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cur_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_cur_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_cur_state_reg_n_0_[2]\ : STD_LOGIC;
  signal ctr_d : STD_LOGIC;
  signal ctr_q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ctr_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_q[2]_i_1_n_0\ : STD_LOGIC;
  signal data_d : STD_LOGIC;
  signal data_out_d : STD_LOGIC;
  signal data_out_q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_out_q[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_q[7]_i_3_n_0\ : STD_LOGIC;
  signal \^data_out_q_reg[4]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_q[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_q[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_q[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_q[7]_i_2_n_0\ : STD_LOGIC;
  signal \^dio_out\ : STD_LOGIC;
  signal dio_out_i_1_n_0 : STD_LOGIC;
  signal dio_out_i_2_n_0 : STD_LOGIC;
  signal dio_out_i_3_n_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal sclk_d : STD_LOGIC;
  signal \sclk_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \sclk_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \sclk_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \sclk_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \sclk_q[4]_i_1_n_0\ : STD_LOGIC;
  signal \sclk_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \sclk_q[5]_i_1_n_0\ : STD_LOGIC;
  signal \sclk_q[5]_i_2_n_0\ : STD_LOGIC;
  signal \sclk_q[6]_i_2_n_0\ : STD_LOGIC;
  signal \sclk_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \sclk_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \sclk_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \sclk_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \sclk_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \sclk_q_reg_n_0_[5]\ : STD_LOGIC;
  signal tm_cs1_out : STD_LOGIC;
  signal tm_cs_i_4_n_0 : STD_LOGIC;
  signal tm_data : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal tm_rw8_out : STD_LOGIC;
  signal \^tm_rw_reg\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_cur_state[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_cur_state[2]_i_3\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[0]\ : label is "S_IDLE:001,S_WAIT:010,S_TRANSFER:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[1]\ : label is "S_IDLE:001,S_WAIT:010,S_TRANSFER:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[2]\ : label is "S_IDLE:001,S_WAIT:010,S_TRANSFER:100,";
  attribute SOFT_HLUTNM of \ctr_q[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ctr_q[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ctr_q[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out_q[7]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \instruction_step[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \keys[7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sclk_q[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sclk_q[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sclk_q[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sclk_q[5]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sclk_q[6]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of sig_IOBUF_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of tm_clk_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of tm_cs_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of tm_latch_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of tm_rw_i_1 : label is "soft_lutpair3";
begin
  \data_out_q_reg[4]_0\(1 downto 0) <= \^data_out_q_reg[4]_0\(1 downto 0);
  dio_out <= \^dio_out\;
  tm_rw_reg <= \^tm_rw_reg\;
\FSM_onehot_cur_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8ABA8"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I1 => data_out_d,
      I2 => \FSM_onehot_cur_state[0]_i_2_n_0\,
      I3 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_cur_state_reg[1]_0\,
      O => \FSM_onehot_cur_state[0]_i_1_n_0\
    );
\FSM_onehot_cur_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \sclk_q[5]_i_2_n_0\,
      I1 => \sclk_q_reg_n_0_[4]\,
      I2 => \sclk_q_reg_n_0_[3]\,
      I3 => \sclk_q_reg_n_0_[5]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      I5 => \p_0_in__0\,
      O => \FSM_onehot_cur_state[0]_i_2_n_0\
    );
\FSM_onehot_cur_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5010FAFA5010"
    )
        port map (
      I0 => data_out_d,
      I1 => \FSM_onehot_cur_state[2]_i_2_n_0\,
      I2 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      I3 => \p_0_in__0\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I5 => \FSM_onehot_cur_state_reg[1]_0\,
      O => \FSM_onehot_cur_state[1]_i_1_n_0\
    );
\FSM_onehot_cur_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F5F5F0F0A0E0"
    )
        port map (
      I0 => data_out_d,
      I1 => \FSM_onehot_cur_state[2]_i_2_n_0\,
      I2 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      I3 => \p_0_in__0\,
      I4 => \FSM_onehot_cur_state[2]_i_3_n_0\,
      I5 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      O => \FSM_onehot_cur_state[2]_i_1_n_0\
    );
\FSM_onehot_cur_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \sclk_q_reg_n_0_[5]\,
      I1 => \sclk_q_reg_n_0_[3]\,
      I2 => \sclk_q_reg_n_0_[4]\,
      I3 => \sclk_q_reg_n_0_[0]\,
      I4 => \sclk_q_reg_n_0_[1]\,
      I5 => \sclk_q_reg_n_0_[2]\,
      O => \FSM_onehot_cur_state[2]_i_2_n_0\
    );
\FSM_onehot_cur_state[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_cur_state_reg[1]_0\,
      O => \FSM_onehot_cur_state[2]_i_3_n_0\
    );
\FSM_onehot_cur_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_cur_state[0]_i_1_n_0\,
      Q => \FSM_onehot_cur_state_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_cur_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_cur_state[1]_i_1_n_0\,
      Q => \FSM_onehot_cur_state_reg_n_0_[1]\,
      R => rst
    );
\FSM_onehot_cur_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_cur_state[2]_i_1_n_0\,
      Q => \FSM_onehot_cur_state_reg_n_0_[2]\,
      R => rst
    );
\ctr_q[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ctr_d,
      I1 => ctr_q(0),
      O => \ctr_q[0]_i_1_n_0\
    );
\ctr_q[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => ctr_q(0),
      I1 => ctr_d,
      I2 => ctr_q(1),
      O => \ctr_q[1]_i_1_n_0\
    );
\ctr_q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => ctr_q(0),
      I1 => ctr_q(1),
      I2 => ctr_d,
      I3 => ctr_q(2),
      O => \ctr_q[2]_i_1_n_0\
    );
\ctr_q[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I1 => \sclk_q_reg_n_0_[4]\,
      I2 => \sclk_q_reg_n_0_[3]\,
      I3 => \sclk_q_reg_n_0_[5]\,
      I4 => \p_0_in__0\,
      I5 => \sclk_q[5]_i_2_n_0\,
      O => ctr_d
    );
\ctr_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ctr_q[0]_i_1_n_0\,
      Q => ctr_q(0),
      R => rst
    );
\ctr_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ctr_q[1]_i_1_n_0\,
      Q => ctr_q(1),
      R => rst
    );
\ctr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ctr_q[2]_i_1_n_0\,
      Q => ctr_q(2),
      R => rst
    );
\data_out_q[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \sclk_q[5]_i_2_n_0\,
      I1 => \p_0_in__0\,
      I2 => \sclk_q_reg_n_0_[5]\,
      I3 => \data_out_q[7]_i_2_n_0\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I5 => \data_out_q[7]_i_3_n_0\,
      O => data_out_d
    );
\data_out_q[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \sclk_q_reg_n_0_[3]\,
      I1 => \sclk_q_reg_n_0_[4]\,
      O => \data_out_q[7]_i_2_n_0\
    );
\data_out_q[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => ctr_q(1),
      I1 => ctr_q(0),
      I2 => ctr_q(2),
      O => \data_out_q[7]_i_3_n_0\
    );
\data_out_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_out_d,
      D => data_q(0),
      Q => data_out_q(0),
      R => rst
    );
\data_out_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_out_d,
      D => data_q(1),
      Q => data_out_q(1),
      R => rst
    );
\data_out_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_out_d,
      D => data_q(2),
      Q => data_out_q(2),
      R => rst
    );
\data_out_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_out_d,
      D => data_q(3),
      Q => data_out_q(3),
      R => rst
    );
\data_out_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_out_d,
      D => data_q(4),
      Q => data_out_q(4),
      R => rst
    );
\data_out_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_out_d,
      D => data_q(5),
      Q => data_out_q(5),
      R => rst
    );
\data_out_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_out_d,
      D => data_q(6),
      Q => data_out_q(6),
      R => rst
    );
\data_out_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_out_d,
      D => data_q(7),
      Q => data_out_q(7),
      R => rst
    );
\data_q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF808080"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I1 => \data_q_reg[6]_0\,
      I2 => \^data_out_q_reg[4]_0\(0),
      I3 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I4 => data_q(1),
      I5 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \data_q[0]_i_1_n_0\
    );
\data_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF808080"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I1 => \data_q_reg[6]_0\,
      I2 => tm_data(1),
      I3 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I4 => data_q(2),
      I5 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \data_q[1]_i_1_n_0\
    );
\data_q[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_out_q(1),
      I1 => \^tm_rw_reg\,
      I2 => Q(1),
      I3 => \data_q_reg[6]_0\,
      O => tm_data(1)
    );
\data_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF808080"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I1 => \data_q_reg[6]_0\,
      I2 => tm_data(2),
      I3 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I4 => data_q(3),
      I5 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \data_q[2]_i_1_n_0\
    );
\data_q[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_out_q(2),
      I1 => \^tm_rw_reg\,
      I2 => Q(2),
      I3 => \data_q_reg[6]_0\,
      O => tm_data(2)
    );
\data_q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF808080"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I1 => \data_q_reg[6]_0\,
      I2 => tm_data(3),
      I3 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I4 => data_q(4),
      I5 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \data_q[3]_i_1_n_0\
    );
\data_q[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_out_q(3),
      I1 => \^tm_rw_reg\,
      I2 => Q(3),
      I3 => \data_q_reg[6]_0\,
      O => tm_data(3)
    );
\data_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF808080"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I1 => \data_q_reg[6]_0\,
      I2 => \^data_out_q_reg[4]_0\(1),
      I3 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I4 => data_q(5),
      I5 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \data_q[4]_i_1_n_0\
    );
\data_q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF808080"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I1 => \data_q_reg[6]_0\,
      I2 => tm_data(5),
      I3 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I4 => data_q(6),
      I5 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \data_q[5]_i_1_n_0\
    );
\data_q[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_out_q(5),
      I1 => \^tm_rw_reg\,
      I2 => Q(5),
      I3 => \data_q_reg[6]_0\,
      O => tm_data(5)
    );
\data_q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF808080"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I1 => \data_q_reg[6]_0\,
      I2 => tm_data(6),
      I3 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I4 => data_q(7),
      I5 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \data_q[6]_i_1_n_0\
    );
\data_q[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_out_q(6),
      I1 => \^tm_rw_reg\,
      I2 => Q(6),
      I3 => \data_q_reg[6]_0\,
      O => tm_data(6)
    );
\data_q[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg[1]_0\,
      I1 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I2 => \p_0_in__0\,
      I3 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_cur_state[2]_i_2_n_0\,
      O => data_d
    );
\data_q[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF80FFFF8080"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I1 => \data_q_reg[6]_0\,
      I2 => tm_data(7),
      I3 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      I5 => dio_in,
      O => \data_q[7]_i_2_n_0\
    );
\data_q[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_out_q(7),
      I1 => \^tm_rw_reg\,
      I2 => Q(7),
      I3 => \data_q_reg[6]_0\,
      O => tm_data(7)
    );
\data_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_d,
      D => \data_q[0]_i_1_n_0\,
      Q => data_q(0),
      R => rst
    );
\data_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_d,
      D => \data_q[1]_i_1_n_0\,
      Q => data_q(1),
      R => rst
    );
\data_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_d,
      D => \data_q[2]_i_1_n_0\,
      Q => data_q(2),
      R => rst
    );
\data_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_d,
      D => \data_q[3]_i_1_n_0\,
      Q => data_q(3),
      R => rst
    );
\data_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_d,
      D => \data_q[4]_i_1_n_0\,
      Q => data_q(4),
      R => rst
    );
\data_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_d,
      D => \data_q[5]_i_1_n_0\,
      Q => data_q(5),
      R => rst
    );
\data_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_d,
      D => \data_q[6]_i_1_n_0\,
      Q => data_q(6),
      R => rst
    );
\data_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data_d,
      D => \data_q[7]_i_2_n_0\,
      Q => data_q(7),
      R => rst
    );
dio_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBF33B300800080"
    )
        port map (
      I0 => data_q(0),
      I1 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I2 => dio_out_i_2_n_0,
      I3 => \p_0_in__0\,
      I4 => dio_out_i_3_n_0,
      I5 => \^dio_out\,
      O => dio_out_i_1_n_0
    );
dio_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \sclk_q_reg_n_0_[2]\,
      I1 => \sclk_q_reg_n_0_[3]\,
      I2 => \sclk_q_reg_n_0_[1]\,
      I3 => \sclk_q_reg_n_0_[0]\,
      I4 => \sclk_q_reg_n_0_[4]\,
      I5 => \sclk_q_reg_n_0_[5]\,
      O => dio_out_i_2_n_0
    );
dio_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => \data_out_q[7]_i_3_n_0\,
      I1 => \sclk_q_reg_n_0_[4]\,
      I2 => \sclk_q_reg_n_0_[3]\,
      I3 => \sclk_q_reg_n_0_[5]\,
      I4 => \p_0_in__0\,
      I5 => \sclk_q[5]_i_2_n_0\,
      O => dio_out_i_3_n_0
    );
dio_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dio_out_i_1_n_0,
      Q => \^dio_out\,
      R => rst
    );
\instruction_step[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_reg(0),
      I1 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      O => \counter_reg[0]\(0)
    );
\keys[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_out_q(4),
      I1 => \^tm_rw_reg\,
      I2 => Q(4),
      I3 => \data_q_reg[6]_0\,
      O => \^data_out_q_reg[4]_0\(1)
    );
\keys[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I1 => counter_reg(0),
      I2 => \keys_reg[0]\(0),
      I3 => \keys_reg[0]\(5),
      I4 => \keys_reg[0]\(3),
      I5 => \keys_reg[0]\(2),
      O => \FSM_onehot_cur_state_reg[0]_1\
    );
\keys[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_out_q(0),
      I1 => \^tm_rw_reg\,
      I2 => Q(0),
      I3 => \data_q_reg[6]_0\,
      O => \^data_out_q_reg[4]_0\(0)
    );
\keys[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I1 => counter_reg(0),
      I2 => \keys_reg[0]\(0),
      I3 => \keys_reg[0]\(4),
      I4 => \keys_reg[0]\(3),
      O => \FSM_onehot_cur_state_reg[0]_0\
    );
\sclk_q[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \sclk_q_reg_n_0_[0]\,
      I1 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      O => \sclk_q[0]_i_1_n_0\
    );
\sclk_q[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6660"
    )
        port map (
      I0 => \sclk_q_reg_n_0_[0]\,
      I1 => \sclk_q_reg_n_0_[1]\,
      I2 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      O => \sclk_q[1]_i_1_n_0\
    );
\sclk_q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78787800"
    )
        port map (
      I0 => \sclk_q_reg_n_0_[0]\,
      I1 => \sclk_q_reg_n_0_[1]\,
      I2 => \sclk_q_reg_n_0_[2]\,
      I3 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \sclk_q[2]_i_1_n_0\
    );
\sclk_q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F807F807F800000"
    )
        port map (
      I0 => \sclk_q_reg_n_0_[2]\,
      I1 => \sclk_q_reg_n_0_[1]\,
      I2 => \sclk_q_reg_n_0_[0]\,
      I3 => \sclk_q_reg_n_0_[3]\,
      I4 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \sclk_q[3]_i_1_n_0\
    );
\sclk_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \sclk_q_reg_n_0_[3]\,
      I1 => \sclk_q_reg_n_0_[0]\,
      I2 => \sclk_q_reg_n_0_[1]\,
      I3 => \sclk_q_reg_n_0_[2]\,
      I4 => \sclk_q_reg_n_0_[4]\,
      I5 => \sclk_q[4]_i_2_n_0\,
      O => \sclk_q[4]_i_1_n_0\
    );
\sclk_q[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      O => \sclk_q[4]_i_2_n_0\
    );
\sclk_q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E00EE0E0E0"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      I2 => \sclk_q_reg_n_0_[5]\,
      I3 => \sclk_q_reg_n_0_[3]\,
      I4 => \sclk_q_reg_n_0_[4]\,
      I5 => \sclk_q[5]_i_2_n_0\,
      O => \sclk_q[5]_i_1_n_0\
    );
\sclk_q[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \sclk_q_reg_n_0_[0]\,
      I1 => \sclk_q_reg_n_0_[1]\,
      I2 => \sclk_q_reg_n_0_[2]\,
      O => \sclk_q[5]_i_2_n_0\
    );
\sclk_q[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      O => sclk_d
    );
\sclk_q[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3C08"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[1]\,
      I1 => \p_0_in__0\,
      I2 => \FSM_onehot_cur_state[2]_i_2_n_0\,
      I3 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      O => \sclk_q[6]_i_2_n_0\
    );
\sclk_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sclk_d,
      D => \sclk_q[0]_i_1_n_0\,
      Q => \sclk_q_reg_n_0_[0]\,
      R => rst
    );
\sclk_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sclk_d,
      D => \sclk_q[1]_i_1_n_0\,
      Q => \sclk_q_reg_n_0_[1]\,
      R => rst
    );
\sclk_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sclk_d,
      D => \sclk_q[2]_i_1_n_0\,
      Q => \sclk_q_reg_n_0_[2]\,
      R => rst
    );
\sclk_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sclk_d,
      D => \sclk_q[3]_i_1_n_0\,
      Q => \sclk_q_reg_n_0_[3]\,
      R => rst
    );
\sclk_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sclk_d,
      D => \sclk_q[4]_i_1_n_0\,
      Q => \sclk_q_reg_n_0_[4]\,
      R => rst
    );
\sclk_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sclk_d,
      D => \sclk_q[5]_i_1_n_0\,
      Q => \sclk_q_reg_n_0_[5]\,
      R => rst
    );
\sclk_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sclk_d,
      D => \sclk_q[6]_i_2_n_0\,
      Q => \p_0_in__0\,
      R => rst
    );
sig_IOBUF_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_q_reg[6]_0\,
      O => \^tm_rw_reg\
    );
tm_clk_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \FSM_onehot_cur_state_reg_n_0_[2]\,
      O => tm_clk
    );
tm_cs_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tm_cs_reg_0,
      I1 => tm_cs1_out,
      I2 => tm_cs,
      O => tm_cs_reg
    );
tm_cs_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000106E042"
    )
        port map (
      I0 => \keys_reg[0]\(0),
      I1 => \keys_reg[0]\(2),
      I2 => \keys_reg[0]\(3),
      I3 => \keys_reg[0]\(1),
      I4 => \keys_reg[0]\(5),
      I5 => tm_cs_i_4_n_0,
      O => tm_cs1_out
    );
tm_cs_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \keys_reg[0]\(4),
      I1 => counter_reg(0),
      I2 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      O => tm_cs_i_4_n_0
    );
tm_latch_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAAA00"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg[1]_0\,
      I1 => counter_reg(0),
      I2 => tm_latch,
      I3 => rst,
      I4 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      O => tm_latch_reg
    );
\tm_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => tm_out,
      I1 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I2 => counter_reg(0),
      I3 => rst,
      O => E(0)
    );
tm_rw_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFBF00"
    )
        port map (
      I0 => \keys_reg[0]\(3),
      I1 => \keys_reg[0]\(1),
      I2 => \keys_reg[0]\(0),
      I3 => tm_rw8_out,
      I4 => \data_q_reg[6]_0\,
      O => \instruction_step_reg[3]\
    );
tm_rw_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001008242"
    )
        port map (
      I0 => \keys_reg[0]\(0),
      I1 => \keys_reg[0]\(2),
      I2 => \keys_reg[0]\(3),
      I3 => \keys_reg[0]\(1),
      I4 => \keys_reg[0]\(5),
      I5 => tm_cs_i_4_n_0,
      O => tm_rw8_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_tm1638_demo_0_0_tm1638_demo is
  port (
    tm_rw_reg_0 : out STD_LOGIC;
    keys : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tm_clk : out STD_LOGIC;
    tm_cs : out STD_LOGIC;
    tm_dio : inout STD_LOGIC;
    dots : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    larson : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_tm1638_demo_0_0_tm1638_demo : entity is "tm1638_demo";
end design_1_tm1638_demo_0_0_tm1638_demo;

architecture STRUCTURE of design_1_tm1638_demo_0_0_tm1638_demo is
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dio_in : STD_LOGIC;
  signal dio_out : STD_LOGIC;
  signal instruction_step0 : STD_LOGIC;
  signal \instruction_step[2]_i_1_n_0\ : STD_LOGIC;
  signal instruction_step_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^keys\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \keys[0]_i_1_n_0\ : STD_LOGIC;
  signal \keys[1]_i_1_n_0\ : STD_LOGIC;
  signal \keys[2]_i_1_n_0\ : STD_LOGIC;
  signal \keys[3]_i_1_n_0\ : STD_LOGIC;
  signal \keys[4]_i_1_n_0\ : STD_LOGIC;
  signal \keys[5]_i_1_n_0\ : STD_LOGIC;
  signal \keys[6]_i_1_n_0\ : STD_LOGIC;
  signal \keys[7]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rst : STD_LOGIC;
  signal \^tm_cs\ : STD_LOGIC;
  signal tm_cs_i_2_n_0 : STD_LOGIC;
  signal tm_data : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal tm_latch : STD_LOGIC;
  signal tm_latch_reg_n_0 : STD_LOGIC;
  signal tm_out : STD_LOGIC;
  signal \tm_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \tm_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \tm_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \tm_out[0]_i_4_n_0\ : STD_LOGIC;
  signal \tm_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \tm_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \tm_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \tm_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \tm_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \tm_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \tm_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \tm_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \tm_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \tm_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \tm_out[7]_i_5_n_0\ : STD_LOGIC;
  signal \tm_out[7]_i_6_n_0\ : STD_LOGIC;
  signal \tm_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \tm_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \tm_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \tm_out_reg_n_0_[3]\ : STD_LOGIC;
  signal \tm_out_reg_n_0_[4]\ : STD_LOGIC;
  signal \tm_out_reg_n_0_[5]\ : STD_LOGIC;
  signal \tm_out_reg_n_0_[6]\ : STD_LOGIC;
  signal \tm_out_reg_n_0_[7]\ : STD_LOGIC;
  signal \^tm_rw_reg_0\ : STD_LOGIC;
  signal u_tm1638_n_10 : STD_LOGIC;
  signal u_tm1638_n_11 : STD_LOGIC;
  signal u_tm1638_n_3 : STD_LOGIC;
  signal u_tm1638_n_4 : STD_LOGIC;
  signal u_tm1638_n_6 : STD_LOGIC;
  signal u_tm1638_n_7 : STD_LOGIC;
  signal u_tm1638_n_8 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \instruction_step[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \instruction_step[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \instruction_step[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \instruction_step[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \instruction_step[4]_i_1\ : label is "soft_lutpair11";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of sig_IOBUF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of tm_cs_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tm_out[0]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tm_out[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tm_out[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tm_out[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tm_out[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tm_out[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tm_out[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tm_out[7]_i_5\ : label is "soft_lutpair15";
begin
  keys(7 downto 0) <= \^keys\(7 downto 0);
  tm_cs <= \^tm_cs\;
  tm_rw_reg_0 <= \^tm_rw_reg_0\;
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter[0]_i_1_n_0\,
      Q => counter_reg(0),
      R => rst
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000009FFFF22AC"
    )
        port map (
      I0 => instruction_step_reg(0),
      I1 => instruction_step_reg(1),
      I2 => instruction_step_reg(2),
      I3 => instruction_step_reg(3),
      I4 => instruction_step_reg(4),
      I5 => instruction_step_reg(5),
      O => tm_latch
    );
\g0_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000009FFFF2004"
    )
        port map (
      I0 => instruction_step_reg(0),
      I1 => instruction_step_reg(1),
      I2 => instruction_step_reg(2),
      I3 => instruction_step_reg(3),
      I4 => instruction_step_reg(4),
      I5 => instruction_step_reg(5),
      O => tm_out
    );
\instruction_step[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => instruction_step_reg(0),
      O => p_0_in(0)
    );
\instruction_step[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => instruction_step_reg(0),
      I1 => instruction_step_reg(1),
      O => p_0_in(1)
    );
\instruction_step[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => instruction_step_reg(2),
      I1 => instruction_step_reg(1),
      I2 => instruction_step_reg(0),
      O => \instruction_step[2]_i_1_n_0\
    );
\instruction_step[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => instruction_step_reg(3),
      I1 => instruction_step_reg(0),
      I2 => instruction_step_reg(1),
      I3 => instruction_step_reg(2),
      O => p_0_in(3)
    );
\instruction_step[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => instruction_step_reg(4),
      I1 => instruction_step_reg(1),
      I2 => instruction_step_reg(2),
      I3 => instruction_step_reg(0),
      I4 => instruction_step_reg(3),
      O => p_0_in(4)
    );
\instruction_step[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => instruction_step_reg(5),
      I1 => instruction_step_reg(3),
      I2 => instruction_step_reg(0),
      I3 => instruction_step_reg(2),
      I4 => instruction_step_reg(1),
      I5 => instruction_step_reg(4),
      O => p_0_in(5)
    );
\instruction_step_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction_step0,
      D => p_0_in(0),
      Q => instruction_step_reg(0),
      R => rst
    );
\instruction_step_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction_step0,
      D => p_0_in(1),
      Q => instruction_step_reg(1),
      R => rst
    );
\instruction_step_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction_step0,
      D => \instruction_step[2]_i_1_n_0\,
      Q => instruction_step_reg(2),
      R => rst
    );
\instruction_step_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction_step0,
      D => p_0_in(3),
      Q => instruction_step_reg(3),
      R => rst
    );
\instruction_step_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction_step0,
      D => p_0_in(4),
      Q => instruction_step_reg(4),
      R => rst
    );
\instruction_step_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction_step0,
      D => p_0_in(5),
      Q => instruction_step_reg(5),
      R => rst
    );
\keys[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => tm_data(4),
      I1 => u_tm1638_n_7,
      I2 => instruction_step_reg(1),
      I3 => instruction_step_reg(4),
      I4 => \^keys\(0),
      O => \keys[0]_i_1_n_0\
    );
\keys[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => tm_data(4),
      I1 => u_tm1638_n_7,
      I2 => instruction_step_reg(4),
      I3 => instruction_step_reg(1),
      I4 => \^keys\(1),
      O => \keys[1]_i_1_n_0\
    );
\keys[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => tm_data(4),
      I1 => u_tm1638_n_6,
      I2 => instruction_step_reg(1),
      I3 => instruction_step_reg(2),
      I4 => instruction_step_reg(5),
      I5 => \^keys\(2),
      O => \keys[2]_i_1_n_0\
    );
\keys[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => tm_data(4),
      I1 => u_tm1638_n_6,
      I2 => instruction_step_reg(2),
      I3 => instruction_step_reg(1),
      I4 => instruction_step_reg(5),
      I5 => \^keys\(3),
      O => \keys[3]_i_1_n_0\
    );
\keys[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => tm_data(0),
      I1 => u_tm1638_n_7,
      I2 => instruction_step_reg(1),
      I3 => instruction_step_reg(4),
      I4 => \^keys\(4),
      O => \keys[4]_i_1_n_0\
    );
\keys[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => tm_data(0),
      I1 => u_tm1638_n_7,
      I2 => instruction_step_reg(4),
      I3 => instruction_step_reg(1),
      I4 => \^keys\(5),
      O => \keys[5]_i_1_n_0\
    );
\keys[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => tm_data(0),
      I1 => u_tm1638_n_6,
      I2 => instruction_step_reg(1),
      I3 => instruction_step_reg(2),
      I4 => instruction_step_reg(5),
      I5 => \^keys\(6),
      O => \keys[6]_i_1_n_0\
    );
\keys[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => tm_data(0),
      I1 => u_tm1638_n_6,
      I2 => instruction_step_reg(2),
      I3 => instruction_step_reg(1),
      I4 => instruction_step_reg(5),
      I5 => \^keys\(7),
      O => \keys[7]_i_1_n_0\
    );
\keys_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \keys[0]_i_1_n_0\,
      Q => \^keys\(0),
      R => rst
    );
\keys_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \keys[1]_i_1_n_0\,
      Q => \^keys\(1),
      R => rst
    );
\keys_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \keys[2]_i_1_n_0\,
      Q => \^keys\(2),
      R => rst
    );
\keys_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \keys[3]_i_1_n_0\,
      Q => \^keys\(3),
      R => rst
    );
\keys_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \keys[4]_i_1_n_0\,
      Q => \^keys\(4),
      R => rst
    );
\keys_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \keys[5]_i_1_n_0\,
      Q => \^keys\(5),
      R => rst
    );
\keys_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \keys[6]_i_1_n_0\,
      Q => \^keys\(6),
      R => rst
    );
\keys_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \keys[7]_i_1_n_0\,
      Q => \^keys\(7),
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      Q => rst,
      R => '0'
    );
sig_IOBUF: unisim.vcomponents.IOBUF
     port map (
      I => dio_out,
      IO => tm_dio,
      O => dio_in,
      T => u_tm1638_n_3
    );
tm_cs_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3022F0AA"
    )
        port map (
      I0 => instruction_step_reg(5),
      I1 => instruction_step_reg(2),
      I2 => instruction_step_reg(3),
      I3 => instruction_step_reg(1),
      I4 => instruction_step_reg(0),
      O => tm_cs_i_2_n_0
    );
tm_cs_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => u_tm1638_n_11,
      Q => \^tm_cs\,
      S => rst
    );
tm_latch_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => u_tm1638_n_4,
      Q => tm_latch_reg_n_0,
      R => '0'
    );
\tm_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4447"
    )
        port map (
      I0 => \tm_out[0]_i_2_n_0\,
      I1 => instruction_step_reg(2),
      I2 => instruction_step_reg(0),
      I3 => \tm_out[0]_i_3_n_0\,
      I4 => \tm_out[0]_i_4_n_0\,
      O => \tm_out[0]_i_1_n_0\
    );
\tm_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3437FFFF34370000"
    )
        port map (
      I0 => larson(1),
      I1 => instruction_step_reg(3),
      I2 => instruction_step_reg(0),
      I3 => larson(5),
      I4 => instruction_step_reg(1),
      I5 => \tm_out[0]_i_5_n_0\,
      O => \tm_out[0]_i_2_n_0\
    );
\tm_out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35F53F3F35F5FFFF"
    )
        port map (
      I0 => larson(4),
      I1 => instruction_step_reg(4),
      I2 => instruction_step_reg(1),
      I3 => larson(3),
      I4 => instruction_step_reg(3),
      I5 => larson(7),
      O => \tm_out[0]_i_3_n_0\
    );
\tm_out[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10951090"
    )
        port map (
      I0 => instruction_step_reg(4),
      I1 => instruction_step_reg(3),
      I2 => instruction_step_reg(0),
      I3 => instruction_step_reg(1),
      I4 => larson(0),
      O => \tm_out[0]_i_4_n_0\
    );
\tm_out[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C4C7"
    )
        port map (
      I0 => larson(2),
      I1 => instruction_step_reg(3),
      I2 => instruction_step_reg(0),
      I3 => larson(6),
      O => \tm_out[0]_i_5_n_0\
    );
\tm_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08200A2E"
    )
        port map (
      I0 => instruction_step_reg(0),
      I1 => instruction_step_reg(1),
      I2 => instruction_step_reg(2),
      I3 => instruction_step_reg(3),
      I4 => instruction_step_reg(4),
      O => \tm_out[1]_i_1_n_0\
    );
\tm_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C008C8"
    )
        port map (
      I0 => instruction_step_reg(1),
      I1 => instruction_step_reg(0),
      I2 => instruction_step_reg(2),
      I3 => instruction_step_reg(3),
      I4 => instruction_step_reg(4),
      O => \tm_out[2]_i_1_n_0\
    );
\tm_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4CC080C0"
    )
        port map (
      I0 => instruction_step_reg(2),
      I1 => instruction_step_reg(0),
      I2 => instruction_step_reg(1),
      I3 => instruction_step_reg(4),
      I4 => instruction_step_reg(3),
      O => \tm_out[3]_i_1_n_0\
    );
\tm_out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => instruction_step_reg(3),
      I1 => instruction_step_reg(2),
      I2 => instruction_step_reg(4),
      I3 => instruction_step_reg(0),
      O => \tm_out[4]_i_1_n_0\
    );
\tm_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80C08080"
    )
        port map (
      I0 => instruction_step_reg(2),
      I1 => instruction_step_reg(0),
      I2 => instruction_step_reg(4),
      I3 => instruction_step_reg(1),
      I4 => instruction_step_reg(3),
      O => \tm_out[5]_i_1_n_0\
    );
\tm_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA1A9A0"
    )
        port map (
      I0 => instruction_step_reg(0),
      I1 => instruction_step_reg(3),
      I2 => instruction_step_reg(2),
      I3 => instruction_step_reg(1),
      I4 => instruction_step_reg(4),
      O => \tm_out[6]_i_1_n_0\
    );
\tm_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F0F0F8F8F0FF"
    )
        port map (
      I0 => instruction_step_reg(0),
      I1 => \tm_out[7]_i_3_n_0\,
      I2 => \tm_out[7]_i_4_n_0\,
      I3 => instruction_step_reg(2),
      I4 => instruction_step_reg(1),
      I5 => \tm_out[7]_i_5_n_0\,
      O => \tm_out[7]_i_2_n_0\
    );
\tm_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dots(0),
      I1 => dots(4),
      I2 => instruction_step_reg(2),
      I3 => dots(2),
      I4 => instruction_step_reg(3),
      I5 => dots(6),
      O => \tm_out[7]_i_3_n_0\
    );
\tm_out[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"440F0000"
    )
        port map (
      I0 => \tm_out[7]_i_6_n_0\,
      I1 => instruction_step_reg(2),
      I2 => instruction_step_reg(3),
      I3 => instruction_step_reg(4),
      I4 => instruction_step_reg(0),
      O => \tm_out[7]_i_4_n_0\
    );
\tm_out[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4777CFCF"
    )
        port map (
      I0 => dots(3),
      I1 => instruction_step_reg(3),
      I2 => instruction_step_reg(4),
      I3 => dots(7),
      I4 => instruction_step_reg(0),
      O => \tm_out[7]_i_5_n_0\
    );
\tm_out[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => instruction_step_reg(1),
      I1 => dots(5),
      I2 => instruction_step_reg(3),
      I3 => dots(1),
      O => \tm_out[7]_i_6_n_0\
    );
\tm_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_tm1638_n_8,
      D => \tm_out[0]_i_1_n_0\,
      Q => \tm_out_reg_n_0_[0]\,
      R => '0'
    );
\tm_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_tm1638_n_8,
      D => \tm_out[1]_i_1_n_0\,
      Q => \tm_out_reg_n_0_[1]\,
      R => '0'
    );
\tm_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_tm1638_n_8,
      D => \tm_out[2]_i_1_n_0\,
      Q => \tm_out_reg_n_0_[2]\,
      R => '0'
    );
\tm_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_tm1638_n_8,
      D => \tm_out[3]_i_1_n_0\,
      Q => \tm_out_reg_n_0_[3]\,
      R => '0'
    );
\tm_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_tm1638_n_8,
      D => \tm_out[4]_i_1_n_0\,
      Q => \tm_out_reg_n_0_[4]\,
      R => '0'
    );
\tm_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_tm1638_n_8,
      D => \tm_out[5]_i_1_n_0\,
      Q => \tm_out_reg_n_0_[5]\,
      R => '0'
    );
\tm_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_tm1638_n_8,
      D => \tm_out[6]_i_1_n_0\,
      Q => \tm_out_reg_n_0_[6]\,
      R => '0'
    );
\tm_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_tm1638_n_8,
      D => \tm_out[7]_i_2_n_0\,
      Q => \tm_out_reg_n_0_[7]\,
      R => '0'
    );
tm_rw_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => u_tm1638_n_10,
      Q => \^tm_rw_reg_0\,
      S => rst
    );
u_tm1638: entity work.design_1_tm1638_demo_0_0_tm1638
     port map (
      E(0) => u_tm1638_n_8,
      \FSM_onehot_cur_state_reg[0]_0\ => u_tm1638_n_6,
      \FSM_onehot_cur_state_reg[0]_1\ => u_tm1638_n_7,
      \FSM_onehot_cur_state_reg[1]_0\ => tm_latch_reg_n_0,
      Q(7) => \tm_out_reg_n_0_[7]\,
      Q(6) => \tm_out_reg_n_0_[6]\,
      Q(5) => \tm_out_reg_n_0_[5]\,
      Q(4) => \tm_out_reg_n_0_[4]\,
      Q(3) => \tm_out_reg_n_0_[3]\,
      Q(2) => \tm_out_reg_n_0_[2]\,
      Q(1) => \tm_out_reg_n_0_[1]\,
      Q(0) => \tm_out_reg_n_0_[0]\,
      clk => clk,
      counter_reg(0) => counter_reg(0),
      \counter_reg[0]\(0) => instruction_step0,
      \data_out_q_reg[4]_0\(1) => tm_data(4),
      \data_out_q_reg[4]_0\(0) => tm_data(0),
      \data_q_reg[6]_0\ => \^tm_rw_reg_0\,
      dio_in => dio_in,
      dio_out => dio_out,
      \instruction_step_reg[3]\ => u_tm1638_n_10,
      \keys_reg[0]\(5 downto 0) => instruction_step_reg(5 downto 0),
      rst => rst,
      tm_clk => tm_clk,
      tm_cs => \^tm_cs\,
      tm_cs_reg => u_tm1638_n_11,
      tm_cs_reg_0 => tm_cs_i_2_n_0,
      tm_latch => tm_latch,
      tm_latch_reg => u_tm1638_n_4,
      tm_out => tm_out,
      tm_rw_reg => u_tm1638_n_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_tm1638_demo_0_0 is
  port (
    clk : in STD_LOGIC;
    larson : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dots : in STD_LOGIC_VECTOR ( 7 downto 0 );
    keys : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tm_cs : out STD_LOGIC;
    tm_clk : out STD_LOGIC;
    tm_rw : out STD_LOGIC;
    tm_dio : inout STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_tm1638_demo_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_tm1638_demo_0_0 : entity is "design_1_tm1638_demo_0_0,tm1638_demo,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_tm1638_demo_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_tm1638_demo_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_tm1638_demo_0_0 : entity is "tm1638_demo,Vivado 2020.2.1";
end design_1_tm1638_demo_0_0;

architecture STRUCTURE of design_1_tm1638_demo_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tm_clk : signal is "xilinx.com:signal:clock:1.0 tm_clk CLK";
  attribute X_INTERFACE_PARAMETER of tm_clk : signal is "XIL_INTERFACENAME tm_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_tm1638_demo_0_0_tm_clk, INSERT_VIP 0";
begin
inst: entity work.design_1_tm1638_demo_0_0_tm1638_demo
     port map (
      clk => clk,
      dots(7 downto 0) => dots(7 downto 0),
      keys(7 downto 0) => keys(7 downto 0),
      larson(7 downto 0) => larson(7 downto 0),
      tm_clk => tm_clk,
      tm_cs => tm_cs,
      tm_dio => tm_dio,
      tm_rw_reg_0 => tm_rw
    );
end STRUCTURE;
