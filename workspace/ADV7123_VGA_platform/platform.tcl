# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/david/Documents/GitHub/djrm-EBAZ4205/workspace/ADV7123_VGA_platform/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/david/Documents/GitHub/djrm-EBAZ4205/workspace/ADV7123_VGA_platform/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ADV7123_VGA_platform}\
-hw {/home/david/Documents/GitHub/djrm-EBAZ4205/projects/ADV7123_VGA/adv7123_vga.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {/home/david/Documents/GitHub/djrm-EBAZ4205/workspace}

platform write
platform generate -domains 
platform active {ADV7123_VGA_platform}
platform generate
