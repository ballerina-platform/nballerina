import ballerina/test;
import ballerina/io;

type TestCase [string, int, int];

@test:Config{
    dataProvider: readDecimalTests
}
function testEncoding(string decimalVal, int expectedTop, int expectedBottom) {
    decimal val = checkpanic decimal:fromString(decimalVal);
    var [top, bottom] = toDpd(val);
    test:assertEquals(top, expectedTop);
    test:assertEquals(bottom, expectedBottom);
}

function readDecimalTests() returns map<TestCase>|error {
    map<TestCase> tests = {};
    json data = check io:fileReadJson("modules/comm.lib/tests/data/decimalTest.json");
    TestCase[] testCases = check data.fromJsonWithType();
    foreach var test in testCases {
        tests[test[0]] = test;
    }
    return tests;
}
