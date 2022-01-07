import ballerina/io;
type SyntaxNode TerminalSyntaxNode|NonTerminalSyntaxNode;

type TerminalSyntaxNode record {|
  *PositionFields;
  AstNode astNode;
  string? token;  // if non-nil expect the token to be this
|};

type NonTerminalSyntaxNode record {|
  *PositionFields;
  AstNode astNode;
  SyntaxNode[] childNodes;
|};

type AstNode record {|
   *PositionFields;
   any...;
|};

function validateModulePart(ModulePart part) {
    _ = buildTree(part);
}

function buildTree(ModulePart part) returns [SyntaxNode[], SyntaxNode[]] {
    TerminalSyntaxNode[] importDecls = from ImportDecl decl in part.importDecls select buildImportDecl(decl);
    // pr-to: remove filter
    SyntaxNode[] moduleLevelDefns = from ModuleLevelDefn defn in part.defns select buildModuleLevelDefn(defn);
    io:println(part.file.filename());
    foreach var importDecl in importDecls {
        io:println(importDecl.token);
    }
    foreach var defn in moduleLevelDefns {
        if defn is TerminalSyntaxNode {
            io:println(defn.token);
        }
    }
    io:println("\n");
    return [importDecls, moduleLevelDefns];
}

function buildImportDecl(ImportDecl decl) returns TerminalSyntaxNode {
    // hardcoded spaces: no org pos
    Word[] tokenContent = [];
    importDeclToWords(tokenContent, decl);
    string token = wordsToString(tokenContent);
    return { startPos: decl.startPos, endPos: decl.endPos, token, astNode: decl };
}


function buildModuleLevelDefn(ModuleLevelDefn defn) returns SyntaxNode {
    if defn is ConstDefn {
        return buildConstDefn(defn);
    }
    else if defn is TypeDefn {
        return buildTypeDefn(defn);
    }
    else {
        return buildFunctionDefn(defn);
    }
}

function buildConstDefn(ConstDefn defn) returns NonTerminalSyntaxNode {
    return { startPos: defn.startPos, endPos: defn.endPos, childNodes: [buildExpr(defn.expr)], astNode: defn };
}

function buildTypeDefn(TypeDefn defn) returns TerminalSyntaxNode {
    Word[] tokenContent = [];
    typeDefnToWords(tokenContent, defn);
    string token = wordsToString(tokenContent);
    return { startPos: defn.startPos, endPos: defn.endPos, token, astNode: defn };
}

function buildFunctionDefn(FunctionDefn defn) returns NonTerminalSyntaxNode {
    SyntaxNode[] childNodes = from Stmt stmt in defn.body.stmts select buildStmt(stmt);
    return { startPos: defn.startPos, endPos: defn.endPos, childNodes, astNode: defn };
}

// pr-to: fix this
function buildStmt(Stmt stmt) returns NonTerminalSyntaxNode {
    return { startPos: stmt.startPos, endPos: stmt.endPos, childNodes: [], astNode: stmt };
}

// pr-to: fix this
function buildExpr(Expr expr) returns NonTerminalSyntaxNode {
    return { startPos: expr.startPos, endPos: expr.endPos, childNodes: [], astNode: expr };
}

function wordsToString(Word[] words) returns string {
    return "\n".'join(...wordsToLines(words));
}
