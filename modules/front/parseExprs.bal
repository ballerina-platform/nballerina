type Identifier record {|
    string identifier;
    Position pos;
|};

type ExprNode Expr|Identifier;

function parseExpr(Tokenizer tok) returns Expr|ParseError {
    Token? cur = tok.current();
    ExprNode styntaxNode = check parseTerminalExpr(tok);
    return parseComplexExpr(tok, styntaxNode);
}

function parseTerminalExpr(Tokenizer tok) returns ExprNode|ParseError {
    Token? cur = tok.current();
    match cur {
        [DECIMAL_NUMBER, var str] => {
            check tok.advance();
            int|error value = int:fromString(str);
            if value is int {
                return {value}; // SimpleConstExpr
            } // overflow on int: Handle as a parser Error.
        }
        [STRING_LITERAL, var value] => {
            check tok.advance();
            return {value}; // SimpleConstExpr
        }
        "true"|"false" => {
            check tok.advance();
            return {value: cur == "true"}; // SimpleConstExpr
        }
        [IDENTIFIER, var identifier] => {
            Position pos = tok.currentPos();
            check tok.advance();
            return {identifier, pos};
        }
        "(" => {
            check tok.advance();
            return parseBracedExpression(tok);
        }
        var op if op is UnaryExprOp => {
            check tok.advance();
            return parseUnaryExpr(tok, "-");
        }
    }
    return parseError(tok, "Unhandled exoression"); 
}

function parseComplexExpr(Tokenizer tok, ExprNode previousExpr) returns Expr|ParseError {
    Token? cur = tok.current();
    match cur {
        "(" => {
            check tok.advance();
            Token? tk1 = tok.current();
            Expr[] args = [];
            while tk1 != ")" {
                args.push(check parseExpr(tok));
                Token? tk2 = tok.current();
                if tk2 is "," {
                    check tok.advance();
                } else if tk2 is ")" {
                    break;
                } else {
                    return parseError(tok, "Missing comma");
                }
            }
            if previousExpr is Identifier {
                return {funcName: previousExpr.identifier, args: args, pos: previousExpr.pos};
            }
            return parseError(tok, "Not supported function call expr syntax");
        }
        var op if op is BinaryExprOp => {
            check tok.advance();
            if previousExpr is Expr {
                return parseBinaryExpr(tok, previousExpr, op);
            }
            return parseError(tok);
        }
    }
    if previousExpr is Identifier {
        return {varName: previousExpr.identifier};
    } else if previousExpr is Expr {
        return previousExpr;
    }
    return parseError(tok);
}

function parseBracedExpression(Tokenizer tok) returns ExprNode|ParseError {
    if tok.current() == ")" {
        // For now only nill literal, handle param-list of an implicit-anon-func-expr later
        check tok.advance();
        return {value: ()}; // SimpleConstExpr
    }
    // Group expression
    Expr expr = check parseExpr(tok);
    if tok.current() == ")" {
        check tok.advance();
        return expr;
    }
    return parseError(tok);
}

function parseUnaryExpr(Tokenizer tok, UnaryExprOp op) returns UnaryExpr|ParseError {
    Expr operand = check parseExpr(tok);
    return {op, operand};
}

function parseBinaryExpr(Tokenizer tok, Expr left, BinaryExprOp op) returns BinaryExpr|ParseError {
    Expr right = check parseExpr(tok);
    return {left, op, right};
}
