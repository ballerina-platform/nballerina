import ballerina/file;
import ballerina/test;

function stmtDeclLiteral() returns Module {
    Builder builder = new ();
    Module m = new ();
    Function test = m.addFunction("test", {returnType: "i64"});
    BasicBlock initBlock = test.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value R1 = builder.alloca("i64",8);
    Value R2 = builder.alloca("i64",8);
    Value R3 = builder.alloca("i64",8);
    Value R4 = builder.alloca("i64",8);
    Value R5 = builder.alloca("i64",8);
    builder.store(constInt("i64", 42), R1);
    builder.store(constInt("i64", 43), R2);
    builder.store(constInt("i64", 44), R3);
    builder.store(constInt("i64", 9223372036854775807), R4);
    builder.store(constInt("i64", -9223372036854775808), R5);
    builder.returnVoid();
    return m;
}


@test:Config {}
function testStmtDeclLiteral() returns error? {
    string expectedOutput = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "stmt_decl_literal.ll");
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "tmp_stmt_decl_literal.ll");
    check buildOutput(stmtDeclLiteral(), outputPath);
    test:assertEquals(compareFiles(expectedOutput, outputPath), true);
    check file:remove(outputPath);
}
