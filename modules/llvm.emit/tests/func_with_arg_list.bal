import ballerina/file;
import ballerina/test;

function funcWithArgList() returns Module {
    Builder builder = new ();
    Module m = new ("x86_64-pc-linux-gnu");
    Function foo1 = m.appendFunction("@foo1", "i64", "dso_local", functionArgTypes = ["i64"]);
    BasicBlock bb1 = foo1.appendBasicBlock();
    builder.positionAtEnd(bb1);
    Value R2 = builder.alloca("i64");
    Value R0 = foo1.getFunctionArgs()[0];
    builder.store(R0, R2);
    Value R3 = builder.load(R2);
    builder.returnValue(R3);

    Function foo2 = m.appendFunction("@foo2", "i64", "dso_local", functionArgTypes = ["i64", "i64"]);
    BasicBlock bb2 = foo2.appendBasicBlock();
    builder.positionAtEnd(bb2);
    R3 = builder.alloca("i64");
    Value R4 = builder.alloca("i64");
    R0 = foo2.getFunctionArgs()[0];
    Value R1 = foo2.getFunctionArgs()[1];
    builder.store(R0, R3);
    builder.store(R1, R4);
    Value R5 = builder.load(R4);
    builder.returnValue(R5);
    
    Function foo3 = m.appendFunction("@foo3", "i64", "dso_local", functionArgTypes = ["i64", "i64", "i64"]);
    BasicBlock bb3 = foo3.appendBasicBlock();
    builder.positionAtEnd(bb3);
    R4 = builder.alloca("i64");
    R5 = builder.alloca("i64");
    Value R6 = builder.alloca("i64");
    R0 = foo3.getFunctionArgs()[0];
    R1 = foo3.getFunctionArgs()[1];
    R2 = foo3.getFunctionArgs()[2];
    builder.store(R0, R4);
    builder.store(R1, R5);
    builder.store(R2, R6);
    Value R7 = builder.load(R6);
    builder.returnValue(R7);
    return m;
}

@test:Config {}
function funcWithArgListTest() returns error? {
    Module m = funcWithArgList();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", 
    "func_with_arg_list.ll");
    Output out = check new (outputPath);
    m.output(out);
    check out.finish();
}
