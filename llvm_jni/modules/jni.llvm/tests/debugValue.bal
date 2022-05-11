import ballerina/test;

function debugVal() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();

    DIBuilder dIBuilder = m.createDIBuilder();
    Metadata fileData = dIBuilder.createFile("filename.bal", "PATH_TO_BAL_SOURCE");
    _ = dIBuilder.createCompileUnit(file=fileData);
    m.addModuleFlag("error", ["Debug Info Version", 3]);
    m.addModuleFlag("warning", ["Dwarf Version", 4]);
    Metadata functionTy = dIBuilder.createSubroutineType(fileData);
    Metadata functionData = dIBuilder.createFunction(scope=fileData, name="main", linkageName="test", file=fileData, lineNo=1, ty=functionTy, scopeLine=0);
    Metadata tyMeta = dIBuilder.createBasicType(name="myInt", encoding="signed", sizeInBits=64);
    Metadata varMeta = dIBuilder.createAutoVariable(ty=tyMeta, scope=functionData, name="myVar", lineNo=2, file=fileData);
    Metadata bMeta = dIBuilder.createAutoVariable(ty=dIBuilder.createBasicType(name="constInt", encoding="signed", sizeInBits=64),
                                                  scope=functionData, name="B", lineNo=2, file=fileData);

    Metadata charMeta = dIBuilder.createBasicType(name="char", encoding="signed_char", sizeInBits=8);
    Metadata taggedPtrMeta = dIBuilder.createTypedef(dIBuilder.createPointerType(charMeta, sizeInBits=64, addressSpace=1), "TaggedPtr", fileData, 0, scope=fileData);

    Metadata cMeta = dIBuilder.createAutoVariable(ty=taggedPtrMeta, scope=functionData, name="C", lineNo=2, file=fileData);
    Metadata emptyExpr = dIBuilder.createExpression([]);

    Metadata bScope = dIBuilder.createLexicalBlock(functionData, fileData, 3, 2);
    Metadata loc1 = dIBuilder.createDebugLocation(context, 2, 2, bScope);
    Metadata loc2 = dIBuilder.createDebugLocation(context, 3, 2, functionData);
    Metadata loc3 = dIBuilder.createDebugLocation(context, 4, 2, functionData);

    builder.setCurrentDebugLocation(loc1);
    FunctionDefn mainFunction = m.addFunctionDefn("main", {returnType: "i64", paramTypes: []});
    mainFunction.setSubprogram(functionData);
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    PointerValue a = builder.alloca("i64");
    PointerValue b = builder.alloca("i64");
    PointerValue c = builder.alloca(pointerType("i8", 1));
    dIBuilder.insertDeclareAtEnd(b, bMeta, emptyExpr, loc1, initBlock);
    dIBuilder.insertDeclareAtEnd(c, cMeta, emptyExpr, loc1, initBlock);
    Value initA = constInt("i64", 10);
    builder.store(initA, a);
    builder.store(constInt("i64", 15), b);
    dIBuilder.insertDbgValueAtEnd(initA, varMeta, emptyExpr, loc1, initBlock);
    builder.setCurrentDebugLocation(loc2);
    Value retVal = builder.iArithmeticWrap("add", builder.load(a), constInt("i64", 1));
    dIBuilder.insertDbgValueAtEnd(retVal, varMeta, emptyExpr, loc2, initBlock);
    builder.store(constInt("i64", 20), b);
    builder.setCurrentDebugLocation(loc3);
    builder.ret(retVal);
    return m;
}

@test:Config {}
function testDebugVal() returns error? {
    return runTest(debugVal, "debug_val.ll");
}
