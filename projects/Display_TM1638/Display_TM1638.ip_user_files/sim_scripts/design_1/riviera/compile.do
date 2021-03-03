vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_8
vlib riviera/processing_system7_vip_v1_0_10
vlib riviera/xil_defaultlib
vlib riviera/xlconcat_v2_1_4
vlib riviera/xlconstant_v1_1_7
vlib riviera/xlslice_v1_0_2
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 riviera/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 riviera/processing_system7_vip_v1_0_10
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconcat_v2_1_4 riviera/xlconcat_v2_1_4
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap xlslice_v1_0_2 riviera/xlslice_v1_0_2
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13

vlog -work xilinx_vip  -sv2k12 "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../template.srcs/sources_1/bd/design_1/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv2k12 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../template.srcs/sources_1/bd/design_1/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconcat_0_1/sim/design_1_xlconcat_0_1.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../template.srcs/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_led_flasher_0_0/sim/design_1_led_flasher_0_0.v" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../template.srcs/sources_1/bd/design_1/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/sim/bd_f60c.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f60c_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/sim/design_1_system_ila_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../template.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../template.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../template.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

