# nBallerina:0.1
Compiler for the [Ballerina language](https://ballerina.io/) that can generate native executables.

## Requirements
+ Make sure you have Java 17 or later and `java` command is working.
+ Compiler uses the operating system's C compiler (`cc`) for linking.

## Usage
Run `nballerina.sh <Path to bal source file>` to compile. Resulting executable (along with build artifacts) will be in `./build` directory

## Language restrictions
Currently supported subset of the language is defined in `subset.md` file.
