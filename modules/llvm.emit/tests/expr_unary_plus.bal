import ballerina/file;
import ballerina/test;

function exprUnaryPlus() returns Module {

    Builder builder = new ();
    Module m = new ("x86_64-pc-linux-gnu");
    Function foo = m.appendFunction("@foo", "i64","dso_local", functionArgTypes=["i64"]);
    BasicBlock bb = foo.appendBasicBlock();
    builder.positionAtEnd(bb);

    Value R2 = builder.alloca("i64");
    Value R0 = foo.getFunctionArgs()[0];
    builder.store(R0, R2);
    Value R3 = builder.load(R2);
    builder.returnValue(R3);
    return m;
}

@test:Config {}
function testExprUnaryPlus() returns error? {
    Module m = exprUnaryPlus();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", "expr_unary_plus.ll");
    Output out = check new (outputPath);
    m.output(out);
    check out.finish();
}
