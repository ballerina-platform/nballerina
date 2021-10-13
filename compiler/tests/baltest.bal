import ballerina/test;
import ballerina/io;
import ballerina/file;

type SubtypeTestCase [string, string[], string[]];
@test:Config {
    dataProvider: subtypeCaseProvider
}
function testSubtype(string filename, string[] lines, string[] expected) returns error? {
    string[] result = check subtypeRels([{ lines, filename }]);
    test:assertEquals(result, expected);
}

function subtypeCaseProvider() returns map<SubtypeTestCase>|error {
    map<SubtypeTestCase> tests = {};

    check from var entry in check file:readDir("tests/data")
        let string path = entry.absPath
        let string base = check file:basename(path)
        where path.endsWith(".bal")
        let SubtypeTestCase|error res = readTestCase(path)
        // skip files with no subtype lines on them
        where res is SubtypeTestCase && res[1].length() > 0
        do {
            tests[base] = res;
        };

    return tests;
}

function readTestCase(string filename) returns SubtypeTestCase|error {
    string[] lines = check io:fileReadLines(filename);
    string[] expected =
        from var line in lines
        where line.startsWith("// ") && line.includes("<:")
        let string result = line.substring(3).trim()
        order by result
        select result;
    return [filename, lines, expected];
}

// @test:Config{}
// function test1() returns error? {
//     var args = check readTestCase("tests/data/function.bal");
//     return testModule(...args);
// }
