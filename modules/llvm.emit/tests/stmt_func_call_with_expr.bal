import ballerina/file;
import ballerina/test;

function stmtFuncCallWithExpr() returns Module {
    Builder builder = new ();
    Module m = new ("x86_64-pc-linux-gnu");

    Function add = m.appendFunction("@llvm.sadd.with.overflow.i64", "{i64,i1}", functionAttributes = 
    ["nounwind", "readnone", "speculatable", "willreturn"], isExternal = true, functionArgTypes = ["i64", "i64"]);
    Function abort = 
    m.appendFunction("@abort", "void", isExternal = true, functionAttributes = ["noreturn", "nounwind"]);

    Function foo = m.appendFunction("@foo", "void", "dso_local",functionArgTypes=["i64","i64","i64","i64","i64"]);
    Value R0 = foo.getFunctionArgs()[0];
    Value R1 = foo.getFunctionArgs()[1];
    Value R2 = foo.getFunctionArgs()[2];
    Value R3 = foo.getFunctionArgs()[3];
    Value R4 = foo.getFunctionArgs()[4];
    BasicBlock bbFoo = foo.appendBasicBlock();
    builder.positionAtEnd(bbFoo);
    Value R6 = builder.alloca("i64");
    Value R7 = builder.alloca("i64");
    Value R8 = builder.alloca("i64");
    Value R9 = builder.alloca("i64");
    Value R10 = builder.alloca("i64");
    builder.store(R0, R6);
    builder.store(R1, R7);
    builder.store(R2, R8);
    builder.store(R3, R9);
    builder.store(R4, R10);
    builder.returnVoid();

    Function bar = m.appendFunction("@bar", "i64", "dso_local");
    BasicBlock bbBar = bar.appendBasicBlock();
    builder.positionAtEnd(bbBar);
    builder.returnValue(constInt("i64", 44));


    Function test = m.appendFunction("@test", "void", "dso_local");
    BasicBlock bb0 = test.appendBasicBlock();
    builder.positionAtEnd(bb0);
    R1 = builder.alloca("i64");
    builder.store(constInt("i64", 43), R1);
    R2 = builder.load(R1);
    R3 = builder.call(bar, []);
    R4 = builder.load(R1);
    Value R5 = builder.binaryInt("xor", R4, constInt("i64",-1));
    R6 = builder.load(R1);
    R7 = builder.call(add, [R6, constInt("i64", 42)]);
    R8 = builder.extractValue(R7, constInt("i64", 0));
    R9 = builder.extractValue(R7, constInt("i64", 1));
    R10 = builder.binaryInt("xor", R9, constBool(true));

    BasicBlock bb11 = test.appendBasicBlock();
    BasicBlock bb12 = test.appendBasicBlock();

    builder.condBranch(R10, bb12, bb11);

    builder.positionAtEnd(bb11);
    builder.callVoid(abort,[]);
    builder.unreachable();

    builder.positionAtEnd(bb12);
    builder.callVoid(foo,[constInt("i64", 42), R2, R3, R5, R8]);
    builder.returnVoid();
    return m;
}

@test:Config {}
function testStmtFuncCallWithExpr() returns error? {
    Module m = stmtFuncCallWithExpr();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", 
    "stmt_func_call_with_expr.ll");
    Output out = check new (outputPath);
    m.output(out);
    check out.finish();
}
