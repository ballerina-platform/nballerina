import ballerina/test;
import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as s;

type ConstEvalTest [string, t:SingleValue];

@test:Config{ dataProvider: validConstExprs }
function testConstExpr(string src, t:SingleValue expected) {
    s:SourceFile file = s:createSourceFile([src], { filename: "<internal>" });
    s:Expr parsed = checkpanic s:parseExpression(file);
    ModuleSymbols mod = { tc: t:typeContext(new) };
    s:ConstDefn defn = {
        startPos: 0,
        endPos: 0,
        namePos: 0,
        name: "dummy",
        part: {
            file,
            importDecls: [],
            // JBUG I wrote `defns: table []` and got a crash at runtime rather than a compile-time error 
            defns: [],
            partIndex: 0
        },
        expr: parsed,
        td: (),
        vis: "public"
    };
    var result = resolveConstDefn(mod, defn);
    test:assertTrue(result !is error && result[1] == expected, "got: " + (result is error ? "error" : result[1].toBalString()));
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
