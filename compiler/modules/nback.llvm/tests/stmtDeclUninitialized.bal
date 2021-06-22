import ballerina/test;

function stmtDeclUninitialized() returns Module {
    Context context = new;
    Builder builder = context.createBuilderInContext();
    Module m = context.createModuleInContext();
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: "i64", paramTypes:[]});
    BasicBlock initBlock = foo.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value R1 = builder.alloca("i64");
    builder.ret();
    return m;
}


@test:Config {}
function testStmtDeclUninitialized() returns error? {
    return runTest(stmtDeclUninitialized, "stmt_decl_uninitialized.ll");
}
