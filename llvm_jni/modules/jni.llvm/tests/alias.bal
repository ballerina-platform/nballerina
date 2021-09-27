import ballerina/test;

function alias() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();

    ConstPointerValue g = m.addGlobal("i64", "g", initializer=constInt("i64", 5));
    ConstPointerValue a = m.addAlias(pointerType("i64"), g);
    FunctionDefn mainFunction = m.addFunctionDefn("main", {returnType: "i64", paramTypes: []});
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value retVal = builder.load(a);
    builder.ret(retVal);
    return m;
}

@test:Config {}
function testAlias() returns error? {
    return runTest(alias, "alias.ll");
}
