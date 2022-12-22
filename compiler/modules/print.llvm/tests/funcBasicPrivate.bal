import ballerina/test;

function funcBasicPrivate() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();

    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: "void", paramTypes: []});
    foo.setLinkage("internal");
    BasicBlock fooBB = foo.appendBasicBlock();
    builder.positionAtEnd(fooBB);
    builder.ret();

    FunctionDefn bar = m.addFunctionDefn("bar", {returnType: "i64", paramTypes: []});
    bar.setLinkage("internal");
    BasicBlock barBB = bar.appendBasicBlock();
    builder.positionAtEnd(barBB);
    builder.ret(context.constInt("i64",42));
    return m;
}

@test:Config {}
function testBasicPrivate() returns error? {
    return runTest(funcBasicPrivate, "func_basic_private.ll");
}
