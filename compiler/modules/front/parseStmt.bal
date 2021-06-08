import wso2/nballerina.err;
import wso2/nballerina.types as t;

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
            return finishStmtWithIdentifier(tok, {identifier, pos});
        }
        "return" => {
            check tok.advance();
            return finishReturnStmt(tok);
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
            return finishIfElseStmt(tok);
        }
        "while" => {
            check tok.advance();
            return finishWhileStmt(tok);
        }
        var x if x is BuiltInTypeDesc => {
            check tok.advance();
            return finishVarDeclStmt(tok, x);
        }
    }
    return parseError(tok, "Unhandled Statement");
}

function finishStmtWithIdentifier(Tokenizer tok, Identifier identifier) 
            returns AssignStmt|FunctionCallExpr|VarDeclStmt|err:Syntax {

    Token? cur = tok.current();
    match cur {
        "=" => {
            check tok.advance();
            string varName = identifier.identifier;
            Expr expr = check parseExpr(tok);
            AssignStmt stmt = {varName, expr};
            check tok.expect(";");
            return stmt;
        }
        // "(" => {
        //     check tok.advance();
        //     FunctionCallExpr stmt = check finishFunctionCallExpr(tok, identifier);
        //     check tok.expect(";");
        //     return stmt;
        // }
        [IDENTIFIER, _] => {
            // TODO: Handle other types
            string td = identifier.identifier;
            if (td is TypeDesc) {
                return finishVarDeclStmt(tok, td);
            } else {
                return parseError(tok, "Unhandled VarDeclStmt type");
            }
        }
    }
    return parseError(tok, "Unhandled Statement");
}

function finishVarDeclStmt(Tokenizer tok, TypeDesc td) returns VarDeclStmt|err:Syntax {

    Token? cur = tok.current();
    if cur is [IDENTIFIER, string] {
        check tok.advance();
        // Right now we initExpr is required.
        check tok.expect("=");
        Expr expr = check parseExpr(tok);
        check tok.expect(";");
        return check createVarDefStmt(td, cur[1], expr);
    }
    return parseError(tok, "Invalid VarDeclStmt");
}

function createVarDefStmt(TypeDesc td, string varName, Expr initExpr) 
            returns VarDeclStmt|err:Syntax {

    t:SemType semType = check getSemType(td);
    return {varName, initExpr, td, semType};
}

function finishReturnStmt(Tokenizer tok) returns ReturnStmt|err:Syntax {

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

function finishIfElseStmt(Tokenizer tok) returns IfElseStmt|err:Syntax {

    Stmt[] ifFalse;
    Expr condition = check parseExpr(tok);
    Stmt[] ifTrue = check parseStmtBlock(tok);
    Token? cur = tok.current();
    if cur == "else" {
        check tok.advance();
        if tok.current() == "if" { // if exp1 { } else if exp2 { }
            check tok.advance();
            ifFalse = [check finishIfElseStmt(tok)];
        } else if tok.current() == "{" { // if exp1 { } else { }
            ifFalse = check parseStmtBlock(tok);
        } else {
            return parseError(tok);
        }
    } else {
        ifFalse = [];
    }
    return {condition, ifTrue, ifFalse};
}

function finishWhileStmt(Tokenizer tok) returns WhileStmt|err:Syntax {

    Expr condition = check parseExpr(tok);
    Stmt[] body = check parseStmtBlock(tok);
    return {condition, body};
}
