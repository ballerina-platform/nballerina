import wso2/nballerina.err;

type Token FixedToken|readonly & VariableLengthToken;
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
type SingleCharDelim ";" | "+" | "-" | "*" |"(" | ")" | "[" | "]" | "{" | "}" | "<" | ">" | "?" | "&" | "^" | "|" | "!" | ":" | "," | "/" | "%" | "=" | "." | "~";
type MultiCharDelim "{|" | "|}" | "..." | "..<" | "==" | "!=" | ">=" | "<=" | "===" | "!==" | "<<" | ">>" | ">>>" | "=>" | CompoundAssignDelim;
type CompoundAssignDelim "+=" | "-=" | "/=" | "*=" | "&=" | "|=" | "^=" | "<<=" | ">>=" | ">>>=";
type Keyword
    "any"
    | "as"
    | "boolean"
    | "byte"
    | "check"
    | "checkpanic"
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
    | "match"
    | "never"
    | "null"
    | "panic"
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
    | "_"
    ;


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


const MODE_NORMAL = 0;
const MODE_TYPE_DESC = 1;
type Mode MODE_NORMAL|MODE_TYPE_DESC;

// JBUG this avoids bloat that causes `method is too large` errors
function toToken(string t) returns Token {
    return <Token>t;
}

type TokenizerState readonly & record {
    SourceFile file;
    int lineIndex;
    int fragCodeIndex;
    int codePointIndex;
    int fragmentIndex;
    int tokenStartCodePointIndex;
    Mode mode;
    Token? curTok;
};

class Tokenizer {
    private final ScannedLine[] lines;
    // index of nextLine to be scanned
    private int lineIndex = 0;
    private readonly & FragCode[] fragCodes = [];
    private readonly & string[] fragments = [];
    private int fragCodeIndex = 0;
    private int codePointIndex = 0;
    private int fragmentIndex = 0;
    private int tokenStartCodePointIndex = 0;
    private Mode mode = MODE_NORMAL;
    final SourceFile file;

    Token? curTok = ();

    function init(SourceFile file) {
        self.lines = file.scannedLines();
        self.file = file;
    }
    
    function advance() returns err:Syntax? {
        string str = "";
        self.tokenStartCodePointIndex = self.codePointIndex;
        while true {
            int fragCodeIndex = self.fragCodeIndex;
            FragCode[] fragCodes = self.fragCodes;
            if fragCodeIndex >= fragCodes.length() {
                if !self.advanceLine() {
                    self.curTok = ();
                    return;
                }
                continue;
            }
            FragCode fragCode = fragCodes[fragCodeIndex];
            fragCodeIndex += 1;
            self.fragCodeIndex = fragCodeIndex;                
            match fragCode {
                FRAG_STRING_OPEN => {
                    self.codePointIndex += 1;
                }
                FRAG_STRING_CLOSE => {
                    self.codePointIndex += 1;
                    self.curTok = [STRING_LITERAL, str];
                    return;
                }
                FRAG_STRING_CHARS => {
                    str += self.getFragment();
                }
                FRAG_STRING_CHAR_ESCAPE => {
                    str += self.getFragment()[1];
                }
                FRAG_STRING_CONTROL_ESCAPE => {
                    str += ESCAPES.get(self.getFragment()[1]);
                }
                FRAG_STRING_NUMERIC_ESCAPE => {
                    string fragment = self.getFragment();
                    string|error ch = unicodeEscapeValue(fragment);
                    if ch is error {
                        self.tokenStartCodePointIndex = self.codePointIndex - fragment.length();
                        return self.err("invalid numeric escape");
                    }
                    else {
                        str += ch;
                    }
                }
                FRAG_GREATER_THAN => {
                    if self.mode == MODE_NORMAL && fragCodeIndex < fragCodes.length() && fragCodes[fragCodeIndex] == FRAG_GREATER_THAN {
                        if fragCodeIndex + 1 < fragCodes.length() && fragCodes[fragCodeIndex + 1] == FRAG_GREATER_THAN {
                            self.fragCodeIndex += 2;
                            self.codePointIndex += 3;
                            self.curTok = toToken(">>>");
                        }
                        else {
                            self.fragCodeIndex += 1;
                            self.codePointIndex += 2;
                            self.curTok = toToken(">>");
                        }
                    }
                    else {
                        self.codePointIndex += 1;
                        self.curTok = toToken(">");
                    }
                    return;
                }
                FRAG_INVALID => {
                    // XXX position not right within string
                    return self.err("invalid token");
                }
                FRAG_WHITESPACE => {
                    _ = self.getFragment();
                    self.tokenStartCodePointIndex = self.codePointIndex;
                }
                FRAG_COMMENT => {
                    // nothing to do
                    // this must be last thing on the line
                    // so we don't need to update all the counters
                }
                FRAG_DECIMAL_NUMBER => {
                    self.curTok = [DECIMAL_NUMBER, self.getFragment()];
                    return;
                }
                FRAG_IDENTIFIER => {
                    self.curTok = [IDENTIFIER, self.getFragment()];
                    return;
                }
                FRAG_HEX_NUMBER => {
                    // skip the 0x
                    self.curTok = [HEX_INT_LITERAL, self.getFragment().substring(2)];
                    return;
                }
                FRAG_DECIMAL_FP_NUMBER_F => {
                    string number = self.getFragment();
                    self.curTok = [DECIMAL_FP_NUMBER, number.substring(0, number.length() - 1), "f"];
                    return;
                }
                FRAG_DECIMAL_FP_NUMBER => {
                    self.curTok = [DECIMAL_FP_NUMBER, self.getFragment(), ()];
                    return;
                }
                _ => {
                    FixedToken? ft = fragTokens[fragCode];
                    // if we've missed something above, we'll get a panic from the cast here
                    self.codePointIndex += (<string>ft).length();          
                    self.curTok = ft;
                    return ();
                } 
            }
        }
    }

