import ballerina/test;

function globalVar() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    PointerValue g = m.addGlobal("i64", "g1");
    FunctionDefn testFn = m.addFunctionDefn("testFn", {returnType: "i64", paramTypes: ["i64"]});
    BasicBlock initBlock = testFn.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value arg = testFn.getParam(0);
    Value val = builder.ptrToInt(g, "i64");
    Value ret = builder.iArithmeticWrap("add", val, arg);
    builder.ret(ret);
    return m;
}

@test:Config {}
function testGlobalVar() returns error? {
    return runTest(globalVar, "global_var.ll");
}

@test:Config {}
function testRepeatedVarDecln() {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    _ = m.addGlobal("i64", "g1");
    error|PointerValue e = trap m.addGlobal("i64", "g1");
    if !(e is error) {
        test:assertFail("Repeated global variable declaration allowed");
    }
}
