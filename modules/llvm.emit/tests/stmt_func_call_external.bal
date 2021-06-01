import ballerina/file;
import ballerina/test;

function stmtFuncCallExternal() returns Module {
    Builder builder = new ();
    Module m = new ("x86_64-pc-linux-gnu");
    Function foo1 = m.appendFunction("@foo1", "void", "dso_preemptable", isExternal=true);
    Function foo2 = m.appendFunction("@foo2", "i64", "dso_preemptable", isExternal=true);
    Function foo3 = m.appendFunction("@foo3", "i64", "dso_preemptable", isExternal=true, functionArgTypes=["i64"]);
    Function test = m.appendFunction("@test", "void", "dso_preemptable");
    BasicBlock bb0 = test.appendBasicBlock();
    builder.positionAtEnd(bb0);
    Value R1 = builder.alloca("i64");
    Value R2 = builder.alloca("i64");
    builder.callVoid(foo1,[]);
    Value R3 = builder.call(foo2,[]);
    builder.store(R3,R1);
    Value R4 = builder.load(R1);
    Value R5 = builder.call(foo3,[R4]);
    builder.store(R5, R2);
    builder.returnVoid();
    return m;
}

@test:Config {}
function testStmtFuncCallExternal() returns error? {
    Module m = stmtFuncCallExternal();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", "stmt_func_call_external.ll");
    Output out = check new (outputPath);
    m.output(out);
    check out.finish();
}
