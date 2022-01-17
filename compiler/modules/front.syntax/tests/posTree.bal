import ballerina/test;
type TerminalSyntaxNode TerminalSyntaxAstNode|FixedSyntaxNode|IdentifierSyntaxNode|StringLiteralSyntaxNode;
type AstSyntaxNode TerminalSyntaxAstNode|NonTerminalSyntaxNode;
type SyntaxNode NonTerminalSyntaxNode|TerminalSyntaxNode;

type TerminalSyntaxAstNode record {|
    AstNode astNode;
    string token;
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

type StringLiteralSyntaxNode record {|
    string literal;
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
    validateSyntaxNode(root, new(part.file));
}

function buildTree(ModulePart part) returns RootSyntaxNode {
    SyntaxNode[] importDecls = from ImportDecl decl in part.importDecls select syntaxNodeFromImportDecl(decl);
    SyntaxNode[] moduleLevelDefns = from ModuleLevelDefn defn in part.defns select syntaxNodeFromModuleLevelDefn(defn);
    SyntaxNode[] childNodes = [];
    childNodes.push(...importDecls);
    childNodes.push(...moduleLevelDefns);
    return { childNodes, part };
}

function skipOpeaningParan(string expected, Tokenizer tok) {
    Token? current = tok.current();
    if current != "(" || current == expected {
        return;
    }
    while current == "(" && tok.peek() != ")" {
        checkpanic tok.advance();
        current = tok.current();
    }
}

function skipClosingParan(string expected, Tokenizer tok) {
    Token? current = tok.current();
    if expected == ")" {
        return;
    }
    while current == ")" {
        checkpanic tok.advance();
        current = tok.current();
    }
}
// pr-todo: get rid of test module
function validateTerminalSyntaxNode(TerminalSyntaxNode node, Tokenizer tok) {
    string expected = node is IdentifierSyntaxNode ? node.name : node is StringLiteralSyntaxNode ? node.literal : node.token;
    skipOpeaningParan(expected, tok);
    skipClosingParan(expected, tok);
    if node is IdentifierSyntaxNode {
        Position? pos = node.pos;
        if pos != () {
            test:assertEquals(tok.currentStartPos(), pos, tok.file.filename());
        }
        string real;
        // pr-todo: allowing FixedToken to deal with int: type of things
        if expected != "_" && expected !is FixedToken {
            real = checkpanic tok.expectIdentifier();
        }
        else {
            real = <string>tok.current();
            checkpanic tok.advance();
        }
        test:assertEquals(real, expected, node.toString() + tok.file.filename());
    }
    else {
        Token? token = tok.current();
        string? actual;
        if token is VariableLengthToken {
            if token[0] is HEX_INT_LITERAL {
                // tokenizer ignore 0x part
                actual = "0x" + token[1];
            }
            else if token[0] is DECIMAL_FP_NUMBER {
                actual = token[1] + token[2].toString();
            }
            else {
                actual = token[1];
            }
        }
        else {
            actual = token == "null" ? "()" : token;
        }
        if expected == "()" && actual == "(" && tok.peek() == ")" {
            checkpanic tok.advance();
            actual = "()";
        }

        if actual != expected && token is VariableLengthToken && token[0] is DECIMAL_FP_NUMBER {
            // 0f vs 0.0
        }
        else {
            test:assertEquals(actual, expected, node.toString() + tok.file.filename());
        }
        checkpanic tok.advance();
    }
}

function validateSyntaxNode(SyntaxNode|RootSyntaxNode node, Tokenizer tok) {
    if node is TerminalSyntaxNode {
        validateTerminalSyntaxNode(node, tok);
    }
    else if node is RootSyntaxNode {
        checkpanic tok.advance();
        foreach SyntaxNode child in node.childNodes {
            validateSyntaxNode(child, tok);
        }
    }
    else {
        Position parentStart = node.astNode.startPos;
        Position parentEnd = node.astNode.endPos;
        Position lastEnd = parentStart;
        boolean isTypeDesc = node.astNode is TypeDesc;
        foreach SyntaxNode child in node.childNodes {
            if child !is AstSyntaxNode {
                Position? pos = child.pos;
                if pos != () {
                    if pos < lastEnd {
                        overlappingNodeErr(node, lastEnd, pos, tok.file.filename());
                    }
                    lastEnd = pos;
                }
            }
            else {
                Position childStartPos = child.astNode.startPos;
                Position childEndPos = child.astNode.endPos;
                if childStartPos < parentStart || childEndPos > parentEnd {
                    outofBoundChildErrr(node, child, tok.file.filename());
                }
                if childStartPos < lastEnd {
                    overlappingNodeErr(node, lastEnd, childStartPos, tok.file.filename());
                }
                lastEnd = childEndPos;
            }
            if isTypeDesc {
                tok.setMode(MODE_TYPE_DESC);
            }
            validateSyntaxNode(child, tok);
            if isTypeDesc {
                tok.setMode(MODE_NORMAL);
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
