-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.1 (lin64) Build 3080587 Fri Dec 11 14:53:26 MST 2020
-- Date        : Tue Mar  9 20:56:05 2021
-- Host        : I7MINT running 64-bit Linux Mint 20.1
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_quadrature_decoder_0_0_sim_netlist.vhdl
-- Design      : design_1_quadrature_decoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_quadrature_decoder is
  port (
    direction_reg_0 : out STD_LOGIC;
    value : out STD_LOGIC_VECTOR ( 13 downto 0 );
    update : out STD_LOGIC;
    clk : in STD_LOGIC;
    set_origin_n : in STD_LOGIC;
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    phase : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_quadrature_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_quadrature_decoder is
  signal \a_new_reg_n_0_[0]\ : STD_LOGIC;
  signal a_prev_i_1_n_0 : STD_LOGIC;
  signal a_prev_reg_n_0 : STD_LOGIC;
  signal \b_new[0]_i_1_n_0\ : STD_LOGIC;
  signal \b_new_reg_n_0_[0]\ : STD_LOGIC;
  signal b_prev : STD_LOGIC;
  signal b_prev_i_1_n_0 : STD_LOGIC;
  signal debounce_cnt : STD_LOGIC;
  signal debounce_cnt0 : STD_LOGIC;
  signal \debounce_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \debounce_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \debounce_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \debounce_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \debounce_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal debounce_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \debounce_cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \debounce_cnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \debounce_cnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \debounce_cnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \debounce_cnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \debounce_cnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \debounce_cnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \debounce_cnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \debounce_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \debounce_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \debounce_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \debounce_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \debounce_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \debounce_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \debounce_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \debounce_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \debounce_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \debounce_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \debounce_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \debounce_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \debounce_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \debounce_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \debounce_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \debounce_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \debounce_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \debounce_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \debounce_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \debounce_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \debounce_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal direction_i_1_n_0 : STD_LOGIC;
  signal direction_i_2_n_0 : STD_LOGIC;
  signal direction_i_3_n_0 : STD_LOGIC;
  signal \^direction_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal position0 : STD_LOGIC;
  signal \position[0]_i_1_n_0\ : STD_LOGIC;
  signal \position[10]_i_1_n_0\ : STD_LOGIC;
  signal \position[12]_i_1_n_0\ : STD_LOGIC;
  signal \position[12]_i_3_n_0\ : STD_LOGIC;
  signal \position[12]_i_4_n_0\ : STD_LOGIC;
  signal \position[12]_i_5_n_0\ : STD_LOGIC;
  signal \position[12]_i_6_n_0\ : STD_LOGIC;
  signal \position[13]_i_10_n_0\ : STD_LOGIC;
  signal \position[13]_i_11_n_0\ : STD_LOGIC;
  signal \position[13]_i_12_n_0\ : STD_LOGIC;
  signal \position[13]_i_13_n_0\ : STD_LOGIC;
  signal \position[13]_i_1_n_0\ : STD_LOGIC;
  signal \position[13]_i_2_n_0\ : STD_LOGIC;
  signal \position[13]_i_3_n_0\ : STD_LOGIC;
  signal \position[13]_i_4_n_0\ : STD_LOGIC;
  signal \position[13]_i_6_n_0\ : STD_LOGIC;
  signal \position[13]_i_7_n_0\ : STD_LOGIC;
  signal \position[13]_i_8_n_0\ : STD_LOGIC;
  signal \position[13]_i_9_n_0\ : STD_LOGIC;
  signal \position[1]_i_1_n_0\ : STD_LOGIC;
  signal \position[2]_i_1_n_0\ : STD_LOGIC;
  signal \position[3]_i_1_n_0\ : STD_LOGIC;
  signal \position[4]_i_2_n_0\ : STD_LOGIC;
  signal \position[4]_i_3_n_0\ : STD_LOGIC;
  signal \position[4]_i_4_n_0\ : STD_LOGIC;
  signal \position[4]_i_5_n_0\ : STD_LOGIC;
  signal \position[7]_i_2_n_0\ : STD_LOGIC;
  signal \position[7]_i_3_n_0\ : STD_LOGIC;
  signal \position[7]_i_4_n_0\ : STD_LOGIC;
  signal \position[7]_i_5_n_0\ : STD_LOGIC;
  signal \position[8]_i_1_n_0\ : STD_LOGIC;
  signal \position[9]_i_1_n_0\ : STD_LOGIC;
  signal \position_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \position_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \position_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \position_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \position_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \position_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \position_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \position_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \position_reg[13]_i_5_n_7\ : STD_LOGIC;
  signal \position_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \position_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \position_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \position_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \position_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \position_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \position_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \position_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \position_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \position_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \position_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \position_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \position_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \position_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \position_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \position_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \position_reg_n_0_[0]\ : STD_LOGIC;
  signal \position_reg_n_0_[10]\ : STD_LOGIC;
  signal \position_reg_n_0_[11]\ : STD_LOGIC;
  signal \position_reg_n_0_[12]\ : STD_LOGIC;
  signal \position_reg_n_0_[13]\ : STD_LOGIC;
  signal \position_reg_n_0_[1]\ : STD_LOGIC;
  signal \position_reg_n_0_[2]\ : STD_LOGIC;
  signal \position_reg_n_0_[3]\ : STD_LOGIC;
  signal \position_reg_n_0_[4]\ : STD_LOGIC;
  signal \position_reg_n_0_[5]\ : STD_LOGIC;
  signal \position_reg_n_0_[6]\ : STD_LOGIC;
  signal \position_reg_n_0_[7]\ : STD_LOGIC;
  signal \position_reg_n_0_[8]\ : STD_LOGIC;
  signal \position_reg_n_0_[9]\ : STD_LOGIC;
  signal set_origin_cnt : STD_LOGIC;
  signal set_origin_cnt0 : STD_LOGIC;
  signal \set_origin_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \set_origin_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \set_origin_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \set_origin_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \set_origin_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \set_origin_cnt[0]_i_9_n_0\ : STD_LOGIC;
  signal set_origin_cnt_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \set_origin_cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \set_origin_cnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \set_origin_cnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \set_origin_cnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \set_origin_cnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \set_origin_cnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \set_origin_cnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \set_origin_cnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \set_origin_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \set_origin_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \set_origin_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \set_origin_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \set_origin_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \set_origin_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \set_origin_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \set_origin_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \set_origin_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \set_origin_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \set_origin_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \set_origin_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \set_origin_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \set_origin_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \set_origin_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \set_origin_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \set_origin_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \set_origin_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \set_origin_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \set_origin_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \set_origin_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \set_origin_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \set_origin_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \set_origin_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \set_origin_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \set_origin_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \set_origin_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \set_origin_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \set_origin_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal set_origin_n_int_i_1_n_0 : STD_LOGIC;
  signal set_origin_n_int_reg_n_0 : STD_LOGIC;
  signal \set_origin_n_new_reg_n_0_[0]\ : STD_LOGIC;
  signal update_i_1_n_0 : STD_LOGIC;
  signal \NLW_debounce_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_position_reg[13]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_position_reg[13]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_set_origin_cnt_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_set_origin_cnt_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \debounce_cnt_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \debounce_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \debounce_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \debounce_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \position[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \position[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \position[13]_i_11\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \position[13]_i_13\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \position[13]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \position[13]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \position[13]_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \position[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \position[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \position[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \position[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \position[9]_i_1\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD of \position_reg[12]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \position_reg[12]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \position_reg[13]_i_5\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \position_reg[13]_i_5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \position_reg[4]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \position_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \position_reg[7]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \position_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \set_origin_cnt_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \set_origin_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \set_origin_cnt_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \set_origin_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \set_origin_cnt_reg[8]_i_1\ : label is 11;
begin
  direction_reg_0 <= \^direction_reg_0\;
\a_new[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b,
      O => p_1_out(0)
    );
\a_new_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_out(0),
      Q => \a_new_reg_n_0_[0]\,
      R => '0'
    );
\a_new_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \a_new_reg_n_0_[0]\,
      Q => p_0_in_0,
      R => '0'
    );
a_prev_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF600009000"
    )
        port map (
      I0 => \b_new_reg_n_0_[0]\,
      I1 => p_0_in0_in,
      I2 => \a_new_reg_n_0_[0]\,
      I3 => p_0_in_0,
      I4 => debounce_cnt,
      I5 => a_prev_reg_n_0,
      O => a_prev_i_1_n_0
    );
a_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_prev_i_1_n_0,
      Q => a_prev_reg_n_0,
      R => '0'
    );
\b_new[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a,
      O => \b_new[0]_i_1_n_0\
    );
\b_new_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \b_new[0]_i_1_n_0\,
      Q => \b_new_reg_n_0_[0]\,
      R => '0'
    );
\b_new_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \b_new_reg_n_0_[0]\,
      Q => p_0_in0_in,
      R => '0'
    );
b_prev_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFE00008008"
    )
        port map (
      I0 => \b_new_reg_n_0_[0]\,
      I1 => p_0_in0_in,
      I2 => \a_new_reg_n_0_[0]\,
      I3 => p_0_in_0,
      I4 => debounce_cnt,
      I5 => b_prev,
      O => b_prev_i_1_n_0
    );
