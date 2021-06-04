import ballerina/file;
import ballerina/test;

function basicMain() returns Module {

    Module m = new ();
    Function mainFunction = m.insertFunction("main", {returnType: "i64"});
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    Builder builder = new ();
    builder.positionAtEnd(initBlock);
    builder.returnValue(constInt(0));
    return m;
}


@test:Config {}
function testBasicMain() returns error? {
    string expectedOutput = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "basic_main.ll");
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "tmp_basic_main.ll");
    check buildOutput(basicMain(), outputPath);
    test:assertEquals(compareFiles(expectedOutput, outputPath), true);
    check file:remove(outputPath);
}
