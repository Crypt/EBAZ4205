set bootargs 'debug memblock-debug systemd-unit=single console=ttyPS0,115200 rw earlyprintk earlycon loglevel=8  rootwait'
fatload mmc 0 0x3000000 uImage
fatload mmc 0 0x2C00000 system.dtb
fatload mmc 0 0x2000000 image.ub
bootm 0x3000000 0x2000000 0x2C00000

