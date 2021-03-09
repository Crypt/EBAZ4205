-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.1 (lin64) Build 3080587 Fri Dec 11 14:53:26 MST 2020
-- Date        : Tue Mar  9 20:56:06 2021
-- Host        : I7MINT running 64-bit Linux Mint 20.1
-- Command     : write_vhdl -force -mode synth_stub
--               /home/david/Documents/GitHub/djrm-EBAZ4205/projects/Display_TM1638/Display_TM1638.srcs/sources_1/bd/design_1/ip/design_1_quadrature_decoder_0_0/design_1_quadrature_decoder_0_0_stub.vhdl
-- Design      : design_1_quadrature_decoder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_quadrature_decoder_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    phase : in STD_LOGIC;
    set_origin_n : in STD_LOGIC;
    direction : out STD_LOGIC;
    update : out STD_LOGIC;
    value : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_quadrature_decoder_0_0;

architecture stub of design_1_quadrature_decoder_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,a,b,phase,set_origin_n,direction,update,value[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "quadrature_decoder,Vivado 2020.2.1";
begin
end;
