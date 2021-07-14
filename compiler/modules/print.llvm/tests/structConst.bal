import ballerina/test;

function structConst() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    Value const1 = context.constStruct([constInt("i64", 1), constInt("i64", 2)]);
    Type const1Ty = structType(["i64", "i64"]);
    Value const2 = context.constStruct([constInt("i64", 3), constInt("i64", 4)]);
    Type const2Ty = structType(["i64", "i64"]);
    Value const3 = context.constStruct([const1, const2]);
    Type const3Ty = structType([const1Ty, const2Ty]);

    FunctionDefn test = m.addFunctionDefn("test", {returnType: const1Ty, paramTypes: []});
    BasicBlock initBlock = test.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    builder.ret(const1);

    FunctionDefn test2 = m.addFunctionDefn("test2", {returnType: const3Ty, paramTypes: []});
    BasicBlock initBlock2 = test2.appendBasicBlock();
    builder.positionAtEnd(initBlock2);
    builder.ret(const3);
    return m;
}

@test:Config {}
function testStructConst() returns error? {
    return runTest(structConst, "struct_const.ll");
}
