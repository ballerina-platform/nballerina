import ballerina/file;
import ballerina/test;

function funcBasicPublic() returns Module {

    Builder builder = new();
    Module m = new("x86_64-pc-linux-gnu");
    Function foo = m.appendFunction("@foo", "void");
    BasicBlock bb1 = foo.appendBasicBlock();
    builder.positionAtEnd(bb1);
    builder.returnVoid(); 

    Function bar = m.appendFunction("@bar", "i64");
    BasicBlock bb2 = bar.appendBasicBlock();
    builder.positionAtEnd(bb2);
    builder.returnValue(constInt("i64", 42));
    return m; 
}

@test:Config{}
function funcBasicPublicTest() returns error?{
    Module m = funcBasicPublic();
    string outputPath = check file:joinPath(file:getCurrentDir(),"modules","llvm.emit", "tests", "func_basic_public.ll");
    Output out = check new(outputPath);
    m.output(out);
    check out.finish();
}