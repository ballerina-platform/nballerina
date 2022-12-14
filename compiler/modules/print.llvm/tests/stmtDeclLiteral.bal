import ballerina/test;

function stmtDeclLiteral() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    FunctionDefn test = m.addFunctionDefn("test", {returnType: "i64", paramTypes:[]});
    BasicBlock initBlock = test.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    PointerValue R1 = builder.alloca("i64");
    PointerValue R2 = builder.alloca("i64");
    PointerValue R3 = builder.alloca("i64");
    PointerValue R4 = builder.alloca("i64");
    PointerValue R5 = builder.alloca("i64");
    builder.store(context.constInt("i64", 42), R1);
    builder.store(context.constInt("i64", 43), R2);
    builder.store(context.constInt("i64", 44), R3);
    builder.store(context.constInt("i64", int:MAX_VALUE), R4);
    builder.store(context.constInt("i64", int:MIN_VALUE), R5);
    builder.ret();
    return m;
}


@test:Config {}
function testStmtDeclLiteral() returns error? {
    return runTest(stmtDeclLiteral, "stmt_decl_literal.ll");
}
