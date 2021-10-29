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
        [DECIMAL_NUMBER, _]|[STRING_LITERAL, _]|"true"|"false"|"null" => {
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
            MemberAccessLExpr lValue = { startPos, endPos: memberAccessEndPos, container: varRef, index, pos: bracketPos };
            return finishAssignStmt(tok, lValue, startPos);
        }
        else if cur is CompoundAssignOp {
            Position opPos = tok.currentStartPos();
            MemberAccessLExpr lValue = { startPos, endPos: memberAccessEndPos, container: varRef, index, pos: bracketPos };
            return parseCompoundAssignStmt(tok, lValue, cur, startPos, opPos);
        }
        MemberAccessExpr memberAccess = { startPos, endPos: memberAccessEndPos, container: varRef, index, pos: bracketPos };
        Expr expr = check finishPrimaryExpr(tok, memberAccess, startPos);
        if expr is MethodCallExpr {
            check tok.expect(";");
            return expr;
        }
        return parseError(tok, "member access expr not allowed as a statement"); 
    }
    else if cur == ":" {
        check tok.advance();
        return finishOptQualIdentifierStmt(tok, identifier, check tok.expectIdentifier(), pos, startPos);
    }
    return finishOptQualIdentifierStmt(tok, (), identifier, pos, startPos);
}

function finishOptQualIdentifierStmt(Tokenizer tok, string? prefix, string identifier, Position pos, Position startPos) returns Stmt|err:Syntax {
    Token? cur = tok.current();
    Position endPos = tok.previousEndPos();
    if cur == "(" {
        check tok.advance();
        FunctionCallExpr expr = check finishFunctionCallExpr(tok, prefix, identifier, pos, startPos);
        return finishCallStmt(tok, expr, startPos);
    }
    else if cur == "." {
        VarRefExpr varRef = { startPos, endPos:tok.previousEndPos(), varName: identifier, prefix };
        check tok.advance();
        string name = check tok.expectIdentifier();
        if tok.current() == "(" {
            return finishCallStmt(tok, check finishMethodCallExpr(tok, varRef, name, pos, startPos), startPos);
        }
        else {
            endPos = tok.previousEndPos();
            VarRefExpr container = { startPos, endPos, varName: identifier };
            FieldAccessLExpr lValue = { startPos, endPos, fieldName: name, container, pos };
            Token? t = tok.current();
            if t == "=" {
                return finishAssignStmt(tok, lValue, startPos);
            }
            else if t is CompoundAssignOp {
                Position opPos = tok.currentStartPos();
                return parseCompoundAssignStmt(tok, lValue, t, startPos, opPos);
            }
            // SUBSET handle "["
        }
        // falls through to end
    }
    return parseError(tok, "invalid statement");
}

function parseMethodCallStmt(Tokenizer tok) returns MethodCallExpr|err:Syntax {
    Position startPos = tok.currentStartPos();
    Expr expr = check startPrimaryExpr(tok);
    Token? cur = tok.current();
    if cur == "." || cur == "[" {
        expr = check finishPrimaryExpr(tok, expr, startPos);
        if expr is MethodCallExpr {
            check tok.expect(";");
            return expr;
        }
    }
    return parseError(tok, "expression not allowed as a statement");
}

function finishCallStmt(Tokenizer tok, CallStmt expr, Position startPos) returns Stmt|err:Syntax {
    Expr primary = check finishPrimaryExpr(tok, expr, startPos);
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

function finishCheckingCallStmt(Tokenizer tok, CheckingKeyword checkingKeyword, Position startPos) returns CallStmt|err:Syntax {
    Token? t = tok.current();
    if t is "check"|"checkpanic" {
        check tok.advance();
        CallStmt operand = check finishCheckingCallStmt(tok, t, startPos);
        return { startPos, endPos: operand.endPos, checkingKeyword, operand };
    }
    else if t == "(" {
        MethodCallExpr operand = check parseMethodCallStmt(tok);
        return { startPos, endPos: operand.endPos, checkingKeyword, operand };
    }
    Expr operand = check parsePrimaryExpr(tok);
    if operand is FunctionCallExpr|MethodCallExpr {
        Position endPos = check tok.expectEnd(";");
        return { startPos, endPos, checkingKeyword, operand };
    }
    return parseError(tok, "function call, method call or checking expression expected");
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
    return { startPos, endPos, returnExpr };
}

function parsePanicStmt(Tokenizer tok, Position startPos) returns PanicStmt|err:Syntax {
    Expr panicExpr = check parseExpr(tok);
    Position endPos = check tok.expectEnd(";");
    return { startPos, endPos, panicExpr };
}

function parseIfElseStmt(Tokenizer tok, Position startPos) returns IfElseStmt|err:Syntax {
    Stmt[] ifFalse;
    Expr condition = check parseExpr(tok);
    Stmt[] ifTrue = check parseStmtBlock(tok);
    Position endPos = tok.previousEndPos();
    Token? cur = tok.current();
    if cur == "else" {
        check tok.advance();
        // if exp1 { } else if exp2 { }
        if tok.current() == "if" {
            Position ifFalseStartPos = tok.currentStartPos();
            check tok.advance();
            ifFalse = [check parseIfElseStmt(tok, ifFalseStartPos)];
        }
        // if exp1 { } else { }
        else if tok.current() == "{" {
            ifFalse = check parseStmtBlock(tok);
        }
        else {
            return parseError(tok);
        }
        endPos = tok.previousEndPos();
    } else {
        ifFalse = [];
    }
    return { startPos, endPos, condition, ifTrue, ifFalse };
}

function parseWhileStmt(Tokenizer tok, Position startPos) returns WhileStmt|err:Syntax {
    Expr condition = check parseExpr(tok);
    Stmt[] body = check parseStmtBlock(tok);
    Position endPos = tok.previousEndPos();
    return { startPos, endPos, condition, body };
}

function parseForeachStmt(Tokenizer tok, Position startPos) returns ForeachStmt|err:Syntax {
    if tok.current() != "int" {
        return parseError(tok, "type of foreach variable must be int");
    }
    check tok.advance();
    Token? cur = tok.current();
    string varName = check tok.expectIdentifier();
    check tok.expect("in");
    RangeExpr range = check parseRangeExpr(tok);
    Stmt[] body = check parseStmtBlock(tok);
    Position endPos = tok.previousEndPos();
    return { startPos, endPos, varName, range, body };
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
    Stmt[] block = check parseStmtBlock(tok);
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
