import wso2/nballerina.err;

function parseStmtBlock(Tokenizer tok) returns Stmt[]|err:Syntax {
    Token? cur = tok.current();
    if cur == "{" {
        Stmt[] stmts = [];
        check tok.advance();
        cur = tok.current();
        while cur != "}" {
            stmts.push(check parseStmt(tok));
            cur = tok.current();
        }
        check tok.advance();
        return stmts;
    }
    return parseError(tok, "unhandled condition in statement block");
}

function parseStmt(Tokenizer tok) returns Stmt|err:Syntax {
    Token? cur = tok.current();
    match cur {
        [IDENTIFIER, var identifier] => {
            Position pos = tok.currentStartPos();
            check tok.advance();
            return finishIdentifierStmt(tok, identifier, pos);
        }
        "_" => {
            check tok.advance();
            return finishAssignStmt(tok, WILDCARD);
        }
        "return" => {
            check tok.advance();
            return parseReturnStmt(tok);
        }
        "panic" => {
            check tok.advance();
            return parsePanicStmt(tok);
        }
        "break" => {
            check tok.advance();
            check tok.expect(";");
            return "break";
        }
        "continue" => {
            check tok.advance();
            check tok.expect(";");
            return "continue";
        }
        "if" => {
            check tok.advance();
            return parseIfElseStmt(tok);
        }
        "match" => {
            check tok.advance();
            return parseMatchStmt(tok);
        }
        "while" => {
            check tok.advance();
            return parseWhileStmt(tok);
        }
        "foreach" => {
            check tok.advance();
            return parseForeachStmt(tok);
        }
        "final" => {
            check tok.advance();
            return parseVarDeclStmt(tok, true);
        }
        "error" => {
            return parseErrorStmt(tok);
        }
        "check"|"checkpanic" => {
            check tok.advance();
            // JBUG cast
            return finishCheckingCallStmt(tok, <CheckingKeyword>cur);
        }
        var td if td is InlineBuiltinTypeDesc|"map" => {
            return parseVarDeclStmt(tok);
        }
        "(" => {
            TokenizerState state = tok.save();
            check tok.advance();
            boolean isTypeDesc = check preparseParenTypeDesc(tok);
            tok.restore(state);

            if isTypeDesc {
                return parseVarDeclStmt(tok);
            }
            else {
                return parseMethodCallStmt(tok);
            }
        }
        [DECIMAL_NUMBER, _]|[STRING_LITERAL, _]|"true"|"false"|"null" => {
            return parseMethodCallStmt(tok);
        }
    }
    return parseError(tok, "unhandled statement");
}


function finishIdentifierStmt(Tokenizer tok, string identifier, Position pos) returns Stmt|err:Syntax {
    Token? cur = tok.current();
    if cur == "=" {
        VarRefExpr lValue = { varName: identifier };
        return finishAssignStmt(tok, lValue);
    }
    else if cur is CompoundAssignOp {
        VarRefExpr lValue = { varName: identifier };
        return parseCompoundAssignStmt(tok, lValue, cur);
    }
    else if cur == "[" {
        VarRefExpr varRef = { varName: identifier };
        Position bracketPos = tok.currentStartPos();
        check tok.advance();
        Expr index = check parseInnerExpr(tok);
        check tok.expect("]");
        cur = tok.current();
        if cur == "=" {
            MemberAccessLExpr lValue = { container: varRef, index, pos: bracketPos };
            return finishAssignStmt(tok, lValue);
        } 
        else if cur is CompoundAssignOp {
            MemberAccessLExpr lValue = { container: varRef, index, pos: bracketPos };
            return parseCompoundAssignStmt(tok, lValue, cur);
        }
        MemberAccessExpr memberAccess = { container: varRef, index, pos: bracketPos };
        Expr expr = check finishPrimaryExpr(tok, memberAccess);
        if expr is MethodCallExpr {
            check tok.expect(";");
            return expr;
        }
        return parseError(tok, "member access expr not allowed as a statement"); 
    }
    else if cur == ":" {
        check tok.advance();
        return finishOptQualIdentifierStmt(tok, identifier, check tok.expectIdentifier(), pos);
    }
    else if cur is [IDENTIFIER, string] {
        TypeDescRef ref = { typeName: identifier, pos };
        return finishVarDeclStmt(tok, ref);
    }
    return finishOptQualIdentifierStmt(tok, (), identifier, pos);
}

