import wso2/nballerina.err;

public function parseTypeTest(string str) returns SubtypeTest|err:Syntax {
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
    
    return parseError(tok);
}

public type SubtypeTest record {
    SubtypeTestOp op;
    string left;
    string right;
};

public type SubtypeTestOp "<" | "=" | "<>";