b_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => b_prev_i_1_n_0,
      Q => b_prev,
      R => '0'
    );
\debounce_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \b_new_reg_n_0_[0]\,
      I1 => p_0_in0_in,
      I2 => \a_new_reg_n_0_[0]\,
      I3 => p_0_in_0,
      O => debounce_cnt0
    );
\debounce_cnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \debounce_cnt[0]_i_4_n_0\,
      I1 => \debounce_cnt[0]_i_5_n_0\,
      I2 => \debounce_cnt[0]_i_6_n_0\,
      I3 => \debounce_cnt[0]_i_7_n_0\,
      O => debounce_cnt
    );
\debounce_cnt[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => debounce_cnt_reg(6),
      I1 => debounce_cnt_reg(15),
      I2 => debounce_cnt_reg(3),
      I3 => debounce_cnt_reg(7),
      O => \debounce_cnt[0]_i_4_n_0\
    );
\debounce_cnt[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => debounce_cnt_reg(2),
      I1 => debounce_cnt_reg(13),
      I2 => debounce_cnt_reg(14),
      I3 => debounce_cnt_reg(5),
      O => \debounce_cnt[0]_i_5_n_0\
    );
\debounce_cnt[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => debounce_cnt_reg(10),
      I1 => debounce_cnt_reg(0),
      I2 => debounce_cnt_reg(9),
      I3 => debounce_cnt_reg(1),
      O => \debounce_cnt[0]_i_6_n_0\
    );
