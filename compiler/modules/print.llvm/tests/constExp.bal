import ballerina/test;

function constExp() returns Module {
    Context context = new;
    Module m = context.createModule();
    StructType g1Ty = structType(["i64", "i32", "i8"]);
    PointerValue g1 = m.addGlobal(g1Ty, "g1", isConstant=true);
    ConstValue init = context.constGetElementPtr(g1, [constInt("i32", 0), constInt("i32", 0)], "inbounds");
    PointerValue g2 = m.addGlobal(pointerType("i64", 0), "g2", initializer=init);
    return m;
}

@test:Config {}
function testConstExp() returns error? {
    return runTest(constExp, "const_exp.ll");
}
