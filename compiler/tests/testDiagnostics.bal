import ballerina/test;
import wso2/nballerina.comm.diagnostic as d;
import wso2/nballerina.front.syntax as s;

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
        "error range [1,24] is empty in testFile",
        "error range [3,2] is empty in testFile"
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