\debounce_cnt[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => debounce_cnt_reg(8),
      I1 => debounce_cnt_reg(4),
      I2 => debounce_cnt_reg(12),
      I3 => debounce_cnt_reg(11),
      O => \debounce_cnt[0]_i_7_n_0\
    );
\debounce_cnt[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => debounce_cnt_reg(0),
      O => \debounce_cnt[0]_i_8_n_0\
    );
\debounce_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_cnt,
      D => \debounce_cnt_reg[0]_i_3_n_7\,
      Q => debounce_cnt_reg(0),
      R => debounce_cnt0
    );
\debounce_cnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \debounce_cnt_reg[0]_i_3_n_0\,
      CO(2) => \debounce_cnt_reg[0]_i_3_n_1\,
      CO(1) => \debounce_cnt_reg[0]_i_3_n_2\,
      CO(0) => \debounce_cnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \debounce_cnt_reg[0]_i_3_n_4\,
      O(2) => \debounce_cnt_reg[0]_i_3_n_5\,
      O(1) => \debounce_cnt_reg[0]_i_3_n_6\,
      O(0) => \debounce_cnt_reg[0]_i_3_n_7\,
      S(3 downto 1) => debounce_cnt_reg(3 downto 1),
      S(0) => \debounce_cnt[0]_i_8_n_0\
    );
\debounce_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_cnt,
      D => \debounce_cnt_reg[8]_i_1_n_5\,
      Q => debounce_cnt_reg(10),
      R => debounce_cnt0
    );
\debounce_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_cnt,
      D => \debounce_cnt_reg[8]_i_1_n_4\,
      Q => debounce_cnt_reg(11),
      R => debounce_cnt0
    );
\debounce_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_cnt,
      D => \debounce_cnt_reg[12]_i_1_n_7\,
      Q => debounce_cnt_reg(12),
      R => debounce_cnt0
    );
\debounce_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \debounce_cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_debounce_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \debounce_cnt_reg[12]_i_1_n_1\,
      CO(1) => \debounce_cnt_reg[12]_i_1_n_2\,
      CO(0) => \debounce_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \debounce_cnt_reg[12]_i_1_n_4\,
      O(2) => \debounce_cnt_reg[12]_i_1_n_5\,
      O(1) => \debounce_cnt_reg[12]_i_1_n_6\,
      O(0) => \debounce_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => debounce_cnt_reg(15 downto 12)
    );
\debounce_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_cnt,
      D => \debounce_cnt_reg[12]_i_1_n_6\,
      Q => debounce_cnt_reg(13),
      R => debounce_cnt0
    );
\debounce_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_cnt,
      D => \debounce_cnt_reg[12]_i_1_n_5\,
      Q => debounce_cnt_reg(14),
      R => debounce_cnt0
    );
\debounce_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_cnt,
      D => \debounce_cnt_reg[12]_i_1_n_4\,
      Q => debounce_cnt_reg(15),
      R => debounce_cnt0
    );
\debounce_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_cnt,
      D => \debounce_cnt_reg[0]_i_3_n_6\,
      Q => debounce_cnt_reg(1),
      R => debounce_cnt0
    );
\debounce_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_cnt,
      D => \debounce_cnt_reg[0]_i_3_n_5\,
      Q => debounce_cnt_reg(2),
      R => debounce_cnt0
    );
\debounce_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_cnt,
      D => \debounce_cnt_reg[0]_i_3_n_4\,
      Q => debounce_cnt_reg(3),
      R => debounce_cnt0
    );
\debounce_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_cnt,
      D => \debounce_cnt_reg[4]_i_1_n_7\,
      Q => debounce_cnt_reg(4),
      R => debounce_cnt0
    );
\debounce_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \debounce_cnt_reg[0]_i_3_n_0\,
      CO(3) => \debounce_cnt_reg[4]_i_1_n_0\,
      CO(2) => \debounce_cnt_reg[4]_i_1_n_1\,
      CO(1) => \debounce_cnt_reg[4]_i_1_n_2\,
      CO(0) => \debounce_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \debounce_cnt_reg[4]_i_1_n_4\,
      O(2) => \debounce_cnt_reg[4]_i_1_n_5\,
      O(1) => \debounce_cnt_reg[4]_i_1_n_6\,
      O(0) => \debounce_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => debounce_cnt_reg(7 downto 4)
    );
\debounce_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_cnt,
      D => \debounce_cnt_reg[4]_i_1_n_6\,
      Q => debounce_cnt_reg(5),
      R => debounce_cnt0
    );
