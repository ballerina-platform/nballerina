import ballerina/test;
import ballerina/io;
import ballerina/file;

@test:Config {
    dataProvider: testModuleDataProvider
}
function testModule(string balString, string expected) returns error? {
    string[] lines = check subtypeRels(balString);
    string result = ",".'join(...lines);
    test:assertEquals(result, expected);
}

function testModuleDataProvider() returns string[][]|error {
    return from var entry in check file:readDir("tests/data")
           let string path = entry.absPath
           where path.endsWith(".bal")
           let string[]|error res = readTestCase(path)
           where res is string[]
           select res;
}

const HEADER = "// Expect: ";

function readTestCase(string filename) returns string[]|error {
    string str = check io:fileReadString(filename);
    if !str.startsWith(HEADER) {
        return error(filename + " does not start with: " + HEADER);
    }
    int? endIndex = str.indexOf("\n");
    string expected = str.substring(HEADER.length(), endIndex ?: str.length());
    expected = expected.trim();
    return [str, expected];
}

// @test:Config{}
// function test1() returns error? {
//     var args = check readTestCase("tests/data/function.bal");
//     return testModule(...args);
// }