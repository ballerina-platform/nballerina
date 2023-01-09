import wso2/nballerina.comm.err;

type SpecialMethodName "map";

function parseExpr(Tokenizer tok) returns Expr|err:Syntax {
    Token? t = tok.current();
    Position startPos = tok.currentStartPos();
    if t == "[" {
        check tok.advance();
        var [members, _] = check parseExprList(tok, "]");
        Position endPos = tok.previousEndPos();
        ListConstructorExpr expr = { startPos, endPos, opPos: startPos, members };
        return expr;
    }
    else if t == "{" {
        check tok.advance();
        Field[] fields = check parseFields(tok);
        Position endPos = tok.previousEndPos();
        MappingConstructorExpr expr = { startPos, endPos, opPos: startPos, fields };
        return expr;
    }
    return parseInnerExpr(tok);
}

function parseInnerExpr(Tokenizer tok) returns Expr|err:Syntax {
    return parseLogicalOrExpr(tok);
}

function parseLogicalOrExpr(Tokenizer tok) returns Expr|err:Syntax {
    Position startPos = tok.currentStartPos();
    Expr expr = check parseLogicalAndExpr(tok);
    while true {
        Token? t = tok.current();
        if t == "||" {
            Position opPos = tok.currentStartPos();
            check tok.advance();
            Expr right = check parseLogicalAndExpr(tok);
            Position endPos = tok.previousEndPos();
            BinaryLogicalExpr bin = { startPos, endPos, opPos, logicalOp: "||", left: expr, right };
            expr = bin;
        }
        else {
            break;
        }
    }
    return expr;
}

function parseLogicalAndExpr(Tokenizer tok) returns Expr|err:Syntax {
    Position startPos = tok.currentStartPos();
    Expr expr = check parseBitwiseOrExpr(tok);
    while true {
        Token? t = tok.current();
        if t == "&&" {
            Position opPos = tok.currentStartPos();
            check tok.advance();
            Expr right = check parseBitwiseOrExpr(tok);
            Position endPos = tok.previousEndPos();
            BinaryLogicalExpr bin = { startPos, endPos, opPos, logicalOp: "&&", left: expr, right };
            expr = bin;
        }
        else {
            break;
        }
    }
    return expr;
}

function parseBitwiseOrExpr(Tokenizer tok) returns Expr|err:Syntax {
    Position startPos = tok.currentStartPos();
    Expr expr = check parseBitwiseXorExpr(tok);
    while true {
        Token? t = tok.current();
        if t == "|" {
            Position opPos = tok.currentStartPos();
            check tok.advance();
            Expr right = check parseBitwiseXorExpr(tok);
            Position endPos = tok.previousEndPos();
            BinaryBitwiseExpr bin = { startPos, endPos, opPos, bitwiseOp: t, left: expr, right };
            expr = bin;
        }
        else {
            break;
        }
    }
    return expr;
}

function parseBitwiseXorExpr(Tokenizer tok) returns Expr|err:Syntax {
    Position startPos = tok.currentStartPos();
    Expr expr = check parseBitwiseAndExpr(tok);
    while true {
        Token? t = tok.current();
        if t == "^" {
            Position opPos = tok.currentStartPos();
            check tok.advance();
            Expr right = check parseBitwiseAndExpr(tok);
            Position endPos = tok.previousEndPos();
            BinaryBitwiseExpr bin = { startPos, endPos, opPos, bitwiseOp: t, left: expr, right };
            expr = bin;
        }
        else {
            break;
        }
    }
    return expr;
}

function parseBitwiseAndExpr(Tokenizer tok) returns Expr|err:Syntax {
    Position startPos = tok.currentStartPos();
    Expr expr = check parseEqualityExpr(tok);
    while true {
        Token? t = tok.current();
        if t == "&" {
            Position opPos = tok.currentStartPos();
            check tok.advance();
            Expr right = check parseEqualityExpr(tok);
            Position endPos = tok.previousEndPos();
            BinaryBitwiseExpr bin = { startPos, endPos, opPos, bitwiseOp: t, left: expr, right };
            expr = bin;
        }
        else {
            break;
        }
    }
    return expr;
}

