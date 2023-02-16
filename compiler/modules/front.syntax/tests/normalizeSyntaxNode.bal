import wso2/nballerina.comm.err;

type WrappableTypeDesc ArrayTypeDesc|BinaryTypeDesc;
type WrappableExpr BinaryExpr|TypeTestExpr|MethodCallExpr|MemberAccessExpr|FieldAccessExpr|TypeCastExpr|UnaryExpr;

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
    return normalizeChildNodes(node, false, ());
}

// if wrap == () then node is never wrapped (used for the lhs of assignment stmts)
function normalizeChildNodes(SubSyntaxNode node, boolean? wrap, SubSyntaxNode? parent) returns SubSyntaxNode {
    if node !is NonTerminalSyntaxNode {
        return node;
    }
    if isGroupingNode(node) {
        return normalizeChildNodes(node.childNodes[1], parent == () ? false : wrapChildNode(node.childNodes[1], parent), parent);
    }
    SubSyntaxNode[] newChildNodes = [];
    if wrap == true {
        newChildNodes.push({ token: "(" });
    }
    AstNode? astNode = syntaxNodeToAstNode(node);
    if astNode is AssignStmt|CompoundAssignStmt {
        // This is to ensure we never wrap the lhs
        newChildNodes.push(normalizeChildNodes(node.childNodes[0], (), node),
                           normalizeChildNodes(node.childNodes[1], false, node),
                           normalizeChildNodes(node.childNodes[2], wrapChildNode(node.childNodes[2], node), node),
                           normalizeChildNodes(node.childNodes[3], false, node));
    }
    else {
        foreach SubSyntaxNode childNode in node.childNodes {
            if isGroupingNode(childNode) {
                SubSyntaxNode innerChildNode = innerSyntaxNode(childNode);
                newChildNodes.push(normalizeChildNodes(innerChildNode, wrap != () ? wrapChildNode(innerChildNode, node) : (), node));
            }
            else {
                newChildNodes.push(normalizeChildNodes(childNode, wrap != () ? wrapChildNode(childNode, node): (), node));
            }
        }
    }
    if wrap == true {
        newChildNodes.push({ token: ")" });
    }
    return { astNode: node.astNode, childNodes: newChildNodes };
}

function wrapChildNode(SyntaxNode childNode, SyntaxNode parentNode) returns boolean {
    if isGroupingNode(childNode) || isGroupingNode(parentNode) {
        panic err:impossible("unexpected node type");
    }
    AstNode? child = syntaxNodeToAstNode(childNode);
    AstNode? parent = syntaxNodeToAstNode(parentNode);
    if child is WrappableTypeDesc && parent is TypeDesc {
        if parent is ArrayTypeDesc {
            return child === innerAstNode(parent.member);
        }
        else if parent is BinaryTypeDesc {
            if child is BinaryTypeDesc {
                return child.op != parent.op;
            }
            return true;
        }
    }
    if child is WrappableExpr {
        if parent is MemberAccessExpr|FieldAccessExpr {
            return child === innerAstNode(parent.container);
        }
        else if parent is TypeTestExpr {
            return child === innerAstNode(parent.left);
        }
        else if parent is MethodCallExpr {
            return child === innerAstNode(parent.target);
        }
        else if parent is TypeCastExpr|UnaryExpr {
            return child === innerAstNode(parent.operand);
        }
        else if parent is BinaryExpr {
            return true;
        }
    }
    return false;
}

function innerSyntaxNode(SubSyntaxNode node) returns SubSyntaxNode {
    SubSyntaxNode innerNode = node;
    while isGroupingNode(innerNode) {
        innerNode = (<NonTerminalSyntaxNode>innerNode).childNodes[1];
    }
    return innerNode;
}

function innerAstNode(AstNode node) returns AstNode {
    AstNode innerNode = node;
    while innerNode is GroupingExpr || (innerNode is UnaryTypeDesc && innerNode.op == "(") {
        innerNode = innerNode is GroupingExpr ? innerNode.expr : innerNode.td;
    }
    return innerNode;
}

function isGroupingNode(SyntaxNode node) returns boolean {
    if node !is AstSyntaxNode {
        return false;
    }
    AstNode astNode = node.astNode;
    return astNode is GroupingExpr || (astNode is UnaryTypeDesc && astNode.op == "(");
}
