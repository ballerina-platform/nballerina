import ballerina/test;
import ballerina/io;

import wso2/nballerina.err;
import ballerina/regex;
import ballerina/file;

const SOURCE_EXTENSION = ".bal";

@test:Config {
    dataProvider: sourceFragments
}
function testParser(string k, string rule, string subject, string expected) returns err:Syntax|io:Error? {
    Tokenizer tok = new (subject);
    var tokErr = tok.advance();
    test:assertTrue(!(tokErr is error), "tokenizer error for '" + subject + "'");
    err:Syntax|Word[] parsed = reduceToWords(rule, tok);
    if k.includes("F") {
        if k.includes("V") {
            test:assertTrue(parsed is err:Syntax, "test marked as failing but parsed for '" + subject + "'");
            return;
        }
        if k.includes("E") {
            test:assertTrue(parsed is Word[], "test marked as failing but correctly got an error for '" + subject + "'");
            return;
        }
        err:unreached("kind must be FE or FV : " + k + expected);
    }
    if k.includes("E") {
        test:assertTrue(parsed is err:Syntax, "expected a syntax error for '" + subject);
        return;
    }
    if parsed is err:Syntax {
        error e = error("syntax error for '" + subject + "'", parsed);
        panic e;
    }
    var actual = wordsToString(check parsed);
    test:assertEquals(actual, expected, "wrong ast");
    var last = tok.advance();
    test:assertEquals(last, (), "extra token  at the end for '" + subject + "'" );

}

function reduceToWords(string rule, Tokenizer tok) returns err:Syntax|Word[] {
    Word[] w = [];
    match rule {
        "expr" => {
            exprToWords(w, check parseExpr(tok));
        }
        "stmt" => {
            stmtToWords(w, check parseStmt(tok));
        }
        _ => {
            err:unreached("unknown production rule " + rule);
        }
    }
    return w;
}

function sourceFragments() returns string[][]|error {

    string[][] s = 
        [["E", "expr", "", ""],
        // literals
         ["V", "expr", "0", "0"],
         ["V", "expr", "1", "1"],
         ["FE", "expr", "01", ""],
         ["V", "expr", "9223372036854775807", "9223372036854775807"],
         ["E", "expr", "9223372036854775808", ""],
         ["V", "expr", "true", "true"],
         ["V", "expr", "false", "false"],
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
         // binary op
         ["V", "expr", "1 + 1", "1 + 1"],
         ["V", "expr", "2 - a2", "2 - a2"],
         ["V", "expr", "a3 * a3", "a3 * a3"],
         ["V", "expr", "4 % 4", "4 % 4"],
         ["V", "expr", "4 == 4", "4 == 4"],
         ["V", "expr", "4 != 4", "4 != 4"],
         ["V", "expr", "5 < 4", "5 < 4"],
         ["V", "expr", "4 <= 4", "4 <= 4"],
         ["V", "expr", "4 > 4", "4 > 4"],
         ["V", "expr", "4 >= 4", "4 >= 4"],
         // binary op associativity
         ["V", "expr", "1 + 2 + 3", "(1 + 2) + 3"],
         ["V", "expr", "1 + 2 + 3 + 4", "((1 + 2) + 3) + 4"],
         ["V", "expr", "(1 + 2) + 3", "(1 + 2) + 3"],
         ["V", "expr", "1 + (2 + 3)", "1 + (2 + 3)"],
         ["V", "expr", "1 - 2 - 3", "(1 - 2) - 3"],
         ["V", "expr", "1 * 2 * 3", "(1 * 2) * 3"],
         ["V", "expr", "1 % 2 % 3", "(1 % 2) % 3"],
         ["V", "expr", "1 - 2 + 3", "(1 - 2) + 3"],
         ["V", "expr", "1--1", "1 - (-1)"],
         ["V", "expr", "1+-1", "1 + (-1)"],
         ["E", "expr", "1-+1", ""],
         // ref
         ["V", "expr", "x", "x"],
         ["V", "expr", "x1", "x1"],
         ["V", "expr", "x1a", "x1a"],
         // call
         ["V", "expr", "x()", "x()"],
         ["V", "expr", "x(a)", "x(a)"],
         ["V", "expr", "x(a, b)", "x(a, b)"],
         ["E", "expr", "x(,)", ""],
         ["E", "expr", "x(a,)", ""],
         ["E", "expr", "x(a b)", ""],
         ["V", "expr", "xxx(123, 12 + 2)", "xxx(123, 12 + 2)"],
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
         // statements
         ["E", "stmt", "", ""],
         ["E", "stmt", ";", ""],
         ["E", "stmt", "1;", ""],
         ["E", "stmt", "--a;", ""],
         ["E", "stmt", "a + b;", ""],
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
         ["V", "stmt", "boolean b = false;", "boolean b = false;"],
         ["E", "stmt", "if a noOp(1);", ""]];

    var cases = check file:readDir("modules/front/tests/data");
    foreach var caseFile in cases {
        string base = check file:basename(caseFile.absPath);
        if !base.endsWith(SOURCE_EXTENSION) {
            continue;
        }
        string case = check readCase(caseFile.absPath);
        string parentDir = check file:parentPath(caseFile.absPath);
        string canonCase = check file:joinPath(parentDir, canonCaseName(base));
        string expected = case;
        if check file:test(canonCase, file:EXISTS) {
            expected = check readCase(canonCase);
        }
        string[] baseParts = regex:split(base, "-");
        s.push([baseParts[0], baseParts[1], case, expected]);
        
    }
    return s;
}

function readCase(string path) returns string|error {
    string[] lines = check io:fileReadLines(path);
    string[] caseLines = [];
    boolean inCase = false;
    int indented = 0;
    foreach var l in lines {
        if regex:matches(l, "^\\s*//\\s*@case\\s*$") {
            inCase = true;
            indented = l.length() - regex:replaceFirst(l, "^\\s*", "").length();
            continue;
        }
        if regex:matches(l, "^\\s*//\\s*@end\\s*$") {
            break;
        }
        if inCase {
            caseLines.push(l.substring(4));
        }
    }
    return  "\n".'join(...caseLines);
}

function canonCaseName(string base) returns string{
    string sansExt = base.substring(0, base.length() - SOURCE_EXTENSION.length());
    return sansExt + "-canon" + SOURCE_EXTENSION;
}
