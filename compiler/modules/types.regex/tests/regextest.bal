import ballerina/test;
import ballerina/io;
import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as f;
import wso2/nballerina.comm.lib;

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

// constant configs for regex generation
const int MAX_CHUNK_LEN = 10;
const int MIN_CHUNK_LEN = 1;
const int SEQUENCE_LEN = 5; // Increasing this value will give much deeply nested regular expressions
const int SEED = 0;

@test:Config{
    dataProvider: randomRegexTests,
    groups: ["longRunning"]
}
function testRandomRegexGeneration(f:SubtypeTestOp op, string lhs, string rhs) {
    test:assertEquals(typeRelation(lhs, rhs), op);
}

function randomRegexTests() returns map<TestCase> {
    lib:Random randomGenerator = new(SEED);
    map<TestCase> tests = {};
    string[] testCases = generateRegexSequence(SEQUENCE_LEN, randomGenerator);
    foreach int i in 0 ..< testCases.length() {
        foreach int j in i + 1 ..< testCases.length() {
            string lhs = testCases[i];
            string rhs = testCases[j];
            tests[string `${lhs} < ${rhs}`] = ["<", lhs, rhs];
        }
    }
    return tests;
}

function generateRegexSequence(int sequenceLen, lib:Random randomGenerator) returns string[] {
    string currentChunk = randomString(randomGenerator);
    string[] regexes = [currentChunk];
    int rangeStart = 0;
    int rangeEnd = currentChunk.length() - 1;
    while regexes.length() < sequenceLen {
        int insertionPoint = randomGenerator.nextRange({ rangeStart, rangeEnd });
        string newString = currentChunk.substring(0, insertionPoint) + "(";
        rangeStart = newString.length();
        newString += randomString(randomGenerator);
        rangeEnd = newString.length();
        newString += ")*" + currentChunk.substring(insertionPoint, currentChunk.length());
        regexes.push(newString);
        currentChunk = newString;
    }
    return regexes;
}

function randomString(lib:Random randomGenerator) returns string {
    int len = randomGenerator.nextRange({ rangeStart: MIN_CHUNK_LEN, rangeEnd: MAX_CHUNK_LEN});
    return randomGenerator.randomStringValue(len);
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
