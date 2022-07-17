public type SExpr ()|string|boolean|int|SExprString|SExpr[];

type SExprString record {|
    string str;
|};

const QUOTE       = 0x22;
const OPEN_PAREN  = 0x28;
const CLOSE_PAREN = 0x29;
const MINUS       = 0x2D;
type WS 0x09|0x0A|0x0D|0x20; // TAB|LF|CR|SPACE
type DIGIT 0x30|0x31|0x32|0x33|0x34|0x35|0x36|0x37|0x38|0x39; // 0-9

class Tokenizer {
    int[] src;  
    int pos;

    function init(string src) {
        self.src = src.toCodePointInts();
        self.pos = 0;
    }

    function next() returns OPEN_PAREN|CLOSE_PAREN|string|SExprString|int|error {
        int c = self.nextChar();
        while c is WS {
            c = self.nextChar();
        }
        if c == OPEN_PAREN || c == CLOSE_PAREN {
            return c;
        }
        if c == QUOTE {
            int[] quoted = [];
            while true {
                int q = self.nextChar();
                if q == QUOTE {
                    return { str: check string:fromCodePointInts(quoted) };
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

    function eof() returns boolean {
        return self.pos >= self.src.length();
    }

    private function nextChar() returns int {
        int c = self.src[self.pos]; // Assuming s-expr is valid, eof will not be reached here.
        self.pos += 1;
        return c;
    }
}

public function parse(string input) returns SExpr[]|error {
    Tokenizer t = new(input);
    SExpr[] topLevel = [];
    while !t.eof() && t.next() == OPEN_PAREN {
        topLevel.push(check parseList(t));
    }
    return topLevel;
}

function parseList(Tokenizer t) returns SExpr|error {
    SExpr[] result = [];
    while true {
        match check t.next() {
            OPEN_PAREN => {
                result.push(check parseList(t));
            }
            CLOSE_PAREN => {
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
