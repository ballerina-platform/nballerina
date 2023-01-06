import ballerina/test;

function testLLVMOverflowArithmeticFunctionType(FunctionType fType) {
    StructType overflowArithmeticReturnType = structType(["i64", "i1"]);
    FunctionType overflowArithmeticFunctionType = {returnType: overflowArithmeticReturnType, paramTypes: ["i64", "i64"]};
    test:assertEquals(fType, overflowArithmeticFunctionType);
}

@test:Config {}
function testArithmeticIntrinsicGeneration() {
    Context context = new;
    Module m = context.createModule();
    IntrinsicFunctionName[] names = ["sadd.with.overflow.i64.i64", "ssub.with.overflow.i64.i64", "smul.with.overflow.i64.i64"];
    foreach var name in names {
        FunctionDecl f = m.getIntrinsicDeclaration(name);
        testLLVMOverflowArithmeticFunctionType(f.functionType);
        string functionName = "llvm." + name;
        test:assertEquals(f.functionName, functionName);
    }
}

@test:Config {}
function testIntrinsicRepeatedAddition() {
    Context context = new;
    Module m = context.createModule();
    IntrinsicFunctionName name = "sadd.with.overflow.i64.i64";
    FunctionDecl f1 = m.getIntrinsicDeclaration(name);
    FunctionDecl f2 = m.getIntrinsicDeclaration(name);
    test:assertTrue(f1 === f2);
}

@test:Config {}
function testFunctionAttributeAddition() {
    Context context = new;
    Module m = context.createModule();
    FunctionEnumAttribute[] attributes = ["noreturn", "cold", "nounwind", "readnone", "speculatable", "willreturn"]; 
    FunctionDecl fDecl = m.addFunctionDecl("decl", {returnType: "void", paramTypes: []});
    foreach var attribute in attributes {
        fDecl.addEnumAttribute(attribute);
        test:assertNotExactEquals(fDecl.functionAttributes.indexOf(attribute), ());
    }
    FunctionDefn fDefn = m.addFunctionDefn("defn", {returnType: "void", paramTypes: []});
    foreach var attribute in attributes {
        fDefn.addEnumAttribute(attribute);
        test:assertNotExactEquals(fDefn.functionAttributes.indexOf(attribute), ());
    }
}

@test:Config {}
function testFunctionAttributeNoDuplicate() {
    Context context = new;
    Module m = context.createModule();
    EnumAttribute attribute = "cold";
    FunctionDecl fDecl = m.addFunctionDecl("decl", {returnType: "void", paramTypes: []});
    fDecl.addEnumAttribute(attribute);
    fDecl.addEnumAttribute(attribute);
    test:assertEquals(fDecl.functionAttributes.length(), 1);
    FunctionDefn fDefn = m.addFunctionDefn("defn", {returnType: "void", paramTypes: []});
    fDefn.addEnumAttribute(attribute);
    fDefn.addEnumAttribute(attribute);
    test:assertEquals(fDefn.functionAttributes.length(), 1);
}
