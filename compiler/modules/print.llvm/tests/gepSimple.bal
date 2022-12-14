import ballerina/test;

function gepSimple() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();

    Module m = context.createModule();
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: pointerType("i64"), paramTypes: [pointerType("i64")]});
    BasicBlock fooBB = foo.appendBasicBlock();
    builder.positionAtEnd(fooBB);
    Value arg = foo.getParam(0);
    Value third = builder.getElementPtr(<PointerValue>arg, [context.constInt("i64", 3)]);
    builder.ret(third);

    FunctionDefn bar = m.addFunctionDefn("bar", {returnType: pointerType("i8"), paramTypes: [pointerType("i8")]});
    BasicBlock barBB = bar.appendBasicBlock();
    builder.positionAtEnd(barBB);
    Value arg_1 = bar.getParam(0);
    third = builder.getElementPtr(<PointerValue>arg_1, [context.constInt("i64", 3)]);
    builder.ret(third);

    FunctionDefn foo2 = m.addFunctionDefn("foo2", {returnType: pointerType("i64", 1), paramTypes: [pointerType("i64", 1)]});
    BasicBlock fooBB2 = foo2.appendBasicBlock();
    builder.positionAtEnd(fooBB2);
    Value arg_2 = foo2.getParam(0);
    third = builder.getElementPtr(<PointerValue>arg_2, [context.constInt("i64", 3)]);
    builder.ret(third);
    return m;
}

@test:Config {}
function testGepSimple() returns error? {
    return runTest(gepSimple, "gep_simple.ll");
}
