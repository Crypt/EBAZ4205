vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_protocol_checker_v2_0_1
vlib questa_lib/msim/axi_vip_v1_1_1
vlib questa_lib/msim/processing_system7_vip_v1_0_3

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_1 questa_lib/msim/axi_protocol_checker_v2_0_1
vmap axi_vip_v1_1_1 questa_lib/msim/axi_vip_v1_1_1
vmap processing_system7_vip_v1_0_3 questa_lib/msim/processing_system7_vip_v1_0_3

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_1 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_1 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_3 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/02c8/hdl/verilog" "+incdir+../../../../VGA_TEST.srcs/sources_1/bd/zynq/ipshared/1313/hdl" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/zynq/ip/zynq_processing_system7_0_0/sim/zynq_processing_system7_0_0.v" \
"../../../bd/zynq/sim/zynq.v" \

vlog -work xil_defaultlib \
"glbl.v"

