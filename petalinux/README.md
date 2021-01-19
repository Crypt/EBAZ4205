# EBAZ4205 petalinux

The xilinx bsp for zedboard is used as a base for petalinux with configuration added from the EBAZ4205 template here: https://github.com/DavidJRichards/EBAZ4205/raw/master/template/design_1_wrapper.xsa (path is ../../template in petalinux-config command )

zedbard bsp from here: https://www.xilinx.com/member/forms/download/xef.html?filename=avnet-digilent-zedboard-v2020.2-final.bsp

configuration changes:
location of saved tftp files changed to '/srv/tftpd/template'
local output files are in 'petalinux/template/images/linux/*' these can be copied to SD with new boot.scr in petalinux (todo: add changes to configuration)

Initial testing was performed using tftp from withing u-boot, the petalinux build has the atftpd default server directory added in the build config.

The default addresses used had to be changed since the ramdisk image was too large and spilled out into the dtb area, I moved the dtb from 0x2a0000 to 0x2c00000

booting fails unless bootcmd is amended, I neded to add 'debug memblock-debug systemd-unit=single' 
'systemd-unit=single' since removed without problem

Further testing done by copying files to FAT32 partition on micro SD card with custom boot.scr

A new bootscr is added to boot from SD card.
```
set bootargs 'debug memblock-debug systemd-unit=single console=ttyPS0,115200 rw earlyprintk earlycon loglevel=8  rootwait'
fatload mmc 0 0x3000000 uImage
fatload mmc 0 0x2C00000 system.dtb
fatload mmc 0 0x2000000 image.ub
bootm 0x3000000 0x2000000 0x2C00000
```
The contents of boot.cmd is compiled with mkimage to build boot.scr
```
mkimage -c none -A arm -T script -d boot.cmd boot.scr
```

## buildlog

```
david@I7MINT:~/Documents/GitHub/djrm-EBAZ4205/petalinux$ source /opt/petalinux/settings.sh
PetaLinux environment set to '/opt/petalinux'
WARNING: This is not a supported OS
INFO: Checking free disk space
INFO: Checking installed tools
INFO: Checking installed development libraries
INFO: Checking network and other services
warning, got bogus unix line.

david@I7MINT:~/Documents/GitHub/djrm-EBAZ4205/petalinux$ source ~/Xilinx/Vivado/2020.2/settings64.sh

david@I7MINT:~/Documents/GitHub/djrm-EBAZ4205/petalinux$ petalinux-create -t project -n template -s avnet-digilent-zedboard-v2020.2-final.bsp
INFO: Create project: template
INFO: New project successfully created in /home/david/Documents/GitHub/djrm-EBAZ4205/petalinux/template

david@I7MINT:~/Documents/GitHub/djrm-EBAZ4205/petalinux$ cd template

david@I7MINT:~/Documents/GitHub/djrm-EBAZ4205/petalinux/template$ 

david@I7MINT:~/Documents/GitHub/djrm-EBAZ4205/petalinux/template$ petalinux-config --get-hw-description=../../template  # xsa folder path
INFO: Sourcing build tools
INFO: Getting hardware description...
INFO: Rename design_1_wrapper.xsa to system.xsa
[INFO] Generating Kconfig for project
[INFO] Menuconfig project
*** End of the configuration.
*** Execute 'make' to start the build or try 'make help'.
[INFO] Extracting yocto SDK to components/yocto
[INFO] Sourcing build environment
[INFO] Generating kconfig for Rootfs
[INFO] Silentconfig rootfs
[INFO] Generating plnxtool conf
[INFO] Adding user layers
[INFO] Generating workspace directory

david@I7MINT:~/Documents/GitHub/djrm-EBAZ4205/petalinux/template$ petalinux-build
INFO: Sourcing build tools
[INFO] Building project
[INFO] Sourcing build environment
[INFO] Generating workspace directory
INFO: bitbake petalinux-image-minimal
WARNING: Host distribution "linuxmint-20.1" has not been validated with this version of the build system; you may possibly experience unexpected failures. It is recommended that you use a tested distribution.
Parsing recipes: 100% |#################################################################################################################################################| Time: 0:02:06
Parsing of 2995 .bb files complete (0 cached, 2995 parsed). 4265 targets, 204 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
NOTE: Fetching uninative binary shim from file:///home/david/Documents/GitHub/djrm-EBAZ4205/petalinux/template/components/yocto/downloads/uninative/9498d8bba047499999a7310ac2576d0796461184965351a56f6d32c888a1f216/x86_64-nativesdk-libc.tar.xz;sha256sum=9498d8bba047499999a7310ac2576d0796461184965351a56f6d32c888a1f216
WARNING: Your host glibc verson (2.31) is newer than that in uninative (2.30). Disabling uninative so that sstate is not corrupted.
Initialising tasks: 100% |##############################################################################################################################################| Time: 0:00:03
Checking sstate mirror object availability: 100% |######################################################################################################################| Time: 0:00:17
Sstate summary: Wanted 976 Found 679 Missed 297 Current 0 (69% match, 0% complete)
NOTE: Executing Tasks
NOTE: Setscene tasks completed
NOTE: Tasks Summary: Attempted 3513 tasks of which 692 didn't need to be rerun and all succeeded.
Summary: There were 2 WARNING messages shown.
INFO: Successfully copied built images to tftp dir: /srv/tftp/template
[INFO] Successfully built project
david@I7MINT:~/Documents/GitHub/djrm-EBAZ4205/petalinux/template$ 
```