\debounce_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_cnt,
      D => \debounce_cnt_reg[4]_i_1_n_5\,
      Q => debounce_cnt_reg(6),
      R => debounce_cnt0
    );
\debounce_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_cnt,
      D => \debounce_cnt_reg[4]_i_1_n_4\,
      Q => debounce_cnt_reg(7),
      R => debounce_cnt0
    );
\debounce_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_cnt,
      D => \debounce_cnt_reg[8]_i_1_n_7\,
      Q => debounce_cnt_reg(8),
      R => debounce_cnt0
    );
\debounce_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \debounce_cnt_reg[4]_i_1_n_0\,
      CO(3) => \debounce_cnt_reg[8]_i_1_n_0\,
      CO(2) => \debounce_cnt_reg[8]_i_1_n_1\,
      CO(1) => \debounce_cnt_reg[8]_i_1_n_2\,
      CO(0) => \debounce_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \debounce_cnt_reg[8]_i_1_n_4\,
      O(2) => \debounce_cnt_reg[8]_i_1_n_5\,
      O(1) => \debounce_cnt_reg[8]_i_1_n_6\,
      O(0) => \debounce_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => debounce_cnt_reg(11 downto 8)
    );
\debounce_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_cnt,
      D => \debounce_cnt_reg[8]_i_1_n_6\,
      Q => debounce_cnt_reg(9),
      R => debounce_cnt0
    );
direction_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF96FF00009600"
    )
        port map (
      I0 => p_0_in_0,
      I1 => phase,
      I2 => b_prev,
      I3 => set_origin_n_int_reg_n_0,
      I4 => direction_i_2_n_0,
      I5 => \^direction_reg_0\,
      O => direction_i_1_n_0
    );
direction_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \debounce_cnt[0]_i_7_n_0\,
      I1 => \debounce_cnt[0]_i_6_n_0\,
      I2 => \debounce_cnt[0]_i_5_n_0\,
      I3 => \debounce_cnt[0]_i_4_n_0\,
      I4 => direction_i_3_n_0,
      O => direction_i_2_n_0
    );
direction_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a_prev_reg_n_0,
      I1 => p_0_in_0,
      I2 => b_prev,
      I3 => p_0_in0_in,
      O => direction_i_3_n_0
    );
direction_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => direction_i_1_n_0,
      Q => \^direction_reg_0\,
      R => '0'
    );
\position[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \position[13]_i_6_n_0\,
      I1 => \position_reg_n_0_[0]\,
      O => \position[0]_i_1_n_0\
    );
\position[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \position_reg[12]_i_2_n_6\,
      I1 => \position[13]_i_6_n_0\,
      O => \position[10]_i_1_n_0\
    );
\position[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333333FBBBBBBB"
    )
        port map (
      I0 => \position[13]_i_6_n_0\,
      I1 => set_origin_n_int_reg_n_0,
      I2 => \position[13]_i_4_n_0\,
      I3 => \position_reg_n_0_[13]\,
      I4 => \^direction_reg_0\,
      I5 => direction_i_2_n_0,
      O => \position[12]_i_1_n_0\
    );
\position[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[11]\,
      I1 => \position_reg_n_0_[12]\,
      O => \position[12]_i_3_n_0\
    );
\position[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[10]\,
      I1 => \position_reg_n_0_[11]\,
      O => \position[12]_i_4_n_0\
    );
\position[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[9]\,
      I1 => \position_reg_n_0_[10]\,
      O => \position[12]_i_5_n_0\
    );
\position[12]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[8]\,
      I1 => \position_reg_n_0_[9]\,
      O => \position[12]_i_6_n_0\
    );
\position[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4000FFFF"
    )
        port map (
      I0 => direction_i_2_n_0,
      I1 => \^direction_reg_0\,
      I2 => \position_reg_n_0_[13]\,
      I3 => \position[13]_i_4_n_0\,
      I4 => set_origin_n_int_reg_n_0,
      O => \position[13]_i_1_n_0\
    );
\position[13]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[12]\,
      I1 => \position_reg_n_0_[13]\,
      O => \position[13]_i_10_n_0\
    );
\position[13]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \position_reg_n_0_[5]\,
      I1 => \position_reg_n_0_[4]\,
      I2 => \position_reg_n_0_[12]\,
      I3 => \position_reg_n_0_[11]\,
      O => \position[13]_i_11_n_0\
    );
\position[13]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \position_reg_n_0_[7]\,
      I1 => \position_reg_n_0_[6]\,
      I2 => \position_reg_n_0_[13]\,
      I3 => \position_reg_n_0_[10]\,
      O => \position[13]_i_12_n_0\
    );
\position[13]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \position_reg_n_0_[8]\,
      I1 => \position_reg_n_0_[2]\,
      I2 => \position_reg_n_0_[0]\,
      I3 => \position_reg_n_0_[1]\,
      O => \position[13]_i_13_n_0\
    );
\position[13]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => direction_i_2_n_0,
      O => \position[13]_i_2_n_0\
    );
