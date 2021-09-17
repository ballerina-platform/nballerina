import ballerina/test;
import ballerina/io;

import wso2/nballerina.err;
import ballerina/file;

const SOURCE_EXTENSION = ".bal";
const CASE_START = "// @case";
final int CASE_START_LENGTH = CASE_START.length();
const CASE_END = "// @end";

// JBUG #31673 can't specify the first type to be "V"|"E"|ect
type ParserTestCase [string, string, string[], string[]];
type SingleStringParserTestCase [string, string, string, string];
@test:Config {
    dataProvider: validTokenSourceFragments
}
function testParser(string k, string rule, string[] subject, string[] expected) returns err:Syntax|io:Error? {
    if k.includes("U") {
        // XXX validate unimplemented error is being returned
        return;
    }

    err:Syntax|Word[] parsed = reduceToWords(k, rule, subject);
    if k.includes("F") {
        if k.includes("V") {
            test:assertTrue(parsed is err:Syntax, "test marked as failing but parsed");
            return;
        }
        if k.includes("E") {
            test:assertTrue(parsed is Word[], "test marked as failing but correctly got an error");
            return;
        }
        panic err:impossible("kind must be FE or FV but was '" + k + "'");
    }
    if k.includes("E") {
        if !(parsed is error) {
            test:assertFail("expected a syntax error but got " + "\n".'join(...wordsToLines(parsed)));
        }
        return;
    }
    string[] actual = wordsToLines(check parsed);
    test:assertEquals(actual, expected, "wrong ast");
}

type TokenizerTestCase [string, string[]];
type SingleStringTokenizerTestCase [string, string];
@test:Config {
    dataProvider: sourceFragments
}
function testTokenizer(string k, string[] lines) returns error? {
    SourceFile file = createSourceFile(lines, { filename: k });
    Tokenizer tok = new (file);
    while true {
        err:Syntax|Token? t = advance(tok, k, lines);
        if t is Token {
            err:LineColumn lc = file.lineColumn(tok.currentPos());
            string src = lines[lc[0] - 1];
            int tStart = lc[1];
            string tStr = tokenToString(t);
            string srcAtPos = src.substring(tStart, tStart + tStr.length());
            if t is [HEX_INT_LITERAL, string] || t is [DECIMAL_FP_NUMBER, string, "f"?] {
                // need to normalize `0x` vs `0X` and `f`
                srcAtPos = srcAtPos.toLowerAscii();
            }
            test:assertEquals(srcAtPos, tStr, "token: '" + tStr + "' source: '" + srcAtPos + "'");
        }
        else {
            if k.includes("E") {
                test:assertTrue(t is err:Syntax, "expected a syntax error on: " + "\n".'join(...lines));
            }
            break;
        } 
    }
}

function advance(Tokenizer tok, string k, string[] lines) returns err:Syntax|Token? {
    err:Syntax? e = tok.advance();
    if e is err:Syntax {
        if k.includes("E") {
            return e;
        }
        else {
            panic error("tokenizer error for '" + "\n".'join(...lines) + "'", e);
        }
    }
    return tok.current();
}

function tokenToString(Token t) returns string {
    match t {
        [STRING_LITERAL, var str] => {
            // can't recover original string, so
            // lets just return a minimal expectation
            return "\"";
        }
        [HEX_INT_LITERAL, var num] => {
            return "0x" + num.toLowerAscii();
        }
        [DECIMAL_FP_NUMBER, var digits, var suffix] => {
            // JBUG #31988 can't use `suffix ?: ""`
            if suffix == () {
                return digits.toLowerAscii();
            }
            else {
                return digits.toLowerAscii() + suffix;
            }
        }
        [_, var str] => {
            return str;
        }
    }
    return <string>t;
}

function reduceToWords(string k, string rule, string[] fragment) returns err:Syntax|Word[] {
    Word[] w = [];
    if rule == "mod" {
        modulePartToWords(w, check scanAndParseModulePart(fragment, { filename: k }, 0));
    }
    else {
        SourceFile file = createSourceFile(fragment, { filename: k });
        Tokenizer tok = new (file);
        check tok.advance();
        match rule {
            "expr" => {
                exprToWords(w, check parseExpr(tok));
            }
            "stmt" => {
                stmtToWords(w, check parseStmt(tok));
            }
            "td" => {
                typeDescToWords(w, check parseTypeDesc(tok));
            }
            _ => {
                panic err:impossible("unknown production rule " + rule);
            }
        }
        if tok.current() != () {
            return err:syntax("superfluous input at end", err:locationFromFilename(k));
        }
    }
    return w;
}


function sourceFragments() returns map<TokenizerTestCase>|error {
     map<TokenizerTestCase> all = check invalidTokenSourceFragments();
     map<ParserTestCase> valid = check validTokenSourceFragments();
     foreach var [k, v] in valid.entries() {
         all[k] = ["V", v[2]];
     }
     return all;
}

function invalidTokenSourceFragments() returns map<TokenizerTestCase>|error {
    SingleStringTokenizerTestCase[] sources = [
        ["OE", string`"`],
        ["OE", "'"],
        ["OE", "`"],
        ["OE", string`"\"`],
        ["OE", string`"\a"`],
        // JBUG ballerina-plugin-vscode/#104 can't use string `\`
        ["OE", "\\"],
        ["OE", "\"\n\""],
        ["OE", "\"\r\""],
        ["E", "\"\n\""],
        ["E", "\"\r\""],
        ["E", "\"\\"],
         // JBUG #31444 #31713 #31717 can't write below literals in a simpler way
        ["E", "\"\\" + "u{}\""],
        ["E", "\"\\" + "u{D800}\""],
        ["E", "\"\\" + "u{DFFF}\""],
        ["E", "\"\\" + "u{110000}\""],
        ["E", "\"\\" + "u{X}\""],
        ["E", "\"\\" + "u{-6A}\""],
        ["E", "\"\\" + "u\""],
        ["E", "\"\\" + "u{\""],
        ["E", "\"\\" + "u{0\""]
    ];

    map<TokenizerTestCase> tests = {};
    foreach var s in sources {
        tests[s[1]] = [s[0], splitIntoLines(s[1])];
    }
    return tests;
}

function validTokenSourceFragments() returns map<ParserTestCase>|error {
    SingleStringParserTestCase[] sources =
        [["E", "expr", "", ""],
         // not lexical errors
         // "0" is valid token so tokenization will succeed
         ["E", "expr", "00"],
         ["E", "expr", "01"],
         ["E", "expr", "-01"],
         ["E", "expr", "0x"],
         // tokenizes as two dots
         ["E", "expr", "obj..x(args)"],
         // literals
         ["V", "expr", "0", "0"],
         ["V", "expr", "1", "1"],
         ["V", "expr", "0x1", "0x1"],
         ["V", "expr", "0x8000000000000000", "0x8000000000000000"], // syntactically valid
         ["V", "expr", "-0x8000000000000000", "-0x8000000000000000"],
         ["V", "expr", "-0x10", "-0x10"],
         ["V", "expr", "()", "()"],
         ["V", "expr", "null", "()"],
         ["V", "expr", "-()", "-()"],
         ["V", "expr", "-true", "-true"],
         ["V", "expr", "9223372036854775807", "9223372036854775807"],
         ["V", "expr", "9223372036854775808", "9223372036854775808"], // syntactically valid
         ["V", "expr", "true", "true"],
         ["V", "expr", "false", "false"],
         ["V", "expr", "\n0", "0"],
         ["V", "expr", "\r0", "0"],
         ["V", "expr", "\r\n0", "0"],
         ["V", "expr", "1.0", "1.0"],
         ["V", "expr", "100000000000000000000000000000.0", "100000000000000000000000000000.0"],
         ["V", "expr", "10.0e10000000", "10.0e10000000"],
         ["V", "expr", "-1E1F", "-1E1f"],
         // literals string
         ["V", "expr", string`"what"`, string`"what"`],
         ["V", "expr", string`"Say \"what\" again."`, string`"Say \"what\" again."`],
         // literals string escape
         ["V", "expr", "\"\t\"", string `"\t"`],
         ["V", "expr", string`"\t"`, string `"\t"`],
         ["V", "expr", string`"\n"`, string `"\n"`],
         ["V", "expr", string`"\r"`, string `"\r"`],
         ["V", "expr", string`"\\"`, string `"\\"`],
         ["V", "expr", string`"\""`, string`"\""`],
         // JBUG #31444 #31713 #31717 can't write below literals in a simpler way
         ["V", "expr", "\"\\" + "u{0}\"", "\"\\" + "u{0}\""],
         ["V", "expr", "\"\\" + "u{41}\"", string `"A"`],
         ["V", "expr", "\"\\" + "u{6A}\"", string `"j"`],
         ["V", "expr", "\"\\" + "u{6a}\"", string `"j"`],
         ["V", "expr", "\"\\" + "u{0000000041}\"", string `"A"`],
         ["V", "expr", "\"\\" + "u{d7fF}\"", "\"\\" + "u{D7FF}\""],
         ["V", "expr", "\"\\" + "u{E000}\"", "\"\\" + "u{E000}\""],
         ["V", "expr", "\"\\" + "u{FFFE}\"", "\"\\" + "u{FFFE}\""],
         ["V", "expr", "\"\\" + "u{FFFF}\"", "\"\\" + "u{FFFF}\""],
         ["V", "expr", "\"\\" + "u{10FFFF}\"", "\"\\" + "u{10FFFF}\""],
         ["V", "expr", "\"\\\\" + "u{41}\"", "\"\\\\" + "u{41}\""],
         // unary op
         ["E", "expr", "!", ""],
         ["E", "expr", "!-", ""],
         ["V", "expr", "-1", "-1"],
         ["V", "expr", "!1", "!1"],
         ["V", "expr", "!true", "!true"],
         ["E", "expr", "1+", ""],
         ["E", "expr", "*1", "1"],
         ["V", "expr", "--1", "-(-1)"],
         ["V", "expr", "!!!true", "!(!(!true))"],
         ["V", "expr", "a--b", "a - (-b)"],
         ["V", "expr", "~true", "~true"],
         ["V", "expr", "-~-x", "-(~(-x))"],
         ["V", "expr", "x-~y", "x - (~y)"],
         ["V", "expr", "~x-y", "(~x) - y"],
         ["V", "expr", "~x[i]", "~(x[i])"],
         // type cast
         ["V", "expr", "<int>x", "<int>x"],
         ["V", "expr", "< boolean > x", "<boolean>x"],
         ["V", "expr", "<int>x + <int>y", "(<int>x) + (<int>y)"],
         ["V", "expr", "<int><any>x", "<int>(<any>x)"],
         ["E", "expr", "<>x", ""],
         ["V", "expr", "1 < <int>2", "1 < (<int>2)"],
         ["E", "expr", "1 <<int> 2", ""],
         ["V", "expr", "<any[]>x", "<any[]>x"],
         ["V", "expr", "<map<any>>x", "<map<any>>x"],
         // type test
         ["V", "expr", "x is int", "x is int"],
         ["V", "expr", "x !is int", "x ! is int"],
         ["V", "expr", "x[1] is map<any>", "(x[1]) is map<any>"],
         ["V", "expr", "x is int == true", "(x is int) == true"],
         // binary op
         ["V", "expr", "1 + 1", "1 + 1"],
         ["V", "expr", "2 - a2", "2 - a2"],
         ["V", "expr", "a3 * a3", "a3 * a3"],
         ["V", "expr", "4 % 4", "4 % 4"],
         ["V", "expr", "4 == 4", "4 == 4"],
         ["V", "expr", "4 != 4", "4 != 4"],
         ["V", "expr", "1 === 2", "1 === 2"],
         ["V", "expr", "1 !== 2", "1 !== 2"],
         ["V", "expr", "x ===4", "x === 4"],
         ["V", "expr", "y!== 4", "y !== 4"],
         ["V", "expr", "5 < 4", "5 < 4"],
         ["V", "expr", "4 <= 4", "4 <= 4"],
         ["V", "expr", "4 > 4", "4 > 4"],
         ["V", "expr", "4 >= 4", "4 >= 4"],
         ["V", "expr", "a +\n b", "a + b"],
         ["V", "expr", "a +\r b", "a + b"],
         ["V", "expr", "a +\r\n b", "a + b"],
         ["V", "expr", "a +\n\r b", "a + b"],
         ["V", "expr", "a >> b", "a >> b"],
         ["V", "expr", "<int>a >> <int>b", "(<int>a) >> (<int>b)"],
         ["V", "expr", "a <<<int>b", "a << (<int>b)"],
         ["U", "expr", "<map<int>>a", "<map<int>>a"],
         ["V", "expr", "a << b", "a << b"],
         ["V", "expr", "a >>> b", "a >>> b"],
         ["E", "expr", "a <<< b", "a <<< b"],
         ["E", "expr", "a >>>> b", "a >>>> b"],
         ["V", "expr", "a | b", "a | b"],
         ["V", "expr", "a & b", "a & b"],
         ["V", "expr", "a ^ b", "a ^ b"],
         // binary op associativity
         ["V", "expr", "1 + 2 + 3", "(1 + 2) + 3"],
         ["V", "expr", "1 + 2 + 3 + 4", "((1 + 2) + 3) + 4"],
         ["V", "expr", "(1 + 2) + 3", "(1 + 2) + 3"],
         ["V", "expr", "1 + (2 + 3)", "1 + (2 + 3)"],
         ["V", "expr", "1 - 2 - 3", "(1 - 2) - 3"],
         ["V", "expr", "1 * 2 * 3", "(1 * 2) * 3"],
         ["V", "expr", "1 % 2 % 3", "(1 % 2) % 3"],
         ["V", "expr", "1 - 2 + 3", "(1 - 2) + 3"],
         ["V", "expr", "a >> b >> c", "(a >> b) >> c"],
         ["V", "expr", "a << b << c", "(a << b) << c"],
         ["V", "expr", "a >> b << c", "(a >> b) << c"],
         ["V", "expr", "a << b >> c", "(a << b) >> c"],
         ["V", "expr", "a >>> b >>> c", "(a >>> b) >>> c"],
         ["V", "expr", "a >> b >>> c", "(a >> b) >>> c"],
         ["V", "expr", "a << b >>> c", "(a << b) >>> c"],
         ["V", "expr", "a >>> b >> c", "(a >>> b) >> c"],
         ["V", "expr", "a >>> b << c", "(a >>> b) << c"],
         ["V", "expr", "1 <<x> 3", "(1 << x) > 3"],
         ["V", "expr", "a | b | c", "(a | b) | c"],
         ["V", "expr", "a | (b | c)", "a | (b | c)"],
         ["V", "expr", "a & b & c", "(a & b) & c"],
         ["V", "expr", "a & (b & c)", "a & (b & c)"],
         ["V", "expr", "a ^ b ^ c", "(a ^ b) ^ c"],
         ["V", "expr", "a ^ (b ^ c)", "a ^ (b ^ c)"],
         ["V", "expr", "1--1", "1 - (-1)"],
         ["V", "expr", "1+-1", "1 + (-1)"],
         ["E", "expr", "1-+1", ""],
         ["V", "expr", "x+1===y-3", "(x + 1) === (y - 3)"],
         ["V", "expr", "x*1!=y/3", "(x * 1) != (y / 3)"],
         // binary op precedence
         ["V", "expr", "(1 * 2) + 3", "(1 * 2) + 3"],
         ["V", "expr", "1 + 2 * 3", "1 + (2 * 3)"],
         ["V", "expr", "1 + (2 * 3)", "1 + (2 * 3)"],
         ["V", "expr", "a + b & c", "(a + b) & c"],
         ["V", "expr", "a & b + c", "a & (b + c)"],
         ["V", "expr", "a == b + c", "a == (b + c)"],
         ["V", "expr", "(a + b) == c", "(a + b) == c"],
         ["V", "expr", "a > b >> c", "a > (b >> c)"],
         ["V", "expr", "a >> b + c", "a >> (b + c)"],
         ["V", "expr", "a == b >>> c", "a == (b >>> c)"],
         ["V", "expr", "a >>> b - c", "a >>> (b - c)"],
         ["V", "expr", "a & b << c", "a & (b << c)"],
         ["V", "expr", "a << b * c", "a << (b * c)"],
         ["V", "expr", "a == b & c", "(a == b) & c"],
         ["V", "expr", "a & b == c", "a & (b == c)"],
         ["V", "expr", "a & b | c", "(a & b) | c"],
         ["V", "expr", "a | b & c", "a | (b & c)"],
         ["V", "expr", "a ^ b | c", "(a ^ b) | c"],
         ["V", "expr", "a | b ^ c", "a | (b ^ c)"],
         ["V", "expr", "a ^ b & c", "a ^ (b & c)"],
         ["V", "expr", "a & b ^ c", "(a & b) ^ c"],
         // ref
         ["V", "expr", "x", "x"],
         ["V", "expr", "x1", "x1"],
         ["V", "expr", "x1a", "x1a"],
         ["V", "expr", "truefalse", "truefalse"],
         // call
         ["V", "expr", "x()", "x()"],
         ["V", "expr", "x(a)", "x(a)"],
         ["V", "expr", "x(a, b)", "x(a, b)"],
         ["E", "expr", "x(,)", ""],
         ["E", "expr", "x(a,)", ""],
         ["E", "expr", "x(a b)", ""],
         ["V", "expr", "xxx(123, 12 + 2)", "xxx(123, 12 + 2)"],
         // list constructor
         ["V", "expr", "[ ]", "[]"],
         ["V", "expr", "[foo(42)]", "[foo(42)]"],
         ["V", "expr", "[1,a,true ]", "[1, a, true]"],
         ["V", "expr", "[ [] ]", "[[]]"],
         ["V", "expr", "[ [1,2],[3,4] ]", "[[1, 2], [3, 4]]"],
         ["E", "expr", "[1)", ""],
         ["E", "expr", "[1 2]", ""],
         ["E", "expr", "[1,]", ""],
         ["E", "expr", "[,1]", ""],
         // mapping constructor
         ["V", "expr", "{ }", "{ }"],
         ["V", "expr", "{x: 1, y: 2}", string`{ "x": 1, "y": 2 }`],
         ["V", "expr", string`{x: 1, y: 2, "z": 3}`, string`{ "x": 1, "y": 2, "z": 3 }`],
         ["V", "expr", string`{value: 1+2}`, string`{ "value": 1 + 2 }`],
         // method call
         ["V", "expr", "obj.x(1)", "obj.x(1)"],
         ["V", "expr", "(x+y).length()", "(x + y).length()"],
         ["V", "expr", "x+y.length()", "x + (y.length())"],
         ["V", "expr", "().length()", "().length()"],
         ["V", "expr", "null.length()", "().length()"],
         ["V", "expr", "true.length()", "true.length()"],
         ["V", "expr", "false.length()", "false.length()"],
         ["V", "expr", "-1.hexStr()", "-(1.hexStr())"],
         ["V", "expr", "-0xf.max()", "-(0xF.max())"],
         // XXX Output is illegal in 2021R1 but will be addressed in ballerina-spec#905
         ["V", "expr", "42 .length()", "42.length()"],
         ["V", "expr", "x.foo().bar()", "(x.foo()).bar()"],
         ["V", "expr", "x.foo()[n].bar()", "((x.foo())[n]).bar()"],
         ["E", "expr", "obj.(1)", ""],
         // member access
         ["V", "expr", "a [ 2 ]", "a[2]"],
         ["V", "expr", "v [ i + 1 ]", "v[i + 1]"],
         ["V", "expr", "a[m][n]", "(a[m])[n]"],
         ["V", "expr", "a[i]+b[j]", "(a[i]) + (b[j])"],
         // paren
         ["V", "expr", "(0)", "0"],
         ["V", "expr", "( 1 )", "1"],
         ["V", "expr", "( -2 )", "-2"],
         ["V", "expr", "(( 1 ))", "1"],
         ["V", "expr", "(true)", "true"],
         ["E", "expr", "(", ""],
         ["E", "expr", ")", ""],
         ["E", "expr", "(1", ""],
         ["V", "expr", "(v)", "v"],
         ["E", "expr", "(1+)", ""],
         ["V", "expr", "(f())", "f()"],
         ["E", "expr", "(f()())", ""],
         ["V", "expr", "(((x)))", "x"],
         // typedesc
         ["V", "td", "int[]", "int[]"],
         ["V", "td", "a|b", "a | b"],
         ["V", "td", "a|b[]", "a | (b[])"],
         ["V", "td", "(a|b)[]", "(a | b)[]"],
         // statement
         ["E", "stmt", ";", ""],
         ["E", "stmt", "1;", ""],
         ["E", "stmt", "--a;", ""],
         ["E", "stmt", "a + b;", ""],
         ["V", "stmt", "break;", "break;"],
         ["V", "stmt", "continue;", "continue;"],
         ["V", "stmt", "a:x(c,d);", "a:x(c, d);"],
         ["V", "stmt", "obj.x(c,d);", "obj.x(c, d);"],
         ["V", "stmt", "foo().bar(c,d);", "foo().bar(c, d);"],
         ["V", "stmt", "true.ok();", "true.ok();"], // not semantically valid
         ["V", "stmt", "null.ok();", "().ok();"], // not semantically valid
         ["V", "stmt", "().ok();", "().ok();"], // not semantically valid
         ["V", "stmt", "(x|y).ok();", "(x | y).ok();"], // not semantically valid
         ["V", "stmt", "foo()[0].push(1);", "(foo()[0]).push(1);"],
         ["V", "stmt", "foo[1].push(2);", "(foo[1]).push(2);"],
         ["E", "stmt", "foo.push(1)[0];", ""],
         ["E", "stmt", "foo[0];", ""],
         ["V", "stmt", "x = a >> b;", "x = a >> b;"],
         ["UE", "expr", string`string w = "Say "what" one more time.";`, ""],
         // statement return
         ["V", "stmt", "return;", "return;"],
         ["V", "stmt", "return ok;", "return ok;"],
         ["E", "stmt", "return a, b;", "return a, b;"],
         // statement var decl
         ["E", "stmt", "int 1i = 0;", ""],
         ["E", "stmt", "int i = 1(-1);", ""],
         ["E", "stmt", "int i = (-1)1;", ""],
         ["E", "stmt", "int i = 1 2;", ""],
         ["E", "stmt", "(int i = 10);", ""],
         ["V", "stmt", "int x = a != b;", "int x = a != b;"],
         ["E", "stmt", "int i = {}", ""],
         ["E", "stmt", "int x = a =! b;", ""],
         ["E", "stmt", "int i = 0xBABE1F1SH;", ""],
         ["V", "stmt", "int i = 10;", "int i = 10;"],
         ["V", "stmt", "boolean i = 10;", "boolean i = 10;"],
         ["E", "stmt", "int i = a ... b ... c;", ""],
         ["V", "stmt", "final int i = 1;", "final int i = 1;"],
         ["V", "stmt", "boolean b = false;", "boolean b = false;"],
         ["V", "stmt", "any v = false;", "any v = false;"],
         ["V", "stmt", "any v = 1;", "any v = 1;"],
         ["V", "stmt", "any [ ] v = [1];", "any[] v = [1];"],
         ["E", "stmt", "any [x ] v = [1];", ""],
         ["V", "stmt", "map<any> v = {x:1};", string`map<any> v = { "x": 1 };`],
         // statement assign
         ["E", "stmt", "a = b = d;", ""],
         ["V", "stmt", "a = 0;", "a = 0;"],
         ["V", "stmt", "a = 0 == 1;", "a = 0 == 1;"],
         ["E", "stmt", "a + b = c + d;", ""],
         ["V", "stmt", "a = 0 != 1;", "a = 0 != 1;"],
         // statement if else
         ["E", "stmt", "if a noOp(1);", ""],
         ["E", "stmt", "if a {} else return;", ""],
         ["E", "stmt", "if a = b {}", ""],
         // module parts
         ["U", "mod", "type ER error<map<readonly>>;", ""],
         ["E", "mod", "import;", ""],
         ["U", "mod", "import x;", "import x;"],
         ["V", "mod", "import x/y;", "import x/y;"]];
    map<ParserTestCase> tests = {};
    foreach var s in sources {
        tests[s[2]] = [s[0], s[1], splitIntoLines(s[2]), [s[3]]];
    }
    var testFiles = check file:readDir("modules/front.syntax/tests/data");
    foreach var f in testFiles {
        string path = f.absPath;
        string base = check file:basename(path);
        if !base.endsWith(SOURCE_EXTENSION) {
            continue;
        }
        string[] src = check readCase(path);
        string parentDir = check file:parentPath(path);
        string canonFile = check file:joinPath(parentDir, canonFileName(base));
        string[] expected;
        if check file:test(canonFile, file:EXISTS) {
            expected = check readCase(canonFile);
        } else {
            expected = src;
        }

        string[] baseParts = splitTestName(base);
        tests["file:" + base] = [baseParts[0], baseParts[1], src, expected];
    }
    return tests;
}
function splitTestName(string base) returns [string, string] {
    int len = base.length();
    int kindPos = base.indexOf("-") ?: 0;
    string kind = base.substring(0, kindPos);
    int afterKindPos = min(kindPos + 1, len);
    int rulePos = base.indexOf("-", afterKindPos) ?: afterKindPos;
    string rule = base.substring(afterKindPos, rulePos);
    return [kind, rule];
}

function min(int a, int b) returns int {
    if a < b {
        return a;
    }
    return b;
}

function readCase(string path) returns string[]|error {
    string[] lines = check io:fileReadLines(path);
    string[] caseLines = [];
    boolean inCase = false;
    int indented = 0;
    foreach var line in lines {
        string trimLine = line.trim();
        if  trimLine == CASE_START && line.endsWith(CASE_START) {
            inCase = true;
            indented = line.length() - CASE_START_LENGTH;
            continue;
        }
        if trimLine == CASE_END {
            break;
        }
        if inCase {
            caseLines.push(line.substring(indented));
        }
    }
    return caseLines;
}

function canonFileName(string base) returns string{
    string sansExt = base.substring(0, base.length() - SOURCE_EXTENSION.length());
    return sansExt + "-canon" + SOURCE_EXTENSION;
}
