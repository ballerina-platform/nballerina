import wso2/nballerina.err;

function parseExpr(Tokenizer tok) returns Expr|err:Syntax {
    return parseAdditiveExpr(tok);
}

function parseAdditiveExpr(Tokenizer tok) returns Expr|err:Syntax {
    Expr expr = check parsePrimaryExpr(tok);
    while true {
        Token? t = tok.current();
        if t is ("+"|"-") {
            BinaryExprOp op = t;
            check tok.advance();
            Expr right = check parsePrimaryExpr(tok);
            BinaryExpr bin = { op, left: expr, right };
            expr = bin;
        } 
        else {
            break;
        }
    }
    return expr;
}

function parsePrimaryExpr(Tokenizer tok) returns VarRefExpr|SimpleConstExpr|err:Syntax {
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        VarRefExpr expr = {varName: t[1]};
        check tok.advance();
        return expr;
    } 
    else if t is [DECIMAL_NUMBER, string] {
        SimpleConstExpr expr = { value: check parseDigits(tok, t[1]) };
        return expr;
    } 
    else {
        return parseError(tok);
    }
}

// current token is the "("
function finishFunctionCallExpr(Tokenizer tok, string identifier, err:Position pos) returns FunctionCallExpr|err:Syntax {
    check tok.advance();
    return err:syntax("cannot parse function calls");
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
        return err:syntax("invalid number", tok.currentPos(), res);
    } 
    else {
        check tok.advance();
        return res;
    }
}