function parseEqualityExpr(Tokenizer tok)  returns Expr|err:Syntax {
    Position startPos = tok.currentStartPos();
    Expr expr = check parseRelationalExpr(tok);
    while true {
        Token? t = tok.current();
        if t is BinaryEqualityOp {
            Position opPos = tok.currentStartPos();
            check tok.advance();
            Expr right = check parseRelationalExpr(tok);
            Position endPos = tok.previousEndPos();
            BinaryEqualityExpr bin = { startPos, endPos, opPos, equalityOp: t, left: expr, right };
            expr = bin;
        }
        else {
            break;
        }
    }
    return expr;
}

function parseRelationalExpr(Tokenizer tok) returns Expr|err:Syntax {
    Position startPos = tok.currentStartPos();
    Expr expr = check parseShiftExpr(tok);
    Token? t = tok.current();
    if t is BinaryRelationalOp {
        Position opPos = tok.currentStartPos();
        check tok.advance();
        Expr right = check parseShiftExpr(tok);
        Position endPos = tok.previousEndPos();
        BinaryRelationalExpr bin = { startPos, endPos, opPos, relationalOp: t, left: expr, right };
        return bin;
    }
    else if t == "is" {
        return finishTypeTestExpr(tok, expr, false, startPos);
    }
    if t == "!" {
        check tok.advance();
        Token? t2 = tok.current();
        if t2 is "is" {
            return finishTypeTestExpr(tok, expr, true, startPos);
        }
        return tok.err("invalid operator");
    }
    else {
        return expr;
    }
}

function finishTypeTestExpr(Tokenizer tok, Expr expr, boolean negated, Position startPos) returns TypeTestExpr|err:Syntax {
    Position kwPos = tok.currentStartPos();
    tok.setMode(MODE_TYPE_DESC);
    check tok.advance();
    TypeDesc td = check parseTypeDesc(tok);
    Position endPos = tok.previousEndPos();
    tok.setMode(MODE_NORMAL);
    return { startPos, endPos, td, left: expr, negated, kwPos };
}

function parseRangeExpr(Tokenizer tok) returns RangeExpr|err:Syntax {
    Position startPos = tok.currentStartPos();
    Expr lower = check parseAdditiveExpr(tok);
    Position opPos = check tok.expectStart("..<");
    Expr upper = check parseAdditiveExpr(tok);
    Position endPos = tok.previousEndPos();
    return { startPos, endPos, opPos, lower, upper };
}

function parseShiftExpr(Tokenizer tok) returns Expr|err:Syntax {
    Position startPos = tok.currentStartPos();
    Expr expr = check parseAdditiveExpr(tok);
    while true {
        Token? t = tok.current();
        if t is BitwiseShiftOp {
            Position opPos = tok.currentStartPos();
            check tok.advance();
            Expr right = check parseAdditiveExpr(tok);
            Position endPos = tok.previousEndPos();
            BinaryBitwiseExpr shift = { startPos, endPos, opPos, bitwiseOp: t, left: expr, right };
            expr = shift;
        }
        else {
            break;
        }
    }
    return expr;
}

function parseAdditiveExpr(Tokenizer tok) returns Expr|err:Syntax {
    Position startPos = tok.currentStartPos();
    Expr expr = check parseMultiplicativeExpr(tok);
    while true {
        Token? t = tok.current();
        if t is ("+"|"-") {
            Position opPos = tok.currentStartPos();
            check tok.advance();
            Expr right = check parseMultiplicativeExpr(tok);
            Position endPos = tok.previousEndPos();
            BinaryArithmeticExpr bin = { startPos, endPos, opPos, arithmeticOp: t, left: expr, right };
            expr = bin;
        }
        else {
            break;
        }
    }
    return expr;
}

