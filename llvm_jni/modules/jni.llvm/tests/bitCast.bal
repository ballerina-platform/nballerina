import ballerina/test;

function bitCast() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: pointerType("i64"), paramTypes: [pointerType("i8")]});
    BasicBlock fooBB = foo.appendBasicBlock();
    builder.positionAtEnd(fooBB);
    Value arg = foo.getParam(0);
    Value third = builder.bitCast(<PointerValue>arg, pointerType("i64"));
    builder.ret(third);
    return m;
}

@test:Config {}
function testBitCast() returns error? {
    return runTest(bitCast, "bit_cast.ll");
}
