import ballerina/test;

function stmtDeclLiteral() returns Module {
    Builder builder = new ();
    Module m = new ();
    FunctionDefn test = m.addFunction("test", {returnType: "i64", paramTypes:[]});
    BasicBlock initBlock = test.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    PointerValue R1 = builder.alloca("i64",8);
    PointerValue R2 = builder.alloca("i64",8);
    PointerValue R3 = builder.alloca("i64",8);
    PointerValue R4 = builder.alloca("i64",8);
    PointerValue R5 = builder.alloca("i64",8);
    builder.store(constInt("i64", 42), R1);
    builder.store(constInt("i64", 43), R2);
    builder.store(constInt("i64", 44), R3);
    builder.store(constInt("i64", 9223372036854775807), R4);
    builder.store(constInt("i64", -9223372036854775808), R5);
    builder.ret();
    return m;
}


@test:Config {}
function testStmtDeclLiteral() returns error? {
    return runTest(stmtDeclLiteral, "stmt_decl_literal.ll");
}
