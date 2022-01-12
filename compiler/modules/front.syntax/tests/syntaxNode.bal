function syntaxNodeFromImportDecl(ImportDecl decl) returns NonTerminalSyntaxNode {
    SyntaxNode[] childNodes = [];
    childNodes.push({ token: "import", pos: decl.startPos });
    string? org = decl.org;
    if org != () {
        childNodes.push({ name: org, pos: () });
        childNodes.push({ token: "/" });
    }
    childNodes.push({ name: ".".'join(...decl.names), pos: decl.namePos });
    string? prefix = decl.prefix;
    if prefix != () {
        childNodes.push({ token: "as" });
        childNodes.push({ name: prefix, pos: () });
    }
    childNodes.push(SEMICOLON_NODE);
    return { childNodes , astNode: decl };
}

function syntaxNodeFromModuleLevelDefn(ModuleLevelDefn defn) returns SyntaxNode {
    if defn is ConstDefn {
        return syntaxNodeFromConstDefn(defn);
    }
    else if defn is TypeDefn {
        return syntaxNodeFromTypeDefn(defn);
    }
    else {
        return syntaxNodeFromFunctionDefn(defn);
    }
}

function syntaxNodeFromConstDefn(ConstDefn defn) returns SyntaxNode {
    SyntaxNode[] childNodes = moduleLevelDefnPrefix(defn);
    childNodes.push({ token: "const" });
    SubsetBuiltinTypeDesc? td = defn.td;
    if td != () {
        childNodes.push({ token: td.builtinTypeName });
    }
    childNodes.push({ name: defn.name, pos: defn.namePos });
    childNodes.push({ token: "=" });
    childNodes.push(syntaxNodeFromExpr(defn.expr));
    childNodes.push(SEMICOLON_NODE);
    return { childNodes, astNode: defn };
}

function syntaxNodeFromTypeDefn(TypeDefn defn) returns SyntaxNode {
    SyntaxNode[] childNodes = moduleLevelDefnPrefix(defn);
    childNodes.push({ token: "type" });
    childNodes.push({ name: defn.name, pos: defn.namePos });
    childNodes.push(syntaxNodeFromTypeDesc(defn.td));
    childNodes.push(SEMICOLON_NODE);
    return { childNodes, astNode: defn };
}

function syntaxNodeFromFunctionDefn(FunctionDefn defn) returns SyntaxNode {
    SyntaxNode[] childNodes = moduleLevelDefnPrefix(defn);
    childNodes.push({ token: "function" });
    childNodes.push({ name: defn.name, pos: defn.namePos });
    childNodes.push(syntaxNodeFromFunctionTypeDesc(defn.typeDesc));
    childNodes.push(...syntaxNodeFromStmtBlock(defn.body));
    return { childNodes, astNode: defn };
}

function moduleLevelDefnPrefix(ModuleLevelDefn defn) returns SyntaxNode[] {
    SyntaxNode[] childNodes = [];
    if defn.vis == "public" {
        childNodes.push({ token: "public", pos: defn.startPos });
    }
    return childNodes;
}

function syntaxNodeFromFunctionTypeDesc(FunctionTypeDesc td) returns SyntaxNode {
    SyntaxNode[] childNodes = [{ token: "(", pos: td.startPos }];
    foreach int i in 0 ..< td.params.length() {
        if i > 0 {
            childNodes.push({ token: "," });
        }
        childNodes.push(syntaxNodeFromFunctionTypeParam(td.params[i]));
    }
    childNodes.push({ token: ")" });
    TypeDesc retTd = td.ret;
    // pr-todo: this will mess "returns null" functions
    if !(retTd is BuiltinTypeDesc && retTd.builtinTypeName == "null") {
        childNodes.push({ token: "returns" }, syntaxNodeFromTypeDesc(retTd));
    }
    return { childNodes, astNode: td };
}

function syntaxNodeFromFunctionTypeParam(FunctionTypeParam param) returns SyntaxNode {
    SyntaxNode[] childNodes = [syntaxNodeFromTypeDesc(param.td)];
    string? name = param.name;
    if name != () {
        childNodes.push({ name, pos:param.namePos });
    }
    return { childNodes, astNode: param };
}

function syntaxNodeFromStmtBlock(StmtBlock block) returns SyntaxNode[] {
    SyntaxNode[] childNodes = [{ token: "{", pos: block.startPos }];
    foreach Stmt stmt in block.stmts {
        childNodes.push(syntaxNodeFromStmt(stmt));
    }
    childNodes.push({ token: "}", pos: block.endPos });
    return childNodes;
}

// function nodeFromStmt(Stmt stmt) returns SyntaxNode {
//     if stmt is VarDeclStmt {
//         return {
//             astNode: stmt,
//             childNodes: [ nodeFromTypeDesc(stmt.td), nodeFromExpr(stmt.initExpr) ]
//         };
//     }
//     else if
// }
//
// function nodesFromStmtBlock(StmtBlock block) returns SyntaxNode[] {
//     SyntaxNode[] nodes = [];
//     // Add terminal for `{`
//     foreach var stmt in block.stmts {
//         nodes.push(nodeFromStmt(stmt));
//
//     }
//
//     // Add terminal for `}` with closeBracePos
//     return nodes;
// }
//
// function nodeFromExpr(Expr expr) returns SyntaxNode {
//
// }
//
// function nodeFromTypeDesc(TypeDesc td) returns SyntaxNode {
//
// }

function syntaxNodeFromStmt(Stmt stmt) returns NonTerminalSyntaxNode {
    SyntaxNode[] childNodes;
    if stmt is VarDeclStmt {
        childNodes = [];
        if stmt.isFinal {
            childNodes.push({ token: "final", pos: stmt.startPos });
        }
        childNodes.push(syntaxNodeFromTypeDesc(stmt.td));
        childNodes.push({ token: "=", pos: stmt.opPos });
        childNodes.push(syntaxNodeFromExpr(stmt.initExpr));
    }
    else if stmt is ReturnStmt {
        Expr? returnExpr = stmt.returnExpr;
        if returnExpr == () {
            childNodes = [{ token: "return", pos: stmt.startPos }];
        }
        else {
            childNodes = [syntaxNodeFromExpr(returnExpr)];
        }
    }
    else if stmt is PanicStmt {
        childNodes = [{ token: "panic", pos: stmt.startPos }, syntaxNodeFromExpr(stmt.panicExpr)];
    }
    else if stmt is AssignStmt {
        childNodes = [];
        LExpr|WILDCARD lValue = stmt.lValue;
        if lValue is LExpr {
            childNodes.push(syntaxNodeFromExpr(lValue));
        }
        else {
            childNodes.push({ token: "_", pos:stmt.startPos });
        }
        childNodes.push({ token: "=", pos: stmt.opPos });
        childNodes.push(syntaxNodeFromExpr(stmt.expr));
    }
    else if stmt is CompoundAssignStmt {
        childNodes = [
            syntaxNodeFromExpr(stmt.lValue),
            { token: stmt.op, pos: stmt.opPos },
            syntaxNodeFromExpr(stmt.expr)
        ];
    }
    else if stmt is IfElseStmt {
        childNodes = [
            { token: "if", pos: stmt.startPos },
            syntaxNodeFromExpr(stmt.condition)
        ];
        childNodes.push(...syntaxNodeFromStmtBlock(stmt.ifTrue));
        StmtBlock|IfElseStmt? ifFalse = stmt.ifFalse;
        if ifFalse != () {
            childNodes.push({ token: "else" });
        }
        if ifFalse is StmtBlock {
            childNodes.push(...syntaxNodeFromStmtBlock(ifFalse));
        }
        else if ifFalse is IfElseStmt {
            childNodes.push(syntaxNodeFromStmt(ifFalse));
        }
    }
    else if stmt is MatchStmt {
        childNodes = [
            { token: "match", pos: stmt.startPos },
            syntaxNodeFromExpr(stmt.expr),
            { token: "{" },
            // pr-todo: deal with claues
            { token: "}" }
        ];
    }
    else if stmt is WhileStmt {
        childNodes = [
            { token: "while", pos: stmt.startPos },
            syntaxNodeFromExpr(stmt.condition)
        ];
        childNodes.push(...syntaxNodeFromStmtBlock(stmt.body));
    }
    else if stmt is ForeachStmt {
        childNodes = [
            { token: "foreach", pos: stmt.startPos },
            { token: "int" },
            { name: stmt.name, pos: stmt.namePos },
            { token: "in" },
            syntaxNodeFromRangeExpr(stmt.range)
        ];
        childNodes.push(...syntaxNodeFromStmtBlock(stmt.body));
    }
    else if stmt is BreakContinueStmt {
        childNodes = [{ token: stmt.breakContinue, pos: stmt.startPos }];
    }
    else {
        childNodes = [syntaxNodeFromExpr(stmt.expr)];
    }
    childNodes.push(SEMICOLON_NODE);
    return { childNodes, astNode: stmt };
}

function syntaxNodeFromRangeExpr(RangeExpr expr) returns SyntaxNode {
    SyntaxNode[] childNodes = [
        syntaxNodeFromExpr(expr.lower),
        { token: "..<", pos: expr.opPos },
        syntaxNodeFromExpr(expr.upper)
    ];
    return { childNodes, astNode: expr };
}

function syntaxNodeFromExpr(Expr expr) returns SyntaxNode {
    SyntaxNode[] childNodes;
    if expr is TerminalExpr {
        return syntaxNodeFromTerminalExpr(expr);
    }
    else if expr is BinaryExpr {
        return syntaxNodeFromBinaryExpr(expr);
    }
    else if expr is TypeTestExpr {
        childNodes = [syntaxNodeFromExpr(expr.left)];
        if expr.negated {
            // pr-todo: should we make "!is" a token?
            childNodes.push({ token: "!", pos: expr.kwPos });
            childNodes.push({ token: "is" });
        }
        else {
            childNodes.push({ token: "is", pos: expr.kwPos });
        }
        childNodes.push(syntaxNodeFromTypeDesc(expr.td));
    }
    else if expr is ErrorConstructorExpr {
        childNodes = [
            { token: "error", pos: expr.startPos },
            { token: "(" },
            syntaxNodeFromExpr(expr.message),
            { token: ")", pos:expr.endPos }
        ];
    }
    else if expr is FunctionCallExpr {
        childNodes = [
            { name: expr.funcName, pos: expr.startPos },
            { token: "(", pos: expr.openParenPos }
        ];
        foreach Expr arg in expr.args {
            childNodes.push(syntaxNodeFromExpr(arg));
        }
        childNodes.push({ token: ")", pos: expr.endPos });
    }
    else if expr is MethodCallExpr {
        childNodes = [
            syntaxNodeFromExpr(expr.target),
            { token: "(", pos: expr.openParenPos }
        ];
        childNodes.push(...from Expr arg in expr.args select syntaxNodeFromExpr(arg));
        childNodes.push({ token: ")"});
    }
    else if expr is ListConstructorExpr {
        childNodes = [
            { token: "[", pos: expr.startPos }
        ];
        childNodes.push(...from Expr member in expr.members select syntaxNodeFromExpr(member));
        childNodes.push({ token: "]", pos: expr.endPos });
    }
    else if expr is MappingConstructorExpr {
        childNodes = [
            { token: "{", pos: expr.startPos }
        ];
        childNodes.push(...from Field f in expr.fields select syntaxNodeFromField(f));
        childNodes.push({ token: "}", pos: expr.endPos });
    }
    else if expr is MemberAccessExpr {
        childNodes = [
            syntaxNodeFromExpr(expr.container),
            { token: "[" },
            syntaxNodeFromExpr(expr.index),
            { token: "]" }
        ];
    }
    else if expr is FieldAccessExpr {
        childNodes = [
            syntaxNodeFromExpr(expr.container),
            { token: ".", pos: expr.opPos },
            { name: expr.fieldName, pos: () }
        ];
    }
    else if expr is TypeCastExpr {
        childNodes = [
            { token: "<", pos: expr.startPos },
            syntaxNodeFromTypeDesc(expr.td),
            { token: ">" },
            syntaxNodeFromExpr(expr.operand)
        ];
    }
    else if expr is VarRefExpr {
        string? prefix = expr.prefix;
        childNodes = [];
        Position? identifierPos = prefix == () ? () : expr.qNamePos;
        if prefix != () {
            // pr-todo: factor this out
            childNodes.push({ name: prefix, pos: expr.qNamePos });
            childNodes.push({ token: ":" });
        }
        childNodes.push({ name: expr.name, pos: identifierPos });
    }
    else if expr is CheckingExpr {
        childNodes = [
            { token: expr.checkingKeyword, pos: expr.kwPos },
            syntaxNodeFromExpr(expr.operand)
        ];
    }
    else {
        childNodes = [
            { token: expr.op, pos: expr.opPos },
            syntaxNodeFromExpr(expr.operand)
        ];
    }
    return { childNodes, astNode: expr };
}

type TerminalExpr ConstValueExpr|NumericLiteralExpr;
function syntaxNodeFromTerminalExpr(TerminalExpr expr) returns TerminalSyntaxNode {
    // pr-todo: add fixed tokens
    string token;
    if expr is ConstValueExpr {
        token = expr.value.toString();
    }
    else if expr is IntLiteralExpr {
        token = expr.digits;
    }
    else {
        token = expr.untypedLiteral;
    }
    return { token, astNode: expr };
}

function syntaxNodeFromBinaryExpr(BinaryExpr expr) returns SyntaxNode {
    SyntaxNode[] childNodes = [syntaxNodeFromExpr(expr.left)];
    // pr-todo: why bitwise not an expr op?
    BinaryExprOp|BinaryBitwiseOp op;
    if expr is BinaryEqualityExpr {
        op = expr.equalityOp;
    }
    else if expr is BinaryRelationalExpr {
        op = expr.relationalOp;
    }
    else if expr is BinaryArithmeticExpr {
        op = expr.arithmeticOp;
    }
    else {
        op = expr.bitwiseOp;
    }
    childNodes.push({ token: op, pos: expr.opPos });
    childNodes.push(syntaxNodeFromExpr(expr.right));
    return { astNode: expr, childNodes };
}

function syntaxNodeFromField(Field f) returns SyntaxNode {
    return { childNodes: [syntaxNodeFromExpr(f.value)], astNode: f };
}

function syntaxNodeFromTypeDesc(TypeDesc td) returns SyntaxNode {
    SyntaxNode[] childNodes;
    // pr-todo: add fixed tokens
    if td is TerminalTypeDesc {
        return syntaxNodeFromTerminalTypeDesc(td);
    }
    if td is TupleTypeDesc {
        childNodes = from TypeDesc member in td.members select syntaxNodeFromTypeDesc(member);
        TypeDesc? rest = td.rest;
        if rest != () {
            childNodes.push(syntaxNodeFromTypeDesc(rest));
        }
    }
    else if td is ArrayTypeDesc {
        childNodes = [syntaxNodeFromTypeDesc(td.member)];
        //pr-todo: add dimension nodes
    }
    else if td is MappingTypeDesc {
        childNodes = from FieldDesc fd in td.fields select syntaxNodeFromFieldDesc(fd);
        TypeDesc|INCLUSIVE_RECORD_TYPE_DESC? rest = td.rest;
        if rest is TypeDesc {
            childNodes.push(syntaxNodeFromTypeDesc(rest));
        }
    }
    else if td is FunctionTypeDesc {
        childNodes = from FunctionTypeParam param in td.params select syntaxNodeFromFunctionTypeParam(param);
        childNodes.push(syntaxNodeFromTypeDesc(td.ret));
    }
    else if td is BinaryTypeDesc {
        childNodes = [syntaxNodeFromTypeDesc(td.left), syntaxNodeFromTypeDesc(td.right)];
    }
    else if td is ErrorTypeDesc {
        childNodes = [syntaxNodeFromTypeDesc(td.detail)];
    }
    else if td is XmlSequenceTypeDesc {
        childNodes = [syntaxNodeFromTypeDesc(td.constituent)];
    }
    else if td is TableTypeDesc {
        childNodes = [syntaxNodeFromTypeDesc(td.row)];
    }
    else {
        childNodes = [syntaxNodeFromTypeDesc(td.td)];
    }
    return { astNode: td, childNodes };
}

type TerminalTypeDesc BuiltinTypeDesc|TypeDescRef|SingletonTypeDesc;
function syntaxNodeFromTerminalTypeDesc(TerminalTypeDesc td) returns TerminalSyntaxNode {
    string token;
    if td is BuiltinTypeDesc {
        token = td.builtinTypeName;
    }
    else if td is TypeDescRef {
        token = td.typeName;
    }
    else {
        token = td.value.toString();
    }
    return { token, astNode: td };
}

// pr-todo: should these be combined?
function syntaxNodeFromFieldDesc(FieldDesc fd) returns SyntaxNode {
    return { childNodes: [syntaxNodeFromTypeDesc(fd.typeDesc)], astNode: fd };
}

function finishStmtNode(AstNode astNode, SyntaxNode... nodes) returns NonTerminalSyntaxNode {
    SyntaxNode[] newNodes = [];
    newNodes.push(...nodes);
    newNodes.push(SEMICOLON_NODE);
    return nonTerminalSyntaxNode(astNode, ...newNodes);
}

function nonTerminalSyntaxNode(AstNode astNode, SyntaxNode... childNodes) returns NonTerminalSyntaxNode {
    return { childNodes, astNode };
}
