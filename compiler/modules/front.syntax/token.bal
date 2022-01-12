import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;

type Range d:Range;

type Token FixedToken|VariableLengthToken;
type FixedToken SingleCharDelim|MultiCharDelim|Keyword;

const IDENTIFIER = 0;
const DECIMAL_NUMBER = 1;
const HEX_INT_LITERAL = 2;
const DECIMAL_FP_NUMBER = 3;
const STRING_LITERAL = 4;

const N_VARIABLE_TOKENS = 5;

type VariableTokenCode IDENTIFIER|DECIMAL_NUMBER|STRING_LITERAL|HEX_INT_LITERAL|DECIMAL_FP_NUMBER;

// Use string for DECIMAL_NUMBER so we don't get overflow on -int:MAX_VALUE
// JBUG #33694 can't factor `readonly` out
type VariableLengthToken readonly & [IDENTIFIER, string] |
                         readonly & [DECIMAL_NUMBER, string] |
                         readonly & [STRING_LITERAL, string] |
                         readonly & [HEX_INT_LITERAL, string] |
                         readonly & [DECIMAL_FP_NUMBER, string, FpTypeSuffix?];

// Some of these are not yet used by the grammar
type SingleCharDelim ";" | "+" | "-" | "*" |"(" | ")" | "[" | "]" | "{" | "}" | "<" | ">" | "?" | "&" | "^" | "|" | "!" | ":" | "," | "/" | "%" | "=" | "." | "~";
type MultiCharDelim "{|" | "|}" | "..." | "..<" | "==" | "!=" | ">=" | "<=" | "===" | "!==" | "<<" | ">>" | ">>>" | "=>" | "&&" | "||" | CompoundAssignDelim;
type CompoundAssignDelim "+=" | "-=" | "/=" | "*=" | "&=" | "|=" | "^=" | "<<=" | ">>=" | ">>>=";
type Keyword
    "_"
    | "any"
    | "anydata"
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
    | "table"
    ;

type StringIterator object {
    public isolated function next() returns record {|
        string:Char value;
    |}?;
};

final readonly & map<string:Char> ESCAPES = {
    "\\": "\\",
    "\"": "\"",
    "n": "\n",
    "r": "\r",
    "t": "\t"
};


const MODE_NORMAL = 0;
const MODE_TYPE_DESC = 1;
type Mode MODE_NORMAL|MODE_TYPE_DESC;

