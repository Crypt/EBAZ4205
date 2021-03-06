// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.1 (lin64) Build 3080587 Fri Dec 11 14:53:26 MST 2020
// Date        : Sat Mar  6 22:52:00 2021
// Host        : I7MINT running 64-bit Linux Mint 20.1
// Command     : write_verilog -force -mode synth_stub
//               /home/david/Documents/GitHub/djrm-EBAZ4205/projects/Bidirectional-IO-test/Bidirectional-IO-test.gen/sources_1/bd/design_1/ip/design_1_bidi_test_0_0/design_1_bidi_test_0_0_stub.v
// Design      : design_1_bidi_test_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bidi_test,Vivado 2020.2.1" *)
module design_1_bidi_test_0_0(sig, led_r, led_g, button, clk)
/* synthesis syn_black_box black_box_pad_pin="sig,led_r,led_g,button,clk" */;
  inout sig;
  output led_r;
  output led_g;
  input button;
  input clk;
endmodule
