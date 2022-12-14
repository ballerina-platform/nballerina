import ballerina/test;

function structConst() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    Value const1 = context.constStruct([context.constInt("i64", 1), context.constInt("i64", 2)]);
    Type const1Ty = structType(["i64", "i64"]);
    Value const2 = context.constStruct([context.constInt("i64", 3), context.constInt("i64", 4)]);
    Type const2Ty = structType(["i64", "i64"]);
    Value const3 = context.constStruct([const1, const2]);
    Type const3Ty = structType([const1Ty, const2Ty]);

    FunctionType testTy = {returnType: const1Ty, paramTypes: []};
    FunctionDefn test = m.addFunctionDefn("test", testTy);
    BasicBlock initBlock = test.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    builder.ret(const1);

    FunctionDefn test2 = m.addFunctionDefn("test2", {returnType: const3Ty, paramTypes: []});
    BasicBlock initBlock2 = test2.appendBasicBlock();
    builder.positionAtEnd(initBlock2);
    builder.ret(const3);

    Value constFnStruct = context.constStruct([test]);
    Type constFnStructTy = structType([pointerType(testTy)]);
    FunctionDefn test3 = m.addFunctionDefn("test3", {returnType:constFnStructTy, paramTypes: []});
    BasicBlock bb = test3.appendBasicBlock();
    builder.positionAtEnd(bb);
    builder.ret(constFnStruct);
    return m;
}

@test:Config {}
function testStructConst() returns error? {
    return runTest(structConst, "struct_const.ll");
}
