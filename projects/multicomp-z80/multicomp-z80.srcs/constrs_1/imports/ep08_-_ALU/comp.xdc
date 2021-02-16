set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_RX_CLK_0]
set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_TX_CLK_0]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_rxd[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_rxd[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_rxd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet0_gmii_rxd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ENET0_GMII_TX_EN_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet_gmii_txd[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet_gmii_txd[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet_gmii_txd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enet_gmii_txd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_RX_DV_0]
set_property PACKAGE_PIN U14 [get_ports ENET0_GMII_RX_CLK_0]
set_property PACKAGE_PIN Y17 [get_ports {enet0_gmii_rxd[3]}]
set_property PACKAGE_PIN V17 [get_ports {enet0_gmii_rxd[2]}]
set_property PACKAGE_PIN V16 [get_ports {enet0_gmii_rxd[1]}]
set_property PACKAGE_PIN Y16 [get_ports {enet0_gmii_rxd[0]}]
set_property PACKAGE_PIN U15 [get_ports ENET0_GMII_TX_CLK_0]
set_property PACKAGE_PIN W19 [get_ports {ENET0_GMII_TX_EN_0[0]}]
set_property PACKAGE_PIN Y19 [get_ports {enet_gmii_txd[3]}]
set_property PACKAGE_PIN V18 [get_ports {enet_gmii_txd[2]}]
set_property PACKAGE_PIN Y18 [get_ports {enet_gmii_txd[1]}]
set_property PACKAGE_PIN W18 [get_ports {enet_gmii_txd[0]}]
set_property PACKAGE_PIN W16 [get_ports ENET0_GMII_RX_DV_0]

set_property IOSTANDARD LVCMOS33 [get_ports MDIO_ETHERNET_0_0_mdc]
set_property IOSTANDARD LVCMOS33 [get_ports MDIO_ETHERNET_0_0_mdio_io]
set_property PACKAGE_PIN W15 [get_ports MDIO_ETHERNET_0_0_mdc]
set_property PACKAGE_PIN Y14 [get_ports MDIO_ETHERNET_0_0_mdio_io]

# 25 MHz
set_property IOSTANDARD LVCMOS33 [get_ports ETHERNET_CLOCK]
set_property PACKAGE_PIN U18 [get_ports ETHERNET_CLOCK]

# 33.3 Mhz MHz
set_property IOSTANDARD LVCMOS33 [get_ports MULTICOMP_CLOCK]
set_property PACKAGE_PIN U19 [get_ports MULTICOMP_CLOCK]

# multicomp i/o below
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports videoR1]
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports videoR0]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports videoG1]
set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports videoG0]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports videoB1]
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports videoB0]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports hSync]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports vSync]

# reset button
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports reset] 
set_property PULLUP true [get_ports reset]

# ps2 keyboard
set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports ps2Data] 
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports ps2Clk]
set_property PULLUP true [get_ports ps2Clk]
set_property PULLUP true [get_ports ps2Data]

# uart
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33 } [get_ports {rxd1}]
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33 } [get_ports {txd1}]
set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVCMOS33 } [get_ports {rts1}]

# sd card, drive led
set_property -dict {PACKAGE_PIN J20 IOSTANDARD LVCMOS33 } [get_ports otherLED]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS33 } [get_ports driveLED]

set_property -dict { PACKAGE_PIN M20 IOSTANDARD LVCMOS33 } [get_ports {sdMOSI}]
set_property PULLUP true [get_ports sdMOSI]
set_property -dict { PACKAGE_PIN M18 IOSTANDARD LVCMOS33 } [get_ports {sdCS}]
set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 } [get_ports {sdSCLK}]
set_property -dict { PACKAGE_PIN K19 IOSTANDARD LVCMOS33 } [get_ports {sdMISO}]
set_property PULLUP true [get_ports sdMISO]

# Configuration Bank Voltage Select
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

# Clock definition
#set_property PACKAGE_PIN N18 [get_ports sys_clock]
#set_property IOSTANDARD LVCMOS33 [get_ports sys_clock]
#create_clock -name sys_clk -period 30.00 [get_ports {sys_clock}];                          # 33.333 MHz
