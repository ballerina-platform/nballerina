import ballerina/test;

function nameAlloca() returns Module {
    Context context = new;
    Module m = context.createModuleInContext();
    FunctionDefn mainFunction = m.addFunctionDefn("main", {returnType: "void", paramTypes: []});
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    Builder builder = context.createBuilderInContext();
    builder.positionAtEnd(initBlock);
    _ = builder.alloca("i64");
    _ = builder.alloca("i64", (),"V");
    _ = builder.alloca("i64", (),"V.1");
    _ = builder.alloca("i64", (),"V");
    _ = builder.alloca("i64", (), "var");
    _ = builder.alloca("i64", (),"V.1");
    _ = builder.alloca("i64", (),"V.1");
    _ = builder.alloca("i64");
    return m;
}

@test:Config {}
function testNamedAlloca() returns error? {
    return runTest(nameAlloca, "named_alloca.ll");
}
