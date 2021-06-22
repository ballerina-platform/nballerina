import ballerina/test;

function stmtAssign() returns Module {
    Context context = contextCreate();
    Builder builder = new (context);
    Module m = new (context);
    FunctionDefn foo = m.addFunctionDefn("main", {returnType: "i64",paramTypes:["i64"]});
    BasicBlock initBlock = foo.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value R0 = foo.getParam(0);
    PointerValue R2 = builder.alloca("i64");
    PointerValue R3 = builder.alloca("i64");
    builder.store(R0, R2);
    Value R4 = builder.load(R2);
    builder.store(R4, R3);
    builder.ret();
    contextDispose(context);
    return m;
}


@test:Config {}
function testStmtAssign() returns error? {
    return runTest(stmtAssign, "stmt_assign.ll");
}
