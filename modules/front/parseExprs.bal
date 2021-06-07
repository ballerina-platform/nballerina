import wso2/nballerina.err;

type Identifier readonly & record {|
    string identifier;
    err:Position pos;
|};

type LiteralType DECIMAL_NUMBER|STRING_LITERAL|BOOLEAN_LITERAL;

type LHSExprNode Expr|Identifier;

function parseExpr(Tokenizer tok) returns Expr|err:Syntax {

    Token? cur = tok.current();
    LHSExprNode styntaxNode = check parseLHSExprNode(tok);
    return parseRHSExprNode(tok, styntaxNode);
}

function parseLHSExprNode(Tokenizer tok) returns LHSExprNode|err:Syntax {

    Token? cur = tok.current();
    match cur {
        [DECIMAL_NUMBER, var value] => {
            return createSimpleConstExpr(tok, value, DECIMAL_NUMBER);
        }
        [STRING_LITERAL, var value] => {
            return createSimpleConstExpr(tok, value, STRING_LITERAL);
        }
        "true"|"false" => {
            return createSimpleConstExpr(tok, cur.toString(), BOOLEAN_LITERAL);
        }
        "(" => {
            check tok.advance();
            return createBracedOrNilExpression(tok);
        }
        [IDENTIFIER, var identifier] => {
            err:Position pos = tok.currentPos();
            check tok.advance();
            return createIdentifierNode(identifier, pos);
        }
        var op if op is UnaryExprOp => {
            check tok.advance();
            return createUnaryExpr(tok, op);
        }
    }
    return parseError(tok, "Unhandled expression");
}

function createSimpleConstExpr(Tokenizer tok, string str, LiteralType lType) 
            returns SimpleConstExpr|err:Syntax {

    match lType {
        DECIMAL_NUMBER => {
            int|error value = int:fromString(str);
            if value is int {
                check tok.advance();
                return {value}; // SimpleConstExpr
            } else {
                return err:syntax("invalid decimal number", tok.currentPos(), value);
            }
        }
        STRING_LITERAL => {
            //    check tok.advance();
            //    return {value : str}; 
            return err:syntax("string literal not supported", tok.currentPos());
        }
        BOOLEAN_LITERAL => {
            check tok.advance();
            return {value: str == "true"};
        }
    }
    return err:syntax("Invalid literal type", tok.currentPos());
}

function parseRHSExprNode(Tokenizer tok, LHSExprNode lhsNode) returns Expr|err:Syntax {

    Token? cur = tok.current();
    match cur {
        "(" => {
            check tok.advance();
            return createFunctionCallExpr(tok, lhsNode);
        }
        var op if op is BinaryExprOp => {
            check tok.advance();
            if lhsNode is Expr {
                return createBinaryExpr(tok, lhsNode, op);
            }
            return parseError(tok);
        }
    }
    if lhsNode is Identifier {
        return {varName: lhsNode.identifier};
    } else {
        return lhsNode;
    }
}

function createFunctionCallExpr(Tokenizer tok, LHSExprNode lhsNode) 
            returns FunctionCallExpr|err:Syntax {

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
    if lhsNode is Identifier {
        check tok.advance();
        return {funcName: lhsNode.identifier, args: args, pos: lhsNode.pos};
    }
    return parseError(tok, "Not supported function call expr syntax");
}

function createBracedOrNilExpression(Tokenizer tok) returns LHSExprNode|err:Syntax {

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

function createUnaryExpr(Tokenizer tok, UnaryExprOp op) 
            returns UnaryExpr|SimpleConstExpr|err:Syntax {

    Expr operand = check parseExpr(tok);
    // Do constant-folding for numarical values
    // TODO : seperate out this logic.
    if operand is SimpleConstExpr && op == "-" {
        ()|boolean|int value = operand.value;
        if value is int {
            return {value: value * -1};
        }
    }
    return {op, operand};
}

function createBinaryExpr(Tokenizer tok, Expr left, BinaryExprOp op) returns BinaryExpr|err:Syntax {

    Expr right = check parseExpr(tok);
    return {left, op, right};
}

function createIdentifierNode(string identifier, err:Position pos) returns Identifier {
    return {identifier, pos};
}