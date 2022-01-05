import ballerina/test;
import wso2/nballerina.comm.diagnostic as d;
import wso2/nballerina.front.syntax as s;

@test:Config{}
function testInvalidPosition() {
    string[] testFileContent = [
        "type RecordType record {",
        "    string test;",
        "};"
    ];
    s:SourceFile file = s:createSourceFile(testFileContent, { filename: "testFile" });
    d:Position[] positions = [
        position(0,1),
        position(40,1),
        position(3,40)
    ];
    string[] errMessagePrefixes = [
        "line number 0 is out of range",
        "line number 40 is out of range",
        "column number 40 is out of range"
    ];
    foreach int i in 0 ..< positions.length() {
        d:Position range = positions[i];
        string errMessagePrefix = errMessagePrefixes[i];
        d:Location location = { file, range };
        d:Diagnostic diagnostic = { category: d:SYNTAX, location, message: "test error" };
        string[]|error result = trap d:format(diagnostic);
        if result is error {
            test:assertTrue(result.message().startsWith(errMessagePrefix), string `error message "${result.message()}" must begin with "${errMessagePrefix}"`);
        }
        else {
            test:assertFail(string `invalid start position ${unpackPosition(range).toString()} must cause a panic`);
        }
    }
    foreach int i in 0 ..< positions.length() {
        d:Position endPos = positions[i];
        d:Position startPos = position(1, 0);
        string errMessagePrefix = errMessagePrefixes[i];
        d:Location location = { file, range: { startPos, endPos } };
        d:Diagnostic diagnostic = { category: d:SYNTAX, location, message: "test error" };
        string[]|error result = trap d:format(diagnostic);
        if result is error {
            test:assertTrue(result.message().startsWith(errMessagePrefix), string `error message "${result.message()}" must begin with "${errMessagePrefix}"`);
        }
        else {
            test:assertFail(string `invalid end position ${unpackPosition(endPos).toString()} must cause a panic`);
        }
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
        test:assertFail("position in empty file must cause a panic");
    }
}

@test:Config{}
function testEmptyPositions() {
    string[] testFileContent = [
        "type RecordType record {",
        "    string test;",
        "};"
    ];
    s:SourceFile file = s:createSourceFile(testFileContent, { filename: "testFile" });
    d:Position[] positions = [
        position(1,24),
        position(3,2)
    ];
    string[] errMessage = [
        "error position [1,24] is empty",
        "error position [3,2] is empty"
    ];
    foreach int i in 0 ..< positions.length() {
        d:Position range = positions[i];
        string m = errMessage[i];
        d:Location location = { file, range };
        d:Diagnostic diagnostic = { category: d:SYNTAX, location, message: "test error" };
        string[]|error result = trap d:format(diagnostic);
        if result is error {
            test:assertEquals(result.message(), m);
        }
        else {
            test:assertFail(string `empty position ${unpackPosition(range).toString()} must cause a panic`);
        }
    }
    foreach int i in 0 ..< positions.length() {
        d:Position endPos = positions[i];
        d:Position startPos = endPos;
        d:Range range = { startPos, endPos };
        string m = errMessage[i];
        d:Location location = { file, range };
        d:Diagnostic diagnostic = { category: d:SYNTAX, location, message: "test error" };
        string[]|error result = trap d:format(diagnostic);
        if result is error {
            test:assertEquals(result.message(), m);
        }
        else {
            test:assertFail(string `empty range position ${unpackPosition(range.startPos).toString()} - ${unpackPosition(range.endPos).toString()} must cause a panic`);
        }
    }
}

function position(int lineNum, int columnNum) returns d:Position {
    return lineNum << 32 | columnNum;
}

function unpackPosition(d:Position pos) returns [int, int] & readonly {
    return [pos >> 32, pos & 0xFFFFFFFF];
}
