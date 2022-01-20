import wso2/nballerina.comm.err;

const PREPARSE_TYPE_DESC = true;
const PREPARSE_EXPR = false;

type CLOSE_BRACKET ")" | "]" | "}" | "|}";

final readonly & map<CLOSE_BRACKET> closeBracketMap = {
    "(": ")",
    "[": "]",
    "{" : "}",
    "{|": "|}"
};

// Returns `true` if a statement whose first token was `(` begins a type descriptor rather than an expression
// (implying that the statement is a local variable declaration rather than a method call).
// This is a preparse: the statement will be parsed again according to the value returned.
function preparseParenTypeDesc(Tokenizer tok) returns boolean|err:Syntax {
    boolean? parenResult = check preparseBracketed(tok, ")");
    if parenResult != () {
        return parenResult;
    }
    Token? t = tok.current();
    while t == "[" {
        check tok.advance();
        boolean? squareResult = check preparseBracketed(tok, "]");
        if squareResult != () {
            return squareResult;
        }
        t = tok.current();
    }
    if t == () {
        return tok.err("incomplete statement");
    }
    return t != ".";
}

function preparseBracketed(Tokenizer tok, CLOSE_BRACKET close) returns err:Syntax|boolean? {
    while true {
        Token? t = tok.current();
        match t {
            () => {
                return tok.err(`missing ${close}`);
            }
            "." | "check" | "checkpanic" | "is" => {
                return PREPARSE_EXPR;
            }
            ";" => {
                if close != "|}" && close != "}" {
                    return tok.err(`missing ${close}`);
                }
                check tok.advance();
            }
            "(" | "[" | "{" | "{|" => {
                check tok.advance();
                boolean? result = check preparseBracketed(tok, closeBracketMap.get(<string>t));
                if result != () {
                    return result;
                }
            }
            ")" | "]" | "}" | "|}" => {
                if t == close {
                    check tok.advance();
                    break;
                }
                return tok.err(`mismatched close bracket: expected ${close}`);
            }
            _ => {
                check tok.advance();
            }
        }  
    }
    return ();
}

// Returns `true` if a statement that starts with an unqualified identifier followed by `[` begins a type descriptor rather than an expression
function preparseArrayTypeDesc(Tokenizer tok) returns boolean|err:Syntax {
    check tok.advance();
    if tok.currentIsNoSpaceColon() {
        check tok.advance();
        _ = check tok.expectIdentifier();
    }
    check tok.expect("[");

    // SUBSET fixed length array types / tuples are not supported, is a td only if no token between `[` `]`
    return tok.current() == "]";
}
