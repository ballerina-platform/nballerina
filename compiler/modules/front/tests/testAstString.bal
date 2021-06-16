import ballerina/test;

@test:Config
function testFunctionParse() returns error? {
    string expected = "function foo ( ) {\n" +
                      "    int i = 10 ;\n" +
                      "    return i ;\n" +
                      "}";
    ModulePart subject = check parseModulePart(expected);
    string actual = modulePartToString(subject);
    test:assertEquals(actual, expected);
}
