import ballerina/test;

function basicMain() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    FunctionDefn mainFunction = m.addFunctionDefn("main", {returnType: "i64", paramTypes: []});
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    builder.ret(context.constInt("i64",0));
    return m;
}

@test:Config {}
function testBasicMain() returns error? {
    return runTest(basicMain, "basic_main.ll");
}
