import ballerina/file;
import ballerina/test;

function stmtAssignLiteral() returns Module {
    Builder builder = new ();
    Module m = new ("x86_64-pc-linux-gnu");
    Function foo = m.appendFunction("@foo", "void", "dso_local");
    BasicBlock bb = foo.appendBasicBlock();
    builder.positionAtEnd(bb);
    Value R1 = builder.alloca("i64");
    Value C1 = constInt("i64", 42);
    Value C2 = constInt("i64", 43);
    Value C3 = constInt("i64", 44);
    Value C4 = constInt("i64", 9223372036854775807);
    Value C5 = constInt("i64", -9223372036854775808);

    builder.store(C1, R1);
    builder.store(C2, R1);
    builder.store(C3, R1);
    builder.store(C4, R1);
    builder.store(C5, R1);
    builder.returnVoid();
    return m;
}

@test:Config {}
function testStmtAssignLiteral() returns error? {
    Module m = stmtAssignLiteral();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", 
    "stmt_assign_literal.ll");
    Output out = check new (outputPath);
    m.output(out);
    check out.finish();
}
