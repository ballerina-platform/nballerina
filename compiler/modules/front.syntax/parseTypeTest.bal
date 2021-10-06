import wso2/nballerina.err;

public function parseTypeTest(string str) returns SubtypeTest|err:Syntax {
    SourceFile file = createSourceFile([str], { filename: "<internal>" });
    Tokenizer tok = new(file);
    check tok.advance();
    Token? t = tok.current();
    // TODO move to different parse functions

    string left = check tok.expectIdentifier();
    t = tok.current();
    if t is "<"|"=" {
        SubtypeTestOp op = t;
        check tok.advance();
        t = tok.current();
        if t is ">" {
            op = "<>";
            check tok.advance();
            t = tok.current();
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
