import ballerina/file;
import ballerina/test;

function stmtAssignLiteral() returns Module {
    Builder builder = new ();
    Module m = new ();
    Function foo = m.addFunction("main", {returnType: "i64", paramTypes: []});
    BasicBlock initBlock = foo.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value R1 = builder.alloca("i64", 8);
    builder.store(constInt("i64", 42), R1);
    builder.store(constInt("i64", 43), R1);
    builder.store(constInt("i64", 44), R1);
    builder.store(constInt("i64", 9223372036854775807), R1);
    builder.store(constInt("i64", -9223372036854775808), R1);
    builder.returnVoid();
    return m;
}


@test:Config {}
function testStmtAssignLiteral() returns error? {
    string expectedOutput = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "stmt_assign_literal.ll");
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "tmp_stmt_assign_literal.ll");
    check buildOutput(stmtAssignLiteral(), outputPath);
    test:assertEquals(compareFiles(expectedOutput, outputPath), true);
    check file:remove(outputPath);
}
