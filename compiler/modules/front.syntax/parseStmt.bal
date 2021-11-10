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
        check tok.advance();
        return { startPos, endPos, stmts };
    }
    return parseError(tok, "unhandled condition in statement block");
}

function parseStmt(Tokenizer tok) returns Stmt|err:Syntax {
    Token? cur = tok.current();
    Position startPos = tok.currentStartPos();
    match cur {
        [IDENTIFIER, var identifier] => {
            var peeked = tok.peek(skipQualIdent=true);
            if peeked is "|" | "?" | "&" | IDENTIFIER {
                TypeDesc td = check parseTypeDesc(tok);
                return finishVarDeclStmt(tok, td, startPos);
            }
            else if peeked == "[" {
                TokenizerState state = tok.save();
                boolean isTypeDesc = check preparseIndexedTypeDesc(tok);
                tok.restore(state);

                if isTypeDesc {
                    return parseVarDeclStmt(tok, startPos);
                }
            }
            Position pos = tok.currentStartPos();
            check tok.advance();
            return finishIdentifierStmt(tok, identifier, pos, startPos);
        }
        "_" => {
            check tok.advance();
            if tok.current() == "=" {
                return finishAssignStmt(tok, WILDCARD, startPos);
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
        "null" => {
            if tok.peek() == "." {
                return parseMethodCallStmt(tok);
            }
            else {
                return parseVarDeclStmt(tok, startPos);
            }
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
        [DECIMAL_NUMBER, _]|[STRING_LITERAL, _]|"true"|"false" => {
            return parseMethodCallStmt(tok);
        }
    }
    return parseError(tok, "unhandled statement");
}


// statement must not start with a type desc.
function finishIdentifierStmt(Tokenizer tok, string identifier, Position pos, Position startPos) returns Stmt|err:Syntax {
    Token? cur = tok.current();
    Position endPos = tok.previousEndPos();
    if cur == "=" {
        VarRefExpr lValue = { startPos, endPos, varName: identifier };
        return finishAssignStmt(tok, lValue, startPos);
    }
    else if cur is CompoundAssignOp {
        Position opPos = tok.currentStartPos();
        VarRefExpr lValue = { startPos, endPos, varName: identifier };
        return parseCompoundAssignStmt(tok, lValue, cur, startPos, opPos);
    }
    else if cur == "[" {
        VarRefExpr varRef = { startPos, endPos, varName: identifier };
        Position bracketPos = tok.currentStartPos();
        check tok.advance();
        // type-desc case is handled before
        Expr index = check parseInnerExpr(tok);
        Position memberAccessEndPos = check tok.expectEnd("]");
        cur = tok.current();
        if cur == "=" {
            MemberAccessLExpr lValue = { startPos, endPos: memberAccessEndPos, container: varRef, index, opPos: bracketPos };
            return finishAssignStmt(tok, lValue, startPos);
        }
        else if cur is CompoundAssignOp {
            Position opPos = tok.currentStartPos();
            MemberAccessLExpr lValue = { startPos, endPos: memberAccessEndPos, container: varRef, index, opPos };
            return parseCompoundAssignStmt(tok, lValue, cur, startPos, opPos);
        }
        MemberAccessExpr memberAccess = { startPos, endPos: memberAccessEndPos, container: varRef, index, opPos: bracketPos };
        Expr expr = check finishPrimaryExpr(tok, memberAccess, startPos);
        if expr is MethodCallExpr {
            endPos = check tok.expectEnd(";");
            return { startPos, endPos, expr };
        }
        return parseError(tok, "member access expr not allowed as a statement"); 
    }
    else if cur == ":" {
        check tok.advance();
        Position newNamePos = tok.currentStartPos();
        string name = check tok.expectIdentifier();
        return finishOptQualIdentifierStmt(tok, identifier, name, pos, startPos, newNamePos);
    }
    return finishOptQualIdentifierStmt(tok, (), identifier, pos, startPos, startPos);
}

function finishOptQualIdentifierStmt(Tokenizer tok, string? prefix, string identifier, Position pos, Position startPos, Position namePos) returns Stmt|err:Syntax {
    Token? cur = tok.current();
    Position endPos = tok.previousEndPos();
    if cur == "(" {
        FunctionCallExpr expr = check finishFunctionCallExpr(tok, prefix, identifier, startPos, namePos);
        return finishCallStmt(tok, expr, startPos);
    }
    else if cur == "." {
        Position opPos = tok.currentStartPos();
        VarRefExpr varRef = { startPos, endPos:tok.previousEndPos(), varName: identifier, prefix };
        check tok.advance();
        Position newNamePos = tok.currentStartPos();
        string name = check tok.expectIdentifier();
        if tok.current() == "(" {
            return finishCallStmt(tok, check finishMethodCallExpr(tok, varRef, name, startPos, newNamePos, opPos), startPos);
        }
        else {
            endPos = tok.previousEndPos();
            VarRefExpr container = { startPos, endPos, varName: identifier };
            FieldAccessLExpr lValue = { startPos, endPos, fieldName: name, container, opPos: pos };
            Token? t = tok.current();
            if t == "=" {
                return finishAssignStmt(tok, lValue, startPos);
            }
            else if t is CompoundAssignOp {
                opPos = tok.currentStartPos();
                return parseCompoundAssignStmt(tok, lValue, t, startPos, opPos);
            }
            // SUBSET handle "["
        }
        // falls through to end
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

function finishAssignStmt(Tokenizer tok, LExpr|WILDCARD lValue, Position startPos) returns AssignStmt|err:Syntax {
    Position opPos = tok.currentStartPos();
    check tok.advance();
    Expr expr = check parseExpr(tok);
    Position endPos = check tok.expectEnd(";");
    AssignStmt stmt = { startPos, endPos, opPos, lValue, expr };
    return stmt;
}

function parseCompoundAssignStmt(Tokenizer tok, LExpr lValue, CompoundAssignOp op, Position startPos, Position opPos) returns CompoundAssignStmt|err:Syntax {
    check tok.advance();
    Expr expr = check parseExpr(tok);
    string opStr = op;
    BinaryArithmeticOp|BinaryBitwiseOp binOp = <BinaryArithmeticOp|BinaryBitwiseOp> opStr.substring(0, opStr.length() - 1);
    Position endPos = check tok.expectEnd(";");
    CompoundAssignStmt stmt = { startPos, endPos, opPos, lValue, expr, op: binOp };
    return stmt;
}

function parseVarDeclStmt(Tokenizer tok, Position startPos, boolean isFinal = false) returns VarDeclStmt|err:Syntax {
    TypeDesc td = check parseTypeDesc(tok);
    return finishVarDeclStmt(tok, td, startPos, isFinal);
}

function finishVarDeclStmt(Tokenizer tok, TypeDesc td, Position startPos, boolean isFinal = false) returns VarDeclStmt|err:Syntax {
    Token? cur = tok.current();
    string? varName;
    if cur == "_" {
        varName = WILDCARD;
        check tok.advance();
    }
    else {
        varName = check tok.expectIdentifier();
    }
    // initExpr is required in the subset
    Position opPos = check tok.expectEnd("=");
    Expr initExpr = check parseExpr(tok);
    Position endPos = check tok.expectEnd(";");
    return { startPos, endPos, opPos, td, varName, initExpr, isFinal };
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
    StmtBlock? ifFalse;
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
            IfElseStmt elseIfStmt = check parseIfElseStmt(tok, ifFalseStartPos);
            Position blockStartPos = elseIfStmt.ifTrue.startPos;
            StmtBlock? elseIfFalseBlock = elseIfStmt.ifFalse;
            Position blockEndPos = (elseIfFalseBlock ?: elseIfStmt.ifTrue).endPos;
            ifFalse = { startPos: blockStartPos, endPos: blockEndPos, stmts: [elseIfStmt] };
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
    string varName = check tok.expectIdentifier();
    Position kwPos = check tok.expectEnd("in");
    RangeExpr range = check parseRangeExpr(tok);
    StmtBlock body = check parseStmtBlock(tok);
    Position endPos = tok.previousEndPos();
    return { startPos, endPos, kwPos, varName, range, body };
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
    Position opPos = check tok.expectEnd("=>");
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
    if cur is WildcardMatchPattern {
        check tok.advance();
        return cur;
    }
    Position pos = tok.currentStartPos();
    SimpleConstExpr expr = check parseSimpleConstExpr(tok);
    return { expr, pos};
}
