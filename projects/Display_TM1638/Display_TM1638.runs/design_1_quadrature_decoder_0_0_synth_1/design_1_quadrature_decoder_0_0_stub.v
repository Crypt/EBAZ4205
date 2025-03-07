// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.1 (lin64) Build 3080587 Fri Dec 11 14:53:26 MST 2020
// Date        : Tue Mar  9 20:56:05 2021
// Host        : I7MINT running 64-bit Linux Mint 20.1
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_quadrature_decoder_0_0_stub.v
// Design      : design_1_quadrature_decoder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "quadrature_decoder,Vivado 2020.2.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, a, b, phase, set_origin_n, direction, update, 
  value)
/* synthesis syn_black_box black_box_pad_pin="clk,a,b,phase,set_origin_n,direction,update,value[31:0]" */;
  input clk;
  input a;
  input b;
  input phase;
  input set_origin_n;
  output direction;
  output update;
  output [31:0]value;
endmodule
