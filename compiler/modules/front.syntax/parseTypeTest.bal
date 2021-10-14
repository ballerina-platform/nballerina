public type TypeProjection record {
    Identifier identifier;
    int|string|Identifier index;
};

public type TypeTest record {
    SubtypeTestOp op;
    Identifier|TypeProjection left;
    Identifier|TypeProjection right;
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
