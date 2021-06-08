// Parse one file in a module

import wso2/nballerina.err;

function parseSourcePart(string str) returns ModuleLevelDef[]|err:Syntax {
    ModuleLevelDef[] defs = [];
    Tokenizer tok = new (str);
    check tok.advance();
    while tok.current() != () {
        defs.push(check parseModuleDecl(tok));
    }
    return defs;
}

function parseModuleDecl(Tokenizer tok) returns ModuleLevelDef|err:Syntax {
    Token? cur = tok.current();
    match cur {
        "type" => {
            return parseTypeDefinition(tok);
        }
        "const" => {
            return parseConstDeclaration(tok);
        }
        "function" => {
            return parseFunctionDefinition(tok);
        }
    }
    return parseError(tok);
}

function parseTypeDefinition(Tokenizer tok) returns TypeDef|err:Syntax {
    check tok.advance();
    err:Position pos = tok.currentPos();
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        string name = t[1];
        check tok.advance();
        TypeDesc td = check parseTypeDesc(tok);
        check tok.expect(";");
        return { name, td, pos };
    }
    return parseError(tok);
}

function parseConstDeclaration(Tokenizer tok) returns TypeDef|err:Syntax {
    check tok.advance();
    err:Position pos = tok.currentPos();
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        string name = t[1];
        check tok.advance();
        TypeDesc td = check parseConstExpr(tok);
        check tok.expect(";");
        return { name, td, pos };
    }
    return parseError(tok);
}

function parseFunctionDefinition(Tokenizer tok) returns FunctionDef|err:Syntax {
    check tok.advance();
    err:Position pos = tok.currentPos();
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        string name = t[1];
        check tok.advance();
        string[] paramNames = [];
        FunctionTypeDesc typeDesc = check parseFunctionTypeDesc(tok, paramNames);
        Stmt[] body = check parseStmtBlock(tok);
        FunctionDef def = { name, paramNames, typeDesc, pos, body };
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
