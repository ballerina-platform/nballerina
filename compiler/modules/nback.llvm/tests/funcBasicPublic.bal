import ballerina/test;

function funcBasicPublic() returns Module {
    Builder builder = new ();
    Module m = new ();

    FunctionDefn foo = m.addFunction("foo", {returnType: "void", paramTypes: []});
    BasicBlock fooBB = foo.appendBasicBlock();
    builder.positionAtEnd(fooBB);
    builder.ret();

    FunctionDefn bar = m.addFunction("bar", {returnType: "i64", paramTypes: []});
    BasicBlock barBB = bar.appendBasicBlock();
    builder.positionAtEnd(barBB);
    builder.ret(constInt("i64",42));
    return m;
}

@test:Config {}
function testBasicPublic() returns error? {
    return runTest(funcBasicPublic, "func_basic_public.ll");
}
