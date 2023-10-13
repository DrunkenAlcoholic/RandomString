# RandomStr



## About

RandomStr is coded in free Pascal and will generate a random string when given one or more optional parameters.
At the bare minimum, a string length and at least one option must be given as a parameter. 

The following options can be used:

* --uppercase This will use/include UPPERCASE characters
* --lowercase This will use/include lowercase characters
* --numbers This will use/include number characters
* --special This will use/include special characters

## Examples

The following examples will use the string length of 20

**--uppercase** 
```bash
$ RandomStr --uppercase 20
$ OQBBAFPYTHWZPVOCHFVZ
```
**--lowercase** 
```bash
$ RandomStr --lowercase 20
$ ktdnuepmwajvmqewvcss
```
**--numbers** 
```bash
$ RandomStr --numbers 20
$ 12468829011676092269
```
**--special** 
```bash
$ RandomStr --special 20
$ }+&*<@:,"^.@|(`{?<.:
```

**--uppercase --lowercase --numbers --special** 
```bash
$ RandomStr --uppercase --lowercase --numbers --special 20
$ mVa^~Hi]2jQk+xz)GNI/
```


## Installation

I have included an already compiled binary in this repository if don't want to compile,
Otherwise you can compile RandomStr with the free an open source "Free Pascal Compiler" just search your distro's packages for "fpc" and install, then to compile you do the following


### Compile
use fpc to compile with these optimized options for x86_64, see cleanup.sh for more details on flag options
```bash
$ fpc -Px86_64 -CpCOREAVX2 -CfAVX2 -OpCOREAVX2 -O3 -Mobjfpc -CX -B -XXs -v RandomStr.pas
```

or run the included bash script to compile and cleanup
```bash
$ ./build.sh
```
if you get an error on "ld" not found, install "binutils" package for your distribution

### Install
 Copy the compiled binary to your path folder e.g /$HOME/bin 
 
 then make it executable
 ```bash
 $ chmod +x RandomStr
 ```


## Usage
Either call the program by using RandomStr in a shell or add to your .bashrc 

```bash
$ RandomStr --lowercase 12
```

## TODO

- [ ] Create a GUI version
- [ ] Convert Random String function to in-line assembly 
- [ ] Reduce the nested else if statements and use GetOption function
- [ ] Clean up Code


