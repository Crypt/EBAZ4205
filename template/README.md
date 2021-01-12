# Vivado EBAZ4205 project

Based on several projects seen on GitHub withthe addition of 25MHz Ethernet Phi clock output from PL 
Flashing LEDS included for sanity check only
Builds without warnings in Vavido 2020
Project exported to 'template.xpr' for inclusion in petalinux build, etc.
Note: when tested using jtag onto running nand system then resultant clock frequency is wrong - too high by x2.5
However when built into petalinux system then corrct clock frequency is seen.

