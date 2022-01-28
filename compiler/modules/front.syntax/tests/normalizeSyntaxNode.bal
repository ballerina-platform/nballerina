function normalizeTree(RootSyntaxNode|SyntaxNode node) returns RootSyntaxNode|SyntaxNode {
    if node is RootSyntaxNode {
        return normalizeRootSyntaxNode(node);
    }
    else {
        return normalizeSyntaxNode(node);
    }
}

function normalizeSyntaxNode(SyntaxNode node) returns SyntaxNode {
    if node is TerminalSyntaxNode {
        return node;
    }
    AstNode astNode = node.astNode;
    if astNode is Stmt {
        return normalizeStmtSyntaxNodeToString(node);
    }
    else if astNode is Expr {
        return normalizeExprSyntaxNode(node, false);
    }
    else if astNode is TypeDesc {
        return normalizeTypeDescSyntaxNode(node, false);
    }
    else {
        return node;
    }
}

function normalizeRootSyntaxNode(RootSyntaxNode node) returns RootSyntaxNode {
    return {
        part: node.part,
        childNodes: from SyntaxNode child in node.childNodes select normalizeSyntaxNode(child)
    };
}

function normalizeStmtSyntaxNodeToString(SyntaxNode node) returns SyntaxNode {
    if node is TerminalSyntaxNode {
        return node;
    }
    AstNode astNode = node.astNode;
    if astNode !is Stmt {
        panic error("expected stmt");
    }
    SyntaxNode[] childNodes = node.childNodes;
    SyntaxNode[] newChildNodes;
    if astNode is ForeachStmt {
        newChildNodes = [];
        // JBUG can't use query expression
        // newChildNodes = from int i in 0 ..< 4 select normalizeSyntaxNode(childNodes[i]);
        foreach int i in 0 ..< 4 {
            newChildNodes.push(normalizeSyntaxNode(childNodes[i]));
        }
        newChildNodes.push(normalizeRangeExprSyntaxNode(childNodes[4]),
                           normalizeSyntaxNode(childNodes[5]));
    }
    else if astNode is CompoundAssignStmt|AssignStmt {
        newChildNodes = [normalizeLExprSyntaxNode(childNodes[0])];
        // JBUG can't use query expression
        // newChildNodes.push(...from int i in 1 ..< childNodes.length() select normalizeSyntaxNode(childNodes[i]));
        foreach int i in 1 ..< childNodes.length() {
            newChildNodes.push(normalizeSyntaxNode(childNodes[i]));
        }
    }
    else {
        newChildNodes = from SyntaxNode child in childNodes select normalizeSyntaxNode(child);
    }
    return {
        astNode,
        childNodes: newChildNodes
    };
}

function normalizeRangeExprSyntaxNode(SyntaxNode node) returns SyntaxNode {
    if node !is NonTerminalSyntaxNode || node.astNode !is RangeExpr {
        panic error("expected a range expr");
    }
    SyntaxNode[] childNodes = node.childNodes;
    SyntaxNode[] newChildNodes = [normalizeExprSyntaxNode(childNodes[0], true),
                                  normalizeSyntaxNode(childNodes[1]),
                                  normalizeExprSyntaxNode(childNodes[2], true)];
    return {
        astNode: node.astNode,
        childNodes: newChildNodes
    };
}

