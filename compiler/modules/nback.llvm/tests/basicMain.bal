import ballerina/test;

function basicMain() returns Module {
    Context context = contextCreate();
    Builder builder = new (context);
    Module m = new (context);
    FunctionDefn mainFunction = m.addFunctionDefn("main", {returnType: "i64", paramTypes: []});
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    builder.ret(constInt("i64",0));
    contextDispose(context);
    return m;
}

@test:Config {}
function testBasicMain() returns error? {
    return runTest(basicMain, "basic_main.ll");
}
