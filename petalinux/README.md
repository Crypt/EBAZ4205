# EBAZ4205 petalinux

The xilinx bsp for zedboard is used as a base for petalinux with configuration added from the EBAZ4205 template here.
A new bootscr is added to boot from SD card.

The default addresses used had to be changed since the ramdisk image was too large and spilled out into the dtb area, I moved the dtb from 0x2a0000 to 0x2c00000

booting fails unless bootcmd is amended, I neded to add 'debug memblock-debug systemd-unit=single'
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
Initial testing was performed using tftp from withing u-boot, the petalinux build has the atftpd defaule server directory added in the build config.

