import ballerina/test;

function intToFloat() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    FunctionDefn test = m.addFunctionDefn("test", {returnType: "double", paramTypes: ["i64", "i32"]});
    BasicBlock initBlock = test.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value p0 = test.getParam(0);
    Value p1 = test.getParam(1);
    Value v1 = builder.sIToFP(p0, "double");
    Value v2 = builder.sIToFP(p1, "double");
    Value ret = builder.fArithmetic("fadd", v1, v2);
    builder.ret(ret);
    return m;
}

@test:Config {}
function testIntToFloat() returns error? {
    return runTest(intToFloat, "int_to_float.ll");
}
