# Usage

## 1 Build nBallerina complier using JNI
Run `make`.

This will create new ballerina package in `testbuild` directory by,
1. Replace `print.llvm` with `jni.llvm`.
2. Run `bal build` on the new package.
3. Add the inline runtime (`balrt_inline.bc`) into the resulting `jar` file.
4. Generate a native executable using [GraalVM](https://www.graalvm.org/).

Resulting compiler includes the necessary parts of the LLVM tool-chain (using [Bytedeco's LLVM presets](https://github.com/bytedeco/javacpp-presets/tree/master/llvm) as well as the inline runtime (`balrt_inline.bc`) and can compile Ballerina source files into object files directly.

### 1.1 Pruning unwanted LLVM dependencies
When building the native executable as an intermediate step we crate a Java version of the compiler that can run in multiple operating systems. For this we include LLVM tool-chain for each of those operating systems. However this is not needed when building a single native executable targeting a single operating system/architecture combination. To prune unnecessary dependencies you can pass in a `Ballerina.toml` file with only the dependencies needed for your operating system. For example in a Linux AMD64 machine we can use `make BAL_CONFIG=BallerinaLinuxAMD64.toml`.

### 1.2 Creating distribution tar file
Run `make dist`

This will create the release artifacts in `build` directory. There are two possible versions
1. If you use `ARCH=amd64` (this is the default) it will generate a native executable with support for cross compiling to AArch64, along with AMD64 and AArch64 versions of the runtime.
2. Otherwise it will generate a `jar` file containing the compiler as well as runtime in the host systems architecture.

## 2.Testing
In order to test the compiler against the test suite run `make test LINK_FILE_EXTENSION=.o COMPILER=<Path to compiler>` in `test` directory.
