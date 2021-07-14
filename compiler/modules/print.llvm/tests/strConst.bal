import ballerina/test;

function strConst() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    FunctionDefn fn = m.addFunctionDefn("test", {returnType: pointerType("i8"), paramTypes: []});
    BasicBlock initBlock = fn.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    PointerValue str = context.constString("abc123#@% ".toBytes());
    Value ret = builder.getElementPtr(str, [constInt("i64", 0), constInt("i64", 0)], "inbounds");
    builder.ret(ret);
    return m;
}

@test:Config {}
function testStrConst() returns error? {
    return runTest(strConst, "str_const.ll");
}
