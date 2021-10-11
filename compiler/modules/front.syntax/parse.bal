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
    Position startPos = tok.currentStartPos();
    check tok.advance();
    Position namePos = tok.currentStartPos();
    string firstModuleName = check validImportPart(tok);
    string? org = ();
    if tok.current() == "/" {
        // we have an org
        org = firstModuleName;
        check tok.advance();
        namePos = tok.currentStartPos();
        firstModuleName = check validImportPart(tok);
    }
    [string, string...] names = [firstModuleName];
    names.push(...check parseImportNamesRest(tok));
    string? prefix = check parseImportPrefix(tok);
    Position endPos = tok.currentEndPos();
    check tok.expect(";");
    return { startPos, endPos, org, names, prefix, namePos, partIndex };
}

function parseImportNamesRest(Tokenizer tok) returns string[]|err:Syntax {
    string[] names = [];
    while tok.current() == "." {
        check tok.advance();
        names.push(check validImportPart(tok));
    }
    return names;
}

function validImportPart(Tokenizer tok) returns string|err:Syntax {
    string identifier = check tok.expectIdentifier();
    string? prevChar = ();
    foreach var ch in identifier {
        if ch == "_" {
            if prevChar == () {
                return tok.err("expect an identifier without leading underscores");
            } else if prevChar == "_" {
                return tok.err("expect an identifier without consecutive underscores");
            }
        }
        prevChar = ch;
    }
    if prevChar == "_" {
        return tok.err("expect an identifier without tailing underscores");
    }
    return identifier;
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
    Position startPos = tok.currentStartPos();
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
            return parseTypeDefinition(tok, part, vis, startPos);
        }
        "const" => {
            return parseConstDefinition(tok, part, vis, startPos);
        }
        "function" => {
            return parseFunctionDefinition(tok, part, vis, startPos);
        }
    }
    return parseError(tok);
}

function parseTypeDefinition(Tokenizer tok, ModulePart part, Visibility vis, Position startPos) returns TypeDefn|err:Syntax {
    check tok.advance();
    Position namePos = tok.currentStartPos();
    string name = check tok.expectIdentifier();
    TypeDesc td = check parseTypeDesc(tok);
    Position endPos = check tok.expectLast(";");
    return { startPos, endPos, name, td, namePos, vis, part };
}

function parseConstDefinition(Tokenizer tok, ModulePart part, Visibility vis, Position startPos) returns ConstDefn|err:Syntax {
    check tok.advance();
    Token? t = tok.current();
    InlineBuiltinTypeDesc? td = ();
    if t is InlineBuiltinTypeDesc {
        check tok.advance();
        td = t;
    }
    Position namePos = tok.currentStartPos();
    string name = check tok.expectIdentifier();
    check tok.expect("=");
    Expr expr = check parseInnerExpr(tok);
    Position endPos = check tok.expectLast(";");
    return { startPos, endPos, td, name, expr, namePos, vis, part };
}

function parseFunctionDefinition(Tokenizer tok, ModulePart part, Visibility vis, Position startPos) returns FunctionDefn|err:Syntax {
    check tok.advance();
    Position namePos = tok.currentStartPos();
    string name = check tok.expectIdentifier();
    string[] paramNames = [];
    FunctionTypeDesc typeDesc = check parseFunctionTypeDesc(tok, paramNames);
    Stmt[] body = check parseStmtBlock(tok);
    Position endPos = tok.previousEndPos();
    FunctionDefn defn = { startPos, endPos, name, vis, paramNames, typeDesc, namePos, body, part };
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
    return err:location(defn.part.file, defn.namePos);
}

public function locationInDefn(ModuleLevelDefn defn, Position? pos = ()) returns err:Location {
    return err:location(defn.part.file, pos);
}
