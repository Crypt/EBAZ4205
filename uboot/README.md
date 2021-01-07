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






