import ballerina/test;

function externalFunc() returns Module {
    Builder builder = new ();
    Module m = new ();
    FunctionDefn foo = m.addFunction("foo", {returnType: "i64", paramTypes: []});
    FunctionDecl bar = m.addFunctionDecl("bar",{returnType:"i64", paramTypes:["i64"]});
    FunctionDecl barVoid = m.addFunctionDecl("barVoid", {returnType:"void", paramTypes: []});
    BasicBlock initBlock = foo.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    _ = builder.call(barVoid, []);
    Value? R_1 = builder.call(bar, [constInt("i64", 0)]);
    Value R1;
    if R_1 is Value {
       R1 = R_1; 
    } else {
        panic error("return void from non void function");
    }
    builder.ret(R1);
    return m;
}

@test:Config {}
function testExternalFunc() returns error? {
    return runTest(externalFunc, "external_func.ll");
}
