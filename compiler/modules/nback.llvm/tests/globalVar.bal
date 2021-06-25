import ballerina/test;

function globalVar() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    m.addGlobal("i64", "g1");
    FunctionDefn testFn = m.addFunctionDefn("testFn", {returnType: "i64", paramTypes: ["i64"]});
    BasicBlock initBlock = testFn.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value arg = testFn.getParam(0);
    Value g1 = builder.ptrToInt(m.getNamedGlobal("g1"), "i64");
    Value ret = builder.binaryInt("add", g1, arg);
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
    m.addGlobal("i64", "g1");
    error? e = trap m.addGlobal("i64", "g1");
    if !(e is error) {
        test:assertFail("Repeated global variable declaration allowed");
    }
}

@test:Config {}
function testGetUnDeclaredGlobalVar() {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    m.addGlobal("i64", "g1");
    FunctionDefn testFn = m.addFunctionDefn("testFn", {returnType: "i64", paramTypes: ["i64"]});
    BasicBlock initBlock = testFn.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value arg = testFn.getParam(0);
    error|PointerValue e = trap m.getNamedGlobal("g2");
    if !(e is error) {
        test:assertFail("Access undeclared global variables allowed");
    }
}
