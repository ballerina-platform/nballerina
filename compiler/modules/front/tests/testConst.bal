import ballerina/test;
import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;
import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as s;


type ConstEvalTest [string,SimpleConst];

class TestFoldContext {
    // JBUG #33394 error if next line uncommented
    // *FoldContext;
    t:Context tc;
    d:File file;

    function init(d:File file) {
        self.tc = t:typeContext(new);
        self.file = file;
    }
    function lookupConst(string? prefix, string varName, s:Position pos) returns s:FLOAT_ZERO|t:OptSingleValue|FoldError {
        return ();
    }
    function semanticErr(d:Message msg, s:Position pos, error? cause = ()) returns err:Semantic {
        return err:semantic(msg, d:location(self.file, pos), cause=cause);
    }
    function typeContext() returns t:Context {
        return self.tc;
    }
    function resolveTypeDesc(s:TypeDesc td) returns err:Semantic|t:SemType {
        if td is s:SubsetBuiltinTypeDesc {
            return resolveBuiltinTypeDesc(td);
        }
        return err:semantic("TestFoldContext cannot resolve TypeDesc", d:location(self.file, td.startPos));
    }
    function isConstDefn() returns boolean => true;
}

@test:Config{ dataProvider: validConstExprs }
function testConstExpr(string src, SimpleConst expected) {
    s:SourceFile file = s:createSourceFile([src], { filename: "<internal>" });
    s:Expr parsed = checkpanic s:parseExpression(file);
    TestFoldContext cx = new(file);
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
