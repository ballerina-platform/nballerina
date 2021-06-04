import ballerina/file;
import ballerina/test;

function funcWithArgList() returns Module {
    Builder builder = new ();
    Module m = new ();

    Function foo1 = m.insertFunction("@foo1", {returnType: "i64", paramTypes: ["i64"]});
    BasicBlock foo1BB = foo1.appendBasicBlock();
    builder.positionAtEnd(foo1BB);
    Value R2 = builder.alloca("i64");
    Value R0 = foo1.paramByIndex(0);
    builder.store(R0, R2);
    Value R3 = builder.load(R2);
    builder.returnValue(R3);

    Function foo2 = m.insertFunction("@foo2", {returnType: "i64", paramTypes: ["i64", "i64"]});
    BasicBlock bb2 = foo2.appendBasicBlock();
    builder.positionAtEnd(bb2);
    R3 = builder.alloca("i64");
    Value R4 = builder.alloca("i64");
    R0 = foo2.paramByIndex(0);
    Value R1 = foo2.paramByIndex(1);
    builder.store(R0, R3);
    builder.store(R1, R4);
    Value R5 = builder.load(R4);
    builder.returnValue(R5);

    Function foo3 = m.insertFunction("@foo3", {returnType: "i64", paramTypes: ["i64", "i64", "i64"]});
    BasicBlock bb3 = foo3.appendBasicBlock();
    builder.positionAtEnd(bb3);
    R4 = builder.alloca("i64");
    R5 = builder.alloca("i64");
    Value R6 = builder.alloca("i64");
    R0 = foo3.paramByIndex(0);
    R1 = foo3.paramByIndex(1);
    R2 = foo3.paramByIndex(2);
    builder.store(R0, R4);
    builder.store(R1, R5);
    builder.store(R2, R6);
    Value R7 = builder.load(R6);
    builder.returnValue(R7);
    return m;
}

@test:Config {}
function testFuncWithArgList() returns error? {
    string expectedOutput = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "func_with_arg_list.ll");
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "nback.llvm", "tests", "testOutputs", "tmp_func_with_arg_list.ll");
    check buildOutput(funcWithArgList(), outputPath);
    test:assertEquals(compareFiles(expectedOutput, outputPath), true);
    check file:remove(outputPath);
}
