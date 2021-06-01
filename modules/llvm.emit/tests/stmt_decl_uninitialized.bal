import ballerina/file;
import ballerina/test;

function stmtDeclUninitialized() returns Module {
    Builder builder = new ();
    Module m = new ("x86_64-pc-linux-gnu");
    Function foo = m.appendFunction("@foo", "void", "dso_local");
    BasicBlock bb = foo.appendBasicBlock();
    builder.positionAtEnd(bb);
    var R1 = builder.alloca("i64");
    builder.returnVoid();
    return m;
}

@test:Config {}
function testStmtDeclUninitialized() returns error? {
    Module m = stmtDeclUninitialized();
    string outputPath = check file:joinPath(file:getCurrentDir(), "modules", "llvm.emit", "tests", 
    "stmt_decl_uninitialized.ll");
    Output out = check new (outputPath);
    m.output(out);
    check out.finish();
}
