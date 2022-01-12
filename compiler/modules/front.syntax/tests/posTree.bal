type SyntaxNode TerminalSyntaxNode|NonTerminalSyntaxNode|IdentifierSyntaxNode|FixedSyntaxNode;

// pr-todo: may be we need a union of Node that has a ASTNode to simplify stuff
type TerminalSyntaxNode record {|
    AstNode astNode;
    string? token;  // if non-nil expect the token to be this
|};

type NonTerminalSyntaxNode record {|
    AstNode astNode;
    SyntaxNode[] childNodes;
|};

// pr-todo: may be we can merge fallowing together
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


// pr-todo:
// function checkPositionSyntaxNode(Tokenizer tok, SyntaxNode node) [Position, Position] {
//     if node is NonTerminalSyntaxNode {
//         AstNode ast = node.astNode;
//
//         foreach var child in node.childNodes {
//             validateSyntaxNode(tok, child);
//         }
//         //
//     }
//     else {
//
//     }
//
// }

// pr-todo: add these to all commong fixed tokens that don't have positions
FixedSyntaxNode SEMICOLON_NODE = { token: ";" };

function validateModulePart(ModulePart part) {
    NonTerminalSyntaxNode root = buildTree(part);
    validateSyntaxNode(root);
}

function validateSyntaxNode(SyntaxNode node) {
    if node is FixedSyntaxNode|IdentifierSyntaxNode {
        return;
    }
    else {
        Position parentStart = node.astNode.startPos;
        Position parentEnd = node.astNode.endPos;
        if node is NonTerminalSyntaxNode {
            Position lastEnd = parentStart;
            foreach SyntaxNode child in node.childNodes {
                if child is TerminalSyntaxNode|NonTerminalSyntaxNode {
                    Position childStartPos = child.astNode.startPos;
                    Position childEndPos = child.astNode.endPos;
                    if childStartPos < parentStart || childEndPos > parentEnd {
                        outofBoundChildErrr(node, child);
                    }
                    if childStartPos < lastEnd {
                        overlappingNodeErr(node, lastEnd, childStartPos);
                    }
                    // pr-to: check if difference is all white space
                    lastEnd = childEndPos;
                    validateSyntaxNode(child);
                }
                else {
                    Position? pos = child.pos;
                    if pos != () {
                        if pos < lastEnd {
                            overlappingNodeErr(node, lastEnd, pos);
                        }
                        lastEnd = pos;
                    }
                    // pr-todo: consume token
                }
            }
        }
    }
}

// pr-todo: show file names in the error msg
function overlappingNodeErr(NonTerminalSyntaxNode parent, Position lastEnd, Position currentStart) {
    string[] body = ["overlapping child nodes"];
    body.push(string `ast node: ${parent.astNode.toString()}`);
    body.push(string`overlapping range: ${unpackPosition(lastEnd).toString()}:${unpackPosition(currentStart).toString()}`);
    string msg = "\n".'join(...body);
    panic error(msg);
}

function outofBoundChildErrr(NonTerminalSyntaxNode parent, NonTerminalSyntaxNode|TerminalSyntaxNode child) {
    string[] body = ["child node outside of parent"];
    body.push(string `parent node: ${parent.astNode.toString()}`);
    body.push(string `child node: ${child.astNode.toString()}`);
    string msg = "\n".'join(...body);
    panic error(msg);
}

function buildTree(ModulePart part) returns NonTerminalSyntaxNode {
    SyntaxNode[] importDecls = from ImportDecl decl in part.importDecls select syntaxNodeFromImportDecl(decl);
    SyntaxNode[] moduleLevelDefns = from ModuleLevelDefn defn in part.defns select syntaxNodeFromModuleLevelDefn(defn);
    SyntaxNode[] childNodes = [];
    childNodes.push(...importDecls);
    childNodes.push(...moduleLevelDefns);
    return { childNodes, astNode: part };
}
