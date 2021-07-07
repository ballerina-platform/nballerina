import ballerina/test;

function arithmeticNoWrap() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: "i64", paramTypes: ["i64", "i64"]});
    BasicBlock initBlock = foo.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value v0 = foo.getParam(0);
    Value v1 = foo.getParam(1);
    Value a = builder.iArithmeticNoWrap("add", v0, v1);
    Value b = builder.iArithmeticNoWrap("sub", v0, v1);
    Value c = builder.iArithmeticNoWrap("mul", a, b);
    builder.ret(c);
    return m;
}

@test:Config {}
function testArithmeticNoWrap() returns error? {
    return runTest(arithmeticNoWrap, "arithmetic_no_wrap.ll");
}
