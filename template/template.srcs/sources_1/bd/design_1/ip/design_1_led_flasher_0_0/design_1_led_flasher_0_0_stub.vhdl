-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.1 (lin64) Build 3080587 Fri Dec 11 14:53:26 MST 2020
-- Date        : Thu Feb 11 09:42:34 2021
-- Host        : I7MINT running 64-bit Linux Mint 20.1
-- Command     : write_vhdl -force -mode synth_stub
--               /home/david/Documents/GitHub/djrm-EBAZ4205/template/template.srcs/sources_1/bd/design_1/ip/design_1_led_flasher_0_0/design_1_led_flasher_0_0_stub.vhdl
-- Design      : design_1_led_flasher_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_led_flasher_0_0 is
  Port ( 
    led : out STD_LOGIC;
    switch : in STD_LOGIC;
    clk : in STD_LOGIC
  );

end design_1_led_flasher_0_0;

architecture stub of design_1_led_flasher_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "led,switch,clk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "led_flasher,Vivado 2020.2.1";
begin
end;
