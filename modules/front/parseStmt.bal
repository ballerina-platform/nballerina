import wso2/nballerina.err;

// function parseVarDeclStmt(Tokenizer tok) returns VarDeclStmt|err:Syntax {
//     return parseError(tok);
// }

function parseStmtBlock(Tokenizer tok) returns Stmt[]|err:Syntax {
    Token? cur = tok.current();
    if cur == "{" {
        Stmt[] stmts = [];
        check tok.advance();
        while cur != "}" {
            stmts.push(check parseStmt(tok));
            cur = tok.current();
        }
        check tok.advance();
        return stmts;
    }
    return parseError(tok, "Unhandled condition in statement block");
}

function parseStmt(Tokenizer tok) returns Stmt|err:Syntax {

    Token? cur = tok.current();
    match cur {
        [IDENTIFIER, var identifier] => {
            err:Position pos = tok.currentPos();
            check tok.advance();
            return createStmtwithIdentifier(tok, {identifier, pos});
        }
        "return" => {
            check tok.advance();
            return createReturnStmt(tok);
        }
        "break" => {
            check tok.advance();
            check tok.expect(";");
            return {breakStmt: true};
        }
        "continue" => {
            check tok.advance();
            check tok.expect(";");
            return {continueStmt: true};
        }
        "if" => {
            check tok.advance();
            return completeIfElseStmt(tok);
        }
    }
    return parseError(tok, "Unhandled Statement");
}

function createStmtwithIdentifier(Tokenizer tok, Identifier identifier) 
            returns AssignStmt|FunctionCallExpr|err:Syntax {

    AssignStmt|FunctionCallExpr? stmt = ();
    Token? cur = tok.current();
    match cur {
        "=" => {
            check tok.advance();
            string varName = identifier.identifier;
            Expr expr = check parseExpr(tok);
            stmt = {varName, expr};
        }
        "(" => {
            check tok.advance();
            stmt = check createFunctionCallExpr(tok, identifier);
        }
    }
    check tok.expect(";");
    if stmt != () {
        return stmt;
    }
    return parseError(tok, "Unhandled Statement");
}

function createReturnStmt(Tokenizer tok) returns ReturnStmt|err:Syntax {

    Expr returnExpr;
    if tok.current() == ";" {
        returnExpr = {value: ()}; // SimpleConstExpr
        check tok.advance();
        return {returnExpr};
    } else {
        returnExpr = check parseExpr(tok);
        check tok.expect(";");
        return {returnExpr};
    }
}

function completeIfElseStmt(Tokenizer tok) returns IfElseStmt|err:Syntax {

    Stmt[] ifFalse = [];
    Expr condition = check parseExpr(tok);
    Stmt[] ifTrue = check parseStmtBlock(tok);
    Token? cur = tok.current();
    if cur == "else" {
        check tok.advance();
        if tok.current() == "if" { // if exp1 { } else if exp2 { }
            check tok.advance();
            IfElseStmt stmt = check completeIfElseStmt(tok);
            ifFalse.push(stmt);
        } else if tok.current() == "{" { // if exp1 { } else { }
            ifFalse = check parseStmtBlock(tok);
        }
    } // if { }
    return {condition, ifTrue, ifFalse};
}

// function parseWhileStmt(Tokenizer tok) returns WhileStmt|err:Syntax {
//     return parseError(tok);
// }
