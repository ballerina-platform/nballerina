import ballerina/test;
import ballerina/io;

import wso2/nballerina.types as t;
import wso2/nballerina.types.'json as j;

type TestCase [json, string];

@test:Config { }
function testSemTypeToString() returns TestCase[]|error? {
    json j = check io:fileReadJson("modules/types.emit/tests/resources/semTypeToString.json");
    TestCase[] tests = check j.fromJsonWithType();
    string[] results = [];
    string[] expectedResults = [];
    foreach var [typeJson, expected] in tests {
        t:Env env = new;
        t:SemType t = check j:parse(env, typeJson);
        results.push(semTypeToString(env, t));
        expectedResults.push(expected);
    }
    // JBUG assertEquals should print a useful diff for anydata
    test:assertEquals("\n".'join(...results), "\n".'join(...expectedResults));
}
