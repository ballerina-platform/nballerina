// Parse one file in a module

import wso2/nballerina.err;

function parseModulePart(string str) returns ModulePart|err:Syntax {
    Tokenizer tok = new (str);
    check tok.advance();
    ModulePart part = {
        defs: [],
        importDecl: check parseImportDecl(tok)
    };
    while tok.current() != () {
        part.defs.push(check parseModuleDecl(tok));
    }
    return part;
}


function parseImportDecl(Tokenizer tok) returns ImportDecl?|err:Syntax {
    Token? t = tok.current();
    if t != "import" {
        return;
    }
    check tok.advance();
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


function parseModuleDecl(Tokenizer tok) returns ModuleLevelDef|err:Syntax {
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
            return parseConstDeclaration(tok, vis);
        }
        "function" => {
            return parseFunctionDefinition(tok, vis);
        }
    }
    return parseError(tok);
}

function parseTypeDefinition(Tokenizer tok, Visibility vis) returns TypeDef|err:Syntax {
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

function parseConstDeclaration(Tokenizer tok, Visibility vis) returns TypeDef|err:Syntax {
    check tok.advance();
    err:Position pos = tok.currentPos();
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        string name = t[1];
        check tok.advance();
        TypeDesc td = check parseConstExpr(tok);
        check tok.expect(";");
        return { name, td, pos, vis };
    }
    return parseError(tok);
}

function parseFunctionDefinition(Tokenizer tok, Visibility vis) returns FunctionDef|err:Syntax {
    check tok.advance();
    err:Position pos = tok.currentPos();
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        string name = t[1];
        check tok.advance();
        string[] paramNames = [];
        FunctionTypeDesc typeDesc = check parseFunctionTypeDesc(tok, paramNames);
        Stmt[] body = check parseStmtBlock(tok);
        FunctionDef def = { name, vis, paramNames, typeDesc, pos, body };
        return def;
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
