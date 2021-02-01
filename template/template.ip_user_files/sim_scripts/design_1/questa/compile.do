vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_8
vlib questa_lib/msim/processing_system7_vip_v1_0_10
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconcat_v2_1_4
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/xlslice_v1_0_2

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 questa_lib/msim/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 questa_lib/msim/processing_system7_vip_v1_0_10
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap xlslice_v1_0_2 questa_lib/msim/xlslice_v1_0_2

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8 -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../template.srcs/sources_1/bd/design_1/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10 -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work xlconcat_v2_1_4 -64 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../template.srcs/sources_1/bd/design_1/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconcat_0_1/sim/design_1_xlconcat_0_1.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vlog -work xlconstant_v1_1_7 -64 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../template.srcs/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_led_flasher_0_0/sim/design_1_led_flasher_0_0.v" \

vlog -work xlslice_v1_0_2 -64 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../template.srcs/sources_1/bd/design_1/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

