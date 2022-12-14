import ballerina/test;

function stmtAssignLiteral() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    FunctionDefn foo = m.addFunctionDefn("main", {returnType: "i64", paramTypes: []});
    BasicBlock initBlock = foo.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    PointerValue R1 = builder.alloca("i64");
    builder.store(context.constInt("i64", 42), R1);
    builder.store(context.constInt("i64", 43), R1);
    builder.store(context.constInt("i64", 44), R1);
    builder.store(context.constInt("i64", int:MAX_VALUE), R1);
    builder.store(context.constInt("i64", int:MIN_VALUE), R1);
    builder.ret();
    return m;
}


@test:Config {}
function testStmtAssignLiteral() returns error? {
    return runTest(stmtAssignLiteral, "stmt_assign_literal.ll");
}
