import ballerina/test;

function nameAlloca() returns Module {
    Context context = contextCreate();
    Module m = new (context);
    FunctionDefn mainFunction = m.addFunctionDefn("main", {returnType: "void", paramTypes: []});
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    Builder builder = new (context);
    builder.positionAtEnd(initBlock);
    _ = builder.alloca("i64");
    _ = builder.alloca("i64", (),"V");
    _ = builder.alloca("i64", (),"V.1");
    _ = builder.alloca("i64", (),"V");
    _ = builder.alloca("i64", (), "var");
    _ = builder.alloca("i64", (),"V.1");
    _ = builder.alloca("i64", (),"V.1");
    _ = builder.alloca("i64");
    contextDispose(context);
    return m;
}

@test:Config {}
function testNamedAlloca() returns error? {
    return runTest(nameAlloca, "named_alloca.ll");
}
