import ballerina/test;

function ptrMaskIntrinsic() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: pointerType("i8", 1), paramTypes: [pointerType("i8", 1)]});
    FunctionDecl mask = m.getIntrinsicDeclaration("ptrmask.p1.i64");
    BasicBlock bb = foo.appendBasicBlock();
    builder.positionAtEnd(bb);
    Value arg = foo.getParam(0);
    Value? result = builder.call(mask, [arg, context.constInt("i64",72057594037927928)]);
    builder.ret(result);
    return m;
}

@test:Config {}
function testPtrMaskIntrinsic() returns error? {
    return runTest(ptrMaskIntrinsic, "ptrmask_intrinsic.ll");
}
