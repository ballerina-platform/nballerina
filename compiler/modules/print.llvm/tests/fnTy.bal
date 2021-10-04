import ballerina/test;

function fnTy() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    FunctionType fnTy = functionType("i64", ["i8", "i64"]);
    PointerType fnPointerTy = pointerType(fnTy, 0);
    StructType structTy = structType(["i32", fnPointerTy]);
    ConstPointerValue g1 = m.addGlobal(structTy, "g1");
    ConstPointerValue g2 = m.addGlobal(fnPointerTy, "g2");
    return m;
}

@test:Config {}
function testFnTy() returns error? {
    return runTest(fnTy, "fnTy.ll");
}
