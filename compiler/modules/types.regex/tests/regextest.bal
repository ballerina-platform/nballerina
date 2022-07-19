import ballerina/test;
import ballerina/io;
import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as f;

type TestCase [string, string, f:SubtypeTestOp];

@test:Config{
    dataProvider: readRegexStringTests
}
function testRegexString(string str, string regex, f:SubtypeTestOp op) {
    t:Env env = new;
    t:Context cx = t:contextFromEnv(env);
    t:SemType strTy = stringToSingleton(env, str);
    t:SemType regexTy = regexToSemType(env, regex);
    testTypeRelation(cx, str, regex, strTy, regexTy, op);
}

@test:Config{
    dataProvider: readInclusionTests
}
function testRegexInclusion(string lhs, string rhs, f:SubtypeTestOp op) {
    t:Env env = new;
    t:Context cx = t:contextFromEnv(env);
    t:SemType lhsTy = regexToSemType(env, lhs);
    t:SemType rhsTy = regexToSemType(env, rhs);
    testTypeRelation(cx, lhs, rhs, lhsTy, rhsTy, op);
}

function testTypeRelation(t:Context tc, string left, string right, t:SemType leftTy, t:SemType rightTy, f:SubtypeTestOp op) {
    boolean lsr = t:isSubtype(tc, leftTy, rightTy);
    boolean rsl = t:isSubtype(tc, rightTy, leftTy);
    boolean[2] testPair = [lsr, rsl];
    match op {
        "<" => {
            test:assertEquals(testPair, [true, false], string `${left} is not a proper subtype of ${right}`);
        }
        "<>" => {
            test:assertEquals(testPair, [false, false], string `${left} and ${right} are subtypes`);
        }
        "=" => {
            test:assertEquals(testPair, [true, true], string `${left} is not equivalent to ${right}`);
        }
    }
}

function readRegexStringTests() returns map<TestCase>|error {
    map<TestCase> tests = {};
    json data = check io:fileReadJson("modules/types.regex/tests/data/regexStringTests.json");
    TestCase[] testCases = check data.fromJsonWithType();
    foreach var test in testCases {
        tests[string `${test[0]} ${test[2]} ${test[1]}`] = test;
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