function finishOptQualIdentifierStmt(Tokenizer tok, string? prefix, string identifier, Position pos) returns Stmt|err:Syntax {
    Token? cur = tok.current();
    if cur == "(" {
        check tok.advance();
        FunctionCallExpr expr = check finishFunctionCallExpr(tok, prefix, identifier, pos);
        return finishCallStmt(tok, expr);
    }
    else if cur == "." {
        VarRefExpr varRef = { varName: identifier, prefix };
        MethodCallExpr expr = check finishMethodCallExpr(tok, varRef);
        return finishCallStmt(tok, expr);
    }
    else if cur is [IDENTIFIER, string] {
        TypeDescRef ref = { prefix, typeName: identifier, pos };
        return finishVarDeclStmt(tok, ref);
    }
    return parseError(tok, "invalid statement");
}

// Parse a statement that starts with the keyword `error`
function parseErrorStmt(Tokenizer tok) returns Stmt|err:Syntax {
    Position pos = tok.currentStartPos();
    check tok.advance();
    if tok.current() == "(" {
        check tok.advance();
        ErrorConstructorExpr errExpr = check finishErrorConstructorExpr(tok, pos);
        if tok.current() == "." {
            MethodCallExpr expr = check finishMethodCallExpr(tok, errExpr);
            return finishCallStmt(tok, expr);
        }
        return parseError(tok, "error constructor not allowed here");
    }
    else {
        return finishVarDeclStmt(tok, check finishInlineTypeDesc(tok, "error"));
    }
}

function parseMethodCallStmt(Tokenizer tok) returns MethodCallExpr|err:Syntax {
    Expr expr = check startPrimaryExpr(tok);
    Token? cur = tok.current();
    if cur == "." || cur == "[" {
        expr = check finishPrimaryExpr(tok, expr);
        if expr is MethodCallExpr {
            check tok.expect(";");
            return expr;
        }
    }
    return parseError(tok, "expression not allowed as a statement");
}

function finishCallStmt(Tokenizer tok, CallStmt expr) returns Stmt|err:Syntax {
    Expr primary = check finishPrimaryExpr(tok, expr);
    CallStmt stmt;
    if primary === expr {
        stmt = expr;
    }
    else if primary is MethodCallExpr {
        stmt = primary;
    }
    else {
        return parseError(tok, "member access expr not allowed as a statement");
    }
    check tok.expect(";");
    return stmt;
}

function finishCheckingCallStmt(Tokenizer tok, CheckingKeyword checkingKeyword) returns CallStmt|err:Syntax {
    Token? t = tok.current();
    if t is "check"|"checkpanic" {
        check tok.advance();
        return { checkingKeyword, operand: check finishCheckingCallStmt(tok, t) };
    }
    else if t == "(" {
        return { checkingKeyword, operand: check parseMethodCallStmt(tok) };
    }
    Expr operand = check parsePrimaryExpr(tok);
    if operand is FunctionCallExpr|MethodCallExpr {
        check tok.expect(";");
        return { checkingKeyword, operand };
    }
    return parseError(tok, "function call, method call or checking expression expected");
}

function finishAssignStmt(Tokenizer tok, LExpr|WILDCARD lValue) returns AssignStmt|err:Syntax {
    check tok.advance();
    Expr expr = check parseExpr(tok);
    AssignStmt stmt = { lValue, expr };
    check tok.expect(";");
    return stmt; 
}

