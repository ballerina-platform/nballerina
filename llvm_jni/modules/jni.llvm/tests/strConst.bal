import ballerina/test;

function strConst() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    byte[] strContent ="abc123#@% ".toBytes();
    PointerValue str = context.constString(strContent);
    FunctionDefn strFn = m.addFunctionDefn("test", {returnType: arrayType("i8", strContent.length()), paramTypes: []});
    BasicBlock initBlock = strFn.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value ret = builder.getElementPtr(str, [constInt("i64", 0)], "inbounds");
    builder.ret(ret);

    return m;
}

@test:Config {}
function testStrConst() returns error? {
    return runTest(strConst, "str_const.ll");
}
