import ballerina/test;

function testConstFnBuilder(Context cx, Module m, Builder builder, string fnName, float retVal) {
    FunctionDefn fn = m.addFunctionDefn(fnName, {returnType: "double", paramTypes: []});
    BasicBlock initBlock = fn.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    builder.ret(cx.constFloat("double", retVal));
}

function constFloatT() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    testConstFnBuilder(context, m, builder, "test", 1.12345);
    testConstFnBuilder(context, m, builder, "test2", 1.123456);
    testConstFnBuilder(context, m, builder, "test3", 11.2345);
    testConstFnBuilder(context, m, builder, "testE", float:E);
    testConstFnBuilder(context, m, builder, "testINF", float:Infinity);
    testConstFnBuilder(context, m, builder, "testNegINF", -1.0 * float:Infinity);
    testConstFnBuilder(context, m, builder, "testNan", float:NaN);
    testConstFnBuilder(context, m, builder, "testPi", float:PI);
    return m;
}

@test:Config {}
function testConstFloat() returns error? {
    return runTest(constFloatT, "const_float.ll");
}
