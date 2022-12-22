import ballerina/test;

function globalVar() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    ConstValue const1 = context.constStruct([context.constInt("i64", 1), context.constInt("i64", 2)]);
    Type const1Ty = structType(["i64", "i64"]);

    PointerValue g = m.addGlobal("i64", "g1");
    PointerValue g2 = m.addGlobal("i64", "g2", addressSpace=2);
    _ = m.addGlobal(const1Ty, "g3", isConstant=true, align=8, unnamedAddr=true, addressSpace=3, initializer=const1, linkage="internal");
    _ = m.addGlobal("i64", "g4", isConstant=true, align=8, unnamedAddr=true, addressSpace=3, linkage="internal");
    _ = m.addGlobal("i64", "g5", isConstant=true, addressSpace=3);
    _ = m.addGlobal("i64", "g6", addressSpace=3, align=8);

    ConstPointerValue g7 = m.addGlobal(const1Ty, "g7");
    m.setInitializer(g7, const1);
    FunctionDefn testFn = m.addFunctionDefn("testFn", {returnType: "i64", paramTypes: []});
    BasicBlock initBlock = testFn.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value val1 = builder.ptrToInt(g, "i64");
    Value val2 = builder.ptrToInt(g2, "i64");
    Value ret = builder.iArithmeticWrap("add", val1, val2);
    builder.ret(ret);
    return m;
}

@test:Config {}
function testGlobalVar() returns error? {
    return runTest(globalVar, "global_var.ll");
}

@test:Config {}
function testRepeatedVarDecln() {
    Context context = new;
    Module m = context.createModule();
    _ = m.addGlobal("i64", "g1");
    error|PointerValue e = trap m.addGlobal("i64", "g1");
    if e !is error {
        test:assertFail("Repeated global variable declaration allowed");
    }
}
