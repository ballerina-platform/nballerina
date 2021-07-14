import ballerina/test;

function strConst() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    byte[] strContent ="abc123#@% ".toBytes();
    Value str = context.constString(strContent);
    FunctionDefn strFn = m.addFunctionDefn("test", {returnType: arrayType("i8", strContent.length()), paramTypes: []});
    BasicBlock initBlock = strFn.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    builder.ret(str);

    return m;
}

@test:Config {}
function testStrConst() returns error? {
    return runTest(strConst, "str_const.ll");
}
