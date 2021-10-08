import wso2/nballerina.err;

import ballerina/test;

const SYNTAX_ERROR = ();
type PreparseTestResult PREDICT_TYPE_DESC|PREDICT_EXPR|SYNTAX_ERROR;
type PreparseTestCase [string, PreparseTestResult, int];

@test:Config {
    dataProvider: parenStmtBeginnings
}
function testPreparse(string src, PreparseTestResult expected, int minLookahead) returns err:Syntax? {
    SourceFile file = createSourceFile([src], { filename: "<preparse-test>" });
    Tokenizer tok = new (file);
    check tok.advance();
    TokenizerState state = tok.save();

    test:assertEquals(tok.current(), "(");
    check tok.advance();
    var actual = preparseParenTypeDesc(tok);
    if expected == SYNTAX_ERROR {
        test:assertEquals(actual, PREDICT_EXPR);
        test:assertTrue(parseMethodCallStmt(tok) is error);
    }
    else {
        test:assertEquals(actual, expected);
        test:assertEquals(file.lineColumn(tok.currentEndPos())[1], minLookahead);

        tok.restore(state);
        if check actual {
            _ = check parseVarDeclStmt(tok);
        }
        else {
            _ = check parseMethodCallStmt(tok);
        }
    }
}

function parenStmtBeginnings() returns map<PreparseTestCase>|error {
    [string, string, PreparseTestResult][] tests = [
        ["() n", " = ();", PREDICT_TYPE_DESC],
        ["().", "m();", PREDICT_EXPR], // semantically invalid

        ["()[0", "].m();", PREDICT_EXPR], // semantically invalid
        ["()[0", "][0].m();", PREDICT_EXPR], // semantically invalid
        ["()[CONST", "].m();", PREDICT_EXPR], // semantically invalid

        // SUBSET enable after T[n] td
        // ["()[0] n", " = [];", PREDICT_TYPE_DESC],
        // ["()[0][0] n", " = [];", PREDICT_TYPE_DESC],
        // ["()[CONST] n", " = [];", PREDICT_TYPE_DESC],

        ["()[\"hello\"", "].m();", PREDICT_EXPR], // semantically invalid
        ["()[]", " n = [];", PREDICT_TYPE_DESC],
        ["()?", " n = ();", PREDICT_TYPE_DESC],

        // SUBSET enable after optional field access
        // ["()?.", " method();", PREDICT_EXPR]

        ["(x", ").m();", PREDICT_EXPR],
        ["() = 1;", "", SYNTAX_ERROR]
    ];

    map<PreparseTestCase> testMap = {};
    foreach var t in tests {
        string src = t[0] + t[1];
        testMap[src] = [src, t[2], t[0].length()];
    }
    return testMap;
}
