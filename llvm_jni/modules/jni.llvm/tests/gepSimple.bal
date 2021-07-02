import ballerina/test;

function gepSimple() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();

    Module m = context.createModule();
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: pointerType("i64"), paramTypes: [pointerType("i64")]});
    BasicBlock fooBB = foo.appendBasicBlock();
    builder.positionAtEnd(fooBB);
    Value arg = foo.getParam(0);
    Value third = builder.getElementPtr(arg, [constInt("i64", 3)]);
    builder.ret(third);
    FunctionDefn bar = m.addFunctionDefn("bar", {returnType: pointerType("i8"), paramTypes: [pointerType("i8")]});
    BasicBlock barBB = bar.appendBasicBlock();
    builder.positionAtEnd(barBB);
    Value arg_1 = bar.getParam(0);
    third = builder.getElementPtr(arg_1, [constInt("i64", 3)]);
    builder.ret(third);
    return m;
}

@test:Config {}
function testGepSimple() returns error? {
    return runTest(gepSimple, "gep_simple.ll");
}
