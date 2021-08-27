import ballerina/test;
import wso2/nballerina.err;
import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as s;


type ConstEvalTest [string,SimpleConst];

class TestFoldContext {
    // JBUG error if next line uncommented
    // *FoldContext;
    function lookupConst(string varName) returns s:FLOAT_ZERO|t:Value?|FoldError {
        return ();
    }
    function semanticErr(err:Message msg, s:Position? pos = (), error? cause = ()) returns err:Semantic {
        return err:semantic(msg, pos=pos, cause=cause);
    }
}

@test:Config{ dataProvider: validConstExprs }
function testConstExpr(string src, SimpleConst expected) {
    s:Expr parsed = checkpanic s:parseExpression([src]);
    TestFoldContext cx = new;
    var result = foldExpr(cx, (), parsed);
    test:assertTrue(result is s:ConstValueExpr && result.value == expected, "got: " + (result is s:ConstValueExpr ? result.value.toString()  : "not constant"));
}

function validConstExprs() returns map<ConstEvalTest> {
    ConstEvalTest[] tests = [
        ["0xFF", 255],
        ["-0x10", -16],
        ["0Xba1decaf", 0xba1decaf],
        ["0x00000000000000000001", 1],
        ["0x7fFfFfFfFfFfFfFf", 0x7fFfFfFfFfFfFfFf],
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
        ["(2 & 255) == 2", true],
        ["(1 & 255) != 1", false],
        ["(1 | 1) != 1", false],
        ["<int>1 + <int>2", 3]
    ];
    map<ConstEvalTest> m = {};
    foreach var t in tests {
        m[t[0]] = t;
    }
    return m;
}