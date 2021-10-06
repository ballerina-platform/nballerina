import wso2/nballerina.err;

public function parseTypeTest(string str) returns SubtypeTest|err:Syntax {
    SourceFile file = createSourceFile([str], { filename: "<internal>" });
    Tokenizer tok = new(file);
    check tok.advance();
    Token? t = tok.current();
    // TODO move to different parse functions
    if t is [IDENTIFIER, string] {
        string typename1 = t[1];
        check tok.advance();
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
            if t is [IDENTIFIER, string] {
                string typename2 = t[1];
                return { op, typename1, typename2 };
            }
        }  
        
    }
    return parseError(tok);
}

public type SubtypeTest record {
    SubtypeTestOp op;
    string typename1;
    string typename2;
};

public type SubtypeTestOp "<" | "=" | "<>";