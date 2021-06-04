import ballerina/file;
import ballerina/test;

function funcBasicPublic() returns Module {
    Builder builder = new ();
    Module m = new ();

    Function foo = m.addFunction("foo", {returnType: "void"});
    BasicBlock fooBB = foo.appendBasicBlock();
    builder.positionAtEnd(fooBB);
    builder.returnVoid();

    Function bar = m.addFunction("bar", {returnType: "i64"});
    BasicBlock barBB = bar.appendBasicBlock();
    builder.positionAtEnd(barBB);
    builder.returnValue(constInt("i64",42));
    return m;
}

@test:Config {}
function testBasicPublic() returns error? {
    string expectedOutput = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "func_basic_public.ll");
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "tmp_func_basic_public.ll");
    check buildOutput(funcBasicPublic(), outputPath);
    test:assertEquals(compareFiles(expectedOutput, outputPath), true);
    check file:remove(outputPath);
}
