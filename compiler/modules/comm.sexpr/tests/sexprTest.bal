import ballerina/test;

@test:Config{
    dataProvider: sexprParseTestAllCases
}
function testSexprParse(string subject, Data[] expected) returns error? {
    test:assertEquals(check parse(subject), expected);
}

@test:Config{
    dataProvider: sexprParseTestCanonCases
}
function testSexprPrint(string expected, Data[] subject) returns error? {
    test:assertEquals(prettyPrint(subject), expected);
}

final [string, Data[]][] & readonly canon = [
    ["", []],
    ["()", [[]]],
    [string`("hello" "world")`, [[{ s: "hello" },{ s: "world" }]]],
    [string`("\"\"")`, [[{ s: "\"\"" }]]],
    [string`("some \"quoted\" string")`, [[{ s: "some \"quoted\" string" }]]]
];

final [string, Data[]][] & readonly lossy = [
    [" ", []],
    ["\n ( \n )", [[]]],
    [string`("\hello")`, [[{ s: "hello" }]]]
];

function sexprParseTestCanonCases() returns map<[string, Data[]]> {
    map<[string, Data[]]> tests = {};
    addTests(canon, tests);
    return tests;
}

function sexprParseTestAllCases() returns map<[string, Data[]]> {
    map<[string, Data[]]> tests = {};
    addTests(canon, tests);
    addTests(lossy, tests);
    return tests;
}

function addTests([string, Data[]][] & readonly src, map<[string, Data[]]> dest) {
    foreach var [k, v] in src {
        dest[k] = [k, v];
    }
}
