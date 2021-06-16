import wso2/nballerina.err;
import wso2/nballerina.types as t;

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
            err:Position pos = tok.currentPos();
            check tok.advance();
            return finishIdentifierStmt(tok, identifier, pos);
        }
        "return" => {
            check tok.advance();
            return parseReturnStmt(tok);
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
        "while" => {
            check tok.advance();
            return parseWhileStmt(tok);
        }
        // only int and boolean types for now
        "int" => {
            return parseVarDeclStmt(tok, "int", t:INT);
        }
        "boolean" => {
            return parseVarDeclStmt(tok, "boolean", t:BOOLEAN);
        }
    }
    return parseError(tok, "unhandled statement");
}

function finishIdentifierStmt(Tokenizer tok, string identifier, err:Position pos) returns Stmt|err:Syntax {
    Token? cur = tok.current();
    if cur == "=" {
        return finishAssignStmt(tok, identifier, pos);
    }
    else if cur == "(" {
        check tok.advance();
        FunctionCallExpr stmt = check finishFunctionCallExpr(tok, (), identifier, pos);
        check tok.expect(";");
        return stmt;
    }
    else if cur == ":" {
        check tok.advance();
        cur = tok.current();
        if cur is [IDENTIFIER, string] {
            string name = cur[1];
            check tok.advance();
            check tok.expect("(");
            FunctionCallExpr stmt = check finishFunctionCallExpr(tok, identifier, name, pos);
            check tok.expect(";");
            return stmt;
        }
    }
    return parseError(tok, "invalid statement");
}


function finishAssignStmt(Tokenizer tok, string identifier, err:Position pos) returns AssignStmt|err:Syntax {
    check tok.advance();
    string varName = identifier;
    Expr expr = check parseExpr(tok);
    AssignStmt stmt = { varName, expr };
    check tok.expect(";");
    return stmt;    
}

function parseVarDeclStmt(Tokenizer tok, TypeDesc td, t:SemType semType) returns VarDeclStmt|err:Syntax {
    check tok.advance();
    Token? cur = tok.current();
    if cur is [IDENTIFIER, string] {
        check tok.advance();
        // initExpr is required in the subset
        check tok.expect("=");
        Expr initExpr = check parseExpr(tok);
        check tok.expect(";");
        return { td, varName: cur[1], initExpr, semType };
    }
    return parseError(tok, "invalid VarDeclStmt");
}

function parseReturnStmt(Tokenizer tok) returns ReturnStmt|err:Syntax {
    Expr returnExpr;
    if tok.current() == ";" {
        returnExpr = { value: () }; // SimpleConstExpr
        check tok.advance();
    }
    else {
        returnExpr = check parseExpr(tok);
        check tok.expect(";");
    }
    return { returnExpr };
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
