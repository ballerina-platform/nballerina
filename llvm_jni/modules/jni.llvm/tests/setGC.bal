import ballerina/test;

function setGC() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    FunctionDecl bar = m.addFunctionDecl("bar", {returnType: "void", paramTypes: []});
    bar.setGC("shadow-stack");
    FunctionDecl bar2 = m.addFunctionDecl("bar2", {returnType: "void", paramTypes: []});
    bar2.setGC("shadow-stack");
    bar2.addEnumAttribute("noreturn");

    FunctionDefn foo = m.addFunctionDefn("foo", {returnType: "i64", paramTypes: []});
    BasicBlock bbfoo = foo.appendBasicBlock();
    builder.positionAtEnd(bbfoo);
    builder.ret(context.constInt("i64", 0));
    foo.setGC("shadow-stack");

    FunctionDefn foo2 = m.addFunctionDefn("foo2", {returnType: "i64", paramTypes: []});
    BasicBlock bbfoo2 = foo2.appendBasicBlock();
    builder.positionAtEnd(bbfoo2);
    builder.ret(context.constInt("i64", 0));
    foo2.setGC("shadow-stack");
    foo2.addEnumAttribute("noreturn");

    FunctionDefn foo3 = m.addFunctionDefn("foo3", {returnType: "i64", paramTypes: []});
    BasicBlock bbfoo3 = foo3.appendBasicBlock();
    builder.positionAtEnd(bbfoo3);
    builder.ret(context.constInt("i64", 0));
    foo3.setGC(());
    return m;
}

@test:Config {}
function testSetGC() returns error? {
    return runTest(setGC, "set_gc.ll");
}
