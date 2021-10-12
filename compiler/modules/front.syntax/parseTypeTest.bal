public function parseTypeTest(string str) returns TypeTest|error {
    SourceFile file = createSourceFile([str], { filename: "<internal>" });
    Tokenizer tok = new(file);
    check tok.advance();
    Operand left = check parseTypeExpr(tok);
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
        Operand right = check parseTypeExpr(tok);
        if left.index is () {
            return { op, left : left.identifier, right : right.identifier };
        } 
        else if op is "=" {
            return {left, member : right.identifier, index : left.index};
        }
    }
    return parseError(tok);
    
}

function parseTypeExpr(Tokenizer tok) returns Operand|error {
    string identifier = check tok.expectIdentifier();
    int|string? index = ();
    if tok.current() is "[" {
        check tok.advance();
        Token? t = tok.current();
        if t is [DECIMAL_NUMBER, string] {
            index = check int:fromString(t[1]);
            check tok.advance();
        }
        else {
            index = check tok.expectIdentifier();
        }
        check tok.expect("]");
    }
    return {identifier, index};
}

public type SubtypeTest record {
    SubtypeTestOp op;
    string left;
    string right;
};

public type Operand record {
    string identifier;
    int|string? index;
};

public type ProjectionTest record {
    Operand left;
    string member;
    int|string? index;
};

public type SubtypeTestOp "<" | "=" | "<>";
public type TypeTest SubtypeTest | ProjectionTest;
