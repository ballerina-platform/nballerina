import ballerina/test;

function testLLVMOverflowArithmeticFunctionType(FunctionType fType) {
    StructType overflowArithmeticReturnType = structType(["i64", "i1"]);
    FunctionType overflowArithmeticFunctionType = {returnType: overflowArithmeticReturnType, paramTypes: ["i64", "i64"]};
    test:assertEquals(fType, overflowArithmeticFunctionType);
}

@test:Config {}
function testArithmeticIntrinsicGeneration() {
    Module m = new ();
    IntrinsicFunctionName[] names = ["sadd.with.overflow.i64", "ssub.with.overflow.i64", "smul.with.overflow.i64"];
    foreach var name in names {
        FunctionDecl f = m.getIntrinsicDeclaration(name);
        testLLVMOverflowArithmeticFunctionType(f.functionType);
        string functionName = "llvm." + name;
        test:assertEquals(f.functionName, functionName);
    }
}

@test:Config {}
function testIntrinsicRepeatedAddition() {
    Module m = new ();
    IntrinsicFunctionName name = "sadd.with.overflow.i64";
    FunctionDecl f1 = m.getIntrinsicDeclaration(name);
    FunctionDecl f2 = m.getIntrinsicDeclaration(name);
    test:assertTrue(f1 === f2);
}

@test:Config {}
function testFunctionAttributeAddition() {
    Module m = new ();
    EnumAttribute[] attributes = ["noreturn", "cold", "nounwind", "readnone", "speculatable", "willreturn"]; //FIXME: add others
    FunctionDecl fDecl = m.addFunctionDecl("decl", {returnType: "void", paramTypes: []});
    foreach var attribute in attributes {
        fDecl.addEnumAttribute(attribute);
        test:assertNotExactEquals(fDecl.attributes.indexOf(attribute), ());
    }
    FunctionDefn fDefn = m.addFunctionDefn("defn", {returnType: "void", paramTypes: []});
    foreach var attribute in attributes {
        fDefn.addEnumAttribute(attribute);
        test:assertNotExactEquals(fDefn.attributes.indexOf(attribute), ());
    }
}

@test:Config {}
function testFunctionAttributeNoDuplicate() {
    Module m = new ();
    EnumAttribute attribute = "cold";
    FunctionDecl fDecl = m.addFunctionDecl("decl", {returnType: "void", paramTypes: []});
    fDecl.addEnumAttribute(attribute);
    fDecl.addEnumAttribute(attribute);
    test:assertEquals(fDecl.attributes.length(), 1);
    FunctionDefn fDefn = m.addFunctionDefn("defn", {returnType: "void", paramTypes: []});
    fDefn.addEnumAttribute(attribute);
    fDefn.addEnumAttribute(attribute);
    test:assertEquals(fDefn.attributes.length(), 1);
}
