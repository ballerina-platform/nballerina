import ballerina/test;

@test:Config {}
function builderStoreTypeCheck() {
    Module m = new ();
    FunctionDefn f = m.addFunctionDefn("f", {returnType: "void", paramTypes: []});
    BasicBlock bb = f.appendBasicBlock();
    Builder builder = new ();
    builder.positionAtEnd(bb);
    Value s = new ("i64", "s");
    PointerValue d = new ({pointsTo: "i1"}, "d");
    error? e = trap builder.store(s, d);
    if !(e is error) {
        test:assertFail("invalid store allowed");
    }
}

@test:Config {}
function builderCallTypeCheck() {
    Module m = new ();
    FunctionDefn f = m.addFunctionDefn("f", {returnType: "void", paramTypes: []});
    BasicBlock bb = f.appendBasicBlock();
    Builder builder = new ();
    builder.positionAtEnd(bb);
    Value s = new ("i64", "s");
    Value?|error e = trap builder.call(f, [s]);
    if !(e is error) {
        test:assertFail("invalid call allowed");
    }
}

@test:Config {}
function builderExtractValueCheck() {
    Module m = new ();
    FunctionDefn f = m.addFunctionDefn("f", {returnType: "void", paramTypes: []});
    BasicBlock bb = f.appendBasicBlock();
    Builder builder = new ();
    builder.positionAtEnd(bb);
    Value s = new ("i64", "s");
    Value?|error e = trap builder.extractValue(s, 0);
    if !(e is error) {
        test:assertFail("invalid extract value allowed");
    }
}

@test:Config {}
function builderCondBrCheck() {
    Module m = new ();
    FunctionDefn f = m.addFunctionDefn("f", {returnType: "void", paramTypes: []});
    BasicBlock bb = f.appendBasicBlock();
    Builder builder = new ();
    builder.positionAtEnd(bb);
    Value s = new ("i64", "s");
    error? e = trap builder.condBr(s,bb,bb);
    if !(e is error) {
        test:assertFail("invalid cond br allowed");
    }
}
