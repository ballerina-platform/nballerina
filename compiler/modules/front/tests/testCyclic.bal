import ballerina/test;
import wso2/nballerina.comm.err;

type CyclicTypeTest [string[], boolean];

@test:Config {
    dataProvider: cyclicTypeTests
}
function testCycleType(string[] src, boolean isCyclic) {
    SourcePart[] sourceParts = [{ lines: src, filename: "<internal>" }];
    
    var result = typesFromString(sourceParts);
    if isCyclic {
        test:assertTrue(result is err:Semantic, "expected a semantic error");
        test:assertEquals((<err:Semantic>result).detail()["message"], "invalid cyclic type", "invalid error message");
    }
    else {
        test:assertTrue(result !is error, "unexpected error in type definition");
    }
} 

function cyclicTypeTests() returns map<CyclicTypeTest> {
    map<CyclicTypeTest> m = {};
    m["cyclic list 1"] = [splitLines(string`
                            type L1 [int, L1];
                            type L2 [int, L1] | ();
                          `),
                          true];
    m["cyclic record 1"] = [splitLines(string`
                                type R1 record {
                                    R1 r;
                                    int a;
                                };
                                type R2 record {
                                    R2 r;
                                    int a;
                                } | int;
                            `),
                            true];
    m["non cyclic map"] = [splitLines("type M map<M>;"), false];
    m["cyclic list 1"] = [splitLines("type L [int, L];"), true];
    m["non cyclic list"] = [splitLines("type L L[];"), false];
    return m;
}

function splitLines(string str) returns string[] {
    string[] lines = [];
    int lineStart = 0;
    int? lineEnd = str.indexOf("\n", lineStart);
    while lineEnd is int {
        lines.push(str.substring(lineStart, lineEnd).trim());
        lineStart = lineEnd;
        lineEnd = str.indexOf("\n", lineStart + 1);
    }
    return lines.length() > 0 ? lines : [str.trim()];
}
