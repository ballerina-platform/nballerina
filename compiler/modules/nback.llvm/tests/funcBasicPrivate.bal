import ballerina/test;

function funcBasicPrivate() returns Module {
    Builder builder = new ();
    Module m = new ();

    FunctionDefn foo = m.addFunction("foo", {returnType: "void", paramTypes: []});
    foo.setLinkageType("internal");
    BasicBlock fooBB = foo.appendBasicBlock();
    builder.positionAtEnd(fooBB);
    builder.ret();

    FunctionDefn bar = m.addFunction("bar", {returnType: "i64", paramTypes: []});
    bar.setLinkageType("internal");
    BasicBlock barBB = bar.appendBasicBlock();
    builder.positionAtEnd(barBB);
    builder.ret(constInt("i64",42));
    return m;
}

@test:Config {}
function testBasicPrivate() returns error? {
    return runTest(funcBasicPrivate, "func_basic_private.ll");
}