type TokenizerState readonly & record {
    SourceFile file;
    int lineIndex;
    int fragCodeIndex;
    int codePointIndex;
    int fragmentIndex;
    int tokenStartCodePointIndex;
    int prevTokenEndCodePointIndex;
    int prevTokenEndLineIndex;
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
    private int prevTokenEndCodePointIndex = 0;
    private int prevTokenEndLineIndex = 0;
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
        self.prevTokenEndCodePointIndex = self.codePointIndex;
        self.prevTokenEndLineIndex = self.lineIndex;
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
                            self.curTok = ">>>";
                        }
                        else {
                            self.fragCodeIndex += 1;
                            self.codePointIndex += 2;
                            self.curTok = ">>";
                        }
                    }
                    else {
                        self.codePointIndex += 1;
                        self.curTok = ">";
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
                FRAG_DECIMAL_FP_NUMBER_D => {
                    string number = self.getFragment();
                    self.curTok = [DECIMAL_FP_NUMBER, number.substring(0, number.length() - 1), "d"];
                    return;
                }
                _ => {
                    // JBUG #33346 cast should not be needed
                    FixedToken? ft = fragTokens[<int>fragCode];
                    // if we've missed something above, we'll get a panic from the cast here
                    self.codePointIndex += (<string>ft).length();
                    self.curTok = ft;
                    return ();
                }
            }
        }
    }

    // Peeks the next token. When skipQualIdent is passed, considers qualified identifier as a single token,
    // ie if current token is the first identifier of a qualified identifier, returns the token after the second identifier.
    function peek(boolean skipQualIdent=false) returns VariableTokenCode|FixedToken? {
        readonly & FragCode[] fragCodes = self.fragCodes;
        int fragCodeIndex = self.fragCodeIndex;
        int lineIndex = self.lineIndex;
        while true {
            if fragCodeIndex >= fragCodes.length() {
                if lineIndex >= self.lines.length() {
                    break;
                }
                fragCodes = self.lines[lineIndex].fragCodes;
                lineIndex += 1;
                fragCodeIndex = 0;
            }
            else {
                FragCode fragCode = fragCodes[fragCodeIndex];
                match fragCode {
                    FRAG_WHITESPACE|FRAG_COMMENT => {
                        fragCodeIndex += 1;
                    }
                    FRAG_STRING_OPEN => {
                        return STRING_LITERAL;
                    }
                    FRAG_STRING_CLOSE
                    |FRAG_STRING_CHARS
                    |FRAG_STRING_CHAR_ESCAPE
                    |FRAG_STRING_CONTROL_ESCAPE
                    |FRAG_STRING_NUMERIC_ESCAPE => {
                        panic err:impossible("unexpected fragCode in peek");
                    }
                    FRAG_INVALID => {
                        return ();
                    }
                    FRAG_DECIMAL_NUMBER => {
                        return DECIMAL_NUMBER;
                    }
                    FRAG_GREATER_THAN => {
                        if self.mode == MODE_NORMAL && fragCodeIndex < fragCodes.length() && fragCodes[fragCodeIndex] == FRAG_GREATER_THAN {
                            if fragCodeIndex + 1 < fragCodes.length() && fragCodes[fragCodeIndex + 1] == FRAG_GREATER_THAN {
                                return ">>>";
                            }
                            else {
                                return ">>";
                            }
                        }
                        else {
                            return ">";
                        }
                    }
                    FRAG_IDENTIFIER => {
                        return IDENTIFIER;
                    }
                    FRAG_HEX_NUMBER => {
                        return HEX_INT_LITERAL;
                    }
                    FRAG_DECIMAL_FP_NUMBER|FRAG_DECIMAL_FP_NUMBER_F|FRAG_DECIMAL_FP_NUMBER_D => {
                        return DECIMAL_FP_NUMBER;
                    }
                    CP_COLON => {
                        if skipQualIdent && fragCodeIndex + 1 < fragCodes.length() && fragCodes[fragCodeIndex + 1] == FRAG_IDENTIFIER {
                            fragCodeIndex += 2;
                        }
                        else {
                            return ":";
                        }
                    }
                    _ => {
                        // JBUG #33346 cast should not be needed
                        return <FixedToken>fragTokens[<int>fragCode];
                    }
                }
            }   
        }
        return ();   
    }

    function currentIsNoSpaceColon() returns boolean {
        return self.curTok == ":" && self.currentHasNoAdjacentSpace();
    }

    // Returns true if current token has non-whitespace tokens before and after it on the same line.
    // Only allowed when current token is a fixed token.
    private function currentHasNoAdjacentSpace() returns boolean {
        int i = self.fragCodeIndex;
        FragCode[] fragCodes = self.fragCodes;
        if i <= 1 || i >= fragCodes.length() {
            return false;
        }
        FragCode nextFragCode = fragCodes[i];
        if nextFragCode == FRAG_COMMENT || nextFragCode == FRAG_WHITESPACE {
            return false;
        }
        if fragCodes[i - 1] < FRAG_FIXED_TOKEN {
            panic err:impossible("wrong fragment type for currentIsConnected");
        }
        return fragCodes[i - 2] != FRAG_WHITESPACE;
    }
    
    function current() returns Token? {
        return self.curTok;
    }

    function setMode(Mode m) {
        self.mode = m;
    }

    // This currently assume pos is the position at the start of the token (currentStartPos)
    function moveToPos(Position pos, Mode mode) returns err:Syntax? {
        self.mode = mode;
        var [lineIndex, codePointIndex] = unpackPosition(pos);
        var [fragIndex, fragmentIndex] = scanLineFragIndex(self.file.scannedLine(lineIndex), codePointIndex);
        self.lineIndex = lineIndex - 1;
        _ = self.advanceLine(); // This will advance tokenizer to line given by lineIndex and set the line related states
        self.fragCodeIndex = fragIndex;
        self.codePointIndex = codePointIndex;
        self.fragmentIndex = fragmentIndex;
        // We have moved to the start of the token now we must move the tokenizer to the end of the token
        check self.advance();
    }

    function currentStartPos() returns Position {
        return createPosition(self.lineIndex, self.tokenStartCodePointIndex);
    }

    function currentEndPos() returns Position {
        return createPosition(self.lineIndex, self.codePointIndex);
    }

    function currentRange() returns Range {
        return { startPos: self.currentStartPos(), endPos: self.currentEndPos() };
    }

    function previousEndPos() returns Position {
        return createPosition(self.prevTokenEndLineIndex, self.prevTokenEndCodePointIndex);
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
            d:Message msg;
            if t is string {
                msg = `expected an identifier; got ${t}`;
            }
            else {
                msg = `expected an identifier`;
            }
            return self.err(msg);
        }
    }

    function expectEnd(SingleCharDelim|MultiCharDelim|Keyword tok) returns Position|err:Syntax {
        Position pos = self.currentEndPos();
        check self.expect(tok);
        return pos;
    }

    function expectStart(SingleCharDelim|MultiCharDelim|Keyword tok) returns Position|err:Syntax {
        Position pos = self.currentStartPos();
        check self.expect(tok);
        return pos;
    }

    function expect(SingleCharDelim|MultiCharDelim|Keyword tok) returns err:Syntax? {
        if self.curTok != tok {
            d:Message msg;
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

    function err(d:Message msg) returns err:Syntax {
        // XXX pass in endPos if we need to in order to be able to recreate the right endPos
        return err:syntax(msg, loc=d:location(self.file, self.currentRange()));
    }

    function save() returns TokenizerState {
        return {
            file: self.file,
            lineIndex: self.lineIndex,
            fragCodeIndex: self.fragCodeIndex,
            codePointIndex: self.codePointIndex,
            fragmentIndex: self.fragmentIndex,
            tokenStartCodePointIndex: self.tokenStartCodePointIndex,
            prevTokenEndCodePointIndex: self.prevTokenEndCodePointIndex,
            prevTokenEndLineIndex: self.prevTokenEndLineIndex,
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
        self.prevTokenEndCodePointIndex = s.prevTokenEndCodePointIndex;
        self.prevTokenEndLineIndex = s.prevTokenEndLineIndex;
        self.mode = s.mode;
        self.curTok = s.curTok;
        if self.lineIndex == 0 {
            // advance() hasn't been called or lines are empty
            self.fragCodes = [];
            self.fragments = [];
        }
        else {
            ScannedLine scannedLine = self.lines[self.lineIndex - 1];
            self.fragCodes = scannedLine.fragCodes;
            self.fragments = scannedLine.fragments;
        }
    }
}

function createPosition(int line, int column) returns Position {
    return (line << 32) | column;
}

function unpackPosition(Position pos) returns [int, int] & readonly {
    return [pos >> 32, pos & 0xFFFFFFFF];
}

public readonly class SourceFile {
    *d:File;
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

    public function lineColumn(Position pos) returns d:LineColumn {
        return unpackPosition(pos);
    }

    // range is expected to be the start of a fragment
    public function lineContent(Position|d:Range range) returns [string, string, string] {
        Position startPos;
        Position? endPos;
        if range is d:Range {
            { startPos, endPos } = range;
        }
        else {
            startPos = range;
            endPos = ();
        }
        var [startLineNum, startColumnNum] = self.lineColumn(startPos);
        ScannedLine line = self.scannedLine(startLineNum);
        string[] lineFragments = scanLineFragments(line);
        string lineContent = "".'join(...lineFragments);
        int endColumnNum;
        if endPos != () {
            int endLineNum;
            [endLineNum, endColumnNum] = self.lineColumn(endPos);
            if endLineNum != startLineNum {
                endColumnNum = lineContent.length();
            }
        }
        else {
            endColumnNum = tokenEndCodePointIndex(lineFragments, line.fragCodes, startColumnNum);
        }
        return [
            lineContent.substring(0, startColumnNum),
            lineContent.substring(startColumnNum, endColumnNum),
            lineContent.substring(endColumnNum)
        ];
    }

    public function qNameRange(Position startPos) returns d:Range {
        var [lineNum, startColumnNum] = self.lineColumn(startPos);
        ScannedLine line = self.scannedLine(lineNum);
        int endColumnNum = qualifiedIdentifierEndCodePointIndex(line, startColumnNum);
        return { startPos, endPos: createPosition(lineNum, endColumnNum) };
    }

    public function startPos() returns Position {
        return createPosition(1, 0);
    }

    public function endPos() returns Position {
        if self.lines.length() == 0 {
            // empty file
            return createPosition(1, 0);
        }
        int lastLineIndex = self.lines.length();
        ScannedLine lastLine = self.scannedLine(lastLineIndex);
        string lineContent = "".'join(...scanLineFragments(lastLine));
        return createPosition(lastLineIndex, lineContent.length());
    }

    function scannedLines() returns readonly & ScannedLine[] => self.lines;

    function scannedLine(int lineNumber) returns ScannedLine {
        return self.lines[lineNumber - 1];
    }
}

// XXX this should be robust no matter what fragments are at startCodePointIndex
function qualifiedIdentifierEndCodePointIndex(ScannedLine line, int startCodePointIndex) returns int {
    var [fragIndex, fragmentIndex] = scanLineFragIndex(line, startCodePointIndex);
    string[] fragments = line.fragments;
    FragCode[] fragCodes = line.fragCodes;
    int endCodePointIndex = startCodePointIndex;
    while true {
        match fragCodes[fragIndex] {
            FRAG_IDENTIFIER => {
                endCodePointIndex += fragments[fragmentIndex].length();
                fragmentIndex += 1;
            }
            CP_COLON => {
                endCodePointIndex += 1;
            }
            _ => {
                break;
            }
        }
        fragIndex += 1;
    }
    return endCodePointIndex;
}

function tokenEndCodePointIndex(string[] fragments, FragCode[] fragCodes, int startCodePointIndex) returns int {
    int fragmentIndex = fragmentCountUpTo(fragments, startCodePointIndex);
    if fragmentIndex == fragCodes.length() {
        return startCodePointIndex;
    }
    match fragCodes[fragmentIndex] {
        FRAG_STRING_OPEN  => {
            return stringTokenEndCodePointIndex(fragments, fragCodes, startCodePointIndex, fragmentIndex);
        }
        FRAG_GREATER_THAN => {
            // Assume not in type-desc mode
            if fragmentIndex + 1 < fragCodes.length() && fragCodes[fragmentIndex+1] == FRAG_GREATER_THAN {
                if fragmentIndex + 2 < fragCodes.length() && fragCodes[fragmentIndex+2] == FRAG_GREATER_THAN {
                    return startCodePointIndex + 3; // >>>
                }
                return startCodePointIndex + 2; // >>
            }
            return startCodePointIndex + 1; // >
        }
    }
    return startCodePointIndex + fragments[fragmentIndex].length();
}

function fragmentCountUpTo(string[] fragments, int codePointIndex) returns int {
    int nCodePoints = 0;
    int fragmentIndex = 0;
    int nFragments = fragments.length();
    while fragmentIndex < nFragments {
        if nCodePoints >= codePointIndex {
            break;
        }
        nCodePoints += fragments[fragmentIndex].length();
        fragmentIndex += 1;
    }
    return fragmentIndex;
}

function stringTokenEndCodePointIndex(string[] fragments, FragCode[] fragCodes, int startCodePointIndex, int startFragmentIndex) returns int {
    int endCodePointIndex = startCodePointIndex;
    foreach int fragmentIndex in startFragmentIndex ..< fragments.length() {
        endCodePointIndex += fragments[fragmentIndex].length();
        FragCode fragCode = fragCodes[fragmentIndex];
        if fragCode == FRAG_STRING_CLOSE {
            break;
        }
    }
    return endCodePointIndex;
}

public function createSourceFile(string[] lines, FilePath path) returns SourceFile {
    return new(scanLines(lines), path);
}
