import wso2/nballerina.err;

type Token FixedToken|VariableLengthToken;
type FixedToken SingleCharDelim|MultiCharDelim|Keyword;

const IDENTIFIER = 0;
const DECIMAL_NUMBER = 1;
const HEX_INT_LITERAL = 2;
const DECIMAL_FP_NUMBER = 3;
const STRING_LITERAL = 4;

const N_VARIABLE_TOKENS = 5;

type VariableTokenCode IDENTIFIER|DECIMAL_NUMBER|STRING_LITERAL|HEX_INT_LITERAL|DECIMAL_FP_NUMBER;

type FpTypeSuffix "f";

// Use string for DECIMAL_NUMBER so we don't get overflow on -int:MAX_VALUE
type VariableLengthToken [IDENTIFIER, string]|[DECIMAL_NUMBER, string]|[STRING_LITERAL, string]|[HEX_INT_LITERAL, string]|[DECIMAL_FP_NUMBER, string, FpTypeSuffix?];

// Some of these are not yet used by the grammar
type SingleCharDelim ";" | "+" | "-" | "*" |"(" | ")" | "[" | "]" | "{" | "}" | "<" | ">" | "?" | "&" | "^" | "|" | "!" | ":" | "," | "/" | "%" | "=" | "." | "~" | "_";
type MultiCharDelim "{|" | "|}" | "..." | "..<" | "==" | "!=" | ">=" | "<=" | "===" | "!==" | "<<" | ">>" | ">>>" | "=>";
type Keyword
    "any"
    | "boolean"
    | "byte"
    | "const"
    | "decimal"
    | "error"
    | "false"
    | "final"
    | "float"
    | "foreach"
    | "function"
    | "handle"
    | "in"
    | "is"
    | "int"
    | "json"
    | "map"
    | "never"
    | "null"
    | "readonly"
    | "record"
    | "return"
    | "returns"
    | "string"
    | "true"
    | "type"
    | "typedesc"
    | "xml"
    | "if"
    | "else"
    | "while"
    | "continue"
    | "break"
    | "public"
    | "import"
    ;

const WS = "\n\r\t ";
const LOWER = "abcdefghijklmnopqrstuvwxyz";
const UPPER = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
const DIGIT = "0123456789";
const string HEX_DIGIT = DIGIT + "abcdefABCDEF";
const string ALPHA = LOWER + UPPER;
const string IDENT = ALPHA + DIGIT + "_";

// JBUG cannot use string:Char #31668 #31660
type Char string;

type StringIterator object {
    public isolated function next() returns record {|
        Char value;
    |}?;
};

final readonly & map<Char> ESCAPES = {
    "\\": "\\",
    "\"": "\"",
    "n": "\n",
    "r": "\r",
    "t": "\t"
};

final readonly & map<MultiCharDelim> WITH_EQUALS = {
    "=": "==",
    "!": "!=",
    "<": "<=",
    ">": ">="
};

const MODE_NORMAL = 0;
const MODE_TYPE_DESC = 1;
type Mode MODE_NORMAL|MODE_TYPE_DESC;

// JBUG this avoids bloat that causes `method is too large` errors
function toToken(string t) returns Token {
    return <Token>t;
}

class Tokenizer {
    Token? cur = ();
    // The index in `str` of the first character of `cur`
    private int startIndex = 0;
    // Index of character starting line on which startPos occurs
    private int lineStartIndex = 0;
    // Line number of line starting at lineStartIndex
    private int lineNumber = 1;
    private final string str;

    private final StringIterator iter;
    private Char[] ungot = [];
    // Number of characters returned by `iter`
    private int nextCount = 0;
    private Mode mode = MODE_NORMAL;

    function init(string str) {
        self.iter = str.iterator();
        self.str = str;
    }
   
    // Moves to next token.record
    // Current token is () if there is no next token
    function advance() returns err:Syntax? {
        self.cur = check self.next();
    }

    function current() returns Token? {
        return self.cur;
    }

    function setMode(Mode m) {
        self.mode = m;
    }

