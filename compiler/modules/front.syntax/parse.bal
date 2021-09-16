// Parse one file in a module
import wso2/nballerina.err;

public type FilePath record {|
    string filename;
    string? directory = ();
|};

public function scanModulePart(string[] lines, FilePath path, int partIndex) returns ScannedModulePart|err:Syntax {
    SourceFile file = createSourceFile(path, lines);
    Tokenizer tok = new (file);
    check tok.advance();
    return new(file, check parseImportDecls(tok).cloneReadOnly(), tok.save(), partIndex);
}

public readonly class ScannedModulePart {
    private TokenizerState tokState;
    private ImportDecl[] imports;
    private SourceFile file;
    private int partIndex;

    function init(SourceFile file, readonly & ImportDecl[] imports, TokenizerState tokState, int partIndex) {
        self.file = file;
        self.imports = imports;
        self.tokState = tokState;
        self.partIndex = partIndex;
    }

    public function getImportDecls() returns ImportDecl[]|err:Syntax {
        return self.imports;
    }

    public function parse() returns ModulePart|err:Syntax {
        Tokenizer tok = new(self.file);
        tok.restore(self.tokState);
        ModuleLevelDefn[] defns = [];
        ModulePart part = {
            file: self.file,
            partIndex: self.partIndex,
            defns,
            importDecls: self.imports
        };
        while tok.current() != () {
            defns.push(check parseModuleDecl(tok, part));
        }
        return part;
    }
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
    ScannedSourceFile file = new(path, scanLines(lines));
    return file;
}

function parseImportDecls(Tokenizer tok) returns ImportDecl[]|err:Syntax {
    ImportDecl[] imports = [];
    Token? t = tok.current();
    while t == "import" {
        ImportDecl im = check parseImportDecl(tok);
        imports.push(im);
        t = tok.current();
    }
    return imports;
}

function parseImportDecl(Tokenizer tok) returns ImportDecl|err:Syntax {
    Position pos = tok.currentPos();
    check tok.advance();
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        string firstModuleName = t[1];
        string? org = ();
        check tok.advance();
        t = tok.current();
        if t == "/" {
            // we have an org
            org = firstModuleName;
            check tok.advance();
            t = tok.current();
            if t is [IDENTIFIER, string] {
                firstModuleName = t[1];
                check tok.advance();
            }
            else {
                return parseError(tok, "import declaration invalid module name");
            }
        }
        [string, string...] names = [firstModuleName];
        names.push(...check parseImportNamesRest(tok));
        string? prefix = check parseImportPrefix(tok);
        check tok.expect(";");
        return { org, names, prefix, pos };
    }
    return parseError(tok, "import declaration invalid org/module name");
}

function parseImportNamesRest(Tokenizer tok) returns string[]|err:Syntax {
    Token? t = tok.current();
    string[] names = [];
    while t == "." {
        check tok.advance();
        t = tok.current();
        if t is [IDENTIFIER, string] {
            check tok.advance();
            names.push(t[1]);
        }
        else {
            return parseError(tok, "import declaration invalid name");
        }
    }
    return names;
}

function parseImportPrefix(Tokenizer tok) returns string?|err:Syntax {
    Token? t = tok.current();
    if t != "as" {
        return ();
    }
    check tok.advance();
    t = tok.current();
    if t is [IDENTIFIER, string] {
        check tok.advance();
        return t[1];
    }
    return parseError(tok, "import declaration invalid prefix");
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
