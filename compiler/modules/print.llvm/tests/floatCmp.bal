import ballerina/test;

function buildCmpTestFn(RealPredicate predicate, string name, Module m, Builder builder) {
    FunctionDefn fn = m.addFunctionDefn(name, {returnType: "i1", paramTypes: ["double", "double"]});
    BasicBlock bb = fn.appendBasicBlock();
    builder.positionAtEnd(bb);
    Value p0 = fn.getParam(0);
    Value p1 = fn.getParam(1);
    Value res = builder.fCmp(predicate, p0, p1);
    builder.ret(res);
}
function floatCmp() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    buildCmpTestFn("ugt", "ugt", m, builder);
    buildCmpTestFn("uge", "uge", m, builder);
    buildCmpTestFn("ult", "ult", m, builder);
    buildCmpTestFn("ule", "ule", m, builder);
    return m;
}

@test:Config {}
function testFloatCmp() returns error? {
    return runTest(floatCmp, "float_cmp.ll");
}
