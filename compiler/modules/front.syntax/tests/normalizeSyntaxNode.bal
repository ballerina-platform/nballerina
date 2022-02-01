function normalizeSyntaxNode(SyntaxNode node) returns SyntaxNode {
    if node is RootSyntaxNode {
        return normalizeRootSyntaxNode(node);
    }
    else {
        return normalizeSubSyntaxNode(node);
    }
}

function normalizeRootSyntaxNode(RootSyntaxNode node) returns RootSyntaxNode {
    return {
        part: node.part,
        childNodes: from SubSyntaxNode child in node.childNodes select normalizeSubSyntaxNode(child)
    };
}

function normalizeSubSyntaxNode(SubSyntaxNode node) returns SubSyntaxNode {
    if node !is NonTerminalSyntaxNode {
        return node;
    }
    if isGroupingNode(node) {
        return normalizeSubSyntaxNode(node.childNodes[1]);
    }
    SubSyntaxNode[] newChildNodes = [];
    if node.wrap {
        newChildNodes.push({ token: "(" });
    }
    foreach SubSyntaxNode childNode in node.childNodes {
        newChildNodes.push(normalizeSubSyntaxNode(childNode));
    }
    if node.wrap {
        newChildNodes.push({ token: ")" });
    }
    return { astNode: node.astNode, childNodes: newChildNodes, wrap: false };
}

function isGroupingNode(SubSyntaxNode node) returns boolean {
    if node !is AstSyntaxNode {
        return false;
    }
    AstNode astNode = node.astNode;
    return astNode is GroupingExpr || (astNode is UnaryTypeDesc && astNode.op == "(");
}
