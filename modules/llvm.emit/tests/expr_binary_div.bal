import ballerina/file;
import ballerina/test;

function exprBinaryDiv() returns Module {

    Builder builder = new ();
    Module m = new ("x86_64-pc-linux-gnu");
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
    Value R5 = builder.load(R4);
    Value R6 = builder.iCmp("eq", R5, constInt("i64", 0));

    BasicBlock bb7 = foo.appendBasicBlock();
    BasicBlock bb13 = foo.appendBasicBlock();

    builder.condBranch(R6, bb13, bb7);

    builder.positionAtEnd(bb7);
    Value R8 = builder.load(R3);
    Value R9 = builder.iCmp("eq", R8, constInt("i64",-9223372036854775808));

    BasicBlock bb10 = foo.appendBasicBlock();
    BasicBlock bb14 = foo.appendBasicBlock();

    builder.condBranch(R9, bb10, bb14);

    builder.positionAtEnd(bb10);
    Value R11 = builder.load(R4);
    Value R12 = builder.iCmp("eq", R11, constInt("i64", -1));
    builder.condBranch(R12, bb13, bb14);

    builder.positionAtEnd(bb13);
    builder.callVoid(abort, []);
    builder.unreachable();

    builder.positionAtEnd(bb14);
    Value R15 = builder.load(R3);
    Value R16 = builder.load(R4);
    Value R17 = builder.binaryInt("sdiv",R15,R16);
    builder.returnValue(R17);
    return m;
}

@test:Config {}
function testExprBinaryDiv() returns error? {
    Module m = exprBinaryDiv();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", "expr_binary_div.ll");
    Output out = check new (outputPath);
    m.output(out);
    check out.finish();
}
