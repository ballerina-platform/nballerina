import ballerina/test;

function expect() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    FunctionDefn foo = m.addFunctionDefn("foo", { returnType: "i64", paramTypes: ["i1"] });
    BasicBlock bb = foo.appendBasicBlock();
    builder.positionAtEnd(bb);
    Value val = foo.getParam(0);
    Function expect = m.getIntrinsicDeclaration("expect.i1");
    val = <Value>builder.call(expect, [val, context.constInt("i1", 1)]);
    BasicBlock ifTrue = foo.appendBasicBlock();
    BasicBlock ifFalse = foo.appendBasicBlock();
    builder.condBr(val, ifTrue, ifFalse);
    builder.positionAtEnd(ifTrue);
    builder.ret(context.constInt("i64", 1));
    builder.positionAtEnd(ifFalse);
    builder.ret(context.constInt("i64", 0));
    return m;
}

@test:Config {}
function testExpect() returns error? {
    return runTest(expect, "expect.ll");
}
