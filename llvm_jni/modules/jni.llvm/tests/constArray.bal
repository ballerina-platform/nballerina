import ballerina/test;

function constArray() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    ConstValue[] elements = [context.constInt("i64", 1), context.constInt("i64", 10), context.constInt("i64", 100)];
    ConstValue array = context.constArray("i64", elements);

    ArrayType retTy = arrayType("i64", 3);
    FunctionDefn fn = m.addFunctionDefn("test", {returnType: retTy, paramTypes:[]});
    BasicBlock bb = fn.appendBasicBlock();
    builder.positionAtEnd(bb);
    builder.ret(array);
    return m;
}

@test:Config {}
function testConstArray() returns error? {
    return runTest(constArray, "const_array.ll");
}
