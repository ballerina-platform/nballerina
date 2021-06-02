import ballerina/file;
import ballerina/test;

function stmtReturn() returns Module {
    Builder builder = new ();
    Module m = new ("x86_64-pc-linux-gnu");
    Function foo1 = m.appendFunction("@foo1", "i64", "dso_local");
    BasicBlock bb1 = foo1.appendBasicBlock();
    builder.positionAtEnd(bb1);
    builder.returnValue(constInt("i64", 42));


    Function foo2 = m.appendFunction("@foo2", "i64", "dso_local");
    BasicBlock bb2 = foo2.appendBasicBlock();
    builder.positionAtEnd(bb2);
    Value R1 = builder.alloca("i64");
    Value c = constInt("i64", 42);
    builder.store(c, R1);
    Value R2 = builder.load(R1);
    builder.returnValue(R2);
    return m;
}

@test:Config {}
function testStmtReturn() returns error? {
    Module m = stmtReturn();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", "stmt_return.ll");
    Output out = check new (outputPath);
    m.output(out);
    check out.finish();
}
