import wso2/nballerina.err;

public function parseTypeTest(string str) returns TypeTest|err:Syntax {
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
    else if tok.current() is "[" {
        check tok.advance();
        string index = check tok.expectIdentifier();
        if !(tok.current() is "]") {
            return parseError(tok);
        }
        check tok.advance();
        if tok.current() is "=" {
            check tok.advance();
            string right = check tok.expectIdentifier();
            return parseError(tok, "successfully parsed");
        } 
    } 
    
    return parseError(tok);
}

public type SubtypeTest record {
    SubtypeTestOp op;
    string left;
    string right;
};

public type ProjectionTest record {
    string left;
    string index;
    string right;
};

public type SubtypeTestOp "<" | "=" | "<>";
public type TypeTest SubtypeTest | ProjectionTest;
