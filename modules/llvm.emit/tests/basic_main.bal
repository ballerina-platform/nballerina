import ballerina/file;
import ballerina/test;

function basicMain() returns Module {

    Module m = new ("x86_64-pc-linux-gnu");
    Function mainFunction = 
    m.appendFunction("@main", "i32", "dso_local", ["noinline", "nounwind", "optnone", "uwtable"]);
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    Builder builder = new ();
    builder.positionAtEnd(initBlock);
    builder.returnValue(constInt("i32", 0));
    return m;
}

@test:Config {}
function testBasicMain() returns error? {
    Module basicMainModule = basicMain();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", "basicMain.ll");
    Output out = check new (outputPath);
    basicMainModule.output(out);
    check out.finish();
}
