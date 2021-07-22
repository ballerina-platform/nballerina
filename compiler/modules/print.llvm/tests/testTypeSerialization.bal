import ballerina/test;

@test:Config {}
function testIntTypeSerialization() {
    IntType[] intTypes = ["i64", "i1"];
    foreach var ty in intTypes {
        string out = typeToString(ty);
        test:assertEquals(out, ty);
    }
}

@test:Config {}
function testPointerTypeSerialization() {
    IntType[] intTypes = ["i64", "i1"];
    foreach var ty in intTypes {
        PointerType pTy = pointerType(ty);
        string out = typeToString(pTy);
        test:assertEquals(out, string `${<string>ty}*`);
    }
}

@test:Config {}
function testStringTypeSerialization() {
    IntType[] intTypes = ["i64", "i1"];
    StructType ty = structType(intTypes);
    string out = typeToString(ty);
    test:assertEquals(out, "{i64, i1}");
}
