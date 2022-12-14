import ballerina/test;

function alias() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();

    ConstPointerValue g = m.addGlobal("i64", "g", initializer=context.constInt("i64", 5),
                                      addressSpace=1, linkage="internal");
    ConstPointerValue a = m.addAlias("i64", g, "a", addressSpace=1);
    ConstPointerValue _ = m.addAlias("i64", g, "b", linkage="internal", addressSpace=1);
    ConstPointerValue _ = m.addAlias("i64", g, "c", linkage="internal", unnamedAddr=true, addressSpace=1);
    ConstPointerValue _ = m.addAlias("i64", g, "d", unnamedAddr=true, addressSpace=1);
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
