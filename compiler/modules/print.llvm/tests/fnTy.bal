import ballerina/test;

function fnTy() returns Module {
    Context context = new;
    Module m = context.createModule();
    FunctionType fnTy = functionType("i64", ["i8", "i64"]);
    FunctionType otherFnTy = functionType("i8", ["i64"]);
    PointerType otherFnPtrTy = pointerType(otherFnTy, 0);
    FunctionDecl fn = m.addFunctionDecl("otherFn", otherFnTy);
    PointerType fnPointerTy = pointerType(fnTy, 0);
    StructType structTy = structType(["i32", fnPointerTy]);
    _ = m.addGlobal(structTy, "g1");
    _ = m.addGlobal(fnPointerTy, "g2");
    _ = m.addGlobal(otherFnPtrTy, "g3", initializer=fn);
    return m;
}

@test:Config {}
function testFnTy() returns error? {
    return runTest(fnTy, "fnTy.ll");
}