    function currentPos() returns err:Position {
        return {
            lineNumber: self.lineNumber,
            indexInLine: self.startIndex - self.lineStartIndex
        };
    }

    private function next() returns Token?|err:Syntax {
        // This loops in order to skip over comments
        while true {
            Char? ch = self.startToken();
            if ch is () {
                return ();
            }
            else if ch == "/" {
                ch = self.getc();
                if ch == "/" {
                    // Skip the comment and loop
                    while true {
                        ch = self.getc();
                        if ch is () {
                            break;
                        }
                        else if self.isLineTerminator(ch) {
                            // handle line counting in startToken
                            self.ungetc(ch);
                            break;
                        }
                    }
                    continue;
                }
                else if !(ch is ()) {
                    self.ungetc(ch);
                }
                return toToken("/");
            }
            // Need to do mult-char delims before single-char delims.        
            else if ch == "{" {
                ch = self.getc();
                if ch == "|" {
                    return toToken("{|");
                }
                else if !(ch is ()) {
                    self.ungetc(ch);
                }
                return toToken("{");
            }
            else if ch == "|" {
                ch = self.getc();
                if ch == "}" {
                    return toToken("|}");
                }
                else if !(ch is ()) {
                    self.ungetc(ch);
                }
                return toToken("|");
            }
            else if ch == "." {
                ch = self.getc();
                if ch == "." {
                    ch = self.getc();
                    if ch == "." {
                        return toToken("...");
                    }
                    if ch == "<" {
                        return toToken("..<");
                    }
                    else {
                        break;
                    }
                }
                else if !(ch is ()) {
                    self.ungetc(ch);
                    if DIGIT.includes(ch) {
                        return self.nextDecimalFpNumber("");
                    }
                }
                return toToken(".");
            }
            else if ch is SingleCharDelim {
                return self.nextSingleCharDelimPrefixed(ch);
            }
            else if ALPHA.includes(ch) {
                string ident = ch;
                while true {
                    ch = self.getc();
                    if ch is () {
                        break;
                    }
                    else if !IDENT.includes(ch) {
                        self.ungetc(ch);
                        break;
                    }
                    else {
                        ident += ch;
                    }
                }
                if ident is Keyword {
                    return ident;
                }
                return [IDENTIFIER, ident];
            }
            else if ch == "0" {
                ch = self.getc();
                if ch == "x" || ch == "X" {
                    string hex = "";
                    while true {
                        ch = self.getc();
                        if ch is () {
                            break;
                        }
                        else if !HEX_DIGIT.includes(ch) {
                            self.ungetc(ch);
                            break;
                        }
                        else {
                            hex += ch;
                        }
                    }
                    if hex.length() > 0 {
                        return [HEX_INT_LITERAL, hex];
                    }
                    else {
                        return self.err("missing digits in hex literal");
                    }
                }
                else if !(ch is ()) {
                    if ch == "." {
                        return self.nextDecimalFpNumber("0");
                    }
                    else if ch == "e" || ch == "E" {
                        return self.nextDecimalExpFPNumber("0", ch);
                    }
                    else if ch == "f" || ch == "F" {
                        return [DECIMAL_FP_NUMBER, "0", "f"];
                    }
                    else if DIGIT.includes(ch) {
                        return self.err("leading zeros not allowed in integer literals");
                    }
                    else {
                        self.ungetc(ch);
                    }
                }
                return [DECIMAL_NUMBER, "0"];
            }
            else if DIGIT.includes(ch) {
                string digits = ch;
                while true {
                    ch = self.getc();
                    if ch is () {
                        break;
                    }
                    else if ch == "." {
                        return self.nextDecimalFpNumber(digits);
                    }
                    else if ch == "e" || ch == "E" {
                        return self.nextDecimalExpFPNumber(digits, ch);
                    }
                    else if ch == "f" || ch == "F" {
                        return [DECIMAL_FP_NUMBER, digits, "f"];
                    }
                    else if !DIGIT.includes(ch) {
                        self.ungetc(ch);
                        break;
                    }
                    else {
                        digits += ch;
                    }
                }
                return [DECIMAL_NUMBER, digits];
            }
            else if ch == "\"" {
                return self.nextStr();
            }
            else {
               break;
            }
        }
        return self.err("invalid token");
    }

