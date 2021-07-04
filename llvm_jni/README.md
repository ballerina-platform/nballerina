# Usage
## Build the jni.llvm
1. Run `./gradlew copyDependencies` to download and copy dependencies to the local `target/platform-libs` directory. (This needs to be done only once for the first build)
2. Run `bal build` to build the project

## Build nBallerina complier using JNI
Run `./gradlew testBuild`

This will create new ballerina package in `testbuild` directory the root directory where
1. Change all the imports of `print.llvm` to `jni.llvm`
2. Remove the `print.llvm` module and insert `jni.llvm` module instead
3. Run `bal build` on the new ballerina package

To clean this build either delete the `testbuild` directory or run `./gradlew cleanTestBuild`.
# Sample code
```
import llvm_jni.llvm;
import  ballerina/io;
public function main() {
    llvm:Context context = new;
    llvm:Builder builder = context.createBuilder();
    llvm:Module m = context.createModule();
    llvm:Function mainFunction = m.addFunction("main", {returnType: "void", paramTypes: ["i64", "i1"]});
    llvm:BasicBlock initBlock = mainFunction.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    builder.ret(llvm:constInt("i64",0));
    io:println(m.toString());
    checkpanic m.toFile("test.ll");
}
```
