import ballerina/test;

@test:Config {}
function builderStoreTypeCheck() {
    Context context = new;
    Module m = context.createModule();
    FunctionDefn f = m.addFunctionDefn("f", {returnType: "void", paramTypes: []});
    BasicBlock bb = f.appendBasicBlock();
    Builder builder = context.createBuilder();
    builder.positionAtEnd(bb);
    Value s = new RegisterValue("i64", "s");
    PointerValue d = new (pointerType("i1"), "d");
    error? e = trap builder.store(s, d);
    if !(e is error) {
        test:assertFail("invalid store allowed");
    }
}

@test:Config {}
function builderCallTypeCheck() {
    Context context = new;
    Module m = context.createModule();
    FunctionDefn f = m.addFunctionDefn("f", {returnType: "void", paramTypes: []});
    BasicBlock bb = f.appendBasicBlock();
    Builder builder = context.createBuilder();
    builder.positionAtEnd(bb);
    Value s = new RegisterValue("i64", "s");
    Value?|error e = trap builder.call(f, [s]);
    if !(e is error) {
        test:assertFail("invalid call allowed");
    }
}

@test:Config {}
function builderExtractValueCheck() {
    Context context = new;
    Module m = context.createModule();
    FunctionDefn f = m.addFunctionDefn("f", {returnType: "void", paramTypes: []});
    BasicBlock bb = f.appendBasicBlock();
    Builder builder = context.createBuilder();
    builder.positionAtEnd(bb);
    Value s = new RegisterValue("i64", "s");
    Value?|error e = trap builder.extractValue(s, 0);
    if !(e is error) {
        test:assertFail("invalid extract value allowed");
    }
}

@test:Config {}
function builderCondBrCheck() {
    Context context = new;
    Module m = context.createModule();
    FunctionDefn f = m.addFunctionDefn("f", {returnType: "void", paramTypes: []});
    BasicBlock bb = f.appendBasicBlock();
    Builder builder = context.createBuilder();
    builder.positionAtEnd(bb);
    Value s = new RegisterValue("i64", "s");
    error? e = trap builder.condBr(s,bb,bb);
    if !(e is error) {
        test:assertFail("invalid cond br allowed");
    }
}
