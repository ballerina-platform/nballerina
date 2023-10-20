# Usage

## 1 Build nBallerina complier using JNI
Run `make buildWithRuntime`

This will create new ballerina package in `testbuild` directory by,
1. Replace `print.llvm` with `jni.llvm`
2. Run `bal build` on the new package
3. Add the inline runtime (`balrt_inline.bc`) in to the resulting `jar` file

Resulting compiler includes the necessary parts of the LLVM tool-chain (using [Bytedeco's LLVM presets](https://github.com/bytedeco/javacpp-presets/tree/master/llvm) as well as the inline runtime (`balrt_inline.bc`) and can compile Ballerina source files in to object files directly.

To clean this build either delete the `testbuild` directory or run `make clean`.

## 2 Build native executable
Run `make buildNative`

This will extend 1 by compiling the nBallerina compiler using [GraalVM](https://www.graalvm.org/) creating a native executable.

### 2.1 Pruning unwanted LLVM dependencies
When building the native executable as an intermediate step we crate a Java version of the compiler that can run in multiple operating systems. For this we include LLVM tool-chain for each of those operating systems. However this is not needed when building the native executable. To prune these unnecessary dependencies you can pass in a `Ballerina.toml` file with only the dependencies needed for your operating system. For example in a Linux X86-64 machine we can use `make BAL_CONFIG=BallerinaLinuxX86_64.toml buildNative`.

### 2.2 Building release bundle
Run `make buildRelease`

This will create the release artifacts in `build/nballerina` directory. It will include native executable, runtime and script (`nballerina.sh`) that will handle linking object files with runtime using operating system's C compiler.

# 3.Testing
In order to test the compiler against the test suite run `make test LINK_FILE_EXTENSION=.o COMPILER=<Path to compiler>` in `test` directory