    function current() returns Token? {
        return self.curTok;
    }

    function setMode(Mode m) {
        self.mode = m;
    }

    function currentPos() returns Position {
        return createPosition(self.lineIndex, self.tokenStartCodePointIndex);
    }

    private function getFragment() returns string {
        string fragment = self.fragments[self.fragmentIndex];
        self.codePointIndex += fragment.length();
        self.fragmentIndex += 1;
        return fragment;
    }

    private function advanceLine() returns boolean {
        if self.lineIndex >= self.lines.length() {
            return false;
        }
        ScannedLine scannedLine = self.lines[self.lineIndex];
        self.fragCodes = scannedLine.fragCodes;
        self.fragments = scannedLine.fragments;
        self.lineIndex += 1;
        self.fragCodeIndex = 0;
        self.fragmentIndex = 0;
        self.codePointIndex = 0;
        self.tokenStartCodePointIndex = 0;
        return true;
    }

    function expectIdentifier() returns string|err:Syntax {
        Token? t = self.curTok;
        if t is [IDENTIFIER, string] {
            check self.advance();
            return t[1];
        }
        else {
            err:Template msg;
            if t is string {
                msg = `expected an identifier; got ${t}`;
            }
            else {
                msg = `expected an identifier`;
            }
            return self.err(msg);
        }
    }

    function expect(SingleCharDelim|MultiCharDelim|Keyword tok) returns err:Syntax? {
        if self.curTok != tok {
            err:Template msg;
            Token? t = self.curTok;
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
        return err:syntax(msg, loc=err:location(self.file, self.currentPos()));
    }

    function save() returns TokenizerState {
        return {
            file: self.file,
            lineIndex: self.lineIndex,
            fragCodeIndex: self.fragCodeIndex,
            codePointIndex: self.codePointIndex,
            fragmentIndex: self.fragmentIndex,
            tokenStartCodePointIndex: self.tokenStartCodePointIndex,
            mode: self.mode,
            curTok: self.curTok
        };
    }

    function restore(TokenizerState s) {
        if s.file !== self.file {
            panic err:illegalArgument("restore with different source file");
        }
        self.lineIndex = s.lineIndex;
        self.fragCodeIndex = s.fragCodeIndex;
        self.codePointIndex = s.codePointIndex;
        self.fragmentIndex = s.fragmentIndex;
        self.tokenStartCodePointIndex = s.tokenStartCodePointIndex;
        self.mode = s.mode;
        self.curTok = s.curTok;

        ScannedLine scannedLine = self.lines[self.lineIndex - 1];
        self.fragCodes = scannedLine.fragCodes;
        self.fragments = scannedLine.fragments;
    }
}

function createPosition(int line, int column) returns Position {
    return (line << 32) | column;
}

public readonly class SourceFile {
    *err:File;
    private ScannedLine[] lines;
    private string fn;
    private string? dir;

    function init(readonly & ScannedLine[] lines, FilePath path) {
        self.lines = lines;
        self.fn = path.filename;
        self.dir = path.directory;
    }

    public function filename() returns string => self.fn;

    public function directory() returns string? => self.dir;

    public function lineColumn(Position pos) returns err:LineColumn {
        return [pos >> 32, pos & 0xFFFFFFFF];
    }

    function scannedLines() returns readonly & ScannedLine[] => self.lines;
}

public function createSourceFile(string[] lines, FilePath path) returns SourceFile {
    return new(scanLines(lines), path);
}