\position[13]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \position_reg[13]_i_5_n_7\,
      I1 => \position[13]_i_6_n_0\,
      O => \position[13]_i_3_n_0\
    );
\position[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEAAAEAAAAAAA"
    )
        port map (
      I0 => \position[13]_i_7_n_0\,
      I1 => \position_reg_n_0_[10]\,
      I2 => \position_reg_n_0_[9]\,
      I3 => \position_reg_n_0_[8]\,
      I4 => \position[13]_i_8_n_0\,
      I5 => \position[13]_i_9_n_0\,
      O => \position[13]_i_4_n_0\
    );
\position[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \position[13]_i_11_n_0\,
      I1 => \position[13]_i_12_n_0\,
      I2 => \position[13]_i_13_n_0\,
      I3 => \^direction_reg_0\,
      I4 => \position_reg_n_0_[9]\,
      I5 => \position_reg_n_0_[3]\,
      O => \position[13]_i_6_n_0\
    );
\position[13]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \position_reg_n_0_[11]\,
      I1 => \position_reg_n_0_[12]\,
      O => \position[13]_i_7_n_0\
    );
\position[13]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \position_reg_n_0_[2]\,
      I1 => \position_reg_n_0_[1]\,
      I2 => \position_reg_n_0_[0]\,
      I3 => \position_reg_n_0_[3]\,
      O => \position[13]_i_8_n_0\
    );
\position[13]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \position_reg_n_0_[7]\,
      I1 => \position_reg_n_0_[6]\,
      I2 => \position_reg_n_0_[5]\,
      I3 => \position_reg_n_0_[4]\,
      O => \position[13]_i_9_n_0\
    );
\position[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \position_reg[4]_i_1_n_7\,
      I1 => \position[13]_i_6_n_0\,
      O => \position[1]_i_1_n_0\
    );
\position[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \position_reg[4]_i_1_n_6\,
      I1 => \position[13]_i_6_n_0\,
      O => \position[2]_i_1_n_0\
    );
\position[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \position_reg[4]_i_1_n_5\,
      I1 => \position[13]_i_6_n_0\,
      O => \position[3]_i_1_n_0\
    );
\position[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[3]\,
      I1 => \position_reg_n_0_[4]\,
      O => \position[4]_i_2_n_0\
    );
\position[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[2]\,
      I1 => \position_reg_n_0_[3]\,
      O => \position[4]_i_3_n_0\
    );
\position[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[1]\,
      I1 => \position_reg_n_0_[2]\,
      O => \position[4]_i_4_n_0\
    );
\position[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[1]\,
      I1 => \^direction_reg_0\,
      O => \position[4]_i_5_n_0\
    );
\position[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[7]\,
      I1 => \position_reg_n_0_[8]\,
      O => \position[7]_i_2_n_0\
    );
\position[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[6]\,
      I1 => \position_reg_n_0_[7]\,
      O => \position[7]_i_3_n_0\
    );
\position[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[5]\,
      I1 => \position_reg_n_0_[6]\,
      O => \position[7]_i_4_n_0\
    );
\position[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[4]\,
      I1 => \position_reg_n_0_[5]\,
      O => \position[7]_i_5_n_0\
    );
\position[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \position_reg[7]_i_1_n_4\,
      I1 => \position[13]_i_6_n_0\,
      O => \position[8]_i_1_n_0\
    );
\position[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \position_reg[12]_i_2_n_7\,
      I1 => \position[13]_i_6_n_0\,
      O => \position[9]_i_1_n_0\
    );
\position_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \position[13]_i_2_n_0\,
      D => \position[0]_i_1_n_0\,
      Q => \position_reg_n_0_[0]\,
      R => \position[13]_i_1_n_0\
    );
\position_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \position[13]_i_2_n_0\,
      D => \position[10]_i_1_n_0\,
      Q => \position_reg_n_0_[10]\,
      R => \position[13]_i_1_n_0\
    );
\position_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg[12]_i_2_n_5\,
      Q => \position_reg_n_0_[11]\,
      R => \position[12]_i_1_n_0\
    );
\position_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg[12]_i_2_n_4\,
      Q => \position_reg_n_0_[12]\,
      R => \position[12]_i_1_n_0\
    );
\position_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_reg[7]_i_1_n_0\,
      CO(3) => \position_reg[12]_i_2_n_0\,
      CO(2) => \position_reg[12]_i_2_n_1\,
      CO(1) => \position_reg[12]_i_2_n_2\,
      CO(0) => \position_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \position_reg_n_0_[11]\,
      DI(2) => \position_reg_n_0_[10]\,
      DI(1) => \position_reg_n_0_[9]\,
      DI(0) => \position_reg_n_0_[8]\,
      O(3) => \position_reg[12]_i_2_n_4\,
      O(2) => \position_reg[12]_i_2_n_5\,
      O(1) => \position_reg[12]_i_2_n_6\,
      O(0) => \position_reg[12]_i_2_n_7\,
      S(3) => \position[12]_i_3_n_0\,
      S(2) => \position[12]_i_4_n_0\,
      S(1) => \position[12]_i_5_n_0\,
      S(0) => \position[12]_i_6_n_0\
    );
