import wso2/nballerina.err;

function parseExpr(Tokenizer tok) returns Expr|err:Syntax {
    Token? t = tok.current();
    if t == "[" {
        check tok.advance();
        Expr[] members = check parseExprList(tok, "]");
        ListConstructorExpr expr = { members };
        return expr;
    }
    else if t == "{" {
        check tok.advance();
        Field[] fields = check parseFields(tok);
        MappingConstructorExpr expr = { fields };
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
    Expr expr = check parseShiftExpr(tok);
    Token? t = tok.current();
    if t is BinaryRelationalOp {
        check tok.advance();
        Expr right = check parseShiftExpr(tok);
        BinaryRelationalExpr bin = { relationalOp: t, left: expr, right };
        return bin;
    }
    else if t == "is" {
        tok.setMode(MODE_TYPE_DESC);
        check tok.advance();
        InlineTypeDesc td = check parseInlineTypeDesc(tok);
        tok.setMode(MODE_NORMAL);
        TypeTestExpr typeTest = { td, left: expr, semType: resolveInlineTypeDesc(td) };
        return typeTest;
    }
    else {
        return expr;
    }
}

function parseRangeExpr(Tokenizer tok) returns RangeExpr|err:Syntax {
    Expr lower = check parseAdditiveExpr(tok);
    check tok.expect("..<");
    Expr upper = check parseAdditiveExpr(tok);
    return { lower, upper };
}

function parseShiftExpr(Tokenizer tok) returns Expr|err:Syntax {
    Expr expr = check parseAdditiveExpr(tok);
    while true {
        Token? t = tok.current();
        if t is ("<<"|">>>"|">>") {
            check tok.advance();
            Expr right = check parseAdditiveExpr(tok);
            BinaryBitwiseExpr shift = { bitwiseOp: t, left: expr, right };
            expr = shift;
        }
        else {
            break;
        }
    }
    return expr;
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
    if t is "-"|"!"|"~" {
        err:Position pos = tok.currentPos();
        check tok.advance();
        Expr operand = check parseUnaryExpr(tok);
        UnaryExpr expr = { op: t, operand, pos };
        return expr;
    }
    else if t is "<" {
        return parseTypeCastExpr(tok);
    }
    return parsePrimaryExpr(tok);
}

function parseTypeCastExpr(Tokenizer tok) returns Expr|err:Syntax {
    tok.setMode(MODE_TYPE_DESC);
    err:Position pos = tok.currentPos();
    check tok.advance();
    InlineTypeDesc td = check parseInlineTypeDesc(tok);
    check tok.expect(">");
    tok.setMode(MODE_NORMAL);
    Expr operand = check parseUnaryExpr(tok);
    TypeCastExpr expr = { pos, td, operand, semType: resolveInlineTypeDesc(td) };
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
        IntLiteralExpr expr = { base: 10, digits: t[1], pos: tok.currentPos() };
        check tok.advance();
        return expr;
    }
    else if t is [HEX_INT_LITERAL, string] {
        IntLiteralExpr expr = { base: 16, digits: t[1], pos: tok.currentPos() };
        check tok.advance();
        return expr;
    }
    else if t is [STRING_LITERAL, string] {
        ConstValueExpr expr = { value: t[1] };
        check tok.advance();
        return expr;
    }
    else if t == "(" {
        check tok.advance();
        if tok.current() == ")" {
            check tok.advance();
            ConstValueExpr expr = { value: () };
            return expr;
        }
        Expr expr = check parseInnerExpr(tok);
        check tok.expect(")");
        return expr;
    }
    else if t is "true"|"false" {
        check tok.advance();
        ConstValueExpr expr = { value: t == "true" };
        return expr;
    }
    else if t is "null" {
        check tok.advance();
        ConstValueExpr expr = { value: () };
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
    else if t == "." {
        MethodCallExpr methodCallExpr = check finishMethodCallExpr(tok, expr);
        return finishPrimaryExpr(tok, methodCallExpr);
    }
    else {
        return expr;
    }
}

// Called with current token as "."
function finishMethodCallExpr(Tokenizer tok, Expr target) returns MethodCallExpr|err:Syntax {
    err:Position pos = tok.currentPos();
    check tok.advance();
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        string name = t[1];
        check tok.advance();
        t = tok.current();
        if t == "(" {
            check tok.advance();
            Expr[] args = check parseExprList(tok, ")");
            MethodCallExpr methodCallExpr = { methodName: name, target, pos, args };
            return methodCallExpr;
        }
    }
    return parseError(tok, "expected method call after dot");
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

function parseFields(Tokenizer tok) returns Field[]|err:Syntax {
    Field[] fields = [];
    if tok.current() != "}" {
        while true {
            Field f = check parseField(tok);
            fields.push(f);
            Token? t = tok.current();
            if t == "," {
                check tok.advance();
            }
            else if t == "}" {
                break;
            }
            else {
                return parseError(tok, "invalid field list");
            }
        }
    }
    check tok.advance();
    return fields;
}

function parseField(Tokenizer tok) returns Field|err:Syntax {
    Token? t = tok.current();
    match t {
        [IDENTIFIER, var name]
        | [STRING_LITERAL, var name] => {
            // Don't report an error for duplicates here
            // (it's not a syntax error)
            // Instead save the position and report during codeGen
            err:Position pos = tok.currentPos();
            check tok.advance();
            check tok.expect(":");
            Expr value = check parseExpr(tok);
            Field f = { pos, name, value };
            return f;
        }
    }
    return err:syntax("expected field name");
}

// This is simple-const-expr in the spec
// This is used for match patterns
// Will also be used for type descriptors
function parseSimpleConstExpr(Tokenizer tok) returns SimpleConstExpr|err:Syntax {
    err:Position? signPos = ();
    if tok.current() == "-" {
        signPos = tok.currentPos();
        check tok.advance();
    }
    Token? t = tok.current();
    match t {
        // JBUG gets bad, sad if parentheses removed from around type guard
        // (think it's parsing as an anonymous function)
        [IDENTIFIER, var varName] if (signPos == ()) => {
            VarRefExpr expr = { varName };
            return expr;
        }
        [STRING_LITERAL, var value] if (signPos == ()) => {
            ConstValueExpr expr = { value };
            check tok.advance();
            return expr;
        }
        "(" if (signPos == ()) => {
            check tok.advance();
            check tok.expect(")");
            ConstValueExpr expr = { value: () };
            return expr;
        }
        "true"|"false" if (signPos == ()) => {
            check tok.advance();
            ConstValueExpr expr = { value: t == "true" };
            return expr;
        }  
        [DECIMAL_NUMBER, var digits] => {
            return finishIntLiteral(tok, signPos, 10, digits);
        }
        [HEX_INT_LITERAL, var digits] => {
            return finishIntLiteral(tok, signPos, 16, digits);
        }
    }
    return parseError(tok);
}

function finishIntLiteral(Tokenizer tok, err:Position? signPos, IntLiteralBase base, string digits) returns SimpleConstExpr|err:Syntax {
    IntLiteralExpr intLiteral = { base, digits, pos: tok.currentPos() };
    check tok.advance();
    if signPos == () {
        return intLiteral;
    }
    else {
        SimpleConstNegateExpr expr = { operand: intLiteral, pos: signPos };
        return expr;
    }
}
