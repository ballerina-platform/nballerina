import ballerina/file;
import ballerina/test;

function stmtDeclExpr() returns Module {

    Builder builder = new ();
    Module m = new ("x86_64-pc-linux-gnu");
    Function bar = m.appendFunction("@bar", "i64", "dso_local");
    BasicBlock barBB = bar.appendBasicBlock();
    builder.positionAtEnd(barBB);
    builder.returnValue(constInt("i64", 43));

    Function add = m.appendFunction("@llvm.sadd.with.overflow.i64", "{i64,i1}", functionAttributes = 
    ["nounwind", "readnone", "speculatable", "willreturn"], isExternal = true, functionArgTypes = ["i64", "i64"]);
    Function abort = 
    m.appendFunction("@abort", "void", isExternal = true, functionAttributes = ["noreturn", "nounwind"]);

    Function foo = m.appendFunction("@foo", "void", "dso_local");
    BasicBlock bb0 = foo.appendBasicBlock();
    builder.positionAtEnd(bb0);
    Value R1 = builder.alloca("i64");
    Value R2 = builder.alloca("i64");
    Value R3 = builder.alloca("i64");
    Value R4 = builder.alloca("i64");
    Value R5 = builder.alloca("i64");
    Value R6 = builder.alloca("i64");
    builder.store(constInt("i64", 42), R1);
    Value R7 = builder.call(bar,[]);
    builder.store(R7, R2);
    Value R8 = builder.load(R1);
    Value R9 = builder.binaryInt("xor",R8, constInt("i64",-1));
    builder.store(R9, R3);
    Value R10 = builder.load(R1);
    Value R11 = builder.load(R2);
    Value R12 = builder.call(add,[R10, R11]);
    Value R13 = builder.extractValue(R12, constInt("i64",0));
    Value R14 = builder.extractValue(R12, constInt("i64",1));
    Value R15 = builder.binaryInt("xor", R14, constBool(true));

    BasicBlock bb16 = foo.appendBasicBlock();
    BasicBlock bb17 = foo.appendBasicBlock();

    builder.condBranch(R15, bb16, bb17);

    builder.positionAtEnd(bb16);
    builder.callVoid(abort,[]);
    builder.unreachable();

    builder.positionAtEnd(bb17);
    builder.store(R13, R4);
    Value R18 = builder.load(R1);
    Value R19 = builder.load(R2);
    Value R20 = builder.call(add,[R18, R19]);
    Value R21 = builder.extractValue(R20, constInt("i64", 0));
    Value R22 = builder.extractValue(R20, constInt("i64", 1));
    Value R23 = builder.binaryInt("xor", R22, constBool(true));

    BasicBlock bb24 = foo.appendBasicBlock();
    BasicBlock bb25 = foo.appendBasicBlock();

    builder.condBranch(R23, bb25, bb24);


    builder.positionAtEnd(bb24);
    builder.callVoid(abort,[]);
    builder.unreachable();

    builder.positionAtEnd(bb25);
    builder.store(R21, R5);
    Value R26 = builder.load(R1);
    builder.store(R26, R6);
    builder.returnVoid();
    return m;
}

@test:Config {}
function testStmtDeclExpr() returns error? {
    Module m = stmtDeclExpr();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", "stmt_decl_expr.ll");
    Output out = check new (outputPath);
    m.output(out);
    check out.finish();
}
