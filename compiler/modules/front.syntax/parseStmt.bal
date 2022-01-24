import wso2/nballerina.comm.err;

function parseStmtBlock(Tokenizer tok) returns StmtBlock|err:Syntax {
    if tok.current() == "{" {
        Position startPos = tok.currentStartPos();
        Stmt[] stmts = [];
        check tok.advance();
        while tok.current() != "}" {
            stmts.push(check parseStmt(tok));
        }
        Position endPos = tok.currentEndPos();
        Position closeBracePos = tok.currentStartPos();
        check tok.advance();
        return { startPos, endPos, stmts, closeBracePos };
    }
    return parseError(tok, "unhandled condition in statement block");
}

function parseStmt(Tokenizer tok) returns Stmt|err:Syntax {
    Token? cur = tok.current();
    Position startPos = tok.currentStartPos();
    match cur {
        [IDENTIFIER, var identifier] => {
            var peeked = tok.peek(skipQualIdent=true);
            if peeked is "|" | "?" | "&" | "_" | IDENTIFIER {
                TypeDesc td = check parseTypeDesc(tok);
                return finishVarDeclStmt(tok, td, startPos);
            }
            else if peeked == "[" {
                boolean isTypeDesc = check savePreparseRestore(tok, preparseArrayTypeDesc);
                if isTypeDesc {
                    return parseVarDeclStmt(tok, startPos);
                }
            }
            check tok.advance();
            return finishIdentifierStmt(tok, identifier, startPos, startPos);
        }
        "_" => {
            check tok.advance();
            if tok.current() == "=" {
                return finishAssignStmt(tok, WILDCARD, "=", startPos);
            }
        }
        "return" => {
            check tok.advance();
            return parseReturnStmt(tok, startPos);
        }
        "panic" => {
            check tok.advance();
            return parsePanicStmt(tok, startPos);
        }
        "break"|"continue" => {
            check tok.advance();
            Position endPos = check tok.expectEnd(";");
            // JBUG #33341 cast
            BreakContinueStmt stmt = { startPos, endPos, breakContinue:<BreakContinue>cur };
            return stmt;
        }
        "if" => {
            check tok.advance();
            return parseIfElseStmt(tok, startPos);
        }
        "match" => {
            check tok.advance();
            return parseMatchStmt(tok, startPos);
        }
        "while" => {
            check tok.advance();
            return parseWhileStmt(tok, startPos);
        }
        "foreach" => {
            check tok.advance();
            return parseForeachStmt(tok, startPos);
        }
        "final" => {
            check tok.advance();
            return parseVarDeclStmt(tok, startPos, true);
        }
        "error" => {
            if tok.peek() == "(" {
                return parseMethodCallStmt(tok);
            }
            else {
                return finishVarDeclStmt(tok, check parseTypeDesc(tok), startPos);
            }
        }
        "check"|"checkpanic" => {
            check tok.advance();
            // JBUG #33341 cast
            return finishCheckingCallStmt(tok, <CheckingKeyword>cur, startPos);
        }
        var td if td is SubsetBuiltinTypeName|"map"|"record" => {
            return parseVarDeclStmt(tok, startPos);
        }
        "(" => {
            TokenizerState state = tok.save();
            check tok.advance();
            boolean isTypeDesc = check preparseParenTypeDesc(tok);
            tok.restore(state);

            if isTypeDesc {
                return parseVarDeclStmt(tok, startPos);
            }
            else {
                return parseMethodCallStmt(tok);
            }
        }
        [DECIMAL_NUMBER, _]
        | [STRING_LITERAL, _]
        | "true"
        | "false"
        | "null"
        | [HEX_INT_LITERAL, _]
        | [DECIMAL_FP_NUMBER, _, _] => {
            var peeked = tok.peek();
            if peeked == "." || (peeked == "[" && !check savePreparseRestore(tok, preparseArrayTypeDesc)) {
                return parseMethodCallStmt(tok);
            }
            return parseVarDeclStmt(tok, startPos);
        }
        "-" => {
            return parseVarDeclStmt(tok, startPos);
        }
    }
    return parseError(tok, "unhandled statement");
}

type AssignOp "="|CompoundAssignOp;
type PreparseFunc function(Tokenizer) returns boolean|err:Syntax;

function savePreparseRestore(Tokenizer tok, PreparseFunc func) returns boolean|err:Syntax {
    TokenizerState state = tok.save();
    boolean isTypeDesc = check func(tok);
    tok.restore(state);
    return isTypeDesc;
}

