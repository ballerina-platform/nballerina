// lhs is expected to be the normalized tree node and rhs to be an un-normalized tree node
function syntaxNodeEquals(SyntaxNode|RootSyntaxNode lhs, SyntaxNode|RootSyntaxNode rhs) returns boolean {
    if lhs is TerminalSyntaxNode && rhs is TerminalSyntaxNode {
        return terminalSyntaxNodeToString(lhs) == terminalSyntaxNodeToString(rhs);
    }
    if lhs is TerminalSyntaxNode || rhs is TerminalSyntaxNode {
        return false;
    }
    SyntaxNode[] rhsChildNodes = rhs.childNodes;
    if rhs is SyntaxNode {
        AstNode astNode = rhs.astNode;
        if astNode is GroupingExpr || (astNode is UnaryTypeDesc && astNode.op == "(") {
            SyntaxNode[] childNodes = rhs.childNodes;
            rhsChildNodes = [childNodes[0]];
            NonTerminalSyntaxNode innerChild = <NonTerminalSyntaxNode>(childNodes[1]);
            rhsChildNodes.push(...innerChild.childNodes);
            rhsChildNodes.push(childNodes[2]);
        }
    }
    if lhs.childNodes.length() != rhsChildNodes.length() {
        return false;
    }
    else {
        foreach int i in 0 ..< lhs.childNodes.length() {
            if !syntaxNodeEquals(lhs.childNodes[i], rhsChildNodes[i]) {
                return false;
            }
        }
        return true;
    }
}

function syntaxNodeToString(SyntaxNode|RootSyntaxNode node) returns string {
    string[] content = [];
    if node is TerminalSyntaxNode {
        content.push(terminalSyntaxNodeToString(node));
    }
    else {
        SyntaxNode[] childNodes = node.childNodes;
        foreach var child in childNodes {
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
        return node.literal;
    }
    else {
        return node.token;
    }
}

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
    SyntaxNode[] newChildNodes = from SyntaxNode child in node.childNodes select normalizeSyntaxNode(child);
    return { part: node.part, childNodes: newChildNodes };
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
        foreach int i in 0 ..< 4 {
            newChildNodes.push(normalizeSyntaxNode(childNodes[i]));
        }
        newChildNodes.push(normalizeRangeExprSyntaxNode(childNodes[4]));
        newChildNodes.push(normalizeSyntaxNode(childNodes[5]));
    }
    else if astNode is CompoundAssignStmt|AssignStmt {
        newChildNodes = [normalizeLExprSyntaxNode(childNodes[0])];
        foreach int i in 1 ..< childNodes.length() {
            newChildNodes.push(normalizeSyntaxNode(childNodes[i]));
        }
    }
    else {
        newChildNodes = from SyntaxNode child in childNodes select normalizeSyntaxNode(child);
    }
    return { astNode, childNodes: newChildNodes };
}

function normalizeRangeExprSyntaxNode(SyntaxNode node) returns SyntaxNode {
    if node !is NonTerminalSyntaxNode || node.astNode !is RangeExpr {
        panic error("expected a range expr");
    }
    SyntaxNode[] childNodes = node.childNodes;
    SyntaxNode[] newChildNodes = [normalizeExprSyntaxNode(childNodes[0], true),
                                  normalizeSyntaxNode(childNodes[1]),
                                  normalizeExprSyntaxNode(childNodes[2], true)];
    return { astNode: node.astNode, childNodes: newChildNodes };
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
        newChildNodes = conditionallWrapChildNodes(wrap, [normalizeSyntaxNode(childNodes[0]),
                                                          normalizeExprSyntaxNode(childNodes[1], true)]);
    }
    else if astNode is BinaryExpr {
        newChildNodes = conditionallWrapChildNodes(wrap, [normalizeExprSyntaxNode(childNodes[0], true),
                                                          normalizeSyntaxNode(childNodes[1]),
                                                          normalizeExprSyntaxNode(childNodes[2], true)]);
    }
    else if astNode is TypeCastExpr {
        newChildNodes = [];
        // JBUG can't use query expression
        foreach int i in 0 ..< childNodes.length() - 1 {
            newChildNodes.push(normalizeSyntaxNode(childNodes[i]));
        }
        newChildNodes.push(normalizeExprSyntaxNode(childNodes[childNodes.length() - 1], true));
        newChildNodes = conditionallWrapChildNodes(wrap, newChildNodes);
    }
    else if astNode is CheckingExpr {
        newChildNodes = conditionallWrapChildNodes(wrap, from SyntaxNode child in childNodes select normalizeSyntaxNode(child));
    }
    else if astNode is MemberAccessExpr|TypeTestExpr|FieldAccessExpr|MethodCallExpr {
        newChildNodes = [normalizeExprSyntaxNode(childNodes[0], true)];
        foreach int i in 1 ..< childNodes.length() {
            newChildNodes.push(normalizeSyntaxNode(childNodes[i]));
        }
        newChildNodes = conditionallWrapChildNodes(wrap, newChildNodes);
    }
    else {
        newChildNodes = from SyntaxNode child in childNodes select normalizeSyntaxNode(child);
    }
    return { astNode, childNodes: newChildNodes };
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
        foreach int i in 1 ..< childNodes.length() {
            newChildNodes.push(normalizeSyntaxNode(childNodes[i]));
        }
    }
    else {
        newChildNodes = from SyntaxNode child in childNodes select normalizeSyntaxNode(child);
    }
    return { astNode, childNodes: newChildNodes };
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
