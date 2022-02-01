import ballerina/test;
import ballerina/io;

import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;
import ballerina/file;

const SOURCE_EXTENSION = ".bal";
const CASE_START = "// @case";
final int CASE_START_LENGTH = CASE_START.length();
const CASE_END = "// @end";

type Kind "V"|"E"|"UV"|"UE";
type ProductionRule "mod"|"stmt"|"expr"|"td";
type ParserTestCase [Kind, ProductionRule, string[], string[]];
type SingleStringParserTestCase [Kind, ProductionRule, string, string];
@test:Config {
    dataProvider: readParserTests
}
function testParser(Kind k, ProductionRule rule, string[] subject, string[] expected) returns err:Syntax|io:Error? {
    err:Syntax|SyntaxNode actualNode = syntaxNodeFromLines(k, rule, subject);
    if k.includes("F") || k.includes("U") {
        if k.includes("V") {
            test:assertTrue(actualNode is err:Syntax, "test marked as unimplemented/failing but parsed");
            return;
        }
        if k.includes("E") {
            test:assertTrue(actualNode !is err:Syntax, "test marked as unimplemented/failing but correctly got an error");
            return;
        }
        panic err:impossible("kind must be FE or FV but was '" + k + "'");
    }
    if k.includes("E") {
        if actualNode !is error {
            test:assertFail("expected a syntax error but got " + "\n".'join(...syntaxNodeToString(actualNode)));
        }
        return;
    }
    if actualNode is err:Syntax {
        panic err:impossible("can't normalize the actual tree");
    }
    SyntaxNode normalizedActualNode = normalizeSyntaxNode(actualNode);
    SyntaxNode expectedNode = normalizeSyntaxNode(check syntaxNodeFromLines(k, rule, expected));
    string[] actualNodeLines = syntaxNodeToString(normalizedActualNode);
    string[] expectedNodeLines = syntaxNodeToString(expectedNode);
    string errMsg = "actual node : " + "\n".'join(...actualNodeLines) + " is not the same as expected node : " + "\n".'join(...expectedNodeLines);
    test:assertTrue(validateNormalizedSyntaxNode(normalizedActualNode, expectedNode), errMsg);
    test:assertEquals(actualNodeLines, expected);
}

function syntaxNodeFromLines(Kind k, ProductionRule rule, string[] lines) returns err:Syntax|SyntaxNode {
    SyntaxNode node;
    SourceFile file = createSourceFile(lines, { filename: k });
    if rule == "mod" {
        node = rootSyntaxNode(check scanAndParseModulePart(file, 0));
    }
    else {
        Tokenizer tok = new (file);
        check tok.advance();
        if rule == "stmt" {
            node = syntaxNodeFromStmt(check parseStmt(tok));
        }
        else if rule == "expr" {
            node = syntaxNodeFromExpr(check parseExpr(tok), false);
        }
        else {
            node = syntaxNodeFromTypeDesc(check parseTypeDesc(tok), false);
        }
        if tok.current() != () {
            return err:syntax("superfluous input at end", d:location(file, tok.currentStartPos()));
        }
    }
    return node;
}

function validateNormalizedSyntaxNode(SyntaxNode normalizedTreeNode, SyntaxNode expectedTreeNode) returns boolean {
    if normalizedTreeNode is TerminalSyntaxNode && expectedTreeNode is TerminalSyntaxNode {
        return terminalSyntaxNodeToString(normalizedTreeNode) == terminalSyntaxNodeToString(expectedTreeNode);
    }
    if normalizedTreeNode is TerminalSyntaxNode || expectedTreeNode is TerminalSyntaxNode ||
       normalizedTreeNode.childNodes.length() != expectedTreeNode.childNodes.length() {
        return false;
    }
    else {
        foreach int i in 0 ..< normalizedTreeNode.childNodes.length() {
            if !validateNormalizedSyntaxNode(normalizedTreeNode.childNodes[i], expectedTreeNode.childNodes[i]) {
                return false;
            }
        }
        return true;
    }
}

type TokenizerTestCase [string, string[]];
type SingleStringTokenizerTestCase [string, string];
@test:Config {
    dataProvider: getTokenizerTests
}
function testTokenizer(string k, string[] lines) returns error? {
    SourceFile file = createSourceFile(lines, { filename: k });
    Tokenizer tok = new (file);
    while true {
        err:Syntax|Token? t = advance(tok, k, lines);
        if t is Token {
            d:LineColumn lc = file.lineColumn(tok.currentStartPos());
            string src = lines[lc[0] - 1];
            int tStart = lc[1];
            string tStr = tokenToString(t);
            string srcAtPos = src.substring(tStart, tStart + tStr.length());
            if t is [HEX_INT_LITERAL, string] || t is [DECIMAL_FP_NUMBER, string, FpTypeSuffix?] {
                // Canonicalize `0X` `F` `D` in source as `0x` `f` `d`.
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
        [STRING_LITERAL, var _] => {
            // can't recover original string, so
            // lets just return a minimal expectation
            return "\"";
        }
        [HEX_INT_LITERAL, var num] => {
            return "0x" + num.toLowerAscii();
        }
        [DECIMAL_FP_NUMBER, var digits, var suffix] => {
            return digits.toLowerAscii() + (suffix ?: "");
        }
        // JBUG #34522 when member types of `VariableLengthToken` are in-lined, compiler fails. #33694 is related.
        [_, var str] => {
            return str;
        }
    }
    return <string>t;
}

function getTokenizerTests() returns map<TokenizerTestCase>|error {
     map<TokenizerTestCase> all = check invalidTokenSourceFragments();
     int invalidCases = all.length();
     map<ParserTestCase> valid = check readParserTests();
     foreach var [k, v] in valid.entries() {
         all[k] = ["V", v[2]];
     }
     test:assertEquals(all.length(), invalidCases + valid.length(), "duplicate test");
     return all;
}

function invalidTokenSourceFragments() returns map<TokenizerTestCase>|error {
    SingleStringTokenizerTestCase[] sources = [
        ["E", string`"`],
        ["E", "'"],
        ["E", "`"],
        ["E", string`"\"`],
        ["E", string`"\a"`],
        ["E", string`\`],
        ["E", string`"${ "\n" }"`],
        ["E", string`"${ "\r" }"`],
        ["E", string`"\\`],
        ["E", string`"\u{}"`],
        // JBUG #33390 using template string complains about invalid unicodes
        ["E", "\"\\" + "u{D800}\""],
        ["E", "\"\\" + "u{DFFF}\""],
        ["E", "\"\\" + "u{110000}\""],
        ["E", string`"\u{X}"`],
        ["E", string`"\u{-6A}"`],
        ["E", string`"\u"`],
        ["E", string`"\u{"`],
        ["E", string`"\u{0"`]
    ];

    map<TokenizerTestCase> tests = {};
    foreach var s in sources {
        tests[s[1]] = [s[0], splitIntoLines(s[1])];
    }
    test:assertEquals(sources.length(), tests.length(), "duplicate test");
    return tests;
}

// JBUG can't use `record { string comment; }` instead `map<string>`
type ParserTestJson [Kind, string, string, string]|[Kind, string, string]|map<string>;

function readParserTests() returns map<ParserTestCase>|error {
    map<ParserTestCase> tests = {};

    ParserTestJson[] testData = check (check io:fileReadJson("modules/front.syntax/tests/data/testParser.json")).fromJsonWithType();
    foreach var s in testData {
        if s is string[] {
            string[] expected;
            string subject = s[2];
            string[] subjectLines = splitIntoLines(subject);

            if s.length() == 4 {
                expected = splitIntoLines(s[3]);
            }
            else {
                // canonical source, expected is same as source
                expected = subjectLines;
            }
            if tests.hasKey(subject) {
                test:assertFail("duplicate test: " + subject);
            }
            string rule = s[1];
            if rule is ProductionRule {
                tests[subject] = [s[0], rule, subjectLines, expected];
            }
            else {
                test:assertFail("invalid rule: " + rule);
            }
        }
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

        [Kind, string] baseParts = check splitTestName(base);
        string rule = baseParts[1];
        if rule is ProductionRule {
            tests["file:" + base] = [baseParts[0], rule, src, expected];
        }
        else {
            test:assertFail("invalid rule: " + rule);
        }
    }
    return tests;
}

function splitTestName(string base) returns [Kind, string]|error {
    int len = base.length();
    int kindPos = base.indexOf("-") ?: 0;
    string kind = base.substring(0, kindPos);
    if kind is Kind {
        int afterKindPos = min(kindPos + 1, len);
        int rulePos = base.indexOf("-", afterKindPos) ?: afterKindPos;
        string rule = base.substring(afterKindPos, rulePos);
        return [kind, rule];
    }
    return error("invalid test kind");
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
