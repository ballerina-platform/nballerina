import ballerina/test;

@test:Config{}
function testEndOfLinePositionsForLineContent() {
    string[] testFileContent = [
        "type RecordType record {",
        "    string test;",
        "    \"type\" \"type\";",
        "",
        "}"
    ];
    SourceFile file = createSourceFile(testFileContent, { filename: "testFile" });
    foreach int i in 0 ..< testFileContent.length() {
        string line = testFileContent[i];
        Position pos = createPosition(i + 1, line.length());
        var[prefix, content, postfix] = file.lineContent(pos);
        test:assertEquals(line, prefix);
        test:assertEquals(content, "");
        test:assertEquals(postfix, "");
    }
}
