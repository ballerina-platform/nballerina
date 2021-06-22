import ballerina/test;

function trunc() returns Module {
    Builder builder = new ();

    Module m = new ();
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: "i8", paramTypes: ["i64"]});
    BasicBlock fooBB = foo.appendBasicBlock();
    builder.positionAtEnd(fooBB);
    Value arg = foo.getParam(0);
    Value v1 = builder.trunc(arg, "i8");
    builder.ret(v1);

    FunctionDefn bar = m.addFunctionDefn("bar", {returnType: "i1", paramTypes: ["i64"]});
    BasicBlock barBB = bar.appendBasicBlock();
    builder.positionAtEnd(barBB);
    arg = bar.getParam(0);
    v1 = builder.trunc(arg, "i1");
    builder.ret(v1);
    return m;
}

@test:Config {}
function testTruncSuccess() returns error? {
    return runTest(trunc, "trunc.ll");
}

@test:Config {}
function testTruncSameType() returns error? {
    Builder builder = new ();

    Module m = new ();
    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: "i64", paramTypes: ["i64"]});
    BasicBlock fooBB = foo.appendBasicBlock();
    builder.positionAtEnd(fooBB);
    Value arg = foo.getParam(0);
    Value|error v1 = trap builder.trunc(arg, "i64");
    if !(v1 is error){
	    test:assertFail("Same type trunc must not be allowed");
    }
}