\position_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \position[13]_i_2_n_0\,
      D => \position[13]_i_3_n_0\,
      Q => \position_reg_n_0_[13]\,
      R => \position[13]_i_1_n_0\
    );
\position_reg[13]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_reg[12]_i_2_n_0\,
      CO(3 downto 0) => \NLW_position_reg[13]_i_5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_position_reg[13]_i_5_O_UNCONNECTED\(3 downto 1),
      O(0) => \position_reg[13]_i_5_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \position[13]_i_10_n_0\
    );
\position_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \position[13]_i_2_n_0\,
      D => \position[1]_i_1_n_0\,
      Q => \position_reg_n_0_[1]\,
      R => \position[13]_i_1_n_0\
    );
\position_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \position[13]_i_2_n_0\,
      D => \position[2]_i_1_n_0\,
      Q => \position_reg_n_0_[2]\,
      R => \position[13]_i_1_n_0\
    );
\position_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \position[13]_i_2_n_0\,
      D => \position[3]_i_1_n_0\,
      Q => \position_reg_n_0_[3]\,
      R => \position[13]_i_1_n_0\
    );
\position_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg[4]_i_1_n_4\,
      Q => \position_reg_n_0_[4]\,
      R => \position[12]_i_1_n_0\
    );
\position_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \position_reg[4]_i_1_n_0\,
      CO(2) => \position_reg[4]_i_1_n_1\,
      CO(1) => \position_reg[4]_i_1_n_2\,
      CO(0) => \position_reg[4]_i_1_n_3\,
      CYINIT => \position_reg_n_0_[0]\,
      DI(3) => \position_reg_n_0_[3]\,
      DI(2) => \position_reg_n_0_[2]\,
      DI(1) => \position_reg_n_0_[1]\,
      DI(0) => \^direction_reg_0\,
      O(3) => \position_reg[4]_i_1_n_4\,
      O(2) => \position_reg[4]_i_1_n_5\,
      O(1) => \position_reg[4]_i_1_n_6\,
      O(0) => \position_reg[4]_i_1_n_7\,
      S(3) => \position[4]_i_2_n_0\,
      S(2) => \position[4]_i_3_n_0\,
      S(1) => \position[4]_i_4_n_0\,
      S(0) => \position[4]_i_5_n_0\
    );
\position_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg[7]_i_1_n_7\,
      Q => \position_reg_n_0_[5]\,
      R => \position[12]_i_1_n_0\
    );
\position_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg[7]_i_1_n_6\,
      Q => \position_reg_n_0_[6]\,
      R => \position[12]_i_1_n_0\
    );
\position_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg[7]_i_1_n_5\,
      Q => \position_reg_n_0_[7]\,
      R => \position[12]_i_1_n_0\
    );
\position_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_reg[4]_i_1_n_0\,
      CO(3) => \position_reg[7]_i_1_n_0\,
      CO(2) => \position_reg[7]_i_1_n_1\,
      CO(1) => \position_reg[7]_i_1_n_2\,
      CO(0) => \position_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \position_reg_n_0_[7]\,
      DI(2) => \position_reg_n_0_[6]\,
      DI(1) => \position_reg_n_0_[5]\,
      DI(0) => \position_reg_n_0_[4]\,
      O(3) => \position_reg[7]_i_1_n_4\,
      O(2) => \position_reg[7]_i_1_n_5\,
      O(1) => \position_reg[7]_i_1_n_6\,
      O(0) => \position_reg[7]_i_1_n_7\,
      S(3) => \position[7]_i_2_n_0\,
      S(2) => \position[7]_i_3_n_0\,
      S(1) => \position[7]_i_4_n_0\,
      S(0) => \position[7]_i_5_n_0\
    );
\position_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \position[13]_i_2_n_0\,
      D => \position[8]_i_1_n_0\,
      Q => \position_reg_n_0_[8]\,
      R => \position[13]_i_1_n_0\
    );
\position_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \position[13]_i_2_n_0\,
      D => \position[9]_i_1_n_0\,
      Q => \position_reg_n_0_[9]\,
      R => \position[13]_i_1_n_0\
    );
\set_origin_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \set_origin_n_new_reg_n_0_[0]\,
      I1 => p_0_in2_in,
      O => set_origin_cnt0
    );
\set_origin_cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \set_origin_cnt[0]_i_4_n_0\,
      I1 => \set_origin_cnt[0]_i_5_n_0\,
      I2 => \set_origin_cnt[0]_i_6_n_0\,
      I3 => \set_origin_cnt[0]_i_7_n_0\,
      I4 => \set_origin_cnt[0]_i_8_n_0\,
      O => set_origin_cnt
    );
\set_origin_cnt[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => set_origin_cnt_reg(18),
      I1 => set_origin_cnt_reg(11),
      I2 => set_origin_cnt_reg(15),
      I3 => set_origin_cnt_reg(8),
      O => \set_origin_cnt[0]_i_4_n_0\
    );
\set_origin_cnt[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => set_origin_cnt_reg(5),
      I1 => set_origin_cnt_reg(3),
      I2 => set_origin_cnt_reg(13),
      I3 => set_origin_cnt_reg(0),
      O => \set_origin_cnt[0]_i_5_n_0\
    );
