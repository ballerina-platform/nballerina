import wso2/nballerina.err;

const PREPARSE_TYPE_DESC = true;
const PREPARSE_EXPR = false;

// Returns `true` if a statement whose first token was `(` begins a type descriptor rather than an expression
// (implying that the statement is a local variable declaration rather than a method call).
// This is a preparse: the statement will be parsed again according to the value returned.
function preparseParenTypeDesc(Tokenizer tok, string? close) returns boolean|err:Syntax {
    boolean? result = check skipToClose(tok, close);
    Token? t = tok.current();
    while t == "[" {
        check tok.advance();
        check skipToClose(tok, "]");
        t = tok.current();
    }
    return t != () && t != ".";
}

function skipToClose(Tokenizer tok, string? close) returns err:Syntax? {
    while true {
        Token? t = tok.current();
        if t == () || t == ";" && close != "|}" {
            return;
        }
        else if t is "(" {
            check tok.advance();
            check skipToClose(tok, ")");
            continue;
        }
        else if t == close {
            break;
        }
        else {
            check tok.advance();
        }
    }
    check tok.advance();
}
