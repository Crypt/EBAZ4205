// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.1 (lin64) Build 3080587 Fri Dec 11 14:53:26 MST 2020
// Date        : Wed Mar  3 13:06:08 2021
// Host        : I7MINT running 64-bit Linux Mint 20.1
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_tm1638_demo_0_0_stub.v
// Design      : design_1_tm1638_demo_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tm1638_demo,Vivado 2020.2.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, tm_cs, tm_clk, tm_rw, tm_dio)
/* synthesis syn_black_box black_box_pad_pin="clk,tm_cs,tm_clk,tm_rw,tm_dio" */;
  input clk;
  output tm_cs;
  output tm_clk;
  output tm_rw;
  inout tm_dio;
endmodule
