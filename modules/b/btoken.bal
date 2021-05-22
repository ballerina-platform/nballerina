type Token SingleCharDelim|MultiCharDelim|Keyword|VariableLengthToken;

const IDENTIFIER = 0;
const DECIMAL_NUMBER = 1;
const STRING_LITERAL = 2;

// Use string for DECIMAL_NUMBER so we don't get overflow on -int:MAX_VALUE
type VariableLengthToken [IDENTIFIER, string]|[DECIMAL_NUMBER, string]|[STRING_LITERAL, string];

type SingleCharDelim ";" | "-" | "(" | ")" | "[" | "]" | "{" | "}" | "<" | ">" | "?" | "&" | "|" | ":" | ",";
type MultiCharDelim "{|" | "|}" | "...";
type Keyword
    "any"
    | "boolean"
    | "byte"
    | "const"
    | "decimal"
    | "error"
    | "false"
    | "float"
    | "function"
    | "handle"
    | "int"
    | "json"
    | "map"
    | "never"
    | "readonly"
    | "record"
    | "returns"
    | "string"
    | "true"
    | "type"
    | "typedesc"
    | "xml"
    ;

const WS = "\n\r\t ";
const LOWER = "abcdefghijklmnopqrstuvwxyz";
const UPPER = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
const DIGIT = "0123456789";
const string ALPHA = LOWER + UPPER;
const string ALNUM = ALPHA + DIGIT;

// JBUG cannot use string:Char (this is backwards incompatible)
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

class Tokenizer {
    Token? current = ();
    private final StringIterator iter;
    private final string str;
    private Char? ungot = ();

    function init(string str) {
        self.iter = str.iterator();
        self.str = str;
    }
   
    // Moves to next token.record
    // Current token is () if there is no next token
    function advance() returns error? {
        self.current = check self.next();
    }

    private function next() returns Token?|error {
        while true {
            Char? ch = self.getc();
            if ch is () {
                return ();
            }
            else if WS.includes(ch)  {
                continue;
            }
            // Need to do mult-char delims before single-char delims.        
            else if ch == "{" {
                ch = self.getc();
                if ch == "|" {
                    return "{|";
                }
                else if !(ch is ()) {
                    self.ungetc(ch);
                }
                return "{";
            }
            else if ch == "|" {
                ch = self.getc();
                if ch == "}" {
                    return "|}";
                }
                else if !(ch is ()) {
                    self.ungetc(ch);
                }
                return "|";
            }
            else if ch == "." {
                if self.getc() != "." || self.getc() != "." {
                    break;
                }
                return "...";
            }
            else if ch is SingleCharDelim {
                return ch;
            }
            else if ALPHA.includes(ch) {
                string ident = ch;
                while true {
                    ch = self.getc();
                    if ch is () {
                        break;
                    }
                    else if !ALNUM.includes(ch) {
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
            else if DIGIT.includes(ch) {
                string digits = ch;
                while true {
                    ch = self.getc();
                    if ch is () {
                        break;
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
                string content = "";
                while true {
                    ch = self.getc();
                    if ch == "\"" {
                        break;
                    }
                    if ch is () || ch == "\n" || ch == "\r" {
                        return self.err("missing close quote");
                    }
                    else if ch == "\\" {
                        ch = self.getc();
                        if ch is () {
                            return self.err("missing close quote");
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
            else {
               break;
            }
        }
        return self.err("invalid tokens");
    }
    
    private function getc() returns Char? {
        Char? ch = self.ungot;
        if ch is () {
            return self.nextc();
        }
        else {
            self.ungot = ();
            return ch;
        }
    }

    private function ungetc(Char ch) {
        // we could support arbitrary numbers of unget, by allowing
        // the ungot string to be longer than 1
        // but we don't need it (yet)
        if self.ungot != () {
            panic error("double ungetc");
        }
        self.ungot = ch;
    }

    private function nextc() returns string? {
        var ret = self.iter.next();
        if ret is () {
            return ();
        }
        else {
            return ret.value;
        }
    }

    function expect(SingleCharDelim|MultiCharDelim|Keyword tok) returns error? {
        if self.current != tok {
            // JBUG should not need to cast here
            string message = ("expected '" + <string>tok + "'");
            Token? t = self.current;
            if t is string {
                // JBUG cast
                message += "; got '" + <string>t + "'";
            }
            return self.err(message);
        }
        check self.advance();
    }

    function err(string msg) returns error {
        return error(msg);
    }
}
