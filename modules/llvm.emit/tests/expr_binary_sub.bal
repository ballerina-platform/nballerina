import ballerina/file;
import ballerina/test;

function exprBinarySub() returns Module {

    Builder builder = new ();
    Module m = new ("x86_64-pc-linux-gnu");
    Function sub = m.appendFunction("@llvm.ssub.with.overflow.i64", "{i64,i1}", functionAttributes = 
    ["nounwind", "readnone", "speculatable", "willreturn"], isExternal = true, functionArgTypes = ["i64", "i64"]);
    Function abort = 
    m.appendFunction("@abort", "void", isExternal = true, functionAttributes = ["noreturn", "nounwind"]);

    Function foo = m.appendFunction("@foo", "i64", "dso_local", functionArgTypes=["i64","i64"]);
    BasicBlock bb1 = foo.appendBasicBlock();
    builder.positionAtEnd(bb1);
    Value R3 = builder.alloca("i64");
    Value R4 = builder.alloca("i64");
    Value R0 = foo.getFunctionArgs()[0];
    Value R1 = foo.getFunctionArgs()[1];
    builder.store(R0, R3);
    builder.store(R1, R4);
    Value R5 = builder.load(R3);
    Value R6 = builder.load(R4);
    Value R7 = builder.call(sub,[R5, R6]);
    Value R8 = builder.extractValue(R7, constInt("i64", 0));
    Value R9 = builder.extractValue(R7, constInt("i64", 1));
    Value R10 = builder.binaryInt("xor",R9, constBool(true));

    BasicBlock ifTrue = foo.appendBasicBlock();
    BasicBlock ifFalse = foo.appendBasicBlock();

    builder.condBranch(R10,ifTrue,ifFalse);

    builder.positionAtEnd(ifTrue);
    builder.returnValue(R8);

    builder.positionAtEnd(ifFalse);
    builder.callVoid(abort,[]);
    builder.unreachable();
    return m;
}

@test:Config {}
function testExprBinarySub() returns error? {
    Module m = exprBinarySub();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", "expr_binary_sub.ll");
    Output out = check new (outputPath);
    m.output(out);
    check out.finish();
}
