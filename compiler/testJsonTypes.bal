import ballerina/io;

import wso2/nballerina.types as t;
import wso2/nballerina.types.'json as j;

enum Relation {
    proper_subtype,
    equivalent,
    incomparable
}

type TestCase [Relation, json, json];

type Tests TestCase[];

public function testJsonTypes(string filename) returns error? {
    json j = check io:fileReadJson(filename);
    TestCase[] tests = check j.fromJsonWithType();
    int testNum = 0;
    int testsPassed = 0;
    foreach var [rel, j1, j2]  in tests {
        testNum += 1;
        if runTest(rel, j1, j2, testNum) {
            testsPassed += 1;
        }
    }
    io:println("Passed ", testsPassed, "/", testNum);
    io:println(" created ", t:bddGetCount(), " BDDs in total");
}

final var relationExpect = {
   proper_subtype: [true, false],
   equivalent: [true, true],
   incomparable: [false, false]
};

function runTest(Relation rel, json j1, json j2, int testNum) returns boolean {
    t:Env env = new;
    boolean firstOk = false;
    do {
        boolean ok = true;
        t:SemType t1 = check j:parse(env, j1);
        firstOk = true;
        t:SemType t2 = check j:parse(env, j2);
        var expect = <[boolean,boolean]>relationExpect[rel];
        return expectSubtype(testNum, j1, j2, env, t1, t2, expect, 0)
                && expectSubtype(testNum, j2, j1, env, t2, t1, expect, 1);
    }
    on fail j:ParseError err {
        io:println("Could not parse ", firstOk ? "second" : "first", " type in test ", testNum, ": ", err.message());
        return false;
    }
}

function expectSubtype(int testNum, json j1, json j2, t:Env env, t:SemType t1, t:SemType t2, boolean[] expect, int i) returns boolean {
    io:println("Test ", testNum, "/", i);
    int tem = t:bddGetCount();
    var tc = t:typeCheckContext(env);
    boolean b = t:isSubtype(tc, t1, t2);
    if b == expect[i] {
        io:println("  created ", t:bddGetCount() - tem, " BDDs");
        return true;
    }
    io:println("Fail test ", testNum, ". This type");
    io:println(j1.toBalString());
    io:println("was ", b ? "" : "not ", "a subtype of");
    io:println(j2.toBalString());
    io:println("but I expected the opposite.");
    return false;
}
