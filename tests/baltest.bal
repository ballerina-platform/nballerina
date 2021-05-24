import ballerina/test;
import ballerina/io;
import ballerina/file;

@test:Config {
    dataProvider: testModuleDataProvider
}
function testModule(string balString, string expected) returns error? {
    string[] lines = check subtypeRels(balString);
    string result = "\n".'join(...lines);
    test:assertEquals(result, expected);
}

function testModuleDataProvider() returns string[][]|error {
    return from var entry in check file:readDir("tests/data")
           let string path = entry.absPath
           where path.endsWith(".bal")
           let string[]|error res = readTestCase(path)
           // skip files with no subtype lines on them
           where res is string[] && res[1].length() > 0
           select res;
}

function readTestCase(string filename) returns string[]|error {
    string str = check io:fileReadString(filename);
    string[] lines = check io:fileReadLines(filename);
    string[] results =
        from var line in lines
        where line.startsWith("// ") && line.includes("<:")
        let string result = line.substring(3).trim()
        order by result
        select result;
    string expected = "\n".'join(...results);
    return [str, expected];
}

// @test:Config{}
// function test1() returns error? {
//     var args = check readTestCase("tests/data/function.bal");
//     return testModule(...args);
// }