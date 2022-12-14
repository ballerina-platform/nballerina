import ballerina/test;

function sext() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: "void", paramTypes: ["i8"]});
    BasicBlock initBlock = foo.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    _ = builder.sExt(context.constInt("i8", 10), "i64");
    Value a = foo.getParam(0);
    _ = builder.sExt(a, "i64");
    return m;
}

@test:Config {}
function testsext() returns error? {
    return runTest(sext, "sext.ll");
}
