import ballerina/test;

function globalVar() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    m.addGlobal("i64", "g1");
    FunctionDefn mainFunction = m.addFunctionDefn("testFn", {returnType: "i64", paramTypes: [pointerType("i64")]});
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    return m;
}

@test:Config {}
function testGlobalVar() returns error? {
    return runTest(globalVar, "global_var.ll");
}
