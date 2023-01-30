import ballerina/io;
import ballerina/test;

import wso2/nballerina.comm.sexpr;
import wso2/nballerina.types as t;
import wso2/nballerina.types.sexpr as ts;

const string README_PATH = "./modules/types.sexpr/README.md";

@test:Config { dataProvider: mdTableLines }
function testSexprMd(string src, string expected, string? expectedAtoms) returns error? {
    var [env, types] = check typesFromString([{ lines: ["type TyName " + src + ";"]}]);
    t:SemType ty = types.get("TyName");

    var tc = t:typeContext(env);
    map<ts:Atom> atoms = {};
    ts:Type tySexpr = t:toSexpr(tc, ty, atoms);
    string? atomName = t:atomRefSexpr(tySexpr);
    sexpr:Data actual = atomName != () ? atoms.get(atomName) : tySexpr;
    test:assertEquals(sexpr:prettyPrint([actual]), expected, "failed type serialization for " + src);

    t:SemType roundtripTy = t:fromSexpr(env, t:atomTableFromSexpr(env, atoms), tySexpr);
    test:assertTrue(t:isSubtype(tc, roundtripTy, ty));
    test:assertTrue(t:isSubtype(tc, ty, roundtripTy));
}

function mdTableLines() returns map<[string, string, string?]>|io:Error {
    string[] lines = check io:fileReadLines(README_PATH);
    map<[string, string, string?]> result = {};
    int lineNo = 0;
    foreach string escapedLine in lines {
        lineNo += 1;
        if !escapedLine.startsWith("| `") {
            continue;
        }
        string line = unescapeMdTable(escapedLine);
        int[] t = tickPos(line);
        result[README_PATH + ":" + lineNo.toString()] = [line.substring(t[0], t[1] - 1),
                                                         line.substring(t[2], t[3] - 1),
                                                         t.length() > 4 ? line.substring(t[4], t[5] - 1) : ()];
    }
    return result;
}

function tickPos(string l) returns int[] {
    int[] ticks = [];
    int startPos = 0;
    while true {
        int? tickPos = l.indexOf("`", startPos) + 1;
        if tickPos == () {
            return ticks;
        }
        startPos = tickPos;
        ticks.push(tickPos);
    }
}

function unescapeMdTable(string row) returns string {
    int[] chars = from int c in row.toCodePointInts() where c != 0x5c select c; // 0x5c = \
    return checkpanic string:fromCodePointInts(chars);
}
