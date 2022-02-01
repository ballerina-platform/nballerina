function normalizeTree(RootSyntaxNode|SubSyntaxNode node) returns RootSyntaxNode|SubSyntaxNode {
    if node is RootSyntaxNode {
        return normalizeRootSyntaxNode(node);
    }
    else {
        return normalizeSyntaxNode(node);
    }
}

function normalizeRootSyntaxNode(RootSyntaxNode node) returns RootSyntaxNode {
    return {
        part: node.part,
        childNodes: from SubSyntaxNode child in node.childNodes select normalizeSyntaxNode(child)
    };
}

function normalizeSyntaxNode(SubSyntaxNode node) returns SubSyntaxNode {
    if node is NonTerminalSyntaxNode && isGroupingNode(node) {
        return normalizeSyntaxNode(node.childNodes[1]);
    }
    if node !is NonTerminalSyntaxNode {
        return node;
    }
    SubSyntaxNode[] newChildNodes = [];
    if node.wrap {
        newChildNodes.push({ token: "(" });
    }
    foreach SubSyntaxNode childNode in node.childNodes {
        newChildNodes.push(normalizeSyntaxNode(childNode));
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
