import ballerina/file;
import ballerina/test;

function stmtFuncCallWithLiterals() returns Module {
    Builder builder = new ();
    Module m = new ();
    Function foo1 = m.addFunction("foo1", {returnType:"void", paramTypes:[]});
    BasicBlock bb1 = foo1.appendBasicBlock();
    builder.positionAtEnd(bb1);
    builder.returnVoid();

    Function foo2 = m.addFunction("foo2", {returnType:"void", paramTypes:["i64","i64"]});
    BasicBlock bb2 = foo2.appendBasicBlock();
    builder.positionAtEnd(bb2);
    Value R3 = builder.alloca("i64", 8);
    Value R4 = builder.alloca("i64", 8);
    Value R0 = foo2.getParam(0);
    Value R1 = foo2.getParam(1);
    builder.store(R0, R3);
    builder.store(R1, R4);
    builder.returnVoid();

    Function foo3 = m.addFunction("foo3", {returnType:"i64", paramTypes:[]});
    BasicBlock bb3 = foo3.appendBasicBlock();
    builder.positionAtEnd(bb3);
    Value C1 = constInt("i64", 21);
    builder.returnValue(C1);

    Function foo4 = m.addFunction("foo4", {returnType:"i64", paramTypes:["i64", "i64"]});
    BasicBlock bb4 = foo4.appendBasicBlock();
    builder.positionAtEnd(bb4);
    R3 = builder.alloca("i64", 8);
    R4 = builder.alloca("i64", 8);
    R0 = foo2.getParam(0);
    R1 = foo2.getParam(1);
    builder.store(R0, R3);
    builder.store(R1, R4);
    Value R5 = builder.load(R4);
    builder.returnValue(R5);

    Function test = m.addFunction("test", {returnType:"void", paramTypes:[]});
    BasicBlock bb5 = test.appendBasicBlock();
    builder.positionAtEnd(bb5);
    R1 = builder.alloca("i64", 8);
    Value R2 = builder.alloca("i64", 8);
    _ = builder.call(foo1, []);
    _ = builder.call(foo2, [constInt("i64", 42), constInt("i64", 43)]);
    Value|() R_3 = builder.call(foo3, []);
    if R_3 is Value{
        R3 = R_3;
    } else {
        panic error("Return void from non-void function");
    }
    builder.store(R3, R1);
    Value|() R_4 = builder.call(foo4, [constInt("i64", 12), constInt("i64", 13)]);
    if R_4 is Value{
        R4 = R_4;
    } else {
        panic error("Return void from non-void function");
    }
    builder.store(R4, R2);
    builder.returnVoid();

    return m;
}


@test:Config {}
function testStmtFuncCallWithLiterals() returns error? {
    string expectedOutput = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "stmt_func_call_with_literals.ll");
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "tmp_stmt_func_call_with_literals.ll");
    check buildOutput(stmtFuncCallWithLiterals(), outputPath);
    test:assertEquals(compareFiles(expectedOutput, outputPath), true);
    check file:remove(outputPath);
}
