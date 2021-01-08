# EBAZ4205 uboot

The board as supplied boots from nand flask into the original application, pressing 'd' during the initial boot sequence drops control intot the onboard uboot console application, from there control can be diverted to various directions.

## Purpose

Uboot has the ability to load ram, fpga bitstream, program nand flas (untested), read from SD card, read from tftp server, and boot and operating system.

The uboot console has a help system built in, accesd by typing 'help', or just h. The curewnt configuration of various parameters can be viewed using the 'printenv' command. The previous command is repeated when enter on its own is pressed.

## gaining access to onboard linux

The inbuilt system needs to have its password reset to gain access to it. the main repo page has an indication of what is needed but it was a bit wrong for my ststem ,here are the commands I used which worked for me.

```
zynq-uboot> setenv bootargs 'console=ttyPS0,115200 root=/dev/mtdblock6 rootfstype=jffs2 noinitrd rw rootwait reboot=cold,hard emergency init=/bin/sh'
zynq-uboot> bootm ${kernel_load_address} - ${devicetree_load_address} init=/bin/sh
```
copy each of these two lines into the uboot prompt, the linux will then load and drop into a shell from where the 'passwd' command can be issued to reset the system password, subsequent automatic reboots will accept the new password without any problem.

I found commented out sections in /etc/network/interfaces to set eth0 to dhcp, I used this instead of setting a static IP address, ssh is enabled by default and is usable for exploring the file system etc. The editor available is vi, cribsheet [here](http://www.atmos.albany.edu/daes/atmclasses/atm350/vi_cheat_sheet.pdf)here if needed.

```
# Wired or wireless interfaces
auto eth0
iface eth0 inet dhcp
```

## writing to fpga from tfpt server

The stock system has ethernet enabled in its nand boot enviorenment, to use it you will need a tftp server accesible on the local network. I use atftp from within linux, I did not get tftpd to work for me aftpd is ok. aftp expects file to be placed in the directory /srv/tftp you may need to give yourself ppermission to access this directory, something like 'sudo chown -R <your user>:<your group> /srv/tftp' is one way to achieve this.

It is possible to use the 'dhcp' comamnd to get an IP address from you local DHCP server - this also tries to load a ram image but no matter it will assign local IP address anyway. An alternative is to just supply the local fixed ip using another uboot command.

Uboot systems seem to make extensive use of its envioremaent variables, this is partly to get around the limit of a fixed length available for its commands, it makes sense to isolate commonly used statements into macro like names whch can be substituted for their contents to run. Multiple uboot cammnds can be run sequentially by issuing their names folloed with '&&' as command seperators

 The local fpga IP is held in the enviorenmet variable 'ipaddr' and can be set manually or by DHCP. An example of setting all the neccessary enviorenment to use tftp is:

set ipaddr 192.168.178.131
set gatewayip 192.168.178.1
set serverip 192.168.178.24


This sets the loalal IP (192.168.178.131) and server IP ready to accept tftp requests from a local server (192.168.178.24), a test is to try and ping the server, this can be done using the assigned enviorenment variable name instead of the IP address. The variable name is previxed with $ and enclosed in braces()

```ping $(serverip)```

Putting this all together gives a line you can copy and paste into uboot to make and test a connection to your tftp server.

```set ipaddr 192.168.178.131 && set gatewayip 192.168.178.1 && set serverip 192.168.178.24 && ping ${serverip}```

Information about the currently loaded bitstream is given withthe 'fpga info 0' command. If the image is unsuitable for programming an error is reported when the fpga load 0 command is issued. When the server has replied successfully you can give it a command to retrieve a bitstream into memory and to then copy the memory into the fpga, use commands like these
```
set bitstream_image system.bit.bin
tftpboot ${loadbit_addr} ${serverip}:${bitstream_image}
fpga loadb 0 ${loadbit_addr} ${filesize}
fpga info 0
```
or as a single line to copy / paste into uboot:
```
set ipaddr 192.168.178.131 && set gatewayip 192.168.178.1 && set serverip 192.168.178.24 && ping ${serverip} && set bitstream_image system.bit.bin && tftpboot ${loadbit_addr} ${serverip}:${bitstream_image} && fpga loadb 0 ${loadbit_addr} ${filesize} && fpga info 0
```

A shortened form using dhcp
```
set bitstream_image system.bit.bin
set serverip 192.168.178.24
dhcp ${loadbit_addr} ${serverip}:${bitstream_image}
```

Combined into one line
```
set bitstream_image system.bit.bin && set serverip 192.168.178.24 && dhcp ${loadbit_addr} ${serverip}:${bitstream_image} && fpga loadb 0 ${loadbit_addr} ${filesize} && fpga info 0
```

Second example using binary (not bitstream) file, note change in fpga load command
```
set bitstream_image design_1_wrapper.bin && set serverip 192.168.178.24 && dhcp ${loadbit_addr} ${serverip}:${bitstream_image} && fpga load 0 ${loadbit_addr} ${filesize} && fpga info 0
```

The attached [bitstream](design_1_wrapper.bin) binary flashes the leds on the board when loaded in this way.


## accesing SD card from uboot

It is not neccessary to boot from SD card to be able to acces its files, uboot is able to do this. Uboot accesses the sdcard through the mmc subsystem, help is available using the 'help mmc' command. The EBAZ sdcard is device mmc 0, it is posible to list files on an mmc (sdcard) using the command ls mmc 0. Using the full version of the command it is possible to list files in other partitions and directories. devices are counted starting at 0, partitions are counted starting at 1.  e.g. 'ls mmc 0:2 /etc' to list files in the etc directory on the second partition of mmc device 0. higher level mmc commands use the load command.

Files can be loaded into ram memory from sdcard using a set of commands similar to how the tftp files are loaded, for example to load a bitstream from sd card the following commands may be used. Note uboot appears to fill in the filesize and bitstream_image variables for you. loadbit_addr is preset by uboot. It is possible to use the load mmc command without any parameters if the defualt are acceptable. The default file to load is 'bootfile' but this is not set by uboot the defualt load address is 0

```
loadbit_addr=0x100000
bitstream_image=system.bit.bin
load mmc 0 ${loadbit_addr} ${bitstream_image}
fpga loadb 0 ${loadbit_addr} ${filesize}
```

The example above loads a bitstream into ram and then copies it into the fpga, as before the commands can be concatenated into a single invocation.
```
bitstream_image=system.bit.bin && load mmc 0 ${loadbit_addr} ${bitstream_image} && fpga loadb 0 ${loadbit_addr} ${filesize}
```

## Booting linux

The linux boot process is performed in several parts, if the system is booted from SD card an initialisation is performed and then controll is transfered to uboot to finish the boot. The uboot part is described here.

The supplied system boots from nand flash and uses several uboot commands and macro variables, broken down into componets these are shown below, typing boot at the console appears to execute the bootcmd macro which indirectly invokes modeboot to run nandboot itself which uses various predefined addresses and a helper variable specifying the kernel boot commd arguments. A message is printed to the console when the boot sequence starts. Other boot sequences are predefined which can be used or modified for different boot actions. Execution is started by the bootm command which runs the linux kernel which has been loaded into memory.


| ram name              |ram address|size name      |size value|nand offset|
|-----------------------|-----------|---------------|----------|---|
|kernel_load_address    |0x2080000  |kernel_size    |0x500000  |0x300000|
|devicetree_load_address|0x2000000  |devicetree_size|0x20000   |0x800000|
|lit: fpga load address |0x2220000  |lit: fpga size |0x300000  |0x100000|

bootm is passed three parameters, these are ram addresses of kernel, initrd, and devicetree. the kernel command line is supplied in veariable bootargs, if initrd is not needed then the middle parameter has - substituted for the memory address. The system boots with values 'bootm 0x2080000 - 0x2A00000' i.e no initrd needed


```

-- fixed locations
0x300000
0x800000

-- invocation macros
modeboot=nandboot
bootcmd=run $modeboot

--- helper variable for kernel arguments
nandroot=setenv bootargs 'console=ttyPS0,115200 root=/dev/mtdblock6 rootfstype=jffs2 noinitrd rw rootwait'

--- original nandboot: loads fpga, no ramdisk
nandboot=echo Copying Linux from NAND flash to RAM... && 
nand info && 
run nandroot;
nand read 0x100000 0x2220000 0x300000 && 
fpga loadb 0 0x100000 0x300000 && 
nand read ${kernel_load_address} 0x300000 ${kernel_size} && 
nand read ${devicetree_load_address} 0x800000 ${devicetree_size} && 
bootm ${kernel_load_address} - ${devicetree_load_address}
```

Note, ram addresses used by existing boot files.
uramdisk        0x2000000
zynq-ebaz-dtb   0x2A00000
uImage          0x3000000


In the above sequence are commands to load and copy nand flash memory into the fpga, this fails and has no effect but it is how the system was delivered - it can be ommited or somehow corrected. TODO maybe fix missing PHI clock with suitable fpga contents here.

Here boot files are loaded from SDcard first partition and booted, using the FS on the third SDcard partition

```
set bootargs console=ttyPS0,115200 root=/dev/mmcblk0p3 rw earlyprintk earlycon loglevel=8 rootfstype=ext4 rootwaitd
fatload mmc 0 0x3000000 uImage && fatload mmc 0 0x2A00000 zynq-ebaz.dtb && fatload mmc 0 0x2000000 uramdisk.image.gz
bootm 0x3000000 0x2000000 0x2A00000
```

An alternative set of commands can be used to vary the boot actions. it is possible to use the majority of the existing commands but to substitute a filing system on CF card insted of the inbuilt nand FS, changes needed are shown next by replacing the boot command line helper macro setting the root filing system to CF instead of nand. The filing used in this example is a copy of the nand flash filing system copied onto SDcard.

```
set nandroot setenv bootargs 'console=ttyPS0,115200 root=/dev/mmcblk0p3 rw earlyprintk earlycon loglevel=8 rootfstype=ext4 rootwait'
```


-- ok
set bootargs console=ttyPS0,115200 root=/dev/mmcblk0p3 rw earlyprintk earlycon loglevel=8 rootfstype=ext4 rootwaitd
fatload mmc 0 0x3000000 uImage && fatload mmc 0 0x2A00000 zynq-ebaz.dtb && fatload mmc 0 0x2000000 uramdisk.image.gz
bootm 0x3000000 0x2000000 0x2A00000

-- bad
set bootargs console=ttyPS0,115200 root=/dev/mmcblk0p3 rw earlyprintk earlycon loglevel=8 rootfstype=ext4 rootwaitd
fatload mmc 0 0x3000000 uImage && fatload mmc 0 0x2000000 uramdisk.image.gz
bootm 0x3000000 0x2000000 0x2A00000









