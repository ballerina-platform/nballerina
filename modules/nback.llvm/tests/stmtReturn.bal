import ballerina/file;
import ballerina/test;

function stmtReturn() returns Module {
    Builder builder = new ();
    Module m = new ();
    Function foo1 = m.addFunction("foo1", {returnType: "i64", paramTypes: []});
    BasicBlock bb1 = foo1.appendBasicBlock();
    builder.positionAtEnd(bb1);
    builder.ret(constInt("i64",42));

    Function foo2 = m.addFunction("foo2", {returnType: "i64", paramTypes: []});
    BasicBlock bb2 = foo2.appendBasicBlock();
    builder.positionAtEnd(bb2);
    PointerValue R1 = builder.alloca("i64",8);
    Value c = constInt("i64",42);
    builder.store(c, R1);
    Value R2 = builder.load(R1);
    builder.ret(R2);
    return m;
}

@test:Config {}
function testStmtReturn() returns error? {
    string expectedOutput = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "stmt_return.ll");
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "tmp_stmt_return.ll");
    check buildOutput(stmtReturn(), outputPath);
    test:assertEquals(compareFiles(expectedOutput, outputPath), true);
    check file:remove(outputPath);
}
