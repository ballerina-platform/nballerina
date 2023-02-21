import ballerina/test;

enum TestKind {
    CANON,
    LOSSY
}

final map<[TestKind, string, Data[]]> testCases = { // JBUG: doesn't run if type is readonly
    "empty"              : [CANON, "", []],
    "singleton"          : [CANON, "()", [[]]],
    "strings"            : [CANON, string`("hello" "world")`, [[{ s: "hello" },{ s: "world" }]]],
    "string backslash"   : [CANON, string`("\\")`, [[{ s: "\\" }]]],
    "string semicolon"   : [CANON, string`(";;not a comment;;")`, [[{ s: ";;not a comment;;" }]]],
    "string newline"     : [CANON, string`("\n")`, [[{ s: "\n" }]]],
    "string quote"       : [CANON, string`("\"")`, [[{ s: "\"" }]]],
    "string quotes"      : [CANON, string`("\"\"")`, [[{ s: "\"\"" }]]],
    "string quotes word" : [CANON, string`("some \"quoted\" string")`, [[{ s: "some \"quoted\" string" }]]],
    "empty space"        : [LOSSY, " ", []],
    "singleton newline"  : [LOSSY, "\n ( \n )", [[]]],
    "multiline string"   : [LOSSY, "(\"\n\")", [[{ s: "\n" }]]],
    "comment"            : [LOSSY, ";; comment\n(true)", [[true]]],
    "space"              : [LOSSY, " (42)", [[42]]],
    "trailing garbage"   : [LOSSY, "() trailing garbage", [[]]],
    "string extra escape": [LOSSY, string`("\apple")`, [[{ s: "apple" }]]]
};

function sexprParseTestCases() returns map<[TestKind, string, Data[]]> => testCases;

@test:Config{
    dataProvider: sexprParseTestCases
}
function testSexprParse(TestKind kind, string subject, Data[] expected) returns error? {
    test:assertEquals(check parse(subject), expected);
}

@test:Config{
    dataProvider: sexprParseTestCases
}
function testSexprPrint(TestKind kind, string expected, Data[] subject) returns error? {
    if kind == CANON {
        test:assertEquals(prettyPrint(subject), expected);
    }
    else {
        test:assertNotEquals(prettyPrint(subject), expected);
    }
}
