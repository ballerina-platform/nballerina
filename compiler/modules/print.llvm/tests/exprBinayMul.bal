import ballerina/test;

function exprBinaryMul() returns Module {
    Context context = new;
    Module m = context.createModule();
    FunctionDecl mul = m.getIntrinsicDeclaration("smul.with.overflow.i64.i64");
    Function abort = m.addFunctionDefn("abort", {returnType:"void", paramTypes:[]});
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: "i64", paramTypes: ["i64", "i64"]});
    BasicBlock initBlock = foo.appendBasicBlock();
    Builder builder = context.createBuilder();
    builder.positionAtEnd(initBlock);
    PointerValue R3 = builder.alloca("i64");
    PointerValue R4 = builder.alloca("i64");
    Value R0 = foo.getParam(0);
    Value R1 = foo.getParam(1);
    builder.store(R0, R3);
    builder.store(R1, R4);
    Value R5 = builder.load(R3);
    Value R6 = builder.load(R4);
    Value? R_7 = builder.call(mul, [R5, R6]);
    Value R7;
    if R_7 is Value {
        R7 = R_7;
    } else {
        panic error("Return void from non-void function");
    }
    Value R8 = builder.extractValue(R7, 0);
    Value R9 = builder.extractValue(R7, 1);
    Value R10 = builder.iBitwise("xor", R9, context.constInt("i1", 1));

    BasicBlock ifTrue = foo.appendBasicBlock();
    BasicBlock ifFalse = foo.appendBasicBlock();

    builder.condBr(R10, ifTrue, ifFalse);

    builder.positionAtEnd(ifTrue);
    builder.ret(R8);

    builder.positionAtEnd(ifFalse);
    _ = builder.call(abort, []);
    return m;
}

@test:Config {}
function testExprBinaryMul() returns error? {
    return runTest(exprBinaryMul, "expr_binary_mul.ll");
}
