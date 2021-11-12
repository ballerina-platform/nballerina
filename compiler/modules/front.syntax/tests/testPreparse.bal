import wso2/nballerina.comm.err;

import ballerina/test;

const SYNTAX_ERROR = ();
type PreparseTestResult PREPARSE_TYPE_DESC|PREPARSE_EXPR|SYNTAX_ERROR;

// `()` Within the subset grammar syntax
// `O` Over-implementation
// `W` Wastefully looks ahead more than what is strictly necessary
type PreparseTestKind ()|"O"|"W";

type PreparseTestCase [string, PreparseTestResult, int, PreparseTestKind];

@test:Config {
    dataProvider: parenStmtBeginnings
}
function testPreparse(string src, PreparseTestResult expected, int minLookahead, PreparseTestKind k) returns err:Syntax? {
    SourceFile file = createSourceFile([src], { filename: "<preparse-test>" });
    Tokenizer tok = new (file);
    check tok.advance();
    TokenizerState state = tok.save();

    test:assertEquals(tok.current(), "(");
    check tok.advance();
    var actual = preparseParenTypeDesc(tok);
    if expected != SYNTAX_ERROR {
        test:assertEquals(actual, expected);
    }
    // even if source has a syntax error preparse might not give an error, so we must continue.

    if k == "O" {
        return;
    }

    int consumed = file.lineColumn(tok.currentEndPos())[1]+1;
    if k == "W" {
        test:assertTrue(consumed > minLookahead);
    }
    else {
        test:assertEquals(consumed, minLookahead);
    }

    tok.restore(state);
    Stmt|error err;
    if actual is error {
        test:assertEquals(expected, SYNTAX_ERROR);
        return;
    }
    else if actual {
        err = parseVarDeclStmt(tok, tok.currentStartPos());
    }
    else {
        // actual == false
        err = parseMethodCallStmt(tok);
    }

    if expected == SYNTAX_ERROR {
        test:assertTrue(err is error, "expected syntax error");
    }
    else {
        test:assertFalse(err is error, "parser error");
    }
}

function parenStmtBeginnings() returns map<PreparseTestCase>|error {
    [string, string, PreparseTestResult, PreparseTestKind][] tests = [
        ["() n", " = ();", PREPARSE_TYPE_DESC],
        ["().", "m();", PREPARSE_EXPR], // semantically invalid
        ["()[0].", "m();", PREPARSE_EXPR], // semantically invalid
        ["()[0] n", " = [];", PREPARSE_TYPE_DESC, "O"],
        ["()[0][0].", "m();", PREPARSE_EXPR], // semantically invalid
        ["()[0][0] n", " = [];", PREPARSE_TYPE_DESC, "O"],
        ["()[CONST].", "m();", PREPARSE_EXPR], // semantically invalid
        ["()[CONST] n", " = [];", PREPARSE_TYPE_DESC, "O"],
        ["()[\"hello\"", "].m();", PREPARSE_EXPR, "W"], // semantically invalid
        ["()[]", " n = [];", PREPARSE_TYPE_DESC, "W"],
        ["()?", " n = ();", PREPARSE_TYPE_DESC],
        // SUBSET enable after optional field access
        // ["()?.", " method();", PREPARSE_EXPR]
        ["()|", "int i = ();", PREPARSE_TYPE_DESC],
        ["(()|", "int) i = ();", PREPARSE_TYPE_DESC, "W"],
        ["(()) n", " = ();", PREPARSE_TYPE_DESC],
        ["(()).", "m();", PREPARSE_EXPR], // semantically invalid
        ["(1) n", " = 1;", PREPARSE_TYPE_DESC, "O"],
        ["(1).", "toHex();", PREPARSE_EXPR, "O"], // semantically invalid
        ["((1).", "toHex()).toHex();", PREPARSE_EXPR, "O"], // semantically invalid
        ["((2)) n", " = 2;", PREPARSE_TYPE_DESC, "O"],
        ["(-2) a", " = -2;", PREPARSE_TYPE_DESC, "O"],
        ["(-2).", "toHex();", PREPARSE_EXPR, "O"], // semantically invalid

        ["(\"hello\").", "m();", PREPARSE_EXPR], // semantically invalid
        ["(\"T\") t", " = \"T\";", PREPARSE_TYPE_DESC, "O"],
        ["(MyInt) i", " = 4;", PREPARSE_TYPE_DESC],
        ["(myInt).", "m();", PREPARSE_EXPR],
        ["(myArr)[1].", "m();", PREPARSE_EXPR],
        ["(myArr)[1 +", " 1].m();", PREPARSE_EXPR, "W"],
        ["(myArr[0]).", "m();", PREPARSE_EXPR],

        ["([MyConst]) t", " = [MyConst];", PREPARSE_TYPE_DESC, "O"],

        ["(int)", " i = 2;", PREPARSE_TYPE_DESC, "W"],
        ["(int|", "string)[] a = [1];", PREPARSE_TYPE_DESC, "W"],
        ["(int|", "string[])[] a = [1];", PREPARSE_TYPE_DESC, "W"],
        ["(int:Signed32) i", " = 2;", PREPARSE_TYPE_DESC],
        // SUBSET this should a semantic error, not a syntax error
        ["(int:MAX).", "toHex();", SYNTAX_ERROR],

        ["(map<", "int>|())[] maybeMaps = [];", PREPARSE_TYPE_DESC, "W"],
        ["(map:entries(", "m)).removeAll();", PREPARSE_EXPR, "O"],

        ["(record", " {|int id;|}) m = {id: 8};", PREPARSE_TYPE_DESC, "W"],

        ["(check", " m()).print();", PREPARSE_EXPR],
        ["(1 is", " int).print();", PREPARSE_EXPR], // semantically invalid
        ["([)", "]).m();", SYNTAX_ERROR],
        ["() =", " 1;", SYNTAX_ERROR]
    ];

    map<PreparseTestCase> testMap = {};
    foreach var t in tests {
        string src = t[0] + t[1];
        testMap[src] = [src, t[2], t[0].length(), t[3]];
    }
    return testMap;
}
