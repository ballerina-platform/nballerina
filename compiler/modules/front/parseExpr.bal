import wso2/nballerina.err;

function parseExpr(Tokenizer tok) returns Expr|err:Syntax {
    return parseBinaryOrExpr(tok);
}

function parseBinaryOrExpr(Tokenizer tok) returns Expr|err:Syntax {
    Expr expr = check parseBinaryAndExpr(tok);
    while true {
        Token? t = tok.current();
        if t == "|" {
            check tok.advance();
            Expr right = check parseBinaryAndExpr(tok);
            BinaryBitwiseExpr bin = { bitwiseOp: t, left: expr, right };
            expr = bin;
        } 
        else {
            break;
        }
    }
    return expr;
}

function parseBinaryAndExpr(Tokenizer tok) returns Expr|err:Syntax {
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
    Expr expr = check parseAdditiveExpr(tok);
    Token? t = tok.current();
    if t is BinaryRelationalOp {
        check tok.advance();
        Expr right = check parseAdditiveExpr(tok);
        BinaryRelationalExpr bin = { relationalOp: t, left: expr, right };
        return bin;
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
    Token? t = tok.current();
    if t is InlineTypeDesc {
        check tok.advance();
        check tok.expect(">");
        Expr operand = check parseUnaryExpr(tok);
        TypeCastExpr expr = { pos, td: t, operand, semType: convertInlineTypeDesc(t) };
        return expr;
    }
    return parseError(tok, "expected type descriptor");
}

function parsePrimaryExpr(Tokenizer tok) returns Expr|err:Syntax {
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
        Expr expr = check parseExpr(tok);
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

// current token is the "("
function finishFunctionCallExpr(Tokenizer tok, string? prefix, string funcName, err:Position pos) returns FunctionCallExpr|err:Syntax {
    Expr[] args = [];
    if tok.current() != ")" {
        while true {
            Expr arg = check parseExpr(tok);
            args.push(arg);
            Token? t = tok.current();
            if t == "," {
                check tok.advance();
            }
            else if t == ")" {
                break;
            }
            else {
                return parseError(tok, "invalid function argument");
            }
        }
    }
    check tok.advance();
    return { funcName, pos, args, prefix };
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
