import ballerina/test;

function stmtFuncCallWithLiterals() returns Module{
    Builder builder = new ();
    Module m = new ();
    Function f1 = foo1(builder, m);
    Function f2 = foo2(builder, m);
    Function f3 = foo3(builder, m);
    Function f4 = foo4(builder, m);
    Function test = m.addFunction("test", {returnType:"void", paramTypes:[]});
    BasicBlock bb5 = test.appendBasicBlock();
    builder.positionAtEnd(bb5);
    PointerValue R1 = builder.alloca("i64", 8);
    PointerValue R2 = builder.alloca("i64", 8);
    _ = builder.call(f1, []);
    _ = builder.call(f2, [constInt("i64", 42), constInt("i64", 43)]);
    Value R3;
    Value|() R_3 = builder.call(f3, []);
    if R_3 is Value{
        R3 = R_3;
    } else {
        panic error("Return void from non-void function");
    }
    builder.store(R3, R1);
    Value R4;
    Value|() R_4 = builder.call(f4, [constInt("i64", 12), constInt("i64", 13)]);
    if R_4 is Value{
        R4 = R_4;
    } else {
        panic error("Return void from non-void function");
    }
    builder.store(R4, R2);
    builder.ret();

    return m;
}

function foo1(Builder builder, Module m) returns Function{
    Function foo1 = m.addFunction("foo1", {returnType:"void", paramTypes:[]});
    BasicBlock bb1 = foo1.appendBasicBlock();
    builder.positionAtEnd(bb1);
    builder.ret();
    return foo1;
}

function foo2(Builder builder, Module m) returns Function{
    Function foo2 = m.addFunction("foo2", {returnType:"void", paramTypes:["i64","i64"]});
    BasicBlock bb2 = foo2.appendBasicBlock();
    builder.positionAtEnd(bb2);
    PointerValue R3 = builder.alloca("i64", 8);
    PointerValue R4 = builder.alloca("i64", 8);
    Value R0 = foo2.getParam(0);
    Value R1 = foo2.getParam(1);
    builder.store(R0, R3);
    builder.store(R1, R4);
    builder.ret();
    return foo2;
}

function foo3(Builder builder, Module m) returns Function{
    Function foo3 = m.addFunction("foo3", {returnType:"i64", paramTypes:[]});
    BasicBlock bb3 = foo3.appendBasicBlock();
    builder.positionAtEnd(bb3);
    Value C1 = constInt("i64", 21);
    builder.ret(C1);
    return foo3;
}

function foo4(Builder builder, Module m) returns Function{
    Function foo4 = m.addFunction("foo4", {returnType:"i64", paramTypes:["i64", "i64"]});
    BasicBlock bb4 = foo4.appendBasicBlock();
    builder.positionAtEnd(bb4);
    PointerValue R3 = builder.alloca("i64", 8);
    PointerValue R4 = builder.alloca("i64", 8);
    Value R0 = foo4.getParam(0);
    Value R1 = foo4.getParam(1);
    builder.store(R0, R3);
    builder.store(R1, R4);
    Value R5 = builder.load(R4);
    builder.ret(R5);
    return foo4;
}


@test:Config {}
function testStmtFuncCallWithLiterals() returns error? {
    return runTest(stmtFuncCallWithLiterals, "stmt_func_call_with_literals.ll");
}
