import ballerina/file;
import ballerina/test;

function stmtAssign() returns Module {
    Builder builder = new ();
    Module m = new ();
    Function foo = m.addFunction("main", {returnType: "i64",paramTypes:["i64"]});
    BasicBlock initBlock = foo.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value R0 = foo.getParam(0);
    Value R2 = builder.alloca("i64", 8);
    Value R3 = builder.alloca("i64", 8);
    builder.store(R0, R2);
    Value R4 = builder.load(R2);
    builder.store(R4, R3);
    builder.returnVoid();
    return m;
}


@test:Config {}
function testStmtAssign() returns error? {
    string expectedOutput = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "stmt_assign.ll");
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "tmp_stmt_assign.ll");
    check buildOutput(stmtAssign(), outputPath);
    test:assertEquals(compareFiles(expectedOutput, outputPath), true);
    check file:remove(outputPath);
}
