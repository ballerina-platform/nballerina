public type TypeProjection record {
    Identifier identifier;
    int|Identifier index;
};

public type TypeTest record {
    SubtypeTestOp op;
    Identifier|TypeProjection left;
    Identifier|TypeProjection right;
};

public type TypeTestWitness record {
    *TypeTest;
    string witness;
};

public type SubtypeTestOp "<" | "=" | "<>";

public type Identifier string;

public function parseTypeTest(string str) returns TypeTest|error {
    SourceFile file = createSourceFile([str], { filename: "<internal>" });
    Tokenizer tok = new(file);
    check tok.advance();
    Identifier|TypeProjection left = check parseTypeProjection(tok);
    Token? t = tok.current();
    if t is "<"|"=" {
        check tok.advance();
        SubtypeTestOp op;
        if tok.current() is ">" {
            check tok.advance();
            op = "<>";
        }
        else {
            op = t;     
        }
        Identifier|TypeProjection right = check parseTypeProjection(tok);
        return { op, left, right };
    }
    return parseError(tok);
    
}

public function parseTypeTestWitness(string str) returns TypeTestWitness|error {
    SourceFile file = createSourceFile([str], { filename: "<internal>" });
    Tokenizer tok = new(file);
    check tok.advance();
    Identifier|TypeProjection left = check parseTypeProjection(tok);
    Token? t = tok.current();
    if t is "<" {
        check tok.advance();
        Identifier|TypeProjection right = check parseTypeProjection(tok);
        string witness = check parseTypeWitness(tok);
        return { op: "<", left, right, witness };
    }
    return parseError(tok);
}

function parseTypeProjection(Tokenizer tok) returns Identifier|TypeProjection|error {
    Identifier identifier = check tok.expectIdentifier();
    if tok.current() is "[" {
        check tok.advance();
        Token? t = tok.current();
        int|Identifier index;
        if t is [DECIMAL_NUMBER, string] {
            index = check int:fromString(t[1]);
            check tok.advance();
        }
        else {
            index = check tok.expectIdentifier(); 
        }
        check tok.expect("]");
        return { identifier, index};
    }
    return identifier;
}

function parseTypeWitness(Tokenizer tok) returns string|error {
    check tok.expect("|");
    string[] words = [];
    while tok.curTok != () {
        Token? curTok = tok.curTok;
        check tok.advance();
        if curTok != () {
            match curTok {
                [STRING_LITERAL, var value] => {
                    words.push(string `"${value}"`);
                }
                [DECIMAL_FP_NUMBER, var digits, var suffix] => {
                    words.push(digits.toLowerAscii() + (suffix ?: ""));
                }
                [_, var str] => {
                    words.push(str);
                }
                var str => {
                    string val = <string>str;
                    words.push(val);
                    if val == "," {
                        words.push(" ");
                    }

                }
            }
        }
    }
    return "".join(...words);
}
