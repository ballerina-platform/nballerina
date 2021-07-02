import ballerina/test;

function ptToInt() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();

    Module m = context.createModule();
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: "i64", paramTypes: [pointerType("i8")]});
    BasicBlock fooBB = foo.appendBasicBlock();
    builder.positionAtEnd(fooBB);
    Value arg = foo.getParam(0);
    Value v1 = builder.ptrToInt(arg, "i64");
    builder.ret(v1);
    FunctionDefn bar = m.addFunctionDefn("bar", {returnType: "i1", paramTypes: [pointerType("i8")]});
    BasicBlock barBB = bar.appendBasicBlock();
    builder.positionAtEnd(barBB);
    arg = bar.getParam(0);
    Value V1 = builder.ptrToInt(arg, "i1");
    builder.ret(V1);
    return m;
}

@test:Config {}
function testPtrToInt() returns error? {
    return runTest(ptToInt, "ptr_to_int.ll");
}
