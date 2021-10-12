public function parseTypeTest(string str) returns TypeTest|error {
    SourceFile file = createSourceFile([str], { filename: "<internal>" });
    Tokenizer tok = new(file);
    check tok.advance();
    string|TypeProjection left = check parseTypeProjection(tok);
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
        string|TypeProjection right = check parseTypeProjection(tok);
        return { op, left, right };
    }
    return parseError(tok);
    
}

function parseTypeProjection(Tokenizer tok) returns string|TypeProjection|error {
    string identifier = check tok.expectIdentifier();
    int|string index;
    if tok.current() is "[" {
        check tok.advance();
        Token? t = tok.current();
        if t is [DECIMAL_NUMBER, string] {
            index = check int:fromString(t[1]);
            check tok.advance();
        }
        else if t is [STRING_LITERAL, string] {
            index = t[1];
            check tok.advance();
        }
        else {
            return parseError(tok);
        }
        check tok.expect("]");
        return {identifier, index};
    }
    return identifier;
}

public type TypeTest record {
    SubtypeTestOp op;
    string|TypeProjection left;
    string|TypeProjection right;
};

public type TypeProjection record {
    string identifier;
    int|string index;
};


public type SubtypeTestOp "<" | "=" | "<>";