\set_origin_cnt[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => set_origin_cnt_reg(12),
      I1 => set_origin_cnt_reg(1),
      I2 => set_origin_cnt_reg(14),
      I3 => set_origin_cnt_reg(9),
      O => \set_origin_cnt[0]_i_6_n_0\
    );
\set_origin_cnt[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => set_origin_cnt_reg(17),
      I1 => set_origin_cnt_reg(2),
      I2 => set_origin_cnt_reg(10),
      I3 => set_origin_cnt_reg(6),
      O => \set_origin_cnt[0]_i_7_n_0\
    );
\set_origin_cnt[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => set_origin_cnt_reg(7),
      I1 => set_origin_cnt_reg(16),
      I2 => set_origin_cnt_reg(4),
      O => \set_origin_cnt[0]_i_8_n_0\
    );
\set_origin_cnt[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => set_origin_cnt_reg(0),
      O => \set_origin_cnt[0]_i_9_n_0\
    );
\set_origin_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[0]_i_3_n_7\,
      Q => set_origin_cnt_reg(0),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \set_origin_cnt_reg[0]_i_3_n_0\,
      CO(2) => \set_origin_cnt_reg[0]_i_3_n_1\,
      CO(1) => \set_origin_cnt_reg[0]_i_3_n_2\,
      CO(0) => \set_origin_cnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \set_origin_cnt_reg[0]_i_3_n_4\,
      O(2) => \set_origin_cnt_reg[0]_i_3_n_5\,
      O(1) => \set_origin_cnt_reg[0]_i_3_n_6\,
      O(0) => \set_origin_cnt_reg[0]_i_3_n_7\,
      S(3 downto 1) => set_origin_cnt_reg(3 downto 1),
      S(0) => \set_origin_cnt[0]_i_9_n_0\
    );
\set_origin_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[8]_i_1_n_5\,
      Q => set_origin_cnt_reg(10),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[8]_i_1_n_4\,
      Q => set_origin_cnt_reg(11),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[12]_i_1_n_7\,
      Q => set_origin_cnt_reg(12),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \set_origin_cnt_reg[8]_i_1_n_0\,
      CO(3) => \set_origin_cnt_reg[12]_i_1_n_0\,
      CO(2) => \set_origin_cnt_reg[12]_i_1_n_1\,
      CO(1) => \set_origin_cnt_reg[12]_i_1_n_2\,
      CO(0) => \set_origin_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \set_origin_cnt_reg[12]_i_1_n_4\,
      O(2) => \set_origin_cnt_reg[12]_i_1_n_5\,
      O(1) => \set_origin_cnt_reg[12]_i_1_n_6\,
      O(0) => \set_origin_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => set_origin_cnt_reg(15 downto 12)
    );
\set_origin_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[12]_i_1_n_6\,
      Q => set_origin_cnt_reg(13),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[12]_i_1_n_5\,
      Q => set_origin_cnt_reg(14),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[12]_i_1_n_4\,
      Q => set_origin_cnt_reg(15),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[16]_i_1_n_7\,
      Q => set_origin_cnt_reg(16),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \set_origin_cnt_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_set_origin_cnt_reg[16]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \set_origin_cnt_reg[16]_i_1_n_2\,
      CO(0) => \set_origin_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_set_origin_cnt_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \set_origin_cnt_reg[16]_i_1_n_5\,
      O(1) => \set_origin_cnt_reg[16]_i_1_n_6\,
      O(0) => \set_origin_cnt_reg[16]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => set_origin_cnt_reg(18 downto 16)
    );
\set_origin_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[16]_i_1_n_6\,
      Q => set_origin_cnt_reg(17),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[16]_i_1_n_5\,
      Q => set_origin_cnt_reg(18),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[0]_i_3_n_6\,
      Q => set_origin_cnt_reg(1),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[0]_i_3_n_5\,
      Q => set_origin_cnt_reg(2),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[0]_i_3_n_4\,
      Q => set_origin_cnt_reg(3),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[4]_i_1_n_7\,
      Q => set_origin_cnt_reg(4),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \set_origin_cnt_reg[0]_i_3_n_0\,
      CO(3) => \set_origin_cnt_reg[4]_i_1_n_0\,
      CO(2) => \set_origin_cnt_reg[4]_i_1_n_1\,
      CO(1) => \set_origin_cnt_reg[4]_i_1_n_2\,
      CO(0) => \set_origin_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \set_origin_cnt_reg[4]_i_1_n_4\,
      O(2) => \set_origin_cnt_reg[4]_i_1_n_5\,
      O(1) => \set_origin_cnt_reg[4]_i_1_n_6\,
      O(0) => \set_origin_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => set_origin_cnt_reg(7 downto 4)
    );
\set_origin_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[4]_i_1_n_6\,
      Q => set_origin_cnt_reg(5),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[4]_i_1_n_5\,
      Q => set_origin_cnt_reg(6),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[4]_i_1_n_4\,
      Q => set_origin_cnt_reg(7),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[8]_i_1_n_7\,
      Q => set_origin_cnt_reg(8),
      R => set_origin_cnt0
    );
