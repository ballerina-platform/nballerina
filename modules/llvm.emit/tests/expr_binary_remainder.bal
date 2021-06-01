import ballerina/file;
import ballerina/test;

function exprBinaryRemainder() returns Module {

    Builder builder = new ();
    Module m = new ("x86_64-pc-linux-gnu");
    Function abort = 
    m.appendFunction("@abort", "void", isExternal = true, functionAttributes = ["noreturn", "nounwind"]);

    Function foo = m.appendFunction("@foo", "i64", "dso_local", functionArgTypes = ["i64", "i64"]);
    BasicBlock bb1 = foo.appendBasicBlock();
    builder.positionAtEnd(bb1);
    Value R3 = builder.alloca("i64");
    Value R4 = builder.alloca("i64");
    Value R5 = builder.alloca("i64");
    Value R0 = foo.getFunctionArgs()[0];
    Value R1 = foo.getFunctionArgs()[1];
    builder.store(R0, R4);
    builder.store(R1, R5);
    Value R6 = builder.load(R5);
    Value R7 = builder.iCmp("eq", R6, constInt("i64", 0));

    BasicBlock bb8 = foo.appendBasicBlock();
    BasicBlock bb9 = foo.appendBasicBlock();

    builder.condBranch(R7, bb8, bb9);

    builder.positionAtEnd(bb8);
    builder.callVoid(abort, []);
    builder.unreachable();

    builder.positionAtEnd(bb9);
    Value R10 = builder.load(R4);
    Value R11 = builder.iCmp("eq", R10, constInt("i64", -9223372036854775808));

    BasicBlock bb12 = foo.appendBasicBlock();
    BasicBlock bb16 = foo.appendBasicBlock();

    builder.condBranch(R11, bb12, bb16);

    builder.positionAtEnd(bb12);
    Value R13 = builder.load(R5);
    Value R14 = builder.iCmp("eq", R13, constInt("i64", -1));
    BasicBlock bb15 = foo.appendBasicBlock();
    builder.condBranch(R14, bb15, bb16);

    builder.positionAtEnd(bb15);
    builder.store(constInt("i64", 0), R3);

    BasicBlock bb20 = foo.appendBasicBlock();

    builder.branch(bb20);

    builder.positionAtEnd(bb16);
    Value R17 = builder.load(R4);
    Value R18 = builder.load(R5);
    Value R19 = builder.binaryInt("srem",R17,R18);
    builder.store(R19, R3);
    builder.branch(bb20);

    builder.positionAtEnd(bb20);
    Value R21 = builder.load(R3);
    builder.returnValue(R21);
    return m;
}

@test:Config {}
function testExprBinaryRemainder() returns error? {
    Module m = exprBinaryRemainder();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", 
    "expr_binary_remainder.ll");
    Output out = check new (outputPath);
    m.output(out);
    check out.finish();
}
