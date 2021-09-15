// Parse one file in a module

import wso2/nballerina.err;

public type FilePath record {|
    string filename;
    string? directory = ();
|};

public function parseModulePart(string[] lines, FilePath path, int partIndex) returns ModulePart|err:Syntax {
    SourceFile file = createSourceFile(path, lines);
    Tokenizer tok = new (file);
    check tok.advance();
    ModulePart part = {
        file,
        partIndex,
        defns: [],
        importDecl: check parseImportDecl(tok)
    };
    while tok.current() != () {
        part.defns.push(check parseModuleDecl(tok, part));
    }
    return part;
}

public function parseExpression(string[] lines, FilePath path) returns Expr|err:Syntax {
    SourceFile file = createSourceFile(path, lines);
    Tokenizer tok = new (file);
    check tok.advance();
    Expr expr = check parseExpr(tok);
    if tok.current() != () {
        return parseError(tok, "unexpected input after expression");
    }
    return expr;
}

function createSourceFile(FilePath path, string[] lines) returns SourceFile {
    return new(path, scanLines(lines));
}

function parseImportDecl(Tokenizer tok) returns ImportDecl?|err:Syntax {
    Token? t = tok.current();
    if t != "import" {
        return;
    }
    Position pos = tok.currentPos();

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
            return { org, module: t[1], pos };
        }
    }
    return parseError(tok, "import declaration");
}

function parseModuleDecl(Tokenizer tok, ModulePart part) returns ModuleLevelDefn|err:Syntax {
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
            return parseTypeDefinition(tok, part, vis);
        }
        "const" => {
            return parseConstDefinition(tok, part, vis);
        }
        "function" => {
            return parseFunctionDefinition(tok, part, vis);
        }
    }
    return parseError(tok);
}

function parseTypeDefinition(Tokenizer tok, ModulePart part, Visibility vis) returns TypeDefn|err:Syntax {
    check tok.advance();
    Position pos = tok.currentPos();
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        string name = t[1];
        check tok.advance();
        TypeDesc td = check parseTypeDesc(tok);
        check tok.expect(";");
        return { name, td, pos, vis, part };
    }
    return parseError(tok);
}

function parseConstDefinition(Tokenizer tok, ModulePart part, Visibility vis) returns ConstDefn|err:Syntax {
    check tok.advance();
    Position pos = tok.currentPos();
    Token? t = tok.current();
    InlineBuiltinTypeDesc? td = ();
    if t is InlineBuiltinTypeDesc {
        check tok.advance();
        td = t;
        t = tok.current();
    }
    if t is [IDENTIFIER, string] {
        string name = t[1];
        check tok.advance();
        check tok.expect("=");
        Expr expr = check parseInnerExpr(tok);
        check tok.expect(";");
        return { td, name, expr, pos, vis, part };
    }
    return parseError(tok);
}

function parseFunctionDefinition(Tokenizer tok, ModulePart part, Visibility vis) returns FunctionDefn|err:Syntax {
    check tok.advance();
    Position pos = tok.currentPos();
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        string name = t[1];
        check tok.advance();
        string[] paramNames = [];
        FunctionTypeDesc typeDesc = check parseFunctionTypeDesc(tok, paramNames);
        Stmt[] body = check parseStmtBlock(tok);
        FunctionDefn defn = { name, vis, paramNames, typeDesc, pos, body, part };
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

public function defnLocation(ModuleLevelDefn defn) returns err:Location {
    return err:location(defn.part.file, defn.pos);
}