// We only call this when we know (through preparsing) that the statement does not start with a type descriptor.
function finishIdentifierStmt(Tokenizer tok, string name1, Position startPos, Position qNamePos) returns Stmt|err:Syntax {
    string name;
    string? prefix;
    if tok.currentIsNoSpaceColon() {
        check tok.advance();
        name = check tok.expectIdentifier();
        prefix = name1;
    }
    else {
        name = name1;
        prefix = ();
    }
    if tok.current() == "(" {
        FunctionCallExpr expr = check finishFunctionCallExpr(tok, prefix, name, startPos);
        return finishCallStmt(tok, expr, startPos);
    }
    Position endPos = tok.previousEndPos();
    LExpr lExpr = { startPos, endPos, name, qNamePos: startPos, prefix };
    Token? cur = tok.current();
    while true {
        Position opPos = tok.currentStartPos();
        if cur == "." {
            check tok.advance();
            Position namePos = tok.currentStartPos();
            name = check parseIdentifierOrMethodName(tok);
            if tok.current() == "(" {
                 return finishCallStmt(tok, check finishMethodCallExpr(tok, lExpr, name, startPos, namePos, opPos), startPos);
            }
            lExpr = { startPos, endPos, fieldName: name, container: lExpr, opPos };
        }
        else if cur == "[" {
            check tok.advance();
            Expr index = check parseInnerExpr(tok);
            endPos = check tok.expectEnd("]");
            lExpr =  { startPos, endPos, container: lExpr, index, opPos };
        }
        else {
            break;
        }
        cur = tok.current();
    }
    if cur is AssignOp {
        return finishAssignStmt(tok, lExpr, cur, startPos);
    }
    return parseError(tok, "invalid statement");
}

function parseMethodCallStmt(Tokenizer tok) returns CallStmt|err:Syntax {
    Position startPos = tok.currentStartPos();
    Expr expr = check startPrimaryExpr(tok);
    Token? cur = tok.current();
    if cur == "." || cur == "[" {
        expr = check finishPrimaryExpr(tok, expr, startPos);
        if expr is MethodCallExpr {
            Position endPos = check tok.expectEnd(";");
            return { startPos, endPos, expr };
        }
    }
    return parseError(tok, "expression not allowed as a statement");
}

function finishCallStmt(Tokenizer tok, CallExpr expr, Position startPos) returns Stmt|err:Syntax {
    Expr primary = check finishPrimaryExpr(tok, expr, startPos);
    Position endPos = check tok.expectEnd(";");
    CallStmt stmt;
    if primary === expr {
        stmt = { startPos, endPos, expr };
    }
    else if primary is MethodCallExpr {
        stmt = { startPos, endPos, expr: primary };
    }
    else {
        return parseError(tok, "member access expr not allowed as a statement");
    }
    return stmt;
}

// This function is called with the token after the checkingKeyword as the current token
function finishCheckingCallStmt(Tokenizer tok, CheckingKeyword checkingKeyword, Position kwPos) returns CallStmt|err:Syntax {
    Token? t = tok.current();
    if t is "check"|"checkpanic" {
        // multiple checkingKeywords in the statement call (ex: check check fn();)
        Position innerKwPos = tok.currentStartPos();
        check tok.advance();
        CallStmt operandStmt = check finishCheckingCallStmt(tok, t, innerKwPos);
        callStmtAddChecking(kwPos, tok.previousEndPos(), operandStmt, checkingKeyword);
        return operandStmt;
    }
    else if t == "(" {
        CallStmt operandStmt = check parseMethodCallStmt(tok);
        callStmtAddChecking(kwPos, tok.previousEndPos(), operandStmt, checkingKeyword);
        return operandStmt;
    }
    Expr operand = check parsePrimaryExpr(tok);
    if operand is FunctionCallExpr|MethodCallExpr {
        CheckingCallExpr expr = { startPos: kwPos, endPos: operand.endPos, checkingKeyword, kwPos, operand};
        Position endPos = check tok.expectEnd(";");
        return { startPos: kwPos, endPos, expr };
    }
    return parseError(tok, "function call, method call or checking expression expected");
}

function callStmtAddChecking(Position kwPos, Position endPos, CallStmt stmt, CheckingKeyword checkingKeyword) {
    stmt.expr = { startPos: kwPos, endPos: stmt.expr.endPos, checkingKeyword, kwPos, operand: stmt.expr };
    stmt.startPos = kwPos;
}

function finishAssignStmt(Tokenizer tok, LExpr|WILDCARD lValue, AssignOp op, Position startPos) returns AssignStmt|CompoundAssignStmt|err:Syntax {
    Position opPos = tok.currentStartPos();
    check tok.advance();
    Expr expr = check parseExpr(tok);
    Position endPos = check tok.expectEnd(";");
    // the `||` makes the narrowings work
    if op is "=" || lValue == WILDCARD {
        AssignStmt stmt = { startPos, endPos, opPos, lValue, expr };
        return stmt;
    }
    else {
        string opStr = op;
        BinaryArithmeticOp|BinaryBitwiseOp binOp = <BinaryArithmeticOp|BinaryBitwiseOp> opStr.substring(0, opStr.length() - 1);
        CompoundAssignStmt stmt = { startPos, endPos, opPos, lValue, expr, op: binOp };
        return stmt;
    }
}

function parseVarDeclStmt(Tokenizer tok, Position startPos, boolean isFinal = false) returns VarDeclStmt|err:Syntax {
    TypeDesc td = check parseTypeDesc(tok);
    return finishVarDeclStmt(tok, td, startPos, isFinal);
}