function parseCompoundAssignStmt(Tokenizer tok, LExpr lValue, CompoundAssignOp op) returns CompoundAssignStmt|err:Syntax {
    check tok.advance();
    Expr expr = check parseExpr(tok);
    string opStr = op;
    BinaryArithmeticOp|BinaryBitwiseOp binOp = <BinaryArithmeticOp|BinaryBitwiseOp> opStr.substring(0, opStr.length() - 1);
    CompoundAssignStmt stmt = { lValue, expr , op: binOp, pos: tok.currentStartPos() };
    check tok.expect(";");
    return stmt; 
}

function parseVarDeclStmt(Tokenizer tok, boolean isFinal = false) returns VarDeclStmt|err:Syntax {
    TypeDesc td = check parseTypeDesc(tok);
    return finishVarDeclStmt(tok, td, isFinal);
}

function finishVarDeclStmt(Tokenizer tok, TypeDesc td, boolean isFinal = false) returns VarDeclStmt|err:Syntax {
    Token? cur = tok.current();
    string varName = check tok.expectIdentifier();
    // initExpr is required in the subset
    check tok.expect("=");
    Expr initExpr = check parseExpr(tok);
    check tok.expect(";");
    return { td, varName, initExpr, isFinal };
}

function parseReturnStmt(Tokenizer tok) returns ReturnStmt|err:Syntax {
    Expr returnExpr;
    if tok.current() == ";" {
        returnExpr = { value: () }; // ConstValueExpr
        check tok.advance();
    }
    else {
        returnExpr = check parseExpr(tok);
        check tok.expect(";");
    }
    return { returnExpr };
}

function parsePanicStmt(Tokenizer tok) returns PanicStmt|err:Syntax {
    Expr panicExpr = check parseExpr(tok);
    check tok.expect(";");
    return { panicExpr };
}

function parseIfElseStmt(Tokenizer tok) returns IfElseStmt|err:Syntax {
    Stmt[] ifFalse;
    Expr condition = check parseExpr(tok);
    Stmt[] ifTrue = check parseStmtBlock(tok);
    Token? cur = tok.current();
    if cur == "else" {
        check tok.advance();
        // if exp1 { } else if exp2 { }
        if tok.current() == "if" { 
            check tok.advance();
            ifFalse = [check parseIfElseStmt(tok)];
        }
        // if exp1 { } else { }
        else if tok.current() == "{" {
            ifFalse = check parseStmtBlock(tok);
        }
        else {
            return parseError(tok);
        }
    } else {
        ifFalse = [];
    }
    return { condition, ifTrue, ifFalse };
}

function parseWhileStmt(Tokenizer tok) returns WhileStmt|err:Syntax {
    Expr condition = check parseExpr(tok);
    Stmt[] body = check parseStmtBlock(tok);
    return { condition, body };
}

function parseForeachStmt(Tokenizer tok) returns ForeachStmt|err:Syntax {
    if tok.current() != "int" {
        return parseError(tok, "type of foreach variable must be int");
    }
    check tok.advance();
    Token? cur = tok.current();
    string varName = check tok.expectIdentifier();
    check tok.expect("in");
    RangeExpr range = check parseRangeExpr(tok);
    Stmt[] body = check parseStmtBlock(tok);
    return { varName, range, body };
}

function parseMatchStmt(Tokenizer tok) returns MatchStmt|err:Syntax {
    Expr expr = check parseInnerExpr(tok);
    check tok.expect("{");
    MatchClause[] clauses = [];
    clauses.push(check parseMatchClause(tok));
    while tok.current() != "}" {
        clauses.push(check parseMatchClause(tok));
    }
    check tok.advance();
    return { expr, clauses };
}

function parseMatchClause(Tokenizer tok) returns MatchClause|err:Syntax {
    MatchPattern[] patterns = check parseMatchPatternList(tok);
    check tok.expect("=>");
    Stmt[] block = check parseStmtBlock(tok);
    return { patterns, block };
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
    if cur is WildcardMatchPattern {
        check tok.advance();
        return cur;
    }
    Position pos = tok.currentStartPos();
    SimpleConstExpr expr = check parseSimpleConstExpr(tok);
    return { expr, pos};
}
