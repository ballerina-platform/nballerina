import ballerina/test;

function gepComplex() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();

    Type arrTy1 = arrayType("i64", 20);
    Type arrTy2 = arrayType(arrTy1, 10);
    Type rtTy = structType(["i64", arrTy2, "i64"]);
    Type stTy = structType(["i64", "i64", rtTy]);
    PointerValue g1 = m.addGlobal(stTy, "g1");
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: pointerType("i64"), paramTypes: []});
    BasicBlock bb = foo.appendBasicBlock();
    builder.positionAtEnd(bb);

    PointerValue v0 = builder.getElementPtr(g1, [constInt("i32", 1)]);
    PointerValue v1 = builder.getElementPtr(v0, [constInt("i32", 0), constInt("i32", 2)]);
    PointerValue v2 = builder.getElementPtr(v1, [constInt("i32", 0), constInt("i32", 1)]);
    PointerValue v3 = builder.getElementPtr(v2, [constInt("i64", 0), constInt("i64", 5)]);
    PointerValue v4 = builder.getElementPtr(v3, [constInt("i64", 0), constInt("i64", 13)]);
    builder.ret(v4);
    return m;
}

function gepComplexInbounds() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();

    Type arrTy1 = arrayType("i64", 20);
    Type arrTy2 = arrayType(arrTy1, 10);
    Type rtTy = structType(["i64", arrTy2, "i64"]);
    Type stTy = structType(["i64", "i64", rtTy]);
    PointerValue g1 = m.addGlobal(stTy, "g1");
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: pointerType("i64"), paramTypes: []});
    BasicBlock bb = foo.appendBasicBlock();
    builder.positionAtEnd(bb);

    PointerValue v0 = builder.getElementPtr(g1, [constInt("i32", 1)], "inbounds");
    PointerValue v1 = builder.getElementPtr(v0, [constInt("i32", 0), constInt("i32", 2)], "inbounds");
    PointerValue v2 = builder.getElementPtr(v1, [constInt("i32", 0), constInt("i32", 1)], "inbounds");
    PointerValue v3 = builder.getElementPtr(v2, [constInt("i64", 0), constInt("i64", 5)], "inbounds");
    PointerValue v4 = builder.getElementPtr(v3, [constInt("i64", 0), constInt("i64", 13)], "inbounds");
    builder.ret(v4);
    return m;
}

@test:Config {}
function testGepComplex() returns error? {
    return runTest(gepComplex, "gep_complex.ll");
}

@test:Config {}
function testGepComplexInbounds() returns error? {
    return runTest(gepComplexInbounds, "gep_complex_inbounds.ll");
}
