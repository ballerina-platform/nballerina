import ballerina/test;

function gepComplex() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();

    Type arrTy1 = arrayType("i64", 20);
    Type arrTy2 = arrayType(arrTy1, 10);
    Type rtTy = structType(["i8", arrTy2,"i8"]);
    Type stTy = structType(["i64", "i64", rtTy]);
    PointerValue g1 = m.addGlobal(stTy, "g1");
    return m;
}

@test:Config {}
function testGepComplex() returns error? {
    return runTest(gepComplex, "gep_complex.ll");
}