    private function nextDecimalFpNumber(string preDot) returns Token|err:Syntax {
        string digits = preDot + ".";
        Char? ch = self.getc();
        if ch is () { 
            self.ungetc(".");
            return [DECIMAL_NUMBER, preDot];
        }
        else if !DIGIT.includes(ch) {
            self.ungetc(ch, ".");
            return [DECIMAL_NUMBER, preDot];
        } else {
            digits += ch;
        }

        while true {
            ch = self.getc();
            if ch is () {
                break;
            }
            else if DIGIT.includes(ch) {
                digits += ch;
            }
            else if ch == "e" || ch == "E" {
                return self.nextDecimalExpFPNumber(digits, ch);
            }
            else if ch == "f" || ch == "F" {
                return [DECIMAL_FP_NUMBER, digits, "f"];
            }
            else {
                self.ungetc(ch);
                break;
            }
        }
        return [DECIMAL_FP_NUMBER, digits];
    }

    private function nextDecimalExpFPNumber(string preExp, Char e) returns Token|err:Syntax {
        Char? ch = self.getc();
        string digits;
        if ch == "-" {
            digits = ch;
            ch = self.getc();
            if ch == () {
                self.ungetc("-", e);
                return [DECIMAL_FP_NUMBER, preExp];
            }
            else if !DIGIT.includes(ch) {
                self.ungetc(ch, "-", e);
                return [DECIMAL_FP_NUMBER, preExp];
            } else {
                digits += ch;
            }
        }
        else {
            if ch == () {
                self.ungetc(e);
                return [DECIMAL_FP_NUMBER, preExp];
            }
            else if !DIGIT.includes(ch) {
                self.ungetc(ch, e);
                return [DECIMAL_FP_NUMBER, preExp];
            } else {
                digits = ch;
            }
        }

        while true {
            ch = self.getc();
            if ch is () {
                break;
            }
            else if DIGIT.includes(ch) {
                digits += ch;
            }
            else if ch == "f" || ch == "F" {
                return [DECIMAL_FP_NUMBER, preExp + e + digits, "f"];
            }
            else {
                self.ungetc(ch);
                break;
            }
        }

        return [DECIMAL_FP_NUMBER, preExp + e + digits];
    }

    private function nextSingleCharDelimPrefixed(SingleCharDelim ch) returns Token?|err:Syntax {
        MultiCharDelim? multi = WITH_EQUALS[ch];
        if !(multi is ()) {
            Char? peekCh = self.getc();
            if peekCh == "=" {
                if multi == "==" || multi == "!=" {
                    peekCh = self.getc();
                    if peekCh == "=" {
                        return multi == "==" ? toToken("===") : toToken("!==");
                    }
                    else if !(peekCh is ()) {
                        self.ungetc(peekCh);
                    }
                }
                return multi;
            }
            else if !(peekCh is ()) {
                self.ungetc(peekCh);
            }
        }
        if ch == ">" && self.mode == MODE_NORMAL {
            Char? peekCh = self.getc();
            if peekCh == ">" {
                peekCh = self.getc();
                if peekCh == ">" {
                    return toToken(">>>");
                } else if !(peekCh is ()) {
                    self.ungetc(peekCh);
                }
                return toToken(">>");
            }
            else if !(peekCh is ()) {
                self.ungetc(peekCh);
            }
        }
        else if ch == "<" {
            Char? peekCh = self.getc();
            if peekCh == "<" {
                return toToken("<<");
            }
            else if !(peekCh is ()) {
                self.ungetc(peekCh);
            }
        }
        else if ch == "=" {
            Char? peekCh = self.getc();
            if peekCh == ">" {
                return toToken("=>");
            }
            else if !(peekCh is ()) {
                self.ungetc(peekCh);
            }
            return toToken("=");
        }
        return ch;
    }

