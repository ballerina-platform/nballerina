import ballerina/test;

function bitCast() returns Module {
    Context context = contextCreate();
    Builder builder = new (context);
    Module m = new (context);
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: pointerType("i64"), paramTypes: [pointerType("i8")]});
    BasicBlock fooBB = foo.appendBasicBlock();
    builder.positionAtEnd(fooBB);
    Value arg = foo.getParam(0);
    if arg is PointerValue {
        Value third = builder.bitCast(arg, pointerType("i64"));
        builder.ret(third);
    } else {
        panic error("Invalid argument type");
    }
    contextDispose(context);
    return m;
}

@test:Config {}
function testBitCast() returns error? {
    return runTest(bitCast, "bit_cast.ll");
}
