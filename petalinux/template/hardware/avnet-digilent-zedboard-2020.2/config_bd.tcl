
    
proc create_project_1 { parentCell nameHier } {

set parentObj [get_bd_cells $parentCell]

set oldCurInst [current_bd_instance .]

current_bd_instance $parentObj

if {$nameHier ne "" } {

set hier_obj [create_bd_cell -type hier $nameHier]

current_bd_instance $hier_obj

}
    set leds_4bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 leds_4bits ] 

set ::PS_INST ZYNQPS_0 
set ZYNQPS_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7 ZYNQPS_0 ] 


apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {apply_board_preset "1" }  [get_bd_cells ZYNQPS_0] 


set AXI_GPIO_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio AXI_GPIO_0 ] 


set_property -dict [ list \
        CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_GPIO_WIDTH {4} \
] $AXI_GPIO_0 


set PROC_SYS_RESET_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset PROC_SYS_RESET_0 ] 



set SMART_CON_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect SMART_CON_0 ] 


set_property -dict [ list \
        CONFIG.NUM_CLKS {1} \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {1} \
] $SMART_CON_0 

connect_bd_net -net ZYNQPS_0_FCLK_CLK0_PROC_SYS_RESET_0_slowest_sync_clk [get_bd_pins ZYNQPS_0/FCLK_CLK0] [get_bd_pins PROC_SYS_RESET_0/slowest_sync_clk]
connect_bd_net -net ZYNQPS_0_FCLK_RESET0_N_PROC_SYS_RESET_0_ext_reset_in [get_bd_pins ZYNQPS_0/FCLK_RESET0_N] [get_bd_pins PROC_SYS_RESET_0/ext_reset_in]
connect_bd_intf_net -intf_net ZYNQPS_0_M_AXI_GP0_SMART_CON_0_S00_AXI [get_bd_intf_pins ZYNQPS_0/M_AXI_GP0] [get_bd_intf_pins SMART_CON_0/S00_AXI]
connect_bd_intf_net -intf_net AXI_GPIO_0_GPIO_project_1_INTF_PORT_0_leds_4bits [get_bd_intf_pins AXI_GPIO_0/GPIO] [get_bd_intf_ports leds_4bits]
connect_bd_net -net PROC_SYS_RESET_0_peripheral_aresetn_AXI_GPIO_0_s_axi_aresetn [get_bd_pins PROC_SYS_RESET_0/peripheral_aresetn] [get_bd_pins AXI_GPIO_0/s_axi_aresetn]
connect_bd_net -net PROC_SYS_RESET_0_interconnect_aresetn_SMART_CON_0_aresetn [get_bd_pins PROC_SYS_RESET_0/interconnect_aresetn] [get_bd_pins SMART_CON_0/aresetn]
connect_bd_intf_net -intf_net SMART_CON_0_M00_AXI_AXI_GPIO_0_S_AXI [get_bd_intf_pins SMART_CON_0/M00_AXI] [get_bd_intf_pins AXI_GPIO_0/S_AXI]
connect_bd_net [get_bd_pins ZYNQPS_0/FCLK_CLK0] [get_bd_pins AXI_GPIO_0/s_axi_aclk]
connect_bd_net [get_bd_pins ZYNQPS_0/FCLK_CLK0] [get_bd_pins ZYNQPS_0/M_AXI_GP0_ACLK]
connect_bd_net [get_bd_pins ZYNQPS_0/FCLK_CLK0] [get_bd_pins SMART_CON_0/aclk]

current_bd_instance $oldCurInst
        
}
    
create_project_1 "" ""
        
        