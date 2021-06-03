import ballerina/file;
import ballerina/test;

function basicMain() returns Module {

    Module m = new ("x86_64-pc-linux-gnu");
    Function mainFunction = m.getOrInsertFunction("@main", {returnType: "i64"});
    mainFunction.setPreEmptionSpecifier("dso_local");
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    Builder builder = new ();
    builder.positionAtEnd(initBlock);
    builder.returnValue(constInt(0));
    return m;
}

@test:Config {}
function testBasicMain() returns error? {
    Module m = basicMain();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", "testOutputs", "basic_main.ll");
    Output out = check new (outputPath);
    m.output(out);
    check out.finish();
}
