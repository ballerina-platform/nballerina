import ballerina/test;
import ballerina/io;
import ballerina/regex;
import wso2/nballerina.types as t;

type TestCase [string, string, boolean];

@test:Config{
    dataProvider: readRegexStringTests
}
function testRegexString(string str, string regex, boolean expected) {
    t:Env env = new;
    t:Context cx = t:contextFromEnv(env);
    t:SemType strTy = stringToSingleton(env, str);
    t:SemType regexTy = regexToSemType(env, regex);
    boolean isMatch = t:isSubtype(cx, strTy, regexTy);
    test:assertEquals(isMatch, expected);
    test:assertEquals(isMatch, regex:matches(str, regex), "jBal discrepancy"); // sanity check to make sure regex make sense
}

@test:Config{
    dataProvider: readInclusionTests
}
function testRegexInclusion(string subRegex, string regex, boolean isSubType) {
    t:Env env = new;
    t:Context cx = t:contextFromEnv(env);
    t:SemType subRegexTy = regexToSemType(env, subRegex);
    t:SemType regexTy = regexToSemType(env, regex);
    test:assertEquals(isSubType, t:isSubtype(cx, subRegexTy, regexTy));
}

function readRegexStringTests() returns map<TestCase>|error {
    map<TestCase> tests = {};
    json data = check io:fileReadJson("modules/types.regex/tests/data/regexStringTests.json");
    TestCase[] testCases = check data.fromJsonWithType();
    foreach var test in testCases {
        string equality = test[2] ? "==" : "!=";
        tests[string `${test[0]} ${equality} ${test[1]}`] = test;
    }
    return tests;
}

function readInclusionTests() returns map<TestCase>|error {
    map<TestCase> tests = {};
    json data = check io:fileReadJson("modules/types.regex/tests/data/regexInclusionTests.json");
    TestCase[] testCases = check data.fromJsonWithType();
    foreach var test in testCases {
        tests[string `${test[0]} <: ${test[1]}`] = test;
    }
    return tests;
}
