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
    s:SourceFile file = s:createSourceFile(testFileContent, { filename: "testFile" });
    // pr-todo should we make the create position public or add a helper function here
    d:Position range = (3 << 32) | 1;
    d:Location location = { file, range };
    d:Diagnostic diagnostic = { category: d:SYNTAX, location, message: "missing semicolon" };
    _ = d:format(diagnostic);
    // string[]|error result = trap d:format(diagnostic);
    // test:assertTrue(result is error, "failed to panic when position is out of range");
    // io:println(result);
    // test:assertTrue(false);
}
