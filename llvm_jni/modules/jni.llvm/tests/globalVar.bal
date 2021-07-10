import ballerina/test;

function globalVar() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    PointerValue g = m.addGlobal("i64", "g1");
    PointerValue g2 = m.addGlobal("i64", "g2", 2);
    FunctionDefn testFn = m.addFunctionDefn("testFn", {returnType: "i64", paramTypes: []});
    BasicBlock initBlock = testFn.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value val1 = builder.ptrToInt(g, "i64");
    Value val2 = builder.ptrToInt(g2, "i64");
    Value ret = builder.iArithmeticWrap("add", val1, val2);
    builder.ret(ret);
    return m;
}

@test:Config {}
function testGlobalVar() returns error? {
    return runTest(globalVar, "global_var.ll");
}
