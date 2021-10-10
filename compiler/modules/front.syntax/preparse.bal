import wso2/nballerina.err;

const PREPARSE_TYPE_DESC = true;
const PREPARSE_EXPR = false;

type CLOSE_BRACKET ")" | "|}" | "]";

final readonly & map<CLOSE_BRACKET> closeBracketMap = {
    "(": ")",
    "[": "]",
    "{|": "|}"
};

// Returns `true` if a statement whose first token was `(` begins a type descriptor rather than an expression
// (implying that the statement is a local variable declaration rather than a method call).
// This is a preparse: the statement will be parsed again according to the value returned.
function preparseParenTypeDesc(Tokenizer tok) returns boolean|err:Syntax {
    boolean? result = check preparseBracketed(tok, ")");
    if result != () {
        return result;
    }
    Token? t = tok.current();
    while t == "[" {
        check tok.advance();
        result = check preparseBracketed(tok, "]");
        if result != () {
            return result;
        }
        t = tok.current();
    }
    return t != ".";
}

function preparseBracketed(Tokenizer tok, CLOSE_BRACKET close) returns err:Syntax|boolean? {
    while true {
        Token? t = tok.current();
        match t {
            () => { break; }
            "." => {
                return PREPARSE_EXPR;
            }
            ";" => {
                if close != "|}" {
                    return tok.err("missing close bracket");
                }
                check tok.advance();
            }
            "(" | "[" | "{|" => {
                check tok.advance();
                boolean? result = check preparseBracketed(tok, closeBracketMap.get(<string>t));
                if result != () {
                    return result;
                }
            }
            ")" | "]" | "|}" => {
                if t == close {
                    check tok.advance();
                    break;
                }
                return tok.err("mismatched close bracket");
            }
            _ => {
                check tok.advance();
            }
        }  
    }
}
