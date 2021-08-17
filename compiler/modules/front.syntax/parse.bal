// Parse one file in a module

import wso2/nballerina.err;

public function parseModulePart(string[] lines) returns ModulePart|err:Syntax {
    Tokenizer tok = new (lines);
    check tok.advance();
    ModulePart part = {
        defns: [],
        importDecl: check parseImportDecl(tok)
    };
    while tok.current() != () {
        part.defns.push(check parseModuleDecl(tok));
    }
    return part;
}

public function parseExpression(string[] lines) returns Expr|err:Syntax {
    Tokenizer tok = new (lines);
    check tok.advance();
    Expr expr = check parseExpr(tok);
    if tok.current() != () {
        return parseError(tok, "unexpected input after expression");
    }
    return expr;
}

function parseImportDecl(Tokenizer tok) returns ImportDecl?|err:Syntax {
    Token? t = tok.current();
    if t != "import" {
        return;
    }
    check tok.advance();
    t = tok.current();
    if t is [IDENTIFIER, string] { 
        string org = t[1];
        check tok.advance();
        check tok.expect("/");
        t = tok.current();
        if t is [IDENTIFIER, string] {
            check tok.advance();
            check tok.expect(";");
            return { org, module: t[1] };
        }
    }
    return parseError(tok, "import declaration");
}

function parseModuleDecl(Tokenizer tok) returns ModuleLevelDefn|err:Syntax {
    Token? t = tok.current();
    Visibility vis;
    if t == "public" {
        vis = t;
        check tok.advance();
        t = tok.current();
    }
    else {
        vis = ();
    }
    match t {
        "type" => {
            return parseTypeDefinition(tok, vis);
        }
        "const" => {
            return parseConstDefinition(tok, vis);
        }
        "function" => {
            return parseFunctionDefinition(tok, vis);
        }
    }
    return parseError(tok);
}

function parseTypeDefinition(Tokenizer tok, Visibility vis) returns TypeDefn|err:Syntax {
    check tok.advance();
    err:Position pos = tok.currentPos();
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        string name = t[1];
        check tok.advance();
        TypeDesc td = check parseTypeDesc(tok);
        check tok.expect(";");
        return { name, td, pos, vis };
    }
    return parseError(tok);
}

function parseConstDefinition(Tokenizer tok, Visibility vis) returns ConstDefn|err:Syntax {
    check tok.advance();
    err:Position pos = tok.currentPos();
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        string name = t[1];
        check tok.advance();
        check tok.expect("=");
        Expr expr = check parseInnerExpr(tok);
        check tok.expect(";");
        return { name, expr, pos, vis };
    }
    return parseError(tok);
}

function parseFunctionDefinition(Tokenizer tok, Visibility vis) returns FunctionDefn|err:Syntax {
    check tok.advance();
    err:Position pos = tok.currentPos();
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        string name = t[1];
        check tok.advance();
        string[] paramNames = [];
        FunctionTypeDesc typeDesc = check parseFunctionTypeDesc(tok, paramNames);
        Stmt[] body = check parseStmtBlock(tok);
        FunctionDefn defn = { name, vis, paramNames, typeDesc, pos, body };
        return defn;
    }
    return parseError(tok);
}

function parseError(Tokenizer tok, string? detail = ()) returns err:Syntax {
    string message = "parse error";
    Token? t = tok.current();
    if t is string {
        // JBUG cast needed #30734
        // XXX should use err:Template here
        message += " at '" + t + "'";
    }
    if detail != () {
        message += ": " + detail;
    }
    return tok.err(message);
}
