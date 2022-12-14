import ballerina/test;

function dIBuilder() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();

    DIBuilder dIBuilder = m.createDIBuilder();
    Metadata fileData = dIBuilder.createFile("filename.bal", "PATH_TO_BAL_SOURCE");
    _ = dIBuilder.createCompileUnit(file=fileData);
    m.addModuleFlag("error", ["Debug Info Version", 3]);
    m.addModuleFlag("warning", ["Dwarf Version", 2]);
    Metadata functionTy = dIBuilder.createSubroutineType(fileData);
    Metadata functionData = dIBuilder.createFunction(scope=fileData, name="test", linkageName="test", file=fileData, lineNo=0, ty=functionTy, scopeLine=0);
    Metadata loc = dIBuilder.createDebugLocation(1, 2, functionData);

    FunctionDefn testFn = m.addFunctionDefn("test", {returnType: "void", paramTypes: []});
    testFn.setSubprogram(functionData);
    BasicBlock testBB = testFn.appendBasicBlock();
    builder.positionAtEnd(testBB);
    builder.ret();
    FunctionDefn mainFunction = m.addFunctionDefn("main", {returnType: "i64", paramTypes: []});
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    builder.setCurrentDebugLocation(loc);
    _ = builder.call(testFn, []);
    builder.setCurrentDebugLocation(());
    builder.ret(context.constInt("i64",0));

    return m;
}

@test:Config {}
function testDIBuilder() returns error? {
    return runTest(dIBuilder, "dI_builder.ll");
}
