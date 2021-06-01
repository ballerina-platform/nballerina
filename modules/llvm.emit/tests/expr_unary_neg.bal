import ballerina/file;
import ballerina/test;

function exprUnaryNeg() returns Module {

    Builder builder = new ();
    Module m = new ("x86_64-pc-linux-gnu");
    Function sub = m.appendFunction("@llvm.ssub.with.overflow.i64", "{i64,i1}", functionAttributes = 
    ["nounwind", "readnone", "speculatable", "willreturn"], isExternal = true, functionArgTypes = ["i64", "i64"]);
    Function abort = 
    m.appendFunction("@abort", "void", isExternal = true, functionAttributes = ["noreturn", "nounwind"]);

    Function foo = m.appendFunction("@foo", "i64", "dso_local", functionArgTypes=["i64"]);
    BasicBlock bb1 = foo.appendBasicBlock();
    builder.positionAtEnd(bb1);
    Value R2 = builder.alloca("i64");
    Value R0 = foo.getFunctionArgs()[0];
    builder.store(R0, R2);
    Value R3 = builder.load(R2);
    Value R4 = builder.call(sub,[constInt("i64",0), R3]);
    Value R5 = builder.extractValue(R4, constInt("i64", 0));
    Value R6 = builder.extractValue(R4, constInt("i64", 1));
    Value R7 = builder.binaryInt("xor",R6, constBool(true));

    BasicBlock ifTrue = foo.appendBasicBlock();
    BasicBlock ifFalse = foo.appendBasicBlock();

    builder.condBranch(R7,ifTrue,ifFalse);

    builder.positionAtEnd(ifTrue);
    builder.returnValue(R5);

    builder.positionAtEnd(ifFalse);
    builder.callVoid(abort,[]);
    builder.unreachable();
    return m;
}

@test:Config {}
function testExprUnaryNeg() returns error? {
    Module m = exprUnaryNeg();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", "expr_unary_neg.ll");
    Output out = check new (outputPath);
    m.output(out);
    check out.finish();
}
