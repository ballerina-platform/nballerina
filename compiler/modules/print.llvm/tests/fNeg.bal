import ballerina/test;

function fNegate() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    FunctionDefn test = m.addFunctionDefn("test", {returnType: "double", paramTypes: ["double"]});
    BasicBlock initBlock = test.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value p0 = test.getParam(0);
    Value neg = builder.fNeg(p0);
    builder.ret(neg);
    return m;
}

@test:Config {}
function testFNegate() returns error? {
    return runTest(fNegate, "f_neg.ll");
}
