import ballerina/test;

function arithmeticFloat() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    FunctionDefn bar = m.addFunctionDefn("bar", {returnType: "double", paramTypes: ["double", "double"]});
    BasicBlock initBlock = bar.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value v0 = bar.getParam(0);
    Value v1 = bar.getParam(1);
    Value a = builder.fArithmetic("fadd", v0, v1);
    Value b = builder.fArithmetic("fsub", v0, v1);
    Value c = builder.fArithmetic("fmul", a, b);
    Value d = builder.fArithmetic("fdiv", c, a);
    builder.ret(d);
    return m;
}

@test:Config {}
function testArithmeticFloat() returns error? {
    return runTest(arithmeticFloat, "arithmetic_float.ll");
}
