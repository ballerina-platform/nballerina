# Usage
1. Run `./gradlew copyDependencies` to download and copy dependencies to the local `target/platform-libs` directory. (This needs to be done only once for the first build)
2. Run `bal build` to build the project

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
    error? err = m.toFile("test.ll");
}
```