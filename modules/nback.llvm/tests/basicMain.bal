import ballerina/file;
import ballerina/test;

function basicMain() returns Module {

    Module m = new ();
    Function mainFunction = m.addFunction("main", {returnType: "i64", paramTypes: []});
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    Builder builder = new ();
    builder.positionAtEnd(initBlock);
    builder.ret(constInt("i64",0));
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
