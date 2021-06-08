import ballerina/test;

function exprBinaryAdd() returns Module {
    Module m = new ();
    StructType addReturnType = structType(["i64", "i1"]);
    Function add = m.getIntrinsicDeclaration("sadd.with.overflow.i64");

    FunctionDefn foo = m.addFunction("foo", {returnType: "i64", paramTypes: ["i64", "i64"]});
    BasicBlock initBlock = foo.appendBasicBlock();
    Builder builder = new ();
    builder.positionAtEnd(initBlock);
    PointerValue R3 = builder.alloca("i64", 8);
    PointerValue R4 = builder.alloca("i64", 8);
    Value R0 = foo.getParam(0);
    Value R1 = foo.getParam(1);
    builder.store(R0, R3);
    builder.store(R1, R4);
    Value R5 = builder.load(R3);
    Value R6 = builder.load(R4);
    Value? R_7 = builder.call(add, [R5, R6]);
    Value R7;
    if R_7 is Value {
        R7 = R_7;
    } else {
        panic error("Return void from non-void function");
    }
    Value R8 = builder.extractValue(R7, 0);
    Value R9 = builder.extractValue(R7, 1);
    Value R10 = builder.binaryInt("xor", R9, constInt("i1", 1));

    BasicBlock ifTrue = foo.appendBasicBlock();
    BasicBlock ifFalse = foo.appendBasicBlock();

    builder.condBr(R10,ifTrue, ifFalse);

    builder.positionAtEnd(ifTrue);
    builder.ret(R8);

    builder.positionAtEnd(ifFalse);
    _ = builder.call(abort,[]);
    return m;
}

@test:Config {}
function testExprBinaryAdd() returns error? {
    return runTest(exprBinaryAdd, "expr_binary_add.ll");
}
