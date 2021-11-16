import ballerina/test;

function ptrToInt() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    ConstPointerValue g1 = m.addGlobal("i64", "g1");

    FunctionDefn mainFunction = m.addFunctionDefn("main", {returnType: "i32", paramTypes: []});
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    builder.ret(context.constPtrToInt(g1, "i32"));
    return m;
}

@test:Config {}
function testConstPtrToInt() returns error? {
    return runTest(ptrToInt, "const_ptr_to_int.ll");
}
