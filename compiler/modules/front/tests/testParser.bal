import ballerina/test;
import ballerina/io;

import wso2/nballerina.err;
import ballerina/file;

const SOURCE_EXTENSION = ".bal";
const CASE_START = "// @case";
final int CASE_START_LENGTH = CASE_START.length();
const CASE_END = "// @end";

// JBUG #31673 can't specify the first type to be "V"|"E"|ect
type ParserTestCase [string, string, string, string];
@test:Config {
    dataProvider: validTokenSourceFragments
}
function testParser(string k, string rule, string subject, string expected) returns err:Syntax|io:Error? {
    if k.includes("U") {
        // XXX validate unimplemented error is being returned
        return;
    }

    err:Syntax|Word[] parsed = reduceToWords(rule, subject);
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
        test:assertTrue(parsed is err:Syntax, "expected a syntax error");
        return;
    }
    var actual = wordsToString(check parsed);
    test:assertEquals(actual, expected, "wrong ast");
}

type TokenizerTestCase [string, string];
@test:Config {
    dataProvider: sourceFragments
}
function testTokenizer(string k, string src) returns error? {
    int[] lines = findLineStarts(src);
    Tokenizer tok = new (src);

    err:Syntax|Token? t = advance(tok, k, src);
    while t is Token {
        err:Position pos = tok.currentPos();
        // XXX change below after making indexInLine 1-indexed
        int tStart = lines[pos.lineNumber - 1] + pos.indexInLine;
        string tStr = tokenToString(t);
        string srcAtPos = src.substring(tStart, tStart + tStr.length());
        test:assertEquals(srcAtPos, tStr, "token: '" + tStr + "' source: '" + srcAtPos + "'");
        t = advance(tok, k, src);
    }
    if k.includes("E") {
        test:assertTrue(t is err:Syntax, "expected a syntax error");
    }
}