\set_origin_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \set_origin_cnt_reg[4]_i_1_n_0\,
      CO(3) => \set_origin_cnt_reg[8]_i_1_n_0\,
      CO(2) => \set_origin_cnt_reg[8]_i_1_n_1\,
      CO(1) => \set_origin_cnt_reg[8]_i_1_n_2\,
      CO(0) => \set_origin_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \set_origin_cnt_reg[8]_i_1_n_4\,
      O(2) => \set_origin_cnt_reg[8]_i_1_n_5\,
      O(1) => \set_origin_cnt_reg[8]_i_1_n_6\,
      O(0) => \set_origin_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => set_origin_cnt_reg(11 downto 8)
    );
\set_origin_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => set_origin_cnt,
      D => \set_origin_cnt_reg[8]_i_1_n_6\,
      Q => set_origin_cnt_reg(9),
      R => set_origin_cnt0
    );
set_origin_n_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE08"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \set_origin_n_new_reg_n_0_[0]\,
      I2 => set_origin_cnt,
      I3 => set_origin_n_int_reg_n_0,
      O => set_origin_n_int_i_1_n_0
    );
set_origin_n_int_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => set_origin_n_int_i_1_n_0,
      Q => set_origin_n_int_reg_n_0,
      R => '0'
    );
\set_origin_n_new_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => set_origin_n,
      Q => \set_origin_n_new_reg_n_0_[0]\,
      R => '0'
    );
\set_origin_n_new_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \set_origin_n_new_reg_n_0_[0]\,
      Q => p_0_in2_in,
      R => '0'
    );
update_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14555514FFFFFFFF"
    )
        port map (
      I0 => debounce_cnt,
      I1 => p_0_in0_in,
      I2 => b_prev,
      I3 => p_0_in_0,
      I4 => a_prev_reg_n_0,
      I5 => set_origin_n_int_reg_n_0,
      O => update_i_1_n_0
    );
update_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => update_i_1_n_0,
      Q => update,
      R => '0'
    );
\value[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => set_origin_n_int_reg_n_0,
      O => p_0_in
    );
\value[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006FF6"
    )
        port map (
      I0 => a_prev_reg_n_0,
      I1 => p_0_in_0,
      I2 => b_prev,
      I3 => p_0_in0_in,
      I4 => debounce_cnt,
      O => position0
    );
\value_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg_n_0_[0]\,
      Q => value(0),
      R => p_0_in
    );
\value_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg_n_0_[10]\,
      Q => value(10),
      R => p_0_in
    );
\value_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg_n_0_[11]\,
      Q => value(11),
      R => p_0_in
    );
\value_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg_n_0_[12]\,
      Q => value(12),
      R => p_0_in
    );
\value_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg_n_0_[13]\,
      Q => value(13),
      R => p_0_in
    );
\value_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg_n_0_[1]\,
      Q => value(1),
      R => p_0_in
    );
\value_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg_n_0_[2]\,
      Q => value(2),
      R => p_0_in
    );
\value_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg_n_0_[3]\,
      Q => value(3),
      R => p_0_in
    );
\value_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg_n_0_[4]\,
      Q => value(4),
      R => p_0_in
    );
\value_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg_n_0_[5]\,
      Q => value(5),
      R => p_0_in
    );
\value_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg_n_0_[6]\,
      Q => value(6),
      R => p_0_in
    );
\value_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg_n_0_[7]\,
      Q => value(7),
      R => p_0_in
    );
\value_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg_n_0_[8]\,
      Q => value(8),
      R => p_0_in
    );
\value_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => position0,
      D => \position_reg_n_0_[9]\,
      Q => value(9),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    phase : in STD_LOGIC;
    set_origin_n : in STD_LOGIC;
    direction : out STD_LOGIC;
    update : out STD_LOGIC;
    value : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_quadrature_decoder_0_0,quadrature_decoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "quadrature_decoder,Vivado 2020.2.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^value\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
  value(31) <= \<const0>\;
  value(30) <= \<const0>\;
  value(29) <= \<const0>\;
  value(28) <= \<const0>\;
  value(27) <= \<const0>\;
  value(26) <= \<const0>\;
  value(25) <= \<const0>\;
  value(24) <= \<const0>\;
  value(23) <= \<const0>\;
  value(22) <= \<const0>\;
  value(21) <= \<const0>\;
  value(20) <= \<const0>\;
  value(19) <= \<const0>\;
  value(18) <= \<const0>\;
  value(17) <= \<const0>\;
  value(16) <= \<const0>\;
  value(15) <= \<const0>\;
  value(14) <= \<const0>\;
  value(13 downto 0) <= \^value\(13 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_quadrature_decoder
     port map (
      a => a,
      b => b,
      clk => clk,
      direction_reg_0 => direction,
      phase => phase,
      set_origin_n => set_origin_n,
      update => update,
      value(13 downto 0) => \^value\(13 downto 0)
    );
end STRUCTURE;