    private function nextStr() returns Token?|err:Syntax {
        string content = "";
        while true {
            Char? ch = self.getc();
            if ch == "\"" {
                break;
            }
            if ch is () || self.isLineTerminator(ch) {
                return self.err("missing close quote");
            }
            else if ch == "\\" {
                ch = self.getc();
                if ch is () {
                    return self.err("missing close quote");
                }
                else if ch is "u" {
                    ch = self.getc();
                    if ch == "{" {
                        string hex = "";
                        ch = self.getc();
                        while ch != "}"  {
                            if !(ch is ()) {
                                hex += ch;
                            }
                            else {
                                return self.err("missing closing brace in numeric escape");
                            }
                            ch = self.getc();
                        }
                        int|error chCode = int:fromHexString(hex);
                        if chCode is error {
                            return self.err("invalid hex string in numeric escape");
                        }
                        else {
                            // JBUG #31778 shouldn't need this check, fromCodePointInt should return an error
                            if (0xD800 <= chCode && chCode <= 0xDFFF) {
                                return self.err("invalid codepoint in numeric escape");
                            }
                            string:Char|error unescapedCh = string:fromCodePointInt(chCode);
                            if unescapedCh is error {
                                return self.err("invalid codepoint in numeric escape");
                            } else {
                                content += <string>unescapedCh;
                            }
                        }
                    }
                    else {
                        return self.err("missing opening brace in numeric escape");
                    }
                }
                else {
                    ch = ESCAPES[ch];
                    if ch is () {
                        return self.err("bad character after backslash");
                    }
                    else {
                        content += ch;
                    }
                }
            }
            else {
                content += ch;
            }
        }
        return [STRING_LITERAL, content];
    }
    
    private function isLineTerminator(Char ch) returns boolean {
        return ch == "\n" || ch == "\r";
    }

    // Returns first non white-space character, if any
    // Updates startIndex, lineStartIndex and lineNumber
    private function startToken() returns Char? {
        // the previous character if it ended a line, otherwise ()
        Char? prevCharLineEnd = ();
        while true {
            Char? ch = self.getc();
            if ch is () {
                break;
            }
            else {
                if prevCharLineEnd !== () {
                    // Line terminators are part of the line they terminate
                    // Line numbers increase on the first character of a line
                    self.lineStartIndex = self.getCount() - 1;
                    // For \r\n, the line number will be bumped on the
                    // character after the \n
                    if prevCharLineEnd != "\r" || ch != "\n" {
                        self.lineNumber += 1;
                    }
                }
                if ch == "\n" || ch == "\r" {
                    prevCharLineEnd = ch;
                }
                else if ch == " " || ch == "\t" {
                    prevCharLineEnd = ();
                }
                else {
                    self.startIndex = self.getCount() - 1;
                    return ch;
                }
            }
        }
        self.startIndex = self.getCount();
        return ();
    }


    // number of characters returned by getc and not ungot
    private function getCount() returns int {
        return self.nextCount - self.ungot.length();
    }

    private function getc() returns Char? {
        if self.ungot.length() == 0 {
            return self.nextc();
        }
        else {
            return self.ungot.pop();
        }
    }

    private function ungetc(Char... ch) {
        self.ungot.push(...ch);
    }

    private function nextc() returns string? {
        var ret = self.iter.next();
        if ret is () {
            return ();
        }
        else {
            self.nextCount += 1;
            return ret.value;
        }
    }

    function expect(SingleCharDelim|MultiCharDelim|Keyword tok) returns err:Syntax? {
        if self.cur != tok {
            err:Template msg;
            Token? t = self.cur;
            if t is string {
                msg = `expected ${tok}; got ${t}`;
            }
            else {
                msg = `expected ${tok}`;
            }
            return self.err(msg);
        }
        check self.advance();
    }

    function err(err:Message msg) returns err:Syntax {
        return err:syntax(msg, self.currentPos());
    }
}