function finishVarDeclStmt(Tokenizer tok, TypeDesc td, Position startPos, boolean isFinal = false) returns VarDeclStmt|err:Syntax {
    Token? cur = tok.current();
    Position namePos = tok.currentStartPos();
    string|WILDCARD name;
    if cur == "_" {
        name = WILDCARD;
        check tok.advance();
    }
    else {
        name = check tok.expectIdentifier();
    }
    // initExpr is required in the subset
    Position opPos = check tok.expectStart("=");
    Expr initExpr = check parseExpr(tok);
    Position endPos = check tok.expectEnd(";");
    return { startPos, endPos, opPos, td, name, namePos, initExpr, isFinal };
}

function parseReturnStmt(Tokenizer tok, Position startPos) returns ReturnStmt|err:Syntax {
    Expr? returnExpr;
    Position endPos;
    if tok.current() == ";" {
        endPos = tok.currentEndPos();
        returnExpr = ();
        check tok.advance();
    }
    else {
        returnExpr = check parseExpr(tok);
        endPos = check tok.expectEnd(";");
    }
    return { startPos, endPos, returnExpr, kwPos: startPos };
}

function parsePanicStmt(Tokenizer tok, Position startPos) returns PanicStmt|err:Syntax {
    Expr panicExpr = check parseExpr(tok);
    Position endPos = check tok.expectEnd(";");
    return { startPos, endPos, panicExpr, kwPos: startPos };
}

function parseIfElseStmt(Tokenizer tok, Position startPos) returns IfElseStmt|err:Syntax {
    IfElseStmt|StmtBlock? ifFalse;
    Expr condition = check parseExpr(tok);
    StmtBlock ifTrue = check parseStmtBlock(tok);
    Position endPos = tok.previousEndPos();
    Token? cur = tok.current();
    if cur == "else" {
        check tok.advance();
        // if exp1 { } else if exp2 { }
        if tok.current() == "if" {
            Position ifFalseStartPos = tok.currentStartPos();
            check tok.advance();
            ifFalse = check parseIfElseStmt(tok, ifFalseStartPos);
        }
        // if exp1 { } else { }
        else if tok.current() == "{" {
            ifFalse = check parseStmtBlock(tok);
        }
        else {
            return parseError(tok);
        }
        endPos = tok.previousEndPos();
    }
    else {
        ifFalse = ();
    }
    return { startPos, endPos, condition, ifTrue, ifFalse };
}

function parseWhileStmt(Tokenizer tok, Position startPos) returns WhileStmt|err:Syntax {
    Expr condition = check parseExpr(tok);
    StmtBlock body = check parseStmtBlock(tok);
    Position endPos = tok.previousEndPos();
    return { startPos, endPos, condition, body };
}

function parseForeachStmt(Tokenizer tok, Position startPos) returns ForeachStmt|err:Syntax {
    if tok.current() != "int" {
        return parseError(tok, "type of foreach variable must be int");
    }
    check tok.advance();
    Position namePos = tok.currentStartPos();
    string name = check tok.expectIdentifier();
    Position kwPos = check tok.expectStart("in");
    RangeExpr range = check parseRangeExpr(tok);
    StmtBlock body = check parseStmtBlock(tok);
    Position endPos = tok.previousEndPos();
    return { startPos, endPos, namePos, kwPos, name, range, body };
}

function parseMatchStmt(Tokenizer tok, Position startPos) returns MatchStmt|err:Syntax {
    Expr expr = check parseInnerExpr(tok);
    check tok.expect("{");
    MatchClause[] clauses = [];
    clauses.push(check parseMatchClause(tok));
    while tok.current() != "}" {
        clauses.push(check parseMatchClause(tok));
    }
    Position endPos = tok.currentEndPos();
    check tok.advance();
    return { startPos, endPos, expr, clauses };
}

function parseMatchClause(Tokenizer tok) returns MatchClause|err:Syntax {
    Position startPos = tok.currentStartPos();
    MatchPattern[] patterns = check parseMatchPatternList(tok);
    Position opPos = check tok.expectStart("=>");
    StmtBlock block = check parseStmtBlock(tok);
    Position endPos = tok.previousEndPos();
    return { startPos, endPos, patterns, block, opPos };
}

function parseMatchPatternList(Tokenizer tok) returns MatchPattern[]|err:Syntax {
    MatchPattern[] patterns = [];
    patterns.push(check parseMatchPattern(tok));
    while tok.current() == "|" {
        check tok.advance();
        patterns.push(check parseMatchPattern(tok));
    }
    return patterns;
}

function parseMatchPattern(Tokenizer tok) returns MatchPattern|err:Syntax {
    Token? cur = tok.current();
    if cur is WILDCARD_MATCH_PATTERN {
        Position startPos = tok.currentStartPos();
        Position endPos = tok.currentEndPos();
        check tok.advance();
        return <WildcardMatchPattern> { startPos, endPos };
    }
    return check parseSimpleConstExpr(tok);
}
