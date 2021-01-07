# EBAZ4205 nand

EBAZ4205 nand flash memory layout
Nand chip is W29N01HVSINA 128Mx8 1Gb

Note the board these files were saved from does not have the PHI 25MHz crystal installed, the PHI clock is fed from the FPGA from pin U18 via R??
To use these files with a crystal then I suggest removing R??

The file in this directory 'nand' are copies of the original nand memory contents saved from within an SD version of linux using the following shell commands to an attached sdcard. Some of the saved files appear to be all blank, noted in list below.

[Link text](URL)

# source
| Nand saved files                                        |
|---------------------------------------------------------|
| [dd if=/dev/mtd0ro of=/home/root/mtd0ro.bin](mtd0ro.bin)|
| [dd if=/dev/mtd1ro of=/home/root/mtd1ro.bin](mtd1ro.bin)|
| [dd if=/dev/mtd2ro of=/home/root/mtd2ro.bin](mtd2ro.bin)|
| [dd if=/dev/mtd3ro of=/home/root/mtd3ro.bin](mtd3ro.bin)|
| [dd if=/dev/mtd4ro of=/home/root/mtd4ro.bin](mtd4ro.bin)|
| [dd if=/dev/mtd5ro of=/home/root/mtd5ro.bin](mtd5ro.bin)|
| [dd if=/dev/mtd6ro of=/home/root/mtd6ro.bin](mtd6ro.bin)|
| [dd if=/dev/mtd7ro of=/home/root/mtd7ro.bin](mtd7ro.bin)|
| [dd if=/dev/mtd8ro of=/home/root/mtd8ro.bin](mtd8ro.bin)|


# layout
|dev: |   size  | erasesize|  name|filesaze|used?|
|-----|-----|-----|-----|-----|------------------|
|mtd0:| 00300000| 00020000| "nand-fsbl-uboot"	   |3.1 MB||
|mtd1:| 00500000| 00020000| "nand-linux"		   |5.2 MB||
|mtd2:| 00020000| 00020000| "nand-device-tree"  |131.1 kB||
|mtd3:| 00a00000| 00020000| "nand-rootfs"	   |10.5 MB	|	-all 0xff|
|mtd4:| 01000000| 00020000| "nand-jffs2"		   |16.8 MB||
|mtd5:| 00800000| 00020000| "nand-bitstream"	   |8.4 MB	|	-all 0xff|
|mtd6:| 04000000| 00020000| "nand-allrootfs"	   |67.1 MB||
|mtd7:| 013e0000| 00020000| "nand-release"	   |20.8 MB	|	-all 0xff|
|mtd8:| 00200000| 00020000| "nand-reserve"	   |2.1 MB	|	-all 0xff|

![PCB-V2](../image/08-PCB-V2-TL.jpg)