function parseMultiplicativeExpr(Tokenizer tok) returns Expr|err:Syntax {
    Position startPos = tok.currentStartPos();
    Expr expr = check parseUnaryExpr(tok);
    while true {
        Token? t = tok.current();
        if t is ("*"|"/"|"%") {
            Position opPos = tok.currentStartPos();
            check tok.advance();
            Expr right = check parseUnaryExpr(tok);
            Position endPos = tok.previousEndPos();
            BinaryArithmeticExpr bin = { startPos, endPos, opPos, arithmeticOp: t, left: expr, right };
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
    Position startPos = tok.currentStartPos();
    if t is "-"|"!"|"~" {
        Position opPos = tok.currentStartPos();
        check tok.advance();
        Expr operand = check parseUnaryExpr(tok);
        Position endPos = tok.previousEndPos();
        UnaryExpr expr = { startPos, endPos, opPos, op: t, operand };
        return expr;
    }
    else if t is CheckingKeyword {
        Position kwPos = tok.currentStartPos();
        check tok.advance();
        Expr operand = check parseUnaryExpr(tok);
        Position endPos = tok.previousEndPos();
        CheckingExpr expr = { startPos, endPos, kwPos, checkingKeyword: t, operand };
        return expr;
    }
    else if t is "<" {
        return parseTypeCastExpr(tok, startPos);
    }
    return parsePrimaryExpr(tok);
}

function parseTypeCastExpr(Tokenizer tok, Position startPos) returns Expr|err:Syntax {
    tok.setMode(MODE_TYPE_DESC);
    Position opPos = tok.currentStartPos();
    check tok.advance();
    TypeDesc td = check parseTypeDesc(tok);
    check tok.expect(">");
    tok.setMode(MODE_NORMAL);
    Expr operand = check parseUnaryExpr(tok);
    Position endPos = tok.previousEndPos();
    TypeCastExpr expr = { startPos, endPos, opPos, td, operand };
    return expr;
}

function parsePrimaryExpr(Tokenizer tok) returns Expr|err:Syntax {
    Position startPos = tok.currentStartPos();
    return finishPrimaryExpr(tok, check startPrimaryExpr(tok), startPos);
}

function startPrimaryExpr(Tokenizer tok) returns Expr|err:Syntax {
    Token? t = tok.current();
    Position startPos = tok.currentStartPos();
    Position endPos = tok.currentEndPos();
    if t is [IDENTIFIER, string] {
        string? prefix;
        string name;
        check tok.advance();
        [prefix, name] = check parseOptQualIdentifier(tok, t[1]);
        if tok.current() == "(" {
            return finishFunctionCallExpr(tok, prefix, name, startPos);
        }
        endPos = tok.previousEndPos();
        return { startPos, endPos, prefix, name, qNamePos: startPos };
    }
    else if t is [DECIMAL_NUMBER, string] {
        IntLiteralExpr expr = { startPos, endPos, base: 10, digits: t[1] };
        check tok.advance();
        return expr;
    }
    else if t is [DECIMAL_FP_NUMBER, string, FpTypeSuffix?] {
        FpLiteralExpr expr = { startPos, endPos, untypedLiteral: t[1], typeSuffix: t[2] };
        check tok.advance();
        return expr;
    }
    else if t is [HEX_INT_LITERAL, string] {
        IntLiteralExpr expr = { startPos, endPos, base: 16, digits: t[1] };
        check tok.advance();
        return expr;
    }
    else if t is [STRING_LITERAL, string] {
        LiteralExpr expr = { startPos, endPos, value: t[1] };
        check tok.advance();
        return expr;
    }
    else if t == "(" {
        check tok.advance();
        if tok.current() == ")" {
            endPos = tok.currentEndPos();
            check tok.advance();
            LiteralExpr expr = { startPos, endPos, value: () };
            return expr;
        }
        Expr innerExpr = check parseInnerExpr(tok);
        endPos = check tok.expectEnd(")");
        return { startPos, endPos, innerExpr };
    }
    else if t is "true"|"false" {
        check tok.advance();
        LiteralExpr expr = { startPos, endPos, value: t == "true" };
        return expr;
    }
    else if t is "null" {
        check tok.advance();
        LiteralExpr expr = { startPos, endPos, value: () };
        return expr;
    }
    else if t is "error" {
        Position kwPos = tok.currentStartPos();
        check tok.advance();
        check tok.expect("(");
        Expr message  = check parseExpr(tok);
        endPos = check tok.expectEnd(")");
        return { startPos, endPos, message, kwPos };
    }
    else {
        return parseError(tok);
    }
}

function finishPrimaryExpr(Tokenizer tok, Expr expr, Position startPos) returns Expr|err:Syntax {
    Token? t = tok.current();
    Position opPos = tok.currentStartPos();
    if t == "[" {
        check tok.advance();
        Expr index = check parseInnerExpr(tok);
        Position accessEndPos = check tok.expectEnd("]");
        MemberAccessExpr accessExpr = { startPos, endPos: accessEndPos, opPos, container: expr, index };
        return finishPrimaryExpr(tok, accessExpr, startPos);
    }
    else if t == "." {
        opPos = tok.currentStartPos();
        check tok.advance();
        Position qnamePos = tok.currentStartPos();
        string name = check parseIdentifierOrMethodName(tok);
        if tok.current() == "(" {
            return finishPrimaryExpr(tok, check finishMethodCallExpr(tok, expr, name, startPos, qnamePos, opPos), startPos);
        }
        else {
            Position endPos = tok.previousEndPos();
            FieldAccessExpr fieldAccessExpr = { startPos, endPos, opPos, container: expr, fieldName: name };
            return finishPrimaryExpr(tok, fieldAccessExpr, startPos);
        }
    }
    else {
        return expr;
    }
}

function parseIdentifierOrMethodName(Tokenizer tok) returns string|err:Syntax {
    Token? t = tok.current();
    if t is SpecialMethodName {
        check tok.advance();
        if tok.current() == "(" {
            return t;
        }
        return parseError(tok, "expected open parenthesis");
    }
    return tok.expectIdentifier();
}

// Called with current token as "("
function finishMethodCallExpr(Tokenizer tok, Expr target, string methodName, Position startPos, Position namePos, Position opPos) returns MethodCallExpr|err:Syntax {
    Position openParenPos = tok.currentStartPos();
    check tok.advance();
    var [args, closeParenPos] = check parseExprList(tok, ")");
    Position endPos = tok.previousEndPos();
    return { startPos, endPos, opPos, namePos, openParenPos, closeParenPos, target, methodName, args };
}

function finishFunctionCallExpr(Tokenizer tok, string? prefix, string funcName, Position startPos) returns FunctionCallExpr|err:Syntax {
    Position openParenPos = tok.currentStartPos();
    check tok.advance();
    var [args, closeParenPos] = check parseExprList(tok, ")");
    Position endPos = tok.previousEndPos();
    return { startPos, endPos, openParenPos, closeParenPos, qNamePos: startPos, funcName, args, prefix };
}

function parseExprList(Tokenizer tok, "]"|")" terminator) returns [Expr[], Position]|err:Syntax {
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
    Position closeTerminatorPos = tok.currentStartPos();
    check tok.advance();
    return [exprs, closeTerminatorPos];
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
    Position startPos = tok.currentStartPos();
    if t is [IDENTIFIER|STRING_LITERAL, string] {
        boolean isIdentifier = t[0] == IDENTIFIER;
        string name = t[1];
        // Don't report an error for duplicates here
        // (it's not a syntax error)
        // Instead save the position and report during codeGen
        check tok.advance();
        Position colonPos = tok.currentStartPos();
        check tok.expect(":");
        Expr value = check parseExpr(tok);
        Position endPos = tok.previousEndPos();
        Field f = { startPos, endPos, colonPos, name, value, isIdentifier };
        return f;
    }
    return tok.err("expected field name");
}

// This is simple-const-expr in the spec
// This is used for match patterns
// Will also be used for type descriptors
function parseSimpleConstExpr(Tokenizer tok) returns SimpleConstExpr|err:Syntax {
    Token? t = tok.current();
    Position startPos = tok.currentStartPos();
    if t == "-" {
        Position opPos = tok.currentStartPos();
        check tok.advance();
        NumericLiteralExpr operand = check parseNumericLiteralExpr(tok);
        Position endPos = tok.previousEndPos();
        SimpleConstNegateExpr expr = { startPos, endPos, opPos, operand };
        return expr;
    }
    match t {
        [STRING_LITERAL, var value] => {
            Position endPos = tok.currentEndPos();
            LiteralExpr expr = { startPos, endPos, value };
            check tok.advance();
            return expr;
        }
        "null" => {
            Position endPos = tok.currentEndPos();
            LiteralExpr expr = { startPos, endPos, value: () };
            return expr;
        }
        "("  => {
            check tok.advance();
            Position endPos = check tok.expectEnd(")");
            LiteralExpr expr = { startPos, endPos, value: () };
            return expr;
        }
        "true"|"false"  => {
            Position endPos = tok.currentEndPos();
            check tok.advance();
            LiteralExpr expr = {  startPos, endPos, value: t == "true" };
            return expr;
        }
        [DECIMAL_FP_NUMBER, _, _] => {
            return parseNumericLiteralExpr(tok);
        }
    }
    return parseArrayLengthExpr(tok);
}

function parseArrayLengthExpr(Tokenizer tok) returns SimpleConstExpr|err:Syntax {
    Token? t = tok.current();
    Position startPos = tok.currentStartPos();
    
    match t {
        [IDENTIFIER, var identifier] => {
            Position endPos = tok.currentEndPos();
            check tok.advance();
            var [prefix, name] = check parseOptQualIdentifier(tok, identifier);
            if prefix != () {
                endPos = tok.previousEndPos();
            }
            return { startPos, endPos, prefix, name, qNamePos: startPos };
        }
        [DECIMAL_NUMBER, _]
        | [HEX_INT_LITERAL, _] => {
            return parseNumericLiteralExpr(tok);
        }
    }
    return parseError(tok);
}

function parseOptQualIdentifier(Tokenizer tok, string identifier) returns [string?, string]|err:Syntax {
    if tok.currentIsNoSpaceColon() {
        check tok.advance();
        return [identifier, check tok.expectIdentifier()];
    }
    else {
        return [(), identifier];
    }
}

function parseNumericLiteralExpr(Tokenizer tok) returns NumericLiteralExpr|err:Syntax {
    Token? t = tok.current();
    Position startPos = tok.currentStartPos();
    match t {
        [DECIMAL_NUMBER, _]
        | [HEX_INT_LITERAL, _] => {
            return parseIntLiteralExpr(tok);
        }
        [DECIMAL_FP_NUMBER, var untypedLiteral, var typeSuffix] => {
            Position endPos = tok.currentEndPos();
            check tok.advance();
            return { startPos, endPos, untypedLiteral, typeSuffix };
        }
    }
    return parseError(tok, "expected numeric literal");
}

// XXX This can merged into parseNumericLiteralExpr when we add float support
// outside types
function parseIntLiteralExpr(Tokenizer tok) returns IntLiteralExpr|err:Syntax {
    Token? t = tok.current();
    Position startPos = tok.currentStartPos();
    Position endPos = tok.currentEndPos();
    match t {
        [DECIMAL_NUMBER, var digits] => {
            check tok.advance();
            IntLiteralExpr expr = { startPos, endPos, base: 10, digits };
            return expr;
        }
        [HEX_INT_LITERAL, var digits] => {
            check tok.advance();
            IntLiteralExpr expr = { startPos, endPos, base: 16, digits };
            return expr;
        }
    }
    return parseError(tok, "expected integer literal");
}

public function intFromIntLiteral(IntLiteralBase base, string digits) returns int|error {
    return base == 10 ? int:fromString(digits) : int:fromHexString(digits);
}
