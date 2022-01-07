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

function buildTree(ModulePart part) returns [TerminalSyntaxNode[], NonTerminalSyntaxNode[]] {
    TerminalSyntaxNode[] importDecls = from ImportDecl decl in part.importDecls select buildImportDecl(decl);
    return [importDecls, []];
}

function buildImportDecl(ImportDecl decl) returns TerminalSyntaxNode {
    // hardcoded spaces: no org pos
    string[] tokenContent = ["import", " "];
    string? org = decl.org;
    if org != () {
        tokenContent.push(org, "/");
    }
    foreach int i in 0 ..< decl.names.length() {
        if i > 0 {
            tokenContent.push(".");
        }
        tokenContent.push(decl.names[i]);
    }
    string? prefix = decl.prefix;
    if prefix != () {
        // currently we don't have the position of prefix so hard coded
        tokenContent.push(" ", "as", " ", prefix);
    }
    tokenContent.push(";");
    string token = "".'join(...tokenContent);
    return { startPos: decl.startPos, endPos: decl.endPos, token, astNode: decl };
}

