import ballerina/test;

function testConstFnBuilder(Module m, Builder builder, string fnName, float retVal) {
    FunctionDefn fn = m.addFunctionDefn(fnName, {returnType: "double", paramTypes: []});
    BasicBlock initBlock = fn.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    builder.ret(constReal("double",retVal));
}

function constRealT() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    testConstFnBuilder(m, builder, "test", 1.12345);
    testConstFnBuilder(m, builder, "test2", 1.123456);
    testConstFnBuilder(m, builder, "test3", 11.2345);
    testConstFnBuilder(m, builder, "testE", float:E);
    testConstFnBuilder(m, builder, "testINF", float:Infinity);
    testConstFnBuilder(m, builder, "testNegINF", -1.0 * float:Infinity);
    testConstFnBuilder(m, builder, "testNan", float:NaN);
    testConstFnBuilder(m, builder, "testPi", float:PI);
    return m;
}

@test:Config {}
function testConstReal() returns error? {
    return runTest(constRealT, "const_real.ll");
}
