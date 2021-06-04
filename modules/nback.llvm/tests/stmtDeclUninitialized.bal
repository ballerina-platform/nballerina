import ballerina/file;
import ballerina/test;

function stmtDeclUninitialized() returns Module {
    Builder builder = new ();
    Module m = new ();
    Function foo = m.addFunction("foo", {returnType: "i64", paramTypes:[]});
    BasicBlock initBlock = foo.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value R1 = builder.alloca("i64",8);
    builder.returnVoid();
    return m;
}


@test:Config {}
function testStmtDeclUninitialized() returns error? {
    string expectedOutput = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "stmt_decl_uninitialized.ll");
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "tmp_stmt_decl_uninitialized.ll");
    check buildOutput(stmtDeclUninitialized(), outputPath);
    test:assertEquals(compareFiles(expectedOutput, outputPath), true);
    check file:remove(outputPath);
}
