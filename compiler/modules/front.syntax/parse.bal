// Parse one file in a module
import wso2/nballerina.err;

public type FilePath record {|
    string filename;
    string? directory = ();
|};

public readonly class ScannedModulePart {
    private TokenizerState tokState;
    public ImportDecl[] importDecls;
    int partIndex; 

    function init(ImportDecl[] decls, Tokenizer tok, int partIndex) {
        self.importDecls = decls.cloneReadOnly();
        self.tokState = tok.save();
        self.partIndex = partIndex;
    }

    function tokenizer() returns Tokenizer {
        Tokenizer tok = new(self.tokState.file);
        tok.restore(self.tokState);
        return tok;
    }

    public function sourceFile() returns SourceFile {
        return self.tokState.file;
    }
}

public function scanModulePart(SourceFile file, int partIndex) returns ScannedModulePart|err:Syntax {
    Tokenizer tok = new (file);
    check tok.advance();
    return new(check parseImportDecls(tok, partIndex), tok, partIndex);
}

public function parseModulePart(ScannedModulePart scanned) returns ModulePart|err:Syntax {
    Tokenizer tok = scanned.tokenizer();
    ModuleLevelDefn[] defns = [];
    ModulePart part = {
        file: scanned.sourceFile(),
        partIndex: scanned.partIndex,
        defns,
        importDecls: scanned.importDecls
    };
    while tok.current() != () {
        defns.push(check parseModuleDecl(tok, part));
    }
    return part;
}

public function parseExpression(string[] lines, FilePath path) returns Expr|err:Syntax {
    SourceFile file = createSourceFile(lines, path);
    Tokenizer tok = new (file);
    check tok.advance();
    Expr expr = check parseExpr(tok);
    if tok.current() != () {
        return parseError(tok, "unexpected input after expression");
    }
    return expr;
}

function parseImportDecls(Tokenizer tok, int partIndex) returns ImportDecl[]|err:Syntax {
    ImportDecl[] imports = [];
    Token? t = tok.current();
    while t == "import" {
        ImportDecl im = check parseImportDecl(tok, partIndex);
        imports.push(im);
        t = tok.current();
    }
    return imports;
}

function parseImportDecl(Tokenizer tok, int partIndex) returns ImportDecl|err:Syntax {
    Position pos = tok.currentPos();
    check tok.advance();
    string firstModuleName = check tok.expectIdentifier();
    string? org = ();
    if tok.current() == "/" {
        // we have an org
        org = firstModuleName;
        check tok.advance();
        firstModuleName = check tok.expectIdentifier();
    }
    [string, string...] names = [firstModuleName];
    names.push(...check parseImportNamesRest(tok));
    string? prefix = check parseImportPrefix(tok);
    check tok.expect(";");
    return { org, names, prefix, pos, partIndex };
}

function parseImportNamesRest(Tokenizer tok) returns string[]|err:Syntax {
    string[] names = [];
    while tok.current() == "." {
        check tok.advance();
        names.push(check tok.expectIdentifier());
    }
    return names;
}

function parseImportPrefix(Tokenizer tok) returns string?|err:Syntax {
    Token? t = tok.current();
    if t != "as" {
        return ();
    }
    check tok.advance();
    return tok.expectIdentifier();
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
    string name = check tok.expectIdentifier();
    TypeDesc td = check parseTypeDesc(tok);
    check tok.expect(";");
    return { name, td, pos, vis, part };
}

function parseConstDefinition(Tokenizer tok, ModulePart part, Visibility vis) returns ConstDefn|err:Syntax {
    check tok.advance();
    Position pos = tok.currentPos();
    Token? t = tok.current();
    InlineBuiltinTypeDesc? td = ();
    if t is InlineBuiltinTypeDesc {
        check tok.advance();
        td = t;
    }
    string name = check tok.expectIdentifier();
    check tok.expect("=");
    Expr expr = check parseInnerExpr(tok);
    check tok.expect(";");
    return { td, name, expr, pos, vis, part };
}

function parseFunctionDefinition(Tokenizer tok, ModulePart part, Visibility vis) returns FunctionDefn|err:Syntax {
    check tok.advance();
    Position pos = tok.currentPos();
    string name = check tok.expectIdentifier();
    string[] paramNames = [];
    FunctionTypeDesc typeDesc = check parseFunctionTypeDesc(tok, paramNames);
    Stmt[] body = check parseStmtBlock(tok);
    FunctionDefn defn = { name, vis, paramNames, typeDesc, pos, body, part };
    return defn;
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

public function locationInDefn(ModuleLevelDefn defn, Position? pos = ()) returns err:Location {
    return err:location(defn.part.file, pos);
}