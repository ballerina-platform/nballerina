public type Data ()|Symbol|boolean|int|float|decimal|String|Data[];

public type Symbol string;
public type String record {|
    string s;
|};

const LINE_FEED   = 0x0A;
const QUOTE       = 0x22;
const OPEN_PAREN  = 0x28;
const CLOSE_PAREN = 0x29;
const MINUS       = 0x2D;
const SEMICOLON   = 0x3B;
const BACKSLASH   = 0x5C;
type WS 0x09|0x0A|0x0D|0x20; // TAB|LF|CR|SPACE
type DIGIT 0x30|0x31|0x32|0x33|0x34|0x35|0x36|0x37|0x38|0x39; // 0-9

class Tokenizer {
    int[] src;
    int pos;

    function init(string src) {
        self.src = src.toCodePointInts();
        self.pos = 0;
    }

    function next() returns [OPEN_PAREN|CLOSE_PAREN]|string|String|int|error {
        int c;
        while true {
            c = self.nextChar();
            if c == SEMICOLON {
                while self.nextChar() != LINE_FEED {
                }
                c = self.nextChar();
            }
            if c !is WS {
                break;
            }
        }
        if c is OPEN_PAREN|CLOSE_PAREN {
            return [c];
        }
        if c == QUOTE {
            int[] quoted = [];
            while true {
                int q = self.nextChar();
                if q == BACKSLASH {
                    q = self.nextChar();
                }
                else if q == QUOTE {
                    return { s: check string:fromCodePointInts(quoted) };
                }
                quoted.push(q);
            }
        }
        int[] unquoted = [c];
        while true {
            int u = self.nextChar();
            if u is WS || u == CLOSE_PAREN {
                self.pos -= 1;
                string unquotedStr = check string:fromCodePointInts(unquoted);
                if c is DIGIT|MINUS { // Symbols can't start with numbers
                    return int:fromString(unquotedStr);
                } else {
                    return unquotedStr;
                }
            }
            unquoted.push(u);
        }
    }

    public function hasNext() returns boolean {
        foreach int i in self.pos ..< self.src.length() {
            if self.src[i] == OPEN_PAREN {
                self.pos = i + 1;
                return true;
            }
        }
        return false;
    }

    private function nextChar() returns int {
        int c = self.src[self.pos]; // Assuming s-expr is valid, eof will not be reached here.
        self.pos += 1;
        return c;
    }
}

public function parse(string input) returns Data[]|error {
    Tokenizer t = new(input);
    Data[] topLevel = [];
    while t.hasNext() {
        topLevel.push(check parseList(t));
    }
    return topLevel;
}

function parseList(Tokenizer t) returns Data|error {
    Data[] result = [];
    while true {
        match check t.next() {
            [OPEN_PAREN] => {
                result.push(check parseList(t));
            }
            [CLOSE_PAREN] => {
                return result;
            }
            "true" => {
                result.push(true);
            }
            "false" => {
                result.push(false);
            }
            var c => {
                result.push(c);
            }
        }
    }
}
