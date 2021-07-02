import nballerina.jni.llvm;
import  ballerina/io;
public function main() {
    llvm:Context context = new;
    llvm:Builder builder = context.createBuilder();
    llvm:Module m = context.createModule();
    llvm:Function mainFunction = m.addFunction("main", {returnType: "void", paramTypes: ["i64", "i1"]});
    llvm:BasicBlock initBlock = mainFunction.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    builder.ret(llvm:constInt("i64",0));
    io:println(m.writeFile());
    checkpanic m.printModuleToFile("test.ll");
}
