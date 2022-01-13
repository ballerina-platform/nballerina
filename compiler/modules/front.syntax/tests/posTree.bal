type TerminalSyntaxNode TerminalSyntaxAstNode|FixedSyntaxNode|IdentifierSyntaxNode;
type AstSyntaxNode TerminalSyntaxAstNode|NonTerminalSyntaxNode;
type SyntaxNode NonTerminalSyntaxNode|TerminalSyntaxNode;

type TerminalSyntaxAstNode record {|
    AstNode astNode;
    string? token;  // if non-nil expect the token to be this
|};

type NonTerminalSyntaxNode record {|
    AstNode astNode;
    SyntaxNode[] childNodes;
|};

type RootSyntaxNode record {|
    ModulePart part;
    SyntaxNode[] childNodes;
|};

// represents keywords and fixed tokens
type FixedSyntaxNode record {|
    FixedToken token;
    Position? pos = ();
|};

// represents identifiers
type IdentifierSyntaxNode record {|
    string name;
    Position? pos;
|};

type AstNode record {|
   *PositionFields;
   any...;
|};


function validateModulePart(ModulePart part) {
    RootSyntaxNode root = buildTree(part);
    validateSyntaxNode(root, part.file.filename());
}

function buildTree(ModulePart part) returns RootSyntaxNode {
    SyntaxNode[] importDecls = from ImportDecl decl in part.importDecls select syntaxNodeFromImportDecl(decl);
    SyntaxNode[] moduleLevelDefns = from ModuleLevelDefn defn in part.defns select syntaxNodeFromModuleLevelDefn(defn);
    SyntaxNode[] childNodes = [];
    childNodes.push(...importDecls);
    childNodes.push(...moduleLevelDefns);
    return { childNodes, part };
}

function validateSyntaxNode(SyntaxNode|RootSyntaxNode node, string filename) {
    if node is TerminalSyntaxNode {
        return;
    }
    else if node is RootSyntaxNode {
        foreach SyntaxNode child in node.childNodes {
            validateSyntaxNode(child, filename);
        }
    }
    else {
        Position parentStart = node.astNode.startPos;
        Position parentEnd = node.astNode.endPos;
        Position lastEnd = parentStart;
        foreach SyntaxNode child in node.childNodes {
            if child !is AstSyntaxNode {
                Position? pos = child.pos;
                if pos != () {
                    if pos < lastEnd {
                        overlappingNodeErr(node, lastEnd, pos, filename);
                    }
                    lastEnd = pos;
                }
                // todo: consume the token
            }
            else {
                Position childStartPos = child.astNode.startPos;
                Position childEndPos = child.astNode.endPos;
                if childStartPos < parentStart || childEndPos > parentEnd {
                    outofBoundChildErrr(node, child, filename);
                }
                if childStartPos < lastEnd {
                    overlappingNodeErr(node, lastEnd, childStartPos, filename);
                }
                // todo: check if difference is all white space
                lastEnd = childEndPos;
                validateSyntaxNode(child, filename);
            }
        }
    }
}

function overlappingNodeErr(NonTerminalSyntaxNode parent, Position lastEnd, Position currentStart, string filename) {
    string[] body = ["overlapping child nodes"];
    body.push(string `ast node: ${parent.astNode.toString()}`);
    body.push(string`overlapping range: ${unpackPosition(lastEnd).toString()}:${unpackPosition(currentStart).toString()}`);
    body.push(string`file: ${filename}`);
    string msg = "\n".'join(...body);
    panic error(msg);
}

function outofBoundChildErrr(NonTerminalSyntaxNode parent, NonTerminalSyntaxNode|TerminalSyntaxAstNode child, string filename) {
    string[] body = ["child node outside of parent"];
    body.push(string `parent node: ${parent.astNode.toString()}`);
    body.push(string `child node: ${child.astNode.toString()}`);
    string msg = "\n".'join(...body);
    panic error(msg);
}
