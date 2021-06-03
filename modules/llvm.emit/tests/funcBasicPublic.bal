import ballerina/file;
import ballerina/test;

function funcBasicPublic() returns Module {
    Builder builder = new ();
    Module m = new ("x86_64-pc-linux-gnu");

    Function foo = m.getOrInsertFunction("@foo", {returnType: "void"});
    foo.setPreEmptionSpecifier("dso_local");
    BasicBlock fooBB = foo.appendBasicBlock();
    builder.positionAtEnd(fooBB);
    builder.returnVoid();

    Function bar = m.getOrInsertFunction("@bar", {returnType: "i64"});
    bar.setPreEmptionSpecifier("dso_local");
    BasicBlock barBB = bar.appendBasicBlock();
    builder.positionAtEnd(barBB);
    builder.returnValue(constInt(42));
    return m;
}

@test:Config {}
function testBasicPublic() returns error? {
    Module m = funcBasicPublic();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", "testOutputs", "func_basic_public.ll");
    Output out = check new (outputPath);
    m.output(out);
    check out.finish();
}
