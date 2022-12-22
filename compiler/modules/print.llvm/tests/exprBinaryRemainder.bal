import ballerina/test;

function exprBinaryRemainder() returns Module {
    Context context = new;
    Module m = context.createModule();
    FunctionDefn abort = m.addFunctionDefn("abort", {returnType:"void", paramTypes:[]});
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: "i64", paramTypes: ["i64", "i64"]});
    BasicBlock initBlock = foo.appendBasicBlock();
    Builder builder = context.createBuilder();
    builder.positionAtEnd(initBlock);
    Value R0 = foo.getParam(0);
    Value R1 = foo.getParam(1);
    PointerValue R3 = builder.alloca("i64");
    PointerValue R4 = builder.alloca("i64");
    PointerValue R5 = builder.alloca("i64");
    builder.store(R0, R4);
    builder.store(R1, R5);
    Value R6 = builder.load(R5);
    Value R7 = builder.iCmp("eq", R6, context.constInt("i64", 0));

    BasicBlock bb8 = foo.appendBasicBlock();
    BasicBlock bb9 = foo.appendBasicBlock();

    builder.condBr(R7, bb8, bb9);

    builder.positionAtEnd(bb8);
    _ = builder.call(abort,[]);

    builder.positionAtEnd(bb9);
    Value R10 = builder.load(R4);
    Value R11 = builder.iCmp("eq", R10, context.constInt("i64", int:MIN_VALUE));
    
    BasicBlock bb16 = foo.appendBasicBlock();
    BasicBlock bb12 = foo.appendBasicBlock();

    builder.condBr(R11, bb12, bb16);

    builder.positionAtEnd(bb12);
    Value R13 = builder.load(R5);
    Value R14 = builder.iCmp("eq", R13, context.constInt("i64", -1));
    BasicBlock bb15 = foo.appendBasicBlock();
    builder.condBr(R14, bb15, bb16);

    builder.positionAtEnd(bb15);
    builder.store(context.constInt("i64", 0), R3);

    BasicBlock bb20 = foo.appendBasicBlock();
    builder.br(bb20);

    builder.positionAtEnd(bb16);
    Value R17 = builder.load(R4);
    Value R18 = builder.load(R5);
    Value R19 = builder.iArithmeticSigned("srem", R17, R18);
    builder.store(R19, R3);
    builder.br(bb20);

    builder.positionAtEnd(bb20);
    Value R21 = builder.load(R3);
    builder.ret(R21);
    return m;
}

@test:Config {}
function testExprBinaryRemainder() returns error? {
    return runTest(exprBinaryRemainder, "expr_binary_remainder.ll");
}
