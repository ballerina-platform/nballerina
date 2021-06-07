import ballerina/test;

function funcWithArgList() returns Module {
    Builder builder = new;
    Module m = new;
    funcWithArgList1(builder, m);
    funcWithArgList2(builder, m);
    funcWithArgList3(builder, m);
    return m;
}

function funcWithArgList1(Builder builder, Module m) {
    Function foo1 = m.addFunction("foo1", {returnType: "i64", paramTypes: ["i64"]});
    BasicBlock foo1BB = foo1.appendBasicBlock();
    builder.positionAtEnd(foo1BB);
    PointerValue R2 = builder.alloca("i64",8);
    Value R0 = foo1.getParam(0);
    builder.store(R0, R2);
    Value R3 = builder.load(R2);
    builder.ret(R3);
}

function funcWithArgList2(Builder builder, Module m) {
    Function foo2 = m.addFunction("foo2", {returnType: "i64", paramTypes: ["i64", "i64"]});
    BasicBlock bb2 = foo2.appendBasicBlock();
    builder.positionAtEnd(bb2);
    PointerValue R3 = builder.alloca("i64",8);
    PointerValue R4 = builder.alloca("i64",8);
    Value R0 = foo2.getParam(0);
    Value R1 = foo2.getParam(1);
    builder.store(R0, R3);
    builder.store(R1, R4);
    Value R5 = builder.load(R4);
    builder.ret(R5);
}

function funcWithArgList3(Builder builder, Module m) {
    Function foo3 = m.addFunction("foo3", {returnType: "i64", paramTypes: ["i64", "i64", "i64"]});
    BasicBlock bb3 = foo3.appendBasicBlock();
    builder.positionAtEnd(bb3);
    PointerValue R4 = builder.alloca("i64",8);
    PointerValue R5 = builder.alloca("i64",8);
    PointerValue R6 = builder.alloca("i64",8);
    Value R0 = foo3.getParam(0);
    Value R1 = foo3.getParam(1);
    Value R2 = foo3.getParam(2);
    builder.store(R0, R4);
    builder.store(R1, R5);
    builder.store(R2, R6);
    Value R7 = builder.load(R6);
    builder.ret(R7);
}

@test:Config {}
function testFuncWithArgList() returns error? {
    return runTest(funcWithArgList, "func_with_arg_list.ll");
}