function normalizeExprSyntaxNode(SyntaxNode node, boolean wrap) returns SyntaxNode {
    if node is TerminalSyntaxNode {
        return node;
    }
    AstNode astNode = node.astNode;
    if astNode !is Expr {
        panic error("expected expr");
    }
    SyntaxNode[] childNodes = node.childNodes;
    if astNode is GroupingExpr {
        return normalizeExprSyntaxNode(childNodes[1], wrap);
    }
    SyntaxNode[] newChildNodes;
    if astNode is UnaryExpr {
        newChildNodes = normalizeChildNodesConditionally(wrap, [normalizeSyntaxNode(childNodes[0]),
                                                                normalizeExprSyntaxNode(childNodes[1], true)]);
    }
    else if astNode is BinaryExpr {
        newChildNodes = normalizeChildNodesConditionally(wrap, [normalizeExprSyntaxNode(childNodes[0], true),
                                                                normalizeSyntaxNode(childNodes[1]),
                                                                normalizeExprSyntaxNode(childNodes[2], true)]);
    }
    else if astNode is TypeCastExpr {
        newChildNodes = [];
        // JBUG can't use query expression
        // newChildNodes.push(...from int i in 0 ..< childNodes.length()-1 select normalizeSyntaxNode(childNodes[i]));
        foreach int i in 0 ..< childNodes.length() - 1 {
            newChildNodes.push(normalizeSyntaxNode(childNodes[i]));
        }
        newChildNodes.push(normalizeExprSyntaxNode(childNodes[childNodes.length() - 1], true));
        newChildNodes = normalizeChildNodesConditionally(wrap, newChildNodes);
    }
    else if astNode is CheckingExpr {
        newChildNodes = normalizeChildNodesConditionally(wrap, from SyntaxNode child in childNodes select normalizeSyntaxNode(child));
    }
    else if astNode is MemberAccessExpr|TypeTestExpr|FieldAccessExpr|MethodCallExpr {
        newChildNodes = [normalizeExprSyntaxNode(childNodes[0], true)];
        // JBUG can't use query expression
        // newChildNodes.push(...from int i in 1 ..< childNodes.length() select normalizeSyntaxNode(childNodes[i]));
        foreach int i in 1 ..< childNodes.length() {
            newChildNodes.push(normalizeSyntaxNode(childNodes[i]));
        }
        newChildNodes = normalizeChildNodesConditionally(wrap, newChildNodes);
    }
    else {
        newChildNodes = from SyntaxNode child in childNodes select normalizeSyntaxNode(child);
    }
    return {
        astNode,
        childNodes: newChildNodes
    };
}

function normalizeLExprSyntaxNode(SyntaxNode node) returns SyntaxNode {
    if node is TerminalSyntaxNode {
        return node;
    }
    AstNode astNode = node.astNode;
    if astNode !is LExpr {
        panic error("expected lexpr");
    }
    SyntaxNode[] childNodes = node.childNodes;
    SyntaxNode[] newChildNodes;
    if astNode is MemberAccessLExpr {
        newChildNodes = [normalizeLExprSyntaxNode(childNodes[0]),
                         normalizeSyntaxNode(childNodes[1]),
                         normalizeExprSyntaxNode(childNodes[2], true),
                         normalizeSyntaxNode(childNodes[3])];
    }
    else if astNode is FieldAccessLExpr {
        newChildNodes = [normalizeLExprSyntaxNode(childNodes[0])];
        // JBUG can't use query expression
        // newChildNodes.push(...from int i in 1 ..< childNodes.length() select normalizeSyntaxNode(childNodes[i]));
        foreach int i in 1 ..< childNodes.length() {
            newChildNodes.push(normalizeSyntaxNode(childNodes[i]));
        }
    }
    else {
        newChildNodes = from SyntaxNode child in childNodes select normalizeSyntaxNode(child);
    }
    return {
        astNode,
        childNodes: newChildNodes
    };
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
        newChildNodes = normalizeChildNodesConditionally(!noWrap, [normalizeTypeDescSyntaxNode(childNodes[0], astNode.op),
                                                                   normalizeSyntaxNode(childNodes[1]),
                                                                   normalizeTypeDescSyntaxNode(childNodes[2], astNode.op)]);
    }
    else if astNode is TupleTypeDesc {
        newChildNodes = normalizeChildNodesConditionally(wrap != false, from SyntaxNode child in childNodes select normalizeSyntaxNode(child));
    }
    else if astNode is ArrayTypeDesc {
        newChildNodes = [normalizeTypeDescSyntaxNode(childNodes[0], true)];
        // JBUG can't use query expression
        // newChildNodes.push(...from int i in 1 ..< childNodes.length() select normalizeSyntaxNode(childNodes[i]));
        foreach int i in 1 ..< childNodes.length() {
            newChildNodes.push(normalizeSyntaxNode(childNodes[i]));
        }
        newChildNodes = normalizeChildNodesConditionally(wrap != false, newChildNodes);
    }
    else {
        newChildNodes = from SyntaxNode child in childNodes select normalizeSyntaxNode(child);
    }
    return {
        astNode,
        childNodes: newChildNodes
    };
}

function normalizeChildNodesConditionally(boolean condition, SyntaxNode[] childNodes) returns SyntaxNode[] {
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
