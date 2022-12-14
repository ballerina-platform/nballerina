import ballerina/test;

function gepComplex() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();

    Type arrTy1 = arrayType("i64", 20);
    Type arrTy2 = arrayType(arrTy1, 10);
    Type rtTy = structType(["i64", arrTy2,"i64"]);
    Type stTy = structType(["i64", "i64", rtTy]);
    PointerValue g1 = m.addGlobal(stTy, "g1");
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType:"void", paramTypes:[]});
    BasicBlock bb = foo.appendBasicBlock();
    builder.positionAtEnd(bb);

    PointerValue v0 = builder.getElementPtr(g1, [context.constInt("i32", 1)]);
    PointerValue v1 = builder.getElementPtr(v0, [context.constInt("i32", 0), context.constInt("i32", 2)]);
    PointerValue v2 = builder.getElementPtr(v1, [context.constInt("i32", 0), context.constInt("i32", 1)]);
    PointerValue v3 = builder.getElementPtr(v2, [context.constInt("i64", 0), context.constInt("i64", 5)]);
    _ = builder.getElementPtr(v3, [context.constInt("i64", 0), context.constInt("i64", 13)]);
    builder.ret();

    Type arrTy3 = arrayType(pointerType("i64", 1), 10);
    Type rtTy2 = structType([ "i32", arrTy3, "i32" ]);
    Type stTy2 = structType(["i8", "i8", rtTy2]);
    PointerValue g2 = m.addGlobal(stTy2, "g2");
    FunctionDefn bar = m.addFunctionDefn("bar", {returnType: pointerType(pointerType("i64",1)), paramTypes: []});
    bb = bar.appendBasicBlock();
    builder.positionAtEnd(bb);

    PointerValue t0 = builder.getElementPtr(g2, [context.constInt("i32", 1),context.constInt("i32", 2), context.constInt("i32", 1), context.constInt("i32", 4)]);
    builder.ret(t0);
    return m;
}

function gepComplexInbounds() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();

    Type arrTy1 = arrayType("i64", 20);
    Type arrTy2 = arrayType(arrTy1, 10);
    Type rtTy = structType(["i64", arrTy2,"i64"]);
    Type stTy = structType(["i64", "i64", rtTy]);
    PointerValue g1 = m.addGlobal(stTy, "g1");
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType:"void", paramTypes:[]});
    BasicBlock bb = foo.appendBasicBlock();
    builder.positionAtEnd(bb);

    _ = builder.getElementPtr(g1, [context.constInt("i32", 1)], "inbounds");
    builder.ret();
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

@test:Config {}
function testGepComplexTypeCheck1() returns error? {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();

    Type arrTy1 = arrayType("i64", 20);
    Type arrTy2 = arrayType(arrTy1, 10);
    Type rtTy = structType(["i64", arrTy2,"i64"]);
    Type stTy = structType(["i64", "i64", rtTy]);
    PointerValue g1 = m.addGlobal(stTy, "g1");
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType:"void", paramTypes:[]});
    BasicBlock bb = foo.appendBasicBlock();
    builder.positionAtEnd(bb);

    error|PointerValue v0 = trap builder.getElementPtr(g1, [context.constInt("i32", 0),context.constInt("i64", 1)]);
    if v0 !is error {
        test:assertFail("Struct indexing by non i32 constants allowed");
    }
}

function testGepComplexTypeCheck2() returns error? {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();

    Type arrTy1 = arrayType("i64", 20);
    Type arrTy2 = arrayType(arrTy1, 10);
    Type rtTy = structType(["i64", arrTy2,"i64"]);
    Type stTy = structType(["i64", "i64", rtTy]);
    PointerValue g1 = m.addGlobal(stTy, "g1");
    PointerValue g2 = m.addGlobal("i32", "g2");
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType:"void", paramTypes:[]});
    BasicBlock bb = foo.appendBasicBlock();
    builder.positionAtEnd(bb);
    Value v1 = builder.ptrToInt(g2, "i32");
    error|PointerValue v0 = trap builder.getElementPtr(g1, [context.constInt("i32", 0), v1]);
    if v0 !is error {
        test:assertFail("Struct indexing by i32 variables allowed");
    }
}

function testGepComplexTypeCheck3() returns error? {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();

    Type structTy = structType(["i64", "i64"]);
    Type arrTy = arrayType(structTy, 10);
    PointerValue g1 = m.addGlobal(arrTy, "g1");
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType:"void", paramTypes:[]});
    BasicBlock bb = foo.appendBasicBlock();
    builder.positionAtEnd(bb);
    PointerValue v0 = builder.getElementPtr(g1, [context.constInt("i64", 10)]);
    error|PointerValue v1 = builder.getElementPtr(v0, [context.constInt("i64", 10)]);
    if v1 !is error {
        test:assertFail("Struct indexing by not i32 constant allowed");
    }
}
