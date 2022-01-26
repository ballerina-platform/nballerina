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

function syntaxNodeToString(SyntaxNode node) returns string {
    if node is TerminalSyntaxNode {
        return terminalSyntaxNodeToString(node);
    }
    AstNode astNode = node.astNode;
    if astNode is Stmt {
        return stmtSyntaxNodeToString(node);
    }
    else if astNode is Expr {
        return exprSyntaxNodeToString(node, false);
    }
    else if astNode is TypeDesc {
        return typeDescSyntaxNodeToString(node, false);
    }
    else {
        return "".'join(...from SyntaxNode child in node.childNodes select syntaxNodeToString(child));
    }
}

function stmtSyntaxNodeToString(SyntaxNode node) returns string {
    if node is TerminalSyntaxNode {
        return terminalSyntaxNodeToString(node);
    }
    AstNode astNode = node.astNode;
    SyntaxNode[] childNodes = node.childNodes;
    string[] content;
    if astNode !is Stmt {
        panic error("expected a stmt node");
    }
    if astNode is ForeachStmt {
        content = [];
        foreach int i in 0 ..< 4 {
            content.push(syntaxNodeToString(childNodes[i]));
        }
        content.push(rangeExprSyntaxNodeToString(childNodes[4]));
        content.push(syntaxNodeToString(childNodes[5]));
    }
    else {
        content = from SyntaxNode child in childNodes select syntaxNodeToString(child);
    }
    return " ".'join(...content);
}

function rangeExprSyntaxNodeToString(SyntaxNode node) returns string {
    if node !is NonTerminalSyntaxNode || node.astNode !is RangeExpr {
        panic error("expected a range expr");
    }
    SyntaxNode[] childNodes = node.childNodes;
    string[] content = [exprSyntaxNodeToString(childNodes[0], true),
                        syntaxNodeToString(childNodes[1]),
                        exprSyntaxNodeToString(childNodes[2], true)];
    return " ".'join(...content);
}

function exprSyntaxNodeToString(SyntaxNode node, boolean wrap) returns string {
    if node is TerminalSyntaxNode {
        return terminalSyntaxNodeToString(node);
    }
    AstNode astNode = node.astNode;
    SyntaxNode[] childNodes = node.childNodes;
    string[] content;
    if astNode !is Expr {
        panic error("expected an expr node");
    }
    if astNode is GroupingExpr {
        return exprSyntaxNodeToString(childNodes[1], wrap);
    }
    else if astNode is MemberAccessExpr|TypeTestExpr|FieldAccessExpr|MethodCallExpr {
        string[] innerContent = [exprSyntaxNodeToString(childNodes[0], true)];
        // pr-todo: figure out the Java NULL prt:
        // innerContent.push(...from int i in 1 ..< childNodes.length() select syntaxNodeToString(childNodes[i]));
        foreach int i in 1 ..< childNodes.length() {
            innerContent.push(syntaxNodeToString(childNodes[i]));
        }
        content = conditionalWrapContent(wrap, innerContent);
    }
    else if astNode is UnaryExpr {
        content = conditionalWrapContent(wrap, [syntaxNodeToString(childNodes[0]),
                                                exprSyntaxNodeToString(childNodes[1], true)]);
    }
    else if astNode is BinaryExpr {
        content = conditionalWrapContent(wrap, [exprSyntaxNodeToString(childNodes[0], true),
                                                syntaxNodeToString(childNodes[1]),
                                                exprSyntaxNodeToString(childNodes[2], true)]);
    }
    else if astNode is TypeCastExpr {
        // pr-todo: figure out the Java NULL prt:
        // string[] innerContent = from int i in 0 ..< childNodes.length() - 1 select syntaxNodeToString(node);
        string[] innerContent = [];
        foreach int i in 0 ..< childNodes.length() - 1 {
            innerContent.push(syntaxNodeToString(childNodes[i]));
        }
        innerContent.push(exprSyntaxNodeToString(childNodes[childNodes.length() - 1], true));
        content = conditionalWrapContent(wrap, innerContent);
    }
    else if astNode is CheckingExpr {
        content = conditionalWrapContent(wrap, from SyntaxNode child in childNodes select syntaxNodeToString(child));
    }
    else {
        content = from SyntaxNode child in childNodes select syntaxNodeToString(child);
    }
    return " ".'join(...content);
}

function typeDescSyntaxNodeToString(SyntaxNode node, boolean|BinaryTypeOp wrap) returns string {
    if node is TerminalSyntaxNode {
        return terminalSyntaxNodeToString(node);
    }
    AstNode astNode = node.astNode;
    SyntaxNode[] childNodes = node.childNodes;
    string[] content;
    if astNode !is TypeDesc {
        panic error("expected a type desc node");
    }
    if astNode is GroupingTypeDesc {
        return typeDescSyntaxNodeToString(childNodes[1], wrap);
    }
    else if astNode is BinaryTypeDesc {
        boolean noWrap = wrap == false || wrap == astNode.op;
        // FIXME: with the optional type desc
        if childNodes.length() == 2 {
            content = conditionalWrapContent(!noWrap, [typeDescSyntaxNodeToString(childNodes[0], astNode.op),
                                                    "?"]);
        }
        else {
        content = conditionalWrapContent(!noWrap, [typeDescSyntaxNodeToString(childNodes[0], astNode.op),
                                                   syntaxNodeToString(childNodes[1]),
                                                   typeDescSyntaxNodeToString(childNodes[2], astNode.op)]);
        }
    }
    else if astNode is TupleTypeDesc {
        content = conditionalWrapContent(wrap != false, from SyntaxNode child in childNodes select syntaxNodeToString(child));
    }
    else if astNode is ArrayTypeDesc {
        string[] innerContent = [typeDescSyntaxNodeToString(childNodes[0], true)];
        // pr-todo: figure out the Java NULL prt:
        // innerContent.push(...from int i in 1 ..< childNodes.length() select syntaxNodeToString(childNodes[i]));
        foreach int i in 1 ..< childNodes.length() {
            innerContent.push(syntaxNodeToString(childNodes[i]));
        }
        content = conditionalWrapContent(wrap != false, innerContent);
    }
    else {
        content = from SyntaxNode child in childNodes select syntaxNodeToString(child);
    }
    return " ".'join(...content);

}

function conditionalWrapContent(boolean condition, string[] content) returns string[] {
    if !condition {
        return content;
    }
    string[] newContent = ["("];
    newContent.push(...content);
    newContent.push(")");
    return newContent;
}
