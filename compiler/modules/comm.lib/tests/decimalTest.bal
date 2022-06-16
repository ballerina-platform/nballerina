import ballerina/test;
import ballerina/io;

type TestCase [string, int, int];

@test:Config{
    dataProvider: readDecimalTests
}
function testEncoding(string decimalVal, int expectedLestSignificant, int expectedMostSignificant) {
    decimal val = checkpanic decimal:fromString(decimalVal);
    var [lestSignificant, mostSignificant] = toLeDpd(val);
    test:assertEquals(lestSignificant, expectedLestSignificant);
    test:assertEquals(mostSignificant, expectedMostSignificant);
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
