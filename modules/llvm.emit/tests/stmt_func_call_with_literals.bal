import ballerina/file;
import ballerina/test;

function stmtFuncCallWithLiterals() returns Module {
    Builder builder = new ();
    Module m = new ("x86_64-pc-linux-gnu");
    Function foo1 = m.appendFunction("@foo1", "void", "dso_local");
    BasicBlock bb1 = foo1.appendBasicBlock();
    builder.positionAtEnd(bb1);
    builder.returnVoid();

    Function foo2 = m.appendFunction("@foo2", "void", "dso_local", functionArgTypes = ["i64", "i64"]);
    BasicBlock bb2 = foo2.appendBasicBlock();
    builder.positionAtEnd(bb2);
    Value R3 = builder.alloca("i64");
    Value R4 = builder.alloca("i64");
    Value R0 = foo2.getFunctionArgs()[0];
    Value R1 = foo2.getFunctionArgs()[1];
    builder.store(R0, R3);
    builder.store(R1, R4);
    builder.returnVoid();

    Function foo3 = m.appendFunction("@foo3", "i64", "dso_local");
    BasicBlock bb3 = foo3.appendBasicBlock();
    builder.positionAtEnd(bb3);
    Value C1 = constInt("i64", 21);
    builder.returnValue(C1);

    Function foo4 = m.appendFunction("@foo4", "i64", "dso_local", functionArgTypes = ["i64", "i64"]);
    BasicBlock bb4 = foo4.appendBasicBlock();
    builder.positionAtEnd(bb4);
    R3 = builder.alloca("i64");
    R4 = builder.alloca("i64");
    R0 = foo2.getFunctionArgs()[0];
    R1 = foo2.getFunctionArgs()[1];
    builder.store(R0, R3);
    builder.store(R1, R4);
    Value R5 = builder.load(R4);
    builder.returnValue(R5);

    Function test = m.appendFunction("@test", "void", "dso_local");
    BasicBlock bb5 = test.appendBasicBlock();
    builder.positionAtEnd(bb5);
    R1 = builder.alloca("i64");
    Value R2 = builder.alloca("i64");
    builder.callVoid(foo1, []);
    builder.callVoid(foo2, [constInt("i64", 42), constInt("i64", 43)]);
    R3 = builder.call(foo3, []);
    builder.store(R3, R1);
    R4 = builder.call(foo4, [constInt("i64", 12), constInt("i64", 13)]);
    builder.store(R4, R2);
    builder.returnVoid();

    return m;
}

@test:Config {}
function testStmtFuncCallWithLiterals() returns error? {
    Module m = stmtFuncCallWithLiterals();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", 
    "stmt_func_call_with_literals.ll");
    Output out = check new (outputPath);
    m.output(out);
    check out.finish();
}
