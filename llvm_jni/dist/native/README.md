# nBallerina:0.1
Compiler for the [Ballerina language](https://ballerina.io/) that can generate native executables.

## Requirements
+ Compiler uses the operating system's C compiler (`cc`) for linking.

## Usage
Run `nballerina.sh <Path to bal source file>` to compile. Resulting executable (along with build artifacts) will be in `./build` directory

### Cross compiling
Only supported target is `aarch64-linux-gnu`. In order to cross compile first install GCC cross compiler for aarch64.
```
sudo apt-get install gcc-aarch64-linux-gnu
```
Then run `nballerina.sh <Path to bal source file> --target aarch64`

## Language restrictions
Currently supported subset of the language is defined in `subset.md` file.
