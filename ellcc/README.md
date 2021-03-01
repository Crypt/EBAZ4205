
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


## Use of libraries

A more complicated example program makes use of library functions, the libraries used need to be included in the build command. Library files can be statically lined into the executable or loaded at run time. The system ned to know where to find the run-time libraries, the enviorenment should be set to the library location, for example 'export LD_LIBRARY_PATH=/ellcc/libecc/lib/arm32v6-linux' or it can be set in a startup script.

Console test appplication built with static linksge
```
/ellcc/bin/ecc -o console -Wall console.c -lcurses -static
./console
```

Same example built with dynamic linkage
```
export LD_LIBRARY_PATH=/ellcc/libecc/lib/arm32v6-linux
/ellcc/bin/ecc -o console -Wall console.c -lncurses 
./console
```


## Files

[Makefile](./Makefile)

[hello.c](./hello.c)

[gpio-test.c](./gpio-test.c)

[gpio-demo.c](./gpio-demo.c)

[console.c](./console.c)

