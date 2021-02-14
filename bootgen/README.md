# Bootgen & fpgautil

Bootgen may be used to convert a .bit format bitstream into a binary format file suitable for programming under linux using fpgautil.

## install bootgen

A bootgen application is available for linux from here  [https://github.com/Xilinx/bootgen](https://github.com/Xilinx/bootgen)

```
clone  https://github.com/Xilinx/bootgen
cd bootgen
make
./bootgen --help
```

## bootgen help

The file to be converted needs to be referenced in a wrapper test.bif in this example

bootgen -help
```
------------------------------------------------------------------------------+
                       COMMAND LINE OPTIONS                                   |
------------------------------------------------------------------------------+
 arch              - Xilinx Architecture                                      |
 bif_help          - Print the BIF help summary                               |
 dual_ospi_mode    - Generate 2 output files for Dual QSPI                    |
 dual_qspi_mode    - Generate 2 output files for Dual QSPI                    |
 dump              - Dumps components from PDI as bin files                   |
 dump_dir          - Dumps components in specified directory                  |
 efuseppkbits      - Generate PPK hash for e-fuse                             |
 encrypt           - AES Key storage on device                                |
 encryption_dump   - Generate encryption log file                             |
 fill              - Fill byte for padding                                    |
 generate_hashes   - Generate SHA hashes (PKCS#1v1.5)                         |
 generate_keys     - Generate authentication keys                             |
 help              - Print the help summary                                   |
 image             - Input Boot Image File (.bif)                             |
 log               - Generate log file                                        |
 nonbooting        - Generate an intermediate boot image                      |
 o                 - Output filename in MCS/BIN format                        |
 p                 - Part name for generating nky file                        |
 padimageheader    - Pad header tables                                        |
 process_bitstream - Outputs bitstream in bin/mcs format                      |
 read              - Dumps the header tables in human readable form           |
 authenticatedjtag - Generate a Image to authenticate PSK and enable jtag     |
 split             - Split partitions to diff files                           |
 spksignature      - Generate SPK signature file                              |
 verify            - Verify BootImage authentication                          |
 verify_kdf        - Verify AES key generation                                |
 w                 - Overwrite mode                                           |
 zynqmpes1         - Generate boot image for ZynqMP ES1                       |
------------------------------------------------------------------------------+
 Note    : Some options are valid only for specific architectures.            |
           Help for such options include a list of supported architectures.   |
           If an option is supported for all architectures, this list is not  |
           included in help                                                   |
 Example : Supported architectures : zynqmp, versal                           |
------------------------------------------------------------------------------+
 For more information on bootgen options, use the command                     |
           bootgen -help <option>                                             |
 Example : bootgen -help efuseppkbits                                         |
------------------------------------------------------------------------------+
```

bootgen -help process_bitstream
```
-------------+----------------------------------------------------------------+
 OPTION      | process_bitstream                                              |
-------------+----------------------------------------------------------------+
 SUPPORTED   | zynq, zynqmp                                                   |
-------------+----------------------------------------------------------------+
 DESCRIPTION | Processes only bitstream from the BIF, and output as an MCS or |
             | a BIN file.                                                    |
             | For example: If encryption is selected for bitstream in the BIF|
             | file, the output is an encrypted bitstream.                    |
-------------+----------------------------------------------------------------+
 SYNOPSIS    | -process_bitstream [arguments]                                 |
-------------+----------------------------------------------------------------+
 ARGUMENTS   | bin : Output in bin format                                     |
             | mcs : Output in mcs format                                     |
-------------+----------------------------------------------------------------+
 USAGE       | bootgen -arch zynq -image test.bif -process_bitstream bin      |
-------------+----------------------------------------------------------------+
 EXPLANATION | Sample BIF - test.bif                                          |
             | all:                                                           |
             | {                                                              |
             |    system.bit                                                  |
             | }                                                              |
             | Output generated is bitstream in BIN format.                   |
-------------+----------------------------------------------------------------+
```

## bit to bin conversion
test.bif
```
all:
{
   design_1_wrapper.bit
}
```


```
bootgen -arch zynq -image test.bif -process_bitstream bin
```


with file design_1_wrapper.bit referenced in test.bif a new binary file design_1_wrapper.bit.bin is produced.

## writing with fpgautil

from within linux the file can be written to PL using the fpgautil tool

```
root@ebaz-4205-djrm:~# fpgautil -b design_1_wrapper.bit.bin                                                                           
fpga_manager fpga0: writing design_1_wrapper.bit.bin to Xilinx Zynq FPGA Manager
Time taken to load BIN is 42.000000 Milli Seconds
BIN FILE loaded through FPGA manager successfully
root@ebaz-4205-djrm:~# macb e000b000.ethernet eth0: link down
macb e000b000.ethernet eth0: unable to generate target frequency: 25000000 Hz
macb e000b000.ethernet eth0: link up (100/Full)

root@ebaz-4205-djrm:~# 
```

## ethernet clock recovery
On my board the ethernet phi clock is generated by the PL, during bitstream write the clock stops but recovers shortly afterwards as seen in the example above and again below.

Effect on ethernet while writing bitstream using jtag 
```
64 bytes from 192.168.178.24: seq=17 ttl=64 time=0.281 ms
64 bytes from 192.168.178.24: seq=18 ttl=64 time=0.256 ms
macb e000b000.ethernet eth0: link down
macb e000b000.ethernet eth0: unable to generate target frequency: 25000000 Hz
macb e000b000.ethernet eth0: link up (100/Full)
64 bytes from 192.168.178.24: seq=23 ttl=64 time=0.592 ms
64 bytes from 192.168.178.24: seq=24 ttl=64 time=0.286 ms

```
```
