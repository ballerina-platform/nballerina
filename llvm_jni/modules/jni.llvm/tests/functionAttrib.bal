import ballerina/test;

function functionAttrib() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    FunctionDefn test = m.addFunctionDefn("test", {returnType: "i64", paramTypes: ["i64", "i64", "i64"]});
    test.addEnumAttribute("nounwind");
    test.addEnumAttribute(["return", "noalias"]);
    test.addEnumAttribute([0, "zeroext"]);
    Value p0 = test.getParam(0);
    Value p1 = test.getParam(1);
    Value p2 = test.getParam(2);
    BasicBlock initBlock = test.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value temp1 = builder.binaryOpWrap("add",p0, p1);
    Value temp2 = builder.binaryOpWrap("add",temp1, p2);
    builder.ret(temp2);

    FunctionDecl test2 = m.addFunctionDecl("test2", {returnType:"i64", paramTypes:["i64", "i64", "i64"]});
    test2.addEnumAttribute("nounwind");
    test2.addEnumAttribute(["return", "noalias"]);
    test2.addEnumAttribute([0, "zeroext"]);
    return m;
}

@test:Config {}
function testFunctionAttrib() returns error? {
    return runTest(functionAttrib, "function_attrib.ll");
}
