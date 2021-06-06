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

// function parseIfElseStmt(Tokenizer tok) returns IfElseStmt|err:Syntax {
//     return parseError(tok);
// }

// function parseWhileStmt(Tokenizer tok) returns WhileStmt|err:Syntax {
//     return parseError(tok);
// }
