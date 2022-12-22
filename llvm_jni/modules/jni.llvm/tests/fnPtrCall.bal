import ballerina/test;

function fnPtrCall() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    StructType structTy = context.structCreateNamed("structTy");
    PointerType structPtrTy = pointerType(structTy);
    FunctionType extFnTy = {returnType: "void", paramTypes: [structPtrTy]};
    PointerType extFnPtrTy = pointerType(extFnTy);
    context.structSetBody(structTy, [pointerType(extFnPtrTy)]);

    FunctionType mainFnTy = {returnType: "void", paramTypes: [structPtrTy]};
    FunctionDefn mainFn = m.addFunctionDefn("main", mainFnTy);
    BasicBlock bb = mainFn.appendBasicBlock();
    builder.positionAtEnd(bb);
    Value arg = mainFn.getParam(0);
    PointerValue v2 = builder.alloca(structPtrTy);
    builder.store(arg, v2);
    Value v3 = builder.load(v2);
    PointerValue v4 =  builder.getElementPtr(<PointerValue>v3, [context.constInt("i32", 0), context.constInt("i32", 0)], "inbounds");
    Value v5 = builder.load(v4);
    PointerValue v6 = builder.getElementPtr(<PointerValue>v5, [context.constInt("i64", 1)], "inbounds");
    Value v7 = builder.load(v6);
    Value v8 = builder.load(v2);
    PointerValue v9 = builder.bitCast(<PointerValue>v7, extFnPtrTy);
    _ = builder.call(v9, [v8]);
    builder.ret();
    return m;
}

@test:Config {}
function testFnPtrCall() returns error? {
    return runTest(fnPtrCall, "fn_ptr_call.ll");
}
