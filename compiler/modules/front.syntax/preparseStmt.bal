import wso2/nballerina.err;

const PREDICT_TYPE_DESC = true;
const PREDICT_EXPR = false;


// Returns `true` if a statement whose first token was `(` begins a type descriptor rather than an expression
// (implying that the statement is a local variable declaration rather than a method call).
// This is a preparse: the statement will be parsed again according to the value returned.
// For now, this only handles a statement starting with `()`. It will be expanded later.
function preparseParenTypeDesc(Tokenizer tok) returns boolean|err:Syntax {
    Token? t = tok.current();
    if t != ")" {
        return PREDICT_EXPR;
    }
    check tok.advance();
    t = tok.current();
    match t {
        "." => {
            // semantically invalid
            return PREDICT_EXPR;
        }
        "?" => {
            // SUBSET with optional field access this can be EXPR
            return PREDICT_TYPE_DESC;
        }
        "[" => {
            // SUBSET should match list binding pattern
            check tok.advance();
            if tok.current() == "]" {
                return PREDICT_TYPE_DESC;
            }
            // SUBSET will need to recurse when T[n] type desc is supported
            // falls through to the end
        }
        [IDENTIFIER, _] => {
            return PREDICT_TYPE_DESC;
        }
    }
    return PREDICT_EXPR;
}
