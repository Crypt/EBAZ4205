# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/david/Documents/GitHub/djrm-EBAZ4205/workspace/ADV7123_VGA_application_system/_ide/scripts/systemdebugger_adv7123_vga_application_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/david/Documents/GitHub/djrm-EBAZ4205/workspace/ADV7123_VGA_application_system/_ide/scripts/systemdebugger_adv7123_vga_application_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A088A0" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT2-210251A088A0-13722093-0"}
fpga -file /home/david/Documents/GitHub/djrm-EBAZ4205/workspace/ADV7123_VGA_application/_ide/bitstream/adv7123_vga.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/david/Documents/GitHub/djrm-EBAZ4205/workspace/ADV7123_VGA_platform/export/ADV7123_VGA_platform/hw/adv7123_vga.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/david/Documents/GitHub/djrm-EBAZ4205/workspace/ADV7123_VGA_application/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/david/Documents/GitHub/djrm-EBAZ4205/workspace/ADV7123_VGA_application/Debug/ADV7123_VGA_application.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
