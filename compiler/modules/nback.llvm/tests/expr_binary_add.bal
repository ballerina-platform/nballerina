import ballerina/test;

function exprBinaryAdd() returns Module {
    Module m = new ();
    Function add = m.addFunction("llvm.sadd.with.overflow.i64", {returnType: {elementTypes: ["i64", "i1"]}, paramTypes: ["i64", "i64"]});

    Function foo = m.addFunction("foo", {returnType: "i64", paramTypes: ["i64", "i64"]});
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
    Value? R7 = builder.call(add, [R5, R6]);
    return m;
}

@test:Config {}
function testExprBinaryAdd() returns error? {
    return runTest(exprBinaryAdd, "expr_binary_add.ll");
}
