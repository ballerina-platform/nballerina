import ballerina/test;

type ConstEvalTest [string,SimpleConst];

@test:Config{ dataProvider: validConstExprs }
function testConstExpr(string src, SimpleConst expected) {
    Tokenizer tok = new (src);
    checkpanic tok.advance();
    Expr parsed = checkpanic parseExpr(tok);
    var result = checkpanic evalConstExpr(parsed);
    test:assertTrue(result is SimpleConst && result == expected, "got: " + (result is NotConst ? "NotConst" : result.toString()));
}

function validConstExprs() returns map<ConstEvalTest> {
    ConstEvalTest[] tests = [
        ["1 + 2", 3],
        ["1 - 2", -1],
        ["2 * 3", 6],
        ["15 / 3", 5],
        ["17 % 5", 2],
        ["255 & 7", 7],
        ["1 < 2", true],
        ["1 < -1", false],
        ["1 == 1", true],
        ["1 + 2 == 2 + 1", true],
        ["(1 & 255) == 2", false],
        ["(1 & 255) != 1", false],
        ["(1 | 1) == 2", false],
        ["<int>1 + <int>2", 3]
    ];
    map<ConstEvalTest> m = {};
    foreach var t in tests {
        m[t[0]] = t;
    }
    return m;
}