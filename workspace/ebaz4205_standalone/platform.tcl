# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/david/Documents/GitHub/djrm-EBAZ4205/workspace/ebaz4205_standalone/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/david/Documents/GitHub/djrm-EBAZ4205/workspace/ebaz4205_standalone/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ebaz4205_standalone}\
-hw {/home/david/Documents/GitHub/djrm-EBAZ4205/template/design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {/home/david/Documents/GitHub/djrm-EBAZ4205/workspace}

platform write
platform generate -domains 
platform active {ebaz4205_standalone}
domain active {zynq_fsbl}
bsp reload
bsp setlib -name lwip211 -ver 1.3
bsp write
bsp reload
catch {bsp regenerate}
platform generate
bsp removelib -name lwip211
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains zynq_fsbl 
bsp reload
bsp reload
platform -make-local
bsp reload
bsp setlib -name lwip211 -ver 1.3
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp reload
bsp setlib -name lwip211 -ver 1.3
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain,zynq_fsbl 
bsp write
platform generate -domains 
platform generate -quick
catch {platform remove VGA_TEST_platform_0_1}
catch {platform remove ebaz4205_freertos}
platform generate
platform active {ebaz4205_standalone}
domain active {zynq_fsbl}
bsp reload
bsp reload
domain active {standalone_domain}
bsp reload
bsp setlib -name xilffs -ver 4.4
bsp write
bsp reload
catch {bsp regenerate}
bsp reload
bsp write
domain active {zynq_fsbl}
bsp write
platform generate -domains standalone_domain 
platform active {ebaz4205_standalone}
bsp reload
bsp reload
platform generate
platform active {ebaz4205_standalone}
platform config -updatehw {/home/david/Documents/GitHub/djrm-EBAZ4205/template/design_3_wrapper.xsa}
platform generate -domains 
