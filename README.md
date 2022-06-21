# nBallerina Wasm Backend
## Usage

The compiler has not yet got to a stage where it is useful. But if you want to play with it or help with development, this is the way:

1. Clone the nBallerina repository.
2. [Download](https://ballerina.io/downloads/) and [install](https://ballerina.io/learn/user-guide/getting-started/installation-options/) the latest Ballerina distribution (Swan Lake not 1.2.x)
3. [Download](https://github.com/WebAssembly/binaryen/releases) and extract Binaryen Tool.
4. You can build the compiler by using the command `bal build` in the `compiler` directory; this will generate a file `target/bin/nballerina.jar`. This should work on any system that Ballerina works on.
4. You can use `java -jar nballerina.jar example.bal --outWat` to compile a Ballerina module into an `wat`  file `example.wat` (note that the backend only supports upto subset 08). Make sure you invoke the `nballerina.jar` file inside the cloned nBallerina directory.
5. If you want to be able to turn the `wat` file into a `wasm` file use the `wasm-opt` tool in the Binaryen tool chain.
```
./wasm-opt -O3 example.wat -o example.wasm -all
```
6. To run the generated `wasm` file. Use the main.js file inside the `wrun` folder. (Supports NodeJs version 17 and 16. Doesn't support NodeJs version 18)
```
node --experimental-wasm-eh --experimental-wasm-gc main.js example.wasm
```

## Testing

The compiler is tested using the test cases in the [compiler/testSuite](compiler/testSuite/) directory. The `bal build` command performs a first level of testing on these: it checks that the test cases that should get compile errors do, and that the test cases that should not get compile errors do not. This should work on any platform on which the Ballerina distribution works.

For those test cases that are valid Ballerina programs, the Makefile in the [test](test/) directory is used to further test that the generated `wasm` files can be compiled and produce the expected output when executed. This Makefile has the following targets:

* `test` (the default target) forces a rebuild of all the `.ll` files and `wasm` files if the compiler jar has changed, and then does `compile`, `testwat` and `testll` 
* `compile` builds any out of date `.ll` files (but does not consider the compiler jar when determining whether a `.ll` is out of date)
* `testll` builds an executable for each test case, executes it and checks its output
* `testwat` builds an executable for each test case, executes it and checks its output

## Status

Wasm backend is completed for [subset 08](docs/subset08.md) and are working on [subset 09](docs/subset09.md).
