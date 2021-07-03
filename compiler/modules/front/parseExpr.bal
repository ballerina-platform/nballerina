import wso2/nballerina.err;

function parseExpr(Tokenizer tok) returns Expr|err:Syntax {
    Token? t = tok.current();
    if t == "[" {
        check tok.advance();
        Expr[] members = check parseExprList(tok, "]");
        ListConstructorExpr expr = { members };
        return expr;
    }
    return parseInnerExpr(tok);
}

function parseInnerExpr(Tokenizer tok) returns Expr|err:Syntax {
    return parseBitwiseOrExpr(tok);
}

function parseBitwiseOrExpr(Tokenizer tok) returns Expr|err:Syntax {
    Expr expr = check parseBitwiseXorExpr(tok);
    while true {
        Token? t = tok.current();
        if t == "|" {
            check tok.advance();
            Expr right = check parseBitwiseXorExpr(tok);
            BinaryBitwiseExpr bin = { bitwiseOp: t, left: expr, right };
            expr = bin;
        } 
        else {
            break;
        }
    }
    return expr;
}

function parseBitwiseXorExpr(Tokenizer tok) returns Expr|err:Syntax {
    Expr expr = check parseBitwiseAndExpr(tok);
    while true {
        Token? t = tok.current();
        if t == "^" {
            check tok.advance();
            Expr right = check parseBitwiseAndExpr(tok);
            BinaryBitwiseExpr bin = { bitwiseOp: t, left: expr, right };
            expr = bin;
        } 
        else {
            break;
        }
    }
    return expr;
}

function parseBitwiseAndExpr(Tokenizer tok) returns Expr|err:Syntax {
    Expr expr = check parseEqualityExpr(tok);
    while true {
        Token? t = tok.current();
        if t == "&" {
            check tok.advance();
            Expr right = check parseEqualityExpr(tok);
            BinaryBitwiseExpr bin = { bitwiseOp: t, left: expr, right };
            expr = bin;
        } 
        else {
            break;
        }
    }
    return expr;
}

function parseEqualityExpr(Tokenizer tok)  returns Expr|err:Syntax {
    Expr expr = check parseRelationalExpr(tok);
    while true {
        Token? t = tok.current();
        if t is BinaryEqualityOp {
            check tok.advance();
            Expr right = check parseRelationalExpr(tok);
            BinaryEqualityExpr bin = { equalityOp: t, left: expr, right };
            expr = bin;
        } 
        else {
            break;
        }
    }
    return expr;
}

function parseRelationalExpr(Tokenizer tok) returns Expr|err:Syntax {
    Expr expr = check parseRangeExpr(tok);
    Token? t = tok.current();
    if t is BinaryRelationalOp {
        check tok.advance();
        Expr right = check parseRangeExpr(tok);
        BinaryRelationalExpr bin = { relationalOp: t, left: expr, right };
        return bin;
    }
    else {
        return expr;
    }
}

function parseRangeExpr(Tokenizer tok) returns Expr|err:Syntax {
    Expr expr = check parseAdditiveExpr(tok);
    Token? t = tok.current();
    if t is RangeOp {
        check tok.advance();
        Expr upper = check parseAdditiveExpr(tok);
        RangeExpr range = { op: t, lower: expr, upper };
        return range;
    }
    else {
        return expr;
    }
}

function parseAdditiveExpr(Tokenizer tok) returns Expr|err:Syntax {
    Expr expr = check parseMultiplicativeExpr(tok);
    while true {
        Token? t = tok.current();
        if t is ("+"|"-") {
            err:Position pos = tok.currentPos();
            check tok.advance();
            Expr right = check parseMultiplicativeExpr(tok);
            BinaryArithmeticExpr bin = { arithmeticOp: t, left: expr, right, pos };
            expr = bin;
        } 
        else {
            break;
        }
    }
    return expr;
}

function parseMultiplicativeExpr(Tokenizer tok) returns Expr|err:Syntax {
    Expr expr = check parseUnaryExpr(tok);
    while true {
        Token? t = tok.current();
        if t is ("*"|"/"|"%") {
            err:Position pos = tok.currentPos();
            check tok.advance();
            Expr right = check parseUnaryExpr(tok);
            BinaryArithmeticExpr bin = { arithmeticOp: t, left: expr, right, pos };
            expr = bin;
        } 
        else {
            break;
        }
    }
    return expr;
}

