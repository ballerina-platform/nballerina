import ballerina/test;

function nameAlloca() returns Module {

    Module m = new ();
    FunctionDefn mainFunction = m.addFunctionDefn("main", {returnType: "void", paramTypes: []});
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    Builder builder = new ();
    builder.positionAtEnd(initBlock);
    _ = builder.alloca("i64", 8);
    _ = builder.alloca("i64", 8,"V");
    _ = builder.alloca("i64", 8,"V.1");
    _ = builder.alloca("i64", 8,"V");
    _ = builder.alloca("i64", 8, "var");
    _ = builder.alloca("i64", 8,"V.1");
    _ = builder.alloca("i64", 8,"V.1");
    return m;
}

@test:Config {}
function testNamedAlloca() returns error? {
    return runTest(nameAlloca, "named_alloca.ll");
}
