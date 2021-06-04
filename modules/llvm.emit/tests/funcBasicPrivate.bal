import ballerina/file;
import ballerina/test;

function funcBasicPrivate() returns Module {
    Builder builder = new ();
    Module m = new ();

    Function foo = m.insertFunction("@foo", {returnType: "void"});
    foo.setLinkageType("internal");
    BasicBlock fooBB = foo.appendBasicBlock();
    builder.positionAtEnd(fooBB);
    builder.returnVoid();

    Function bar = m.insertFunction("@bar", {returnType: "i64"});
    bar.setLinkageType("internal");
    BasicBlock barBB = bar.appendBasicBlock();
    builder.positionAtEnd(barBB);
    builder.returnValue(constInt(42));
    return m;
}

@test:Config {}
function testBasicPrivate() returns error? {
    string expectedOutput = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", "testOutputs", "func_basic_private.ll");
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", "testOutputs", "tmp_func_basic_private.ll");
    check buildOutput(funcBasicPrivate(), outputPath);
    test:assertEquals(compareFiles(expectedOutput, outputPath), true);
    check file:remove(outputPath);
}
