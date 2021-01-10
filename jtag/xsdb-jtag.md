1st steps in Xilinx jtag with hw_server & xsdb

The hw_server talks through the USB cable to the jtag adapter connected to the zncq board. it is controlled through the tcp link by the xsdb program which can accept commands typed at its console.

the hw_server must first be started and run in a seperate console, then the xsdb can be started to talk to the zync.
hw_server is located in the directory~/Xilinx/Vivado/2020.2/bin  when the server is running then xsdb can be started to control the comminicatiosns withther zynq


```
xsdb
rlwrap: warning: your $TERM is 'xterm-256color' but rlwrap couldn't find it in the terminfo database. Expect some problems.
                                                                                                                                                                             
****** Xilinx System Debugger (XSDB) v2020.2
  **** Build date : Nov 18 2020-09:50:50
    ** Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.


xsdb% connect                                                                                                                                                                
tcfchan#0                                                                                                                                                                    
xsdb% targets                                                                                                                                                                
  2  APU
     3  ARM Cortex-A9 MPCore #0 (Running)
     4  ARM Cortex-A9 MPCore #1 (Running)
  5  xc7z010
     6  Legacy Debug Hub
xsdb% target 2                                                                                                                                                               
xsdb% fpga  ../design_1_wrapper.bit                                                                                                                                          
100%    1MB   1.9MB/s  00:01                                                                                                                                                 
xsdb% 
```

xsdb can also be used to load and execute an arm program into a cpu core, here u-boot is loaded.

```
david@I7MINT:~/petalinux/test_01/images/linux$ xsdb
rlwrap: warning: your $TERM is 'xterm-256color' but rlwrap couldn't find it in the terminfo database. Expect some problems.
                                                                                                                                                                           
****** Xilinx System Debugger (XSDB) v2020.2
  **** Build date : Nov 18 2020-09:50:50
    ** Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.


xsdb% connect                                                                                                                                                              
tcfchan#0                                                                                                                                                                  
xsdb% targets                                                                                                                                                              
  1  APU
     2  ARM Cortex-A9 MPCore #0 (Running)
     3  ARM Cortex-A9 MPCore #1 (Running)
  4  xc7z010
     5  Legacy Debug Hub
xsdb% target 2                                                                                                                                                             
xsdb% dow u-boot.elf                                                                                                                                                       
Downloading Program -- /home/david/petalinux/test_01/images/linux/u-boot.elf                                                                                               
	section, .data: 0x04000000 - 0x040b40ad
100%    0MB   0.4MB/s  00:01                                                                                                                                               
Setting PC to Program Start Address 0x04000000
Successfully downloaded /home/david/petalinux/test_01/images/linux/u-boot.elf
xsdb% Info: ARM Cortex-A9 MPCore #0 (target 2) Stopped at 0xff59948 (Suspended)                                                                                            
xsdb% con                                                                                                                                                                  
Info: ARM Cortex-A9 MPCore #0 (target 2) Running
xsdb% 
```

Serial console now shows u-boot running, since fpga contents staill have nand boot configuration ethernet is running -dhcp and ping are ok.
xsdb