function parseUnaryExpr(Tokenizer tok) returns Expr|err:Syntax {
    Token? t = tok.current();
    if t is "-"|"!" {
        check tok.advance();
        Expr operand = check parseUnaryExpr(tok);
        UnaryExpr expr = { op: t, operand };
        return expr;
    }
    else if t is "<" {
        return parseTypeCastExpr(tok);
    }
    return parsePrimaryExpr(tok);
}

function parseTypeCastExpr(Tokenizer tok) returns Expr|err:Syntax {
    err:Position pos = tok.currentPos();
    check tok.advance();
    InlineTypeDesc td = check parseInlineTypeDesc(tok);
    check tok.expect(">");
    Expr operand = check parseUnaryExpr(tok);
    TypeCastExpr expr = { pos, td, operand, semType: convertInlineTypeDesc(td) };
    return expr;
}

function parsePrimaryExpr(Tokenizer tok) returns Expr|err:Syntax {
    return finishPrimaryExpr(tok, check startPrimaryExpr(tok));
}

function startPrimaryExpr(Tokenizer tok) returns Expr|err:Syntax {
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        err:Position pos = tok.currentPos();
        string identifier = t[1];
        VarRefExpr expr = { varName: identifier };
        check tok.advance();
        t = tok.current();
        if t == "(" {
            check tok.advance();
            return finishFunctionCallExpr(tok, (), identifier, pos);
        }
        return expr;
    } 
    else if t is [DECIMAL_NUMBER, string] {
        SimpleConstExpr expr = { value: check parseDigits(tok, t[1]) };
        return expr;
    }
    else if t == "(" {
        check tok.advance();
        if tok.current() == ")" {
            check tok.advance();
            SimpleConstExpr expr = { value: () };
            return expr;
        }
        Expr expr = check parseInnerExpr(tok);
        check tok.expect(")");
        return expr;
    }
    else if t is "true"|"false" {
        check tok.advance();
        SimpleConstExpr expr = { value: t == "true" };
        return expr;
    }
    else {
        return parseError(tok);
    }
}

function finishPrimaryExpr(Tokenizer tok, Expr expr) returns Expr|err:Syntax {
    Token? t = tok.current();
    if t == "[" {
        err:Position pos = tok.currentPos();
        check tok.advance();
        Expr index = check parseInnerExpr(tok);
        check tok.expect("]");
        MemberAccessExpr accessExpr = { container: expr, index, pos };
        return finishPrimaryExpr(tok, accessExpr);
    }
    else {
        return expr;
    }
}

function finishFunctionCallExpr(Tokenizer tok, string? prefix, string funcName, err:Position pos) returns FunctionCallExpr|err:Syntax {
    Expr[] args = check parseExprList(tok, ")");
    return { funcName, pos, args, prefix };
}

function parseExprList(Tokenizer tok, "]"|")" terminator) returns Expr[]|err:Syntax {
    Expr[] exprs = [];
     if tok.current() != terminator {
        while true {
            Expr expr = check parseExpr(tok);
            exprs.push(expr);
            Token? t = tok.current();
            if t == "," {
                check tok.advance();
            }
            else if t == terminator {
                break;
            }
            else {
                return parseError(tok, "invalid expression list");
            }
        }
    }
    check tok.advance();
    return exprs;
}

function parseConstExpr(Tokenizer tok) returns TypeDesc|err:Syntax {
    check tok.expect("=");
    string sign = "";
    if tok.current() == "-" {
        check tok.advance();
        sign = "-";
    }
    match tok.current() {
        [DECIMAL_NUMBER, var digits] => {
            SingletonTypeDesc td = { value: check parseDigits(tok, sign + digits) };
            return td;
        // JBUG this gets a bad sad #30738
        // NullPointerException in BIROptimizer$RHSTempVarOptimizer.visit
        // int n;
        // do {
        //     n = check int:fromString(sign + digits);
        // } on fail var cause {
        //     return err:syntax("invalid number", cause, pos=tok.currentPos());
        // }
        // check tok.advance();
        // return <SingletonTypeDesc>{ value: n };         
        }
    }
    return parseError(tok);
}

function parseDigits(Tokenizer tok, string signDigits) returns int|err:Syntax {
    error|int res = int:fromString(signDigits);
    if res is error {
        return err:syntax("invalid number", tok.currentPos(), cause=res);
    } 
    else {
        check tok.advance();
        return res;
    }
}
