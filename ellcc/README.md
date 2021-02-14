
[The ELLCC Embedded Compiler Collection](http://http://ellcc.org/)

I downloaded ellcc-arm32v6-linux-2017-08-23.bz2 and copied it to the ebaz board.
A precursor is to have make available, this is in petalinux-config

## Download and extract
Commands used to install and test compiler

```
wget http://ellcc.org/releases/latest/ellcc-arm32v6-linux-2017-08-23.bz2
```

```
bzip2 -dk ellcc-arm32v6-linux-2017-08-23.bz2
tar -x -f ellcc/ellcc-arm32v6-linux-2017-08-23
cd /ellcc
./bin/ecc -g hello.c -o hello
```
official install instructions are here: [ellc installation](http://ellcc.org/?page_id=295)

## Test program
```
#include <stdio.h>
int main() {
   // printf() displays the string inside quotation
   printf("Hello, World!");
   return 0;
}

```
## simple makefile
```
PROGS=hello gpio-test gpio-demo

CCFLAGS=
CC = /ellcc/bin/ecc $(CFLAGS)


all: $(PROGS)

%: %.c
	$(CC) $(CCFLAGS) $(<) -o $@ 
#	$(CC) $(CCFLAGS) $(<) -o $@ -l $@.lst

.PHONY clean:
	rm $(PROGS)
```


## Files

[Makefile](./Makefile)

[hello.c](./hello.c)

[gpio-test.c](./gpio-test.c)

[gpio-demo.c](./gpio-demo.c)

