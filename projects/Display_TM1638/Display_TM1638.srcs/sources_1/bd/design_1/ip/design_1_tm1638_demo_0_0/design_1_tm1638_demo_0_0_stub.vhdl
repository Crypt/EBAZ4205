-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.1 (lin64) Build 3080587 Fri Dec 11 14:53:26 MST 2020
-- Date        : Mon Mar  8 14:35:16 2021
-- Host        : I7MINT running 64-bit Linux Mint 20.1
-- Command     : write_vhdl -force -mode synth_stub
--               /home/david/ebaz4205/projects/Display_LEDs/Display_LEDs.srcs/sources_1/bd/design_1/ip/design_1_tm1638_demo_0_0/design_1_tm1638_demo_0_0_stub.vhdl
-- Design      : design_1_tm1638_demo_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_tm1638_demo_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    larson : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dots : in STD_LOGIC_VECTOR ( 7 downto 0 );
    keys : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tm_cs : out STD_LOGIC;
    tm_clk : out STD_LOGIC;
    tm_rw : out STD_LOGIC;
    tm_dio : inout STD_LOGIC
  );

end design_1_tm1638_demo_0_0;

architecture stub of design_1_tm1638_demo_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,larson[7:0],dots[7:0],keys[7:0],tm_cs,tm_clk,tm_rw,tm_dio";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "tm1638_demo,Vivado 2020.2.1";
begin
end;
