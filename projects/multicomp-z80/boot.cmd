set loadbit_addr 0x100000
set bitstream_image multicomp_wrapper.bit
set multicomp_load 'load mmc 0 ${loadbit_addr} ${bitstream_image}'
set multicomp_run 'fpga loadb 0 ${loadbit_addr} ${filesize}'
run multicomp_load
run multicomp_run
set bootargs 'clk-ignore-unused debug memblock-debug console=ttyPS0,115200 root=/dev/mmcblk0p2 rw earlyprintk earlycon loglevel=8 rootfstype=ext4 rootwait'
fatload mmc 0 0x3000000 uImage
fatload mmc 0 0x2C00000 system.dtb
bootm 0x3000000 - 0x2C00000

