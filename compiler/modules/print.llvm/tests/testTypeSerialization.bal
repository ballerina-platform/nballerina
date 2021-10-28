import ballerina/test;

@test:Config {}
function testIntTypeSerialization() {
    IntType[] intTypes = ["i64", "i1"];
    Context context = new;
    foreach var ty in intTypes {
        string out = typeToString(ty, context);
        test:assertEquals(out, ty);
    }
}

@test:Config {}
function testPointerTypeSerialization() {
    IntType[] intTypes = ["i64", "i1"];
    Context context = new;
    foreach var ty in intTypes {
        PointerType pTy = pointerType(ty);
        string out = typeToString(pTy, context);
        test:assertEquals(out, string `${<string>ty}*`);
    }
}

@test:Config {}
function testStringTypeSerialization() {
    IntType[] intTypes = ["i64", "i1"];
    StructType ty = structType(intTypes);
    Context context = new;
    string out = typeToString(ty, context);
    test:assertEquals(out, "{i64, i1}");
}
