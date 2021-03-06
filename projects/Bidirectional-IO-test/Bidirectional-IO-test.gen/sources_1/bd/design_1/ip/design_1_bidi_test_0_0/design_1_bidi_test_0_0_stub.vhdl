-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.1 (lin64) Build 3080587 Fri Dec 11 14:53:26 MST 2020
-- Date        : Sat Mar  6 22:52:00 2021
-- Host        : I7MINT running 64-bit Linux Mint 20.1
-- Command     : write_vhdl -force -mode synth_stub
--               /home/david/Documents/GitHub/djrm-EBAZ4205/projects/Bidirectional-IO-test/Bidirectional-IO-test.gen/sources_1/bd/design_1/ip/design_1_bidi_test_0_0/design_1_bidi_test_0_0_stub.vhdl
-- Design      : design_1_bidi_test_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_bidi_test_0_0 is
  Port ( 
    sig : inout STD_LOGIC;
    led_r : out STD_LOGIC;
    led_g : out STD_LOGIC;
    button : in STD_LOGIC;
    clk : in STD_LOGIC
  );

end design_1_bidi_test_0_0;

architecture stub of design_1_bidi_test_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sig,led_r,led_g,button,clk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bidi_test,Vivado 2020.2.1";
begin
end;
