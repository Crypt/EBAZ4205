# Simple Video Out

## Method to create bitstream for inclusion in Vitis project

### edit system.tcl
change from
```create_project -part xc7z010clg400-2 -in_memory```
to
```create_project -part xc7z010clg400-2 -name system```

Select desired screen resolution at head of system.tcl

### create project
open Vivado and source the system.tcl file

```cd ~/Documents/GitHub/djrm-EBAZ4205/projects/SimpleVOut/zybo_bd/
source ./system.tcl```

### edit block design

Apply ebaz4205 preset to PS7 
Set input frequency to 33.333MHz
Change property of clk_wiz PLLE2 Settings from ZHOLD to INTERNAL ? why
add 100 MHz fabric clock FCLK_CLK3


delete external clk input 
re-route external clk to FCLK_CLK3
save new block design ^S

## update constraints
Apply pin definitions to suit availabe hardware


### Synthesize design and make bitstream
Manually generate bitstream
export hardware and bitstream to system.xsa


## Steps to create application in Vitis

Create new platform project in Vitis, import newly created system.xsa
Cretae new bare metal application and choose hello world template
import firmware.c and delete main.c
build application and use jtag programmer to test

