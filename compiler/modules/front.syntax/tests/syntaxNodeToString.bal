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
    if astNode is TypeDesc {
        return typeDescSyntaxNodeToString(node, false);
    }
    else {
        panic error("unimplemented");
    }
}

function typeDescSyntaxNodeToString(SyntaxNode node, boolean|BinaryTypeOp wrap) returns string {
    if node is TerminalSyntaxNode {
        return terminalSyntaxNodeToString(node);
    }
    AstNode astNode = node.astNode;
    string[] content;
    if astNode !is TypeDesc {
        panic error("expected a type desc node");
    }
    if astNode is GroupingTypeDesc {
        return typeDescSyntaxNodeToString(node.childNodes[1], wrap);
    }
    else if astNode is BinaryTypeDesc {
        boolean noWrap = wrap == false || wrap == astNode.op;
        content = conditionalWrapContent(!noWrap, [typeDescSyntaxNodeToString(node.childNodes[0], astNode.op),
                                                syntaxNodeToString(node.childNodes[1]),
                                                typeDescSyntaxNodeToString(node.childNodes[2], astNode.op)]);
    }
    else if astNode is TupleTypeDesc {
        content = conditionalWrapContent(wrap != false, from SyntaxNode child in node.childNodes select syntaxNodeToString(child));
    }
    else if astNode is ArrayTypeDesc {
        string[] innerContent = [typeDescSyntaxNodeToString(node.childNodes[0], true)];
        // JBUG: can't use query expression
        // innerContent.push(...from int i in 1 ..< node.childNodes.length() select syntaxNodeToString(node.childNodes[i]));
        foreach int i in 1 ..< node.childNodes.length() {
            innerContent.push(syntaxNodeToString(node.childNodes[i]));
        }
        content = conditionalWrapContent(wrap != false, innerContent);
    }
    else {
        content = from SyntaxNode child in node.childNodes select syntaxNodeToString(child);
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
