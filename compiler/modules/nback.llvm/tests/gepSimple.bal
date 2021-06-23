import ballerina/test;

function gepSimple() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();

    Module m = context.createModule();
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: pointerType("i64"), paramTypes: [pointerType("i64")]});
    BasicBlock fooBB = foo.appendBasicBlock();
    builder.positionAtEnd(fooBB);
    Value arg = foo.getParam(0);
    if arg is PointerValue {
        Value third = builder.getElementPointer(arg, constInt("i64", 3));
        builder.ret(third);
    } else {
        panic error("Invalid argument type");
    }
    FunctionDefn bar = m.addFunctionDefn("bar", {returnType: pointerType("i8"), paramTypes: [pointerType("i8")]});
    BasicBlock barBB = bar.appendBasicBlock();
    builder.positionAtEnd(barBB);
    Value arg_1 = bar.getParam(0);
    if arg_1 is PointerValue {
        Value third = builder.getElementPointer(arg_1, constInt("i64", 3));
        builder.ret(third);
    } else {
        panic error("Invalid argument type");
    }
    return m;
}

@test:Config {}
function testGepSimple() returns error? {
    return runTest(gepSimple, "gep_simple.ll");
}
