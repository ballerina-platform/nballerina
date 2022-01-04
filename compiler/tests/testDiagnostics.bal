import ballerina/test;
import wso2/nballerina.comm.diagnostic as d;
import wso2/nballerina.front.syntax as s;

@test:Config{}
function testPositionOutOfRange() {
    string[] testFileContent = [
        "type RecordType record {",
        "    string test;",
        "}"
    ];
    s:SourceFile file = s:createSourceFile(testFileContent, { filename: "testFile1" });
    d:Position range = position(3,1);
    d:Location location = { file, range };
    d:Diagnostic diagnostic = { category: d:SYNTAX, location, message: "missing semicolon" };
    string[]|error result = trap d:format(diagnostic);
    if result is error {
        test:assertTrue(result.message().startsWith("column number 1 is out of range"));
    }
    else {
        test:assertFail("invalid position must cause a panic");
    }
}

@test:Config{}
function testPositionOnEmptyFile() {
    string[] testFileContent = [];
    s:SourceFile file = s:createSourceFile(testFileContent, { filename: "testFile2" });
    d:Position range = position(3,1);
    d:Location location = { file, range };
    d:Diagnostic diagnostic = { category: d:SYNTAX, location, message: "missing semicolon" };
    string[]|error result = trap d:format(diagnostic);
    if result is error {
        test:assertTrue(result.message().startsWith("line number 3 is out of range"));
    }
    else {
        test:assertFail("invalid position must cause a panic");
    }
    test:assertTrue(result is error, "failed to panic when position is out of range");
}

@test:Config{}
function testInvalidLineNumber() {
    string[] testFileContent = [
        "type RecordType record {",
        "    string test;",
        "}"
    ];
    s:SourceFile file = s:createSourceFile(testFileContent, { filename: "testFile3" });
    d:Position range = position(40,1);
    d:Location location = { file, range };
    d:Diagnostic diagnostic = { category: d:SYNTAX, location, message: "missing semicolon" };
    string[]|error result = trap d:format(diagnostic);
    if result is error {
        test:assertTrue(result.message().startsWith("line number 40 is out of range"));
    }
    else {
        test:assertFail("invalid position must cause a panic");
    }
}

@test:Config{}
function testInvalidColumnNumber() {
    string[] testFileContent = [
        "type RecordType record {",
        "    string test;",
        "}"
    ];
    s:SourceFile file = s:createSourceFile(testFileContent, { filename: "testFile4" });
    d:Position range = position(3,40);
    d:Location location = { file, range };
    d:Diagnostic diagnostic = { category: d:SYNTAX, location, message: "missing semicolon" };
    string[]|error result = trap d:format(diagnostic);
    if result is error {
        test:assertTrue(result.message().startsWith("column number 40 is out of range"), result.message());
    }
    else {
        test:assertFail("invalid position must cause a panic");
    }
}

function position(int lineNum, int columnNum) returns d:Position {
    return lineNum << 32 | columnNum;
}