function advance(Tokenizer tok, string k, string subject) returns err:Syntax|Token? {
    err:Syntax? e = tok.advance();
    if e is err:Syntax {
        if k.includes("E") {
            return e;
        }
        else {
            panic error("tokenizer error for '" + subject + "'", e);
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
        [_, var str] => {
            return str;
        }
    }
    return <string>t;
}

function findLineStarts(string str) returns int[] {
    int[] lineStarts = [0];
    BiIterator itr = new(str);
    var [first, second] = itr.next();
    int i = 1;
    while !(first == () && second == ()) {
        if first == "\r" && second == "\n" {
            i += 1;
            _ = itr.next();
            lineStarts.push(i);
        }
        else if first == "\r" || first == "\n" {
            lineStarts.push(i);
        }
        i += 1;
        [first, second] = itr.next();
    }
    return lineStarts;
}

class BiIterator {
    StringIterator itr;
    boolean unstarted = true;
    Char? second = ();

    function init(string str) {
        self.itr = str.iterator();
    }

    function next() returns [string?, string?] {
        if self.unstarted {
            self.fillSecond();
            self.unstarted = false;
        }

        Char? first = self.second;
        self.fillSecond();
        return [first, self.second];
    }

    function fillSecond() {
        var next = self.itr.next();
        self.second = next != () ? next.value : ();
    }
}

function reduceToWords(string rule, string fragment) returns err:Syntax|Word[] {
    Word[] w = [];
    match rule {
        "expr" => {
            Tokenizer tok = new (fragment);
            check tok.advance();
            exprToWords(w, check parseExpr(tok));
        }
        "stmt" => {
            Tokenizer tok = new (fragment);
            check tok.advance();
            stmtToWords(w, check parseStmt(tok));
        }
        "mod" => {
            modulePartToWords(w, check parseModulePart(fragment));
        }
        _ => {
            panic err:impossible("unknown production rule " + rule);
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
    TokenizerTestCase[] sources = [
        ["OE", string`"`],
        ["OE", "'"],
        ["OE", "`"],
        ["OE", string`"\"`],
        ["OE", string`"\a"`],
        ["OE", string `\`],
        ["OE", "\"\n\""],
        ["OE", "\"\r\""],
        ["E", "obj..x(args)"],
        ["E", "01"],
        ["E", "-01"]
    ];

    map<TokenizerTestCase> tests = {};
    foreach var s in sources {
        tests[s[1]] = s;
    }
    return tests;
}

function validTokenSourceFragments() returns map<ParserTestCase>|error {
    ParserTestCase[] sources =
        [["E", "expr", "", ""],
        // literals
         ["V", "expr", "0", "0"],
         ["V", "expr", "1", "1"],
         ["V", "expr", "()", "()"],
         ["V", "expr", "null", "()"],
         ["V", "expr", "-()", "-()"],
         ["V", "expr", "-true", "-true"],
         ["V", "expr", "9223372036854775807", "9223372036854775807"],
         ["E", "expr", "9223372036854775808", ""],
         ["V", "expr", "true", "true"],
         ["V", "expr", "false", "false"],
         ["V", "expr", "\n0", "0"],
         ["V", "expr", "\r0", "0"],
         ["V", "expr", "\r\n0", "0"],
        // literals string
         ["UV", "expr", string`"\t"`, string`"\t"`],
         ["UV", "expr", "\"\t\"", "\"\t\""],
         ["UV", "expr", string`"\n"`, string`"\n"`],
         ["UV", "expr", string`"\r"`, string`"\r"`],
         ["UV", "expr", string`"\\"`, string`"\\"`],
         ["UV", "expr", string`"\""`, string`"\""`],
         ["UV", "expr", string`"what"`, string`"what"`],
         ["UV", "expr", string`"Say \"what\" again."`, string`"Say \"what\" again."`],
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
         // type cast
         ["V", "expr", "<int>x", "<int>x"],
         ["V", "expr", "< boolean > x", "<boolean>x"],
         ["V", "expr", "<int>x + <int>y", "(<int>x) + (<int>y)"],
         ["V", "expr", "<int><any>x", "<int>(<any>x)"],
         ["E", "expr", "<>x", ""],
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
          // method call
         ["V", "expr", "obj.x(1)", "obj.x(1)"],
         ["V", "expr", "(x+y).length()", "(x + y).length()"],
         ["V", "expr", "x+y.length()", "x + (y.length())"],
         ["V", "expr", "().length()", "().length()"],
         ["V", "expr", "null.length()", "().length()"],
         ["V", "expr", "true.length()", "true.length()"],
         ["V", "expr", "false.length()", "false.length()"],
         // XXX Output  will need to change when we do floats/decimal, because "42." is a float literal
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
         ["V", "stmt", "int i = 10;", "int i = 10;"],
         ["V", "stmt", "boolean i = 10;", "boolean i = 10;"],
         ["E", "stmt", "int i = a ... b ... c;", ""],
         ["V", "stmt", "boolean b = false;", "boolean b = false;"],
         ["V", "stmt", "any v = false;", "any v = false;"],
         ["V", "stmt", "any v = 1;", "any v = 1;"],
         ["V", "stmt", "any [ ] v = [1];", "any[] v = [1];"],
         ["E", "stmt", "any [x ] v = [1];", ""],
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
         ["E", "mod", "import;", ""],
         ["U", "mod", "import x;", "import x;"],
         ["V", "mod", "import x/y;", "import x/y;"]];
    map<ParserTestCase> tests = {};
    foreach var s in sources {
        tests[s[2]] = s;
    }
    var testFiles = check file:readDir("modules/front/tests/data");
    foreach var f in testFiles {
        string path = f.absPath;
        string base = check file:basename(path);
        if !base.endsWith(SOURCE_EXTENSION) {
            continue;
        }
        string src = check readCase(path);
        string parentDir = check file:parentPath(path);
        string canonFile = check file:joinPath(parentDir, canonFileName(base));
        string expected;
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

function readCase(string path) returns string|error {
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
    return  "\n".'join(...caseLines);
}

function canonFileName(string base) returns string{
    string sansExt = base.substring(0, base.length() - SOURCE_EXTENSION.length());
    return sansExt + "-canon" + SOURCE_EXTENSION;
}
