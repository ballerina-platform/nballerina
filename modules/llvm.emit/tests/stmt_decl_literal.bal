import ballerina/file;
import ballerina/test;

function stmtDeclLiteral() returns Module {
    Builder builder = new ();
    Module m = new ("x86_64-pc-linux-gnu");
    Function test = m.appendFunction("@test", "void", "dso_local");
    BasicBlock bb = test.appendBasicBlock();
    builder.positionAtEnd(bb);
    Value R1 = builder.alloca("i64");
    Value R2 = builder.alloca("i64");
    Value R3 = builder.alloca("i64");
    Value R4 = builder.alloca("i64");
    Value R5 = builder.alloca("i64");
    Value C1 = constInt("i64", 42);
    Value C2 = constInt("i64", 43);
    Value C3 = constInt("i64", 44);
    Value C4 = constInt("i64", 9223372036854775807);
    Value C5 = constInt("i64", -9223372036854775808);

    builder.store(C1, R1);
    builder.store(C2, R2);
    builder.store(C3, R3);
    builder.store(C4, R4);
    builder.store(C5, R5);
    builder.returnVoid();
    return m;
}

@test:Config {}
function testStmtDeclLiteral() returns error? {
    Module m = stmtDeclLiteral();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", 
    "stmt_decl_literal.ll");
    Output out = check new (outputPath);
    m.output(out);
    check out.finish();
}
