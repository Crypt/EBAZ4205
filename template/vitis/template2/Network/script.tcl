############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project template2
set_top main
add_files ../template.sdk/NetWork/src/main.c
open_solution "Network" -flow_target vivado
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
#source "./template2/Network/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
