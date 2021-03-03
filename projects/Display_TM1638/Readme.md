# TM1639 LED & Button driver

This is a partrially working example program which is supposed to drive leds and read buttons, the button rading part cannot be got working at the same time as correct LED driving. WIP

the variations of IP in file tm1638_demo.v around line 80 show the problem. [tm1638_demo.v](./Display_TM1638.srcs/sources_1/new/tm1638_demo.v)

The code is an adaption of a working example here: [tm1638-verilog](https://github.com/alangarf/tm1638-verilog)

The switch from transmiting to receiving data isnt working properly. Smething went wrong withthe conversion to Vivado, I dont have the neccessary experience to fix the problem.
