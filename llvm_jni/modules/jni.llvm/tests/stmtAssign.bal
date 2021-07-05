import ballerina/test;

function stmtAssign() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
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
    return m;
}


@test:Config {}
function testStmtAssign() returns error? {
    return runTest(stmtAssign, "stmt_assign.ll");
}
