public function parseTypeTest(string str) returns TypeTest|error {
    SourceFile file = createSourceFile([str], { filename: "<internal>" });
    Tokenizer tok = new(file);
    check tok.advance();
    string left = check tok.expectIdentifier();
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
        string right = check tok.expectIdentifier();
        return { op, left, right };
    } 
    check tok.expect("[");
    string? index = ();
    int? indexLiteral = ();
    t = tok.current();
    if t is [DECIMAL_NUMBER, string] {
        int i = check int:fromString(t[1]);
        check tok.advance();
    }
    else {
        index = check tok.expectIdentifier();
    }
    check tok.expect("]");
    check tok.expect("=");
    string member = check tok.expectIdentifier();
    return { left, member , index , indexLiteral};
}

public type SubtypeTest record {
    SubtypeTestOp op;
    string left;
    string right;
};

public type ProjectionTest record {
    string left;
    string member;
    string? index;
    string|int? indexLiteral;
};

public type SubtypeTestOp "<" | "=" | "<>";
public type TypeTest SubtypeTest | ProjectionTest;
