import ballerina/test;

function namedBB() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    FunctionDefn mainFunction = m.addFunctionDefn("main", {returnType: "i64", paramTypes: ["i64", "i64"]});
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value p1 = mainFunction.getParam(0);
    Value p2 = mainFunction.getParam(1);
    PointerValue v = builder.alloca("i64");
    Value a = builder.binaryOpWrap("add", p1, p2);
    BasicBlock greater = mainFunction.appendBasicBlock("greater");
    BasicBlock less = mainFunction.appendBasicBlock("less");
    Value isGreater = builder.iCmp("sge", a, context.constInt("i64", 10));
    builder.condBr(isGreater, greater, less);
    builder.positionAtEnd(greater);
    Value b_1 = builder.binaryOpWrap("sub", a, context.constInt("i64", 5));
    builder.store(b_1, v);
    BasicBlock common = mainFunction.appendBasicBlock();
    builder.br(common);
    builder.positionAtEnd(less);
    Value b_2 = builder.binaryOpWrap("add", a, context.constInt("i64", 5));
    builder.store(b_2, v);
    builder.br(common);
    builder.positionAtEnd(common);
    Value b_3 = builder.load(v);
    builder.ret(b_3);
    return m;
}

@test:Config {}
function testNamedBB() returns error? {
    return runTest(namedBB, "named_bb.ll");
}
