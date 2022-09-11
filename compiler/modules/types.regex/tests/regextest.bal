import ballerina/test;
import ballerina/io;
import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as f;

type TestCase [f:SubtypeTestOp, string, string];

@test:Config{
    dataProvider: readRegexStringTests
}
function testRegexString(f:SubtypeTestOp op, string str, string regex) {
    t:Env env = new;
    t:Context cx = t:contextFromEnv(env);
    t:SemType strTy = stringToSingleton(env, str);
    t:SemType regexTy = regexToSemType(env, regex);
    boolean[2] testPair = [t:isSubtype(cx, strTy, regexTy), t:isSubtype(cx, regexTy, strTy)];
    string result;
    match testPair {
        [true, true] => { result = "="; }
        [true, false] => { result = "<"; }
        [false, true] => { result = ">"; }
        _ => { result = "<>"; }
    }
    test:assertEquals(result, op);
}

@test:Config{
    dataProvider: readInclusionTests
}
function testRegexInclusion(f:SubtypeTestOp op, string lhs, string rhs) {
    test:assertEquals(typeRelation(lhs, rhs), op);
}

function readRegexStringTests() returns map<TestCase>|error => readTestCases("modules/types.regex/tests/data/regexStringTests.json");
function readInclusionTests() returns map<TestCase>|error => readTestCases("modules/types.regex/tests/data/regexInclusionTests.json");

function readTestCases(string filePath) returns map<TestCase>|error {
    map<TestCase> tests = {};
    json data = check io:fileReadJson(filePath);
    TestCase[] testCases = check data.fromJsonWithType();
    foreach var test in testCases {
        tests[string `${test[1]} ${test[0]} ${test[2]}`] = test;
    }
    return tests;
}
