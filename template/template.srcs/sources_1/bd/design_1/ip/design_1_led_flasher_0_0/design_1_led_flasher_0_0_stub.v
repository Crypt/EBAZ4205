// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.1 (lin64) Build 3080587 Fri Dec 11 14:53:26 MST 2020
// Date        : Wed Feb 10 08:56:45 2021
// Host        : I7MINT running 64-bit Linux Mint 20.1
// Command     : write_verilog -force -mode synth_stub
//               /home/david/Documents/GitHub/djrm-EBAZ4205/template/template.srcs/sources_1/bd/design_1/ip/design_1_led_flasher_0_0/design_1_led_flasher_0_0_stub.v
// Design      : design_1_led_flasher_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "led_flasher,Vivado 2020.2.1" *)
module design_1_led_flasher_0_0(led_g, clk)
/* synthesis syn_black_box black_box_pad_pin="led_g,clk" */;
  output led_g;
  input clk;
endmodule
