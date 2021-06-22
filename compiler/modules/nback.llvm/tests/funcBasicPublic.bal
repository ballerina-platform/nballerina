import ballerina/test;

function funcBasicPublic() returns Module {
    Context context = contextCreate();
    Builder builder = new (context);
    Module m = new (context);

    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: "void", paramTypes: []});
    BasicBlock fooBB = foo.appendBasicBlock();
    builder.positionAtEnd(fooBB);
    builder.ret();

    FunctionDefn bar = m.addFunctionDefn("bar", {returnType: "i64", paramTypes: []});
    BasicBlock barBB = bar.appendBasicBlock();
    builder.positionAtEnd(barBB);
    builder.ret(constInt("i64",42));
    contextDispose(context);
    return m;
}

@test:Config {}
function testBasicPublic() returns error? {
    return runTest(funcBasicPublic, "func_basic_public.ll");
}
