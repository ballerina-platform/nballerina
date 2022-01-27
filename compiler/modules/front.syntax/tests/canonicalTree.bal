function syntaxNodeToString(SyntaxNode node) returns string {
    string[] content = [];
    if node is TerminalSyntaxNode {
        content.push(terminalSyntaxNodeToString(node));
    }
    else {
        foreach var child in node.childNodes {
            if child is TerminalSyntaxNode {
                content.push(terminalSyntaxNodeToString(child));
            }
            else {
                content.push(syntaxNodeToString(child));
            }
        }
    }
    return " ".'join(...content);
}

function terminalSyntaxNodeToString(TerminalSyntaxNode node) returns string {
    if node is IdentifierSyntaxNode {
        return node.name;
    }
    else if node is StringLiteralSyntaxNode {
        // pr-todo: escape literals
        return "\"" + node.literal + "\"";
    }
    else {
        return node.token;
    }
}

function normalizeSyntaxNode(SyntaxNode node) returns SyntaxNode {
    if node is TerminalSyntaxNode {
        return node;
    }
    AstNode astNode = node.astNode;
    SyntaxNode[] childNodes = node.childNodes;
    if astNode is TypeDesc {
        return normalizeTypeDescSyntaxNode(node, false);
    }
    else {
        panic error("not implemented");
    }
}

function normalizeTypeDescSyntaxNode(SyntaxNode node, boolean|BinaryTypeOp wrap) returns SyntaxNode {
    if node is TerminalSyntaxNode {
        return node;
    }
    AstNode astNode = node.astNode;
    if astNode !is TypeDesc {
        panic error("expected type desc");
    }
    SyntaxNode[] childNodes = node.childNodes;
    if astNode is UnaryTypeDesc && astNode.op == "(" {
        return normalizeTypeDescSyntaxNode(childNodes[1], wrap);
    }
    SyntaxNode[] newChildNodes;
    if astNode is BinaryTypeDesc {
        boolean noWrap = wrap == false || wrap == astNode.op;
        newChildNodes = conditionallWrapChildNodes(!noWrap, [normalizeTypeDescSyntaxNode(childNodes[0], astNode.op),
                                                            normalizeSyntaxNode(childNodes[1]),
                                                            normalizeTypeDescSyntaxNode(childNodes[2], astNode.op)]);
    }
    else if astNode is TupleTypeDesc {
        newChildNodes = conditionallWrapChildNodes(wrap != false, from SyntaxNode child in childNodes select normalizeSyntaxNode(child));
    }
    else if astNode is ArrayTypeDesc {
        newChildNodes = [normalizeTypeDescSyntaxNode(childNodes[0], true)];
        foreach int i in 1 ..< childNodes.length() {
            newChildNodes.push(normalizeSyntaxNode(childNodes[i]));
        }
        newChildNodes = conditionallWrapChildNodes(wrap != false, newChildNodes);
    }
    else {
        newChildNodes = from SyntaxNode child in childNodes select normalizeSyntaxNode(child);
    }
    return { astNode, childNodes: newChildNodes };
}

function conditionallWrapChildNodes(boolean condition, SyntaxNode[] childNodes) returns SyntaxNode[] {
    if condition == false {
        return childNodes;
    }
    else {
        SyntaxNode[] newChildNodes = [{ token: "(" }];
        newChildNodes.push(...childNodes);
        newChildNodes.push({ token: ")" });
        return newChildNodes;
    }
}
