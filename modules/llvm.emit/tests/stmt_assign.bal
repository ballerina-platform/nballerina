import ballerina/file;
import ballerina/test;

function stmtAssign() returns Module {
    Builder builder = new ();
    Module m = new ("x86_64-pc-linux-gnu");
    Function foo = m.appendFunction("@foo", "void", "dso_local", functionArgTypes = ["i64"]);
    BasicBlock bb = foo.appendBasicBlock();
    builder.positionAtEnd(bb);
    Value R2 = builder.alloca("i64");
    Value R3 = builder.alloca("i64");
    Value R0 = foo.getFunctionArgs()[0];
    builder.store(R0, R2);
    Value R4 = builder.load(R2);
    builder.store(R4, R3);
    builder.returnVoid();
    return m;
}

@test:Config {}
function testStmtAssign() returns error? {
    Module m = stmtAssign();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", "stmt_assign.ll");
    Output out = check new (outputPath);
    m.output(out);
    check out.finish();
}
