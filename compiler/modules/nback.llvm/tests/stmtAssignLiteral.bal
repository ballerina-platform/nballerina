import ballerina/test;

function stmtAssignLiteral() returns Module {
    Context context = contextCreate();
    Builder builder = new (context);
    Module m = new (context);
    FunctionDefn foo = m.addFunctionDefn("main", {returnType: "i64", paramTypes: []});
    BasicBlock initBlock = foo.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    PointerValue R1 = builder.alloca("i64");
    builder.store(constInt("i64", 42), R1);
    builder.store(constInt("i64", 43), R1);
    builder.store(constInt("i64", 44), R1);
    builder.store(constInt("i64", 9223372036854775807), R1);
    builder.store(constInt("i64", -9223372036854775808), R1);
    builder.ret();
    contextDispose(context);
    return m;
}


@test:Config {}
function testStmtAssignLiteral() returns error? {
    return runTest(stmtAssignLiteral, "stmt_assign_literal.ll");
}
