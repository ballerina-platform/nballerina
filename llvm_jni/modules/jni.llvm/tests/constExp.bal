import ballerina/test;

function constExp() returns Module {
    Context context = new;
    Module m = context.createModule();
    StructType g1Ty = structType(["i64", "i32", "i8"]);
    PointerValue g1 = m.addGlobal(g1Ty, "g1", isConstant=true);
    ConstValue init = context.constGetElementPtr(g1, [context.constInt("i32", 0), context.constInt("i32", 0)], "inbounds");
    PointerValue g2 = m.addGlobal(pointerType("i64", 0), "g2", initializer=init);
    ConstValue init2 = context.constBitCast(g2, pointerType("i32", 0));
    PointerValue _ = m.addGlobal(pointerType("i32", 0), "g3", initializer=init2);
    PointerValue g4 = m.addGlobal(pointerType("i32", 0), "g4", isConstant=true);
    ConstValue init3 = context.constAddrSpaceCast(g4, pointerType("i32", 1));
    PointerValue _ = m.addGlobal(pointerType("i32", 1), "g5", initializer=init3);
    return m;
}

@test:Config {}
function testConstExp() returns error? {
    return runTest(constExp, "const_exp.ll");
}
