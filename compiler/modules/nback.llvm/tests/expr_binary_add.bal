import ballerina/test;

function exprBinaryAdd() returns Module {
    Module m = new ();
    Function mainFunction = m.addFunction("main", {returnType: <StructType>{elementTypes:["i64","i1"]}, paramTypes: []});
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    Builder builder = new ();
    builder.positionAtEnd(initBlock);
    builder.ret(constInt("i64",0));
    return m;
}

@test:Config {}
function testExprBinaryAdd() returns error? {
    return runTest(exprBinaryAdd, "expr_binary_add.ll");
}
