import ballerina/test;

function basicMain() returns Module {

    Module m = new ();
    FunctionDefn mainFunction = m.addFunctionDefn("main", {returnType: "i64", paramTypes: []});
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    Builder builder = new ();
    builder.positionAtEnd(initBlock);
    builder.ret(constInt("i64",0));
    return m;
}

@test:Config {}
function testBasicMain() returns error? {
    return runTest(basicMain, "basic_main.ll");
}
