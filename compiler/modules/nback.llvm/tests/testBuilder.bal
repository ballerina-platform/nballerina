import ballerina/test;

@test:Config {}
function builderStoreTypeCheck() {
    Context context = contextCreate();
    Module m = new (context);
    FunctionDefn f = m.addFunctionDefn("f", {returnType: "void", paramTypes: []});
    BasicBlock bb = f.appendBasicBlock();
    Builder builder = new (context);
    builder.positionAtEnd(bb);
    Value s = new ("i64", "s");
    PointerValue d = new ({pointsTo: "i1"}, "d");
    error? e = trap builder.store(s, d);
    if !(e is error) {
        test:assertFail("invalid store allowed");
    }
    contextDispose(context);
}

@test:Config {}
function builderCallTypeCheck() {
    Context context = contextCreate();
    Module m = new (context);
    FunctionDefn f = m.addFunctionDefn("f", {returnType: "void", paramTypes: []});
    BasicBlock bb = f.appendBasicBlock();
    Builder builder = new (context);
    builder.positionAtEnd(bb);
    Value s = new ("i64", "s");
    Value?|error e = trap builder.call(f, [s]);
    if !(e is error) {
        test:assertFail("invalid call allowed");
    }
    contextDispose(context);
}

@test:Config {}
function builderExtractValueCheck() {
    Context context = contextCreate();
    Module m = new (context);
    FunctionDefn f = m.addFunctionDefn("f", {returnType: "void", paramTypes: []});
    BasicBlock bb = f.appendBasicBlock();
    Builder builder = new (context);
    builder.positionAtEnd(bb);
    Value s = new ("i64", "s");
    Value?|error e = trap builder.extractValue(s, 0);
    if !(e is error) {
        test:assertFail("invalid extract value allowed");
    }
    contextDispose(context);
}

@test:Config {}
function builderCondBrCheck() {
    Context context = contextCreate();
    Module m = new (context);
    FunctionDefn f = m.addFunctionDefn("f", {returnType: "void", paramTypes: []});
    BasicBlock bb = f.appendBasicBlock();
    Builder builder = new (context);
    builder.positionAtEnd(bb);
    Value s = new ("i64", "s");
    error? e = trap builder.condBr(s,bb,bb);
    if !(e is error) {
        test:assertFail("invalid cond br allowed");
    }
    contextDispose(context);
}
