import ballerina/test;
import ballerina/io;

import wso2/nballerina.err;

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
        err:unreached("kind must be FE or FV");
    }
    if k.includes("E") {
        test:assertTrue(parsed is err:Syntax, "expected a syntax error for '" + subject);
        return;
    }
    test:assertTrue(parsed is Word[], "syntax error for '" + subject + "'");
    var actual = wordsToString(check parsed);
    test:assertEquals(actual, expected, "wrong ast");
    var last = tok.current();
    test:assertEquals(last, (), "extra token '" + last.toString() + "' at the end for '" + subject + "'" );
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

function sourceFragments() returns string[][] {
    return [["E", "expr", "", ""],
            // literals
            ["V", "expr", "0", "0"],
            ["V", "expr", "1", "1"],
            ["FE", "expr", "01", ""],
            ["V", "expr", "9223372036854775807", "9223372036854775807"],
            ["E", "expr", "9223372036854775808", ""],
            ["V", "expr", "true", "true"],
            ["V", "expr", "false", "false"],
            // unary op
            ["FV", "expr", "+ 1", "+ 1"],
            ["FV", "expr", "+1", "+ 1"],
            ["V", "expr", "-1", "- 1"],
            ["E", "expr", "1+", ""],
            // binary op
            ["V", "expr", "1 + 1", "1 + 1"],
            // ref
            ["V", "expr", "x", "x"],
            // paren
            ["V", "expr", "(0)", "0"],
            ["V", "expr", "( 1 )", "1"],
            ["V", "expr", "(( 1 ))", "1"],
            ["V", "expr", "(true)", "true"],
            ["E", "expr", "(", ""],
            ["E", "expr", ")", ""],
            ["E", "expr", "(1", ""],
            // statements
            ["E", "stmt", "", ""],
            ["E", "stmt", ";", ""],
            ["V", "stmt", "int i = 10;", "int i = 10;"],
            ["V", "stmt", "boolean i = 10;", "boolean i = 10;"],
            ["V", "stmt", "boolean b = false;", "boolean b = false;"],
            // statements with blocks
            ["FV", "stmt", "if ok {}", "if ok {\n" +
                                       "}"],
            ["V", "stmt", "if ok {int i = 10;}", "if ok {\n" +
                                                 "    int i = 10;\n" +
                                                 "}"]];
}