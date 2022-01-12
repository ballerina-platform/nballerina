function syntaxNodeFromImportDecl(ImportDecl decl) returns NonTerminalSyntaxNode {
    SyntaxNode[] childNodes = [];
    childNodes.push();
    string? org = decl.org;
    string? prefix = decl.prefix;
    return finishWithSemiColon(decl,
                               { token: "import", pos: decl.startPos },
                               org != () ? childNodes.push({ name: org, pos: () }) : (),
                               org != () ? childNodes.push({ token: "/" }) : (),
                               { name: ".".'join(...decl.names), pos: decl.namePos },
                               prefix != () ? childNodes.push({ token: "as" }) : (),
                               prefix != () ? childNodes.push({ name: prefix, pos: () }) : ());
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
    SubsetBuiltinTypeDesc? td = defn.td;
    return finishWithSemiColon(defn,
                               { token: "const" },
                               td != () ? { token: td.builtinTypeName } : (),
                               { name: defn.name, pos: defn.namePos },
                               { token: "=" },
                               syntaxNodeFromExpr(defn.expr)
    );
}

function syntaxNodeFromTypeDefn(TypeDefn defn) returns SyntaxNode {
    return finishWithSemiColon(defn,
                               { token: "type" },
                               { name: defn.name, pos: defn.namePos },
                               syntaxNodeFromTypeDesc(defn.td));
}

function syntaxNodeFromFunctionDefn(FunctionDefn defn) returns SyntaxNode {
    return nonTerminalSyntaxNode(defn,
                                 { token: "function" },
                                 { name: defn.name, pos: defn.namePos},
                                 syntaxNodeFromFunctionTypeDesc(defn.typeDesc, skipHeader = true),
                                 syntaxNodeFromStmtBlock(defn.body));
}

function syntaxNodeFromFunctionTypeParam(FunctionTypeParam param) returns SyntaxNode {
    string? name = param.name;
    return nonTerminalSyntaxNode(param,
                                 syntaxNodeFromTypeDesc(param.td),
                                 name != () ? { name, pos: param.namePos} : ());
}

function syntaxNodeFromStmtBlock(StmtBlock block) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(block, ...combineChildNodes([{ token: "}", pos: block.startPos}],
                                                               (from Stmt stmt in block.stmts select syntaxNodeFromStmt(stmt)),
                                                               [{ token: "}", pos: block.endPos }]));
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
    if stmt is VarDeclStmt {
        return syntaxNodeFromVarDeclStmt(stmt);
    }
    else if stmt is ReturnStmt {
        return syntaxNodeFromReturnStmt(stmt);
    }
    else if stmt is PanicStmt {
        return syntaxNodeFromPanicStmt(stmt);
    }
    else if stmt is AssignStmt {
        return syntaxNodeFromAssignStmt(stmt);
    }
    else if stmt is CompoundAssignStmt {
        return syntaxNodeFromCompoundAssignStmt(stmt);
    }
    else if stmt is IfElseStmt {
        return syntaxNodeFromIfElseStmt(stmt);
    }
    else if stmt is MatchStmt {
        return syntaxNodeFromMatchStmt(stmt);
    }
    else if stmt is WhileStmt {
        return syntaxNodeFromWhileStmt(stmt);
    }
    else if stmt is ForeachStmt {
        return syntaxNodeFromForeachStmt(stmt);
    }
    else if stmt is BreakContinueStmt {
        return syntaxNodeFromBreakContinueStmt(stmt);
    }
    else {
        return syntaxNodeFromCallStmt(stmt);
    }
}

function syntaxNodeFromVarDeclStmt(VarDeclStmt stmt) returns NonTerminalSyntaxNode {
    return finishWithSemiColon(stmt,
                               stmt.isFinal ? { token: "final", pos: stmt.startPos }: (),
                               syntaxNodeFromTypeDesc(stmt.td),
                               { token: "=", pos: stmt.opPos },
                               syntaxNodeFromExpr(stmt.initExpr));
}

function syntaxNodeFromReturnStmt(ReturnStmt stmt) returns NonTerminalSyntaxNode {
    Expr? returnExpr = stmt.returnExpr;
    return finishWithSemiColon(stmt,
                               { token: "return", pos: stmt.startPos },
                               returnExpr != () ? syntaxNodeFromExpr(returnExpr) : ());
}

function syntaxNodeFromPanicStmt(PanicStmt stmt) returns NonTerminalSyntaxNode {
    return finishWithSemiColon(stmt,
                               { token: "panic", pos: stmt.startPos },
                               syntaxNodeFromExpr(stmt.panicExpr));
}

function syntaxNodeFromAssignStmt(AssignStmt stmt) returns NonTerminalSyntaxNode {
    LExpr|WILDCARD lValue = stmt.lValue;
    return finishWithSemiColon(stmt,
                               lValue is LExpr ? syntaxNodeFromExpr(lValue) : { token: "_", pos:stmt.startPos },
                               { token: "=", pos: stmt.opPos },
                               syntaxNodeFromExpr(stmt.expr));
}

function syntaxNodeFromCompoundAssignStmt(CompoundAssignStmt stmt) returns NonTerminalSyntaxNode {
    return finishWithSemiColon(stmt,
                               syntaxNodeFromExpr(stmt.lValue),
                               { token: stmt.op, pos: stmt.opPos },
                               syntaxNodeFromExpr(stmt.expr));
}

function syntaxNodeFromIfElseStmt(IfElseStmt stmt) returns NonTerminalSyntaxNode {
    StmtBlock|IfElseStmt? ifFalse = stmt.ifFalse;
    return nonTerminalSyntaxNode(stmt,
                                 { token: "if", pos: stmt.startPos },
                                 syntaxNodeFromExpr(stmt.condition),
                                 syntaxNodeFromStmtBlock(stmt.ifTrue),
                                 ifFalse != () ? { token: "else" } : (),
                                 ifFalse is StmtBlock ? syntaxNodeFromStmtBlock(ifFalse) : (ifFalse is IfElseStmt ? syntaxNodeFromStmt(ifFalse) : ()));
}

function syntaxNodeFromMatchStmt(MatchStmt stmt) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(stmt,
                                 { token: "match", pos: stmt.startPos },
                                 syntaxNodeFromExpr(stmt.expr),
                                 { token: "{" },
                                 // pr-todo: deal with claues
                                 { token: "}" });
}

function syntaxNodeFromWhileStmt(WhileStmt stmt) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(stmt,
                                 { token: "while", pos: stmt.startPos },
                                 syntaxNodeFromExpr(stmt.condition),
                                 syntaxNodeFromStmtBlock(stmt.body));
}

function syntaxNodeFromForeachStmt(ForeachStmt stmt) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(stmt,
                                 { token: "foreach", pos: stmt.startPos },
                                 { token: "int" },
                                 { name: stmt.name, pos: stmt.namePos },
                                 { token: "in" },
                                 syntaxNodeFromRangeExpr(stmt.range),
                                 syntaxNodeFromStmtBlock(stmt.body));
}

function syntaxNodeFromBreakContinueStmt(BreakContinueStmt stmt) returns NonTerminalSyntaxNode {
    return finishWithSemiColon(stmt,
                               { token: stmt.breakContinue,
                               pos: stmt.startPos });
}

function syntaxNodeFromCallStmt(CallStmt stmt) returns NonTerminalSyntaxNode {
    return finishWithSemiColon(stmt,
                               syntaxNodeFromExpr(stmt.expr));
}

function syntaxNodeFromExpr(Expr expr) returns SyntaxNode {
    if expr is TerminalExpr {
        return syntaxNodeFromTerminalExpr(expr);
    }
    else if expr is BinaryExpr {
        return syntaxNodeFromBinaryExpr(expr);
    }
    else if expr is TypeTestExpr {
        return syntaxNodeFromTypeTestExpr(expr);
    }
    else if expr is ErrorConstructorExpr {
        return syntaxNodeFromErrorConstructorExpr(expr);
    }
    else if expr is FunctionCallExpr {
        return syntaxNodeFromFunctionCallExpr(expr);
    }
    else if expr is MethodCallExpr {
        return syntaxNodeFromMethodCallExpr(expr);
    }
    else if expr is ListConstructorExpr {
        return syntaxNodeFromListConstructorExpr(expr);
    }
    else if expr is MappingConstructorExpr {
        return syntaxNodeFromMappingConstructorExpr(expr);
    }
    else if expr is MemberAccessExpr {
        return syntaxNodeFromMemberAccessExpr(expr);
    }
    else if expr is FieldAccessExpr {
        return syntaxNodeFromFieldAccessExpr(expr);
    }
    else if expr is TypeCastExpr {
        return syntaxNodeFromTypeCastExpr(expr);
    }
    else if expr is VarRefExpr {
        return syntaxNodeFromVarRefExpr(expr);
    }
    else if expr is CheckingExpr {
        return syntaxNodeFromCheckingExpr(expr);
    }
    else {
        return syntaxNodeFromUnaryExpr(expr);
    }
}

function syntaxNodeFromRangeExpr(RangeExpr expr) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr,
                                 syntaxNodeFromExpr(expr.lower),
                                 { token: "..<", pos: expr.opPos },
                                 syntaxNodeFromExpr(expr.upper)
    );
}

function syntaxNodeFromTypeTestExpr(TypeTestExpr expr) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr,
                                 syntaxNodeFromExpr(expr.left),
                                 // pr-todo: should we make "!is" a token?
                                 expr.negated ? { token: "!" } : (),
                                 { token: "is", pos: expr.kwPos },
                                 syntaxNodeFromTypeDesc(expr.td));
}

function syntaxNodeFromErrorConstructorExpr(ErrorConstructorExpr expr) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr,
                                 { token: "error", pos: expr.startPos },
                                 { token: "(" },
                                 syntaxNodeFromExpr(expr.message),
                                 { token: ")", pos:expr.endPos });
}

function syntaxNodeFromFunctionCallExpr(FunctionCallExpr expr) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr, ...combineChildNodes([{ name: expr.funcName, pos: expr.startPos },
                                                             { token: "(", pos: expr.openParenPos }],
                                                             (from Expr arg in expr.args select syntaxNodeFromExpr(arg)),
                                                             [{ token: ")", pos: expr.endPos }]));
}

function syntaxNodeFromMethodCallExpr(MethodCallExpr expr) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr, ...combineChildNodes([syntaxNodeFromExpr(expr.target),
                                                            { token: "(", pos: expr.openParenPos }],
                                                            (from Expr arg in expr.args select syntaxNodeFromExpr(arg)),
                                                            [{ token: ")"}]));
}

function syntaxNodeFromListConstructorExpr(ListConstructorExpr expr) returns NonTerminalSyntaxNode{
    return nonTerminalSyntaxNode(expr, ...combineChildNodes([{ token: "[", pos: expr.startPos }],
                                                            (from Expr member in expr.members select syntaxNodeFromExpr(member)),
                                                            [{ token: "]", pos: expr.endPos }]));
}

function syntaxNodeFromMappingConstructorExpr(MappingConstructorExpr expr) returns NonTerminalSyntaxNode{
    return nonTerminalSyntaxNode(expr, ...combineChildNodes([{ token: "{", pos: expr.startPos }],
                                                            (from Field f in expr.fields select syntaxNodeFromField(f)),
                                                            [{ token: "}", pos: expr.endPos }]));
}

function syntaxNodeFromMemberAccessExpr(MemberAccessExpr expr) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr, syntaxNodeFromExpr(expr.container),
                                       { token: "[" },
                                       syntaxNodeFromExpr(expr.index),
                                       { token: "]" });
}

function syntaxNodeFromFieldAccessExpr(FieldAccessExpr expr) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr, syntaxNodeFromExpr(expr.container),
                                       { token: ".", pos: expr.opPos },
                                       { name: expr.fieldName, pos: () });
}

function syntaxNodeFromTypeCastExpr(TypeCastExpr expr) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr, { token: "<", pos: expr.startPos },
                                       syntaxNodeFromTypeDesc(expr.td),
                                       { token: ">" },
                                       syntaxNodeFromExpr(expr.operand));
}

function syntaxNodeFromVarRefExpr(VarRefExpr expr) returns NonTerminalSyntaxNode {
    string? prefix = expr.prefix;
    Position? identifierPos = prefix == () ? () : expr.qNamePos;
    return nonTerminalSyntaxNode(expr, ...combineChildNodes(prefix != () ? [{ name: prefix, pos: expr.qNamePos }, { token: ":" }] : [()],
                                                            [{ name: expr.name, pos: identifierPos }]));
}

function syntaxNodeFromCheckingExpr(CheckingExpr expr) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr, { token: expr.checkingKeyword, pos: expr.kwPos },
                                       syntaxNodeFromExpr(expr.operand));
}

function syntaxNodeFromUnaryExpr(UnaryExpr expr) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr, { token: expr.op, pos: expr.opPos },
                                       syntaxNodeFromExpr(expr.operand));
}

type TerminalExpr ConstValueExpr|NumericLiteralExpr;
function syntaxNodeFromTerminalExpr(TerminalExpr expr) returns TerminalSyntaxNode {
    string token;
    if expr is ConstValueExpr {
        // pr-todo: this will mess up "null"
        token = expr.value != () ? expr.value.toString() : "()";
    }
    else if expr is IntLiteralExpr {
        token = expr.base == 16 ? "0x" + expr.digits : expr.digits;
    }
    else {
        token = expr.untypedLiteral + expr.typeSuffix.toString();
    }
    return { token, astNode: expr };
}

function syntaxNodeFromBinaryExpr(BinaryExpr expr) returns SyntaxNode {
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
    return nonTerminalSyntaxNode(expr, syntaxNodeFromExpr(expr.left),
                                       { token: op, pos: expr.opPos },
                                       syntaxNodeFromExpr(expr.right));
}

function syntaxNodeFromField(Field f) returns SyntaxNode {
    return nonTerminalSyntaxNode(f, syntaxNodeFromExpr(f.value));
}

function syntaxNodeFromTypeDesc(TypeDesc td) returns SyntaxNode {
    if td is TerminalTypeDesc {
        return syntaxNodeFromTerminalTypeDesc(td);
    }
    else if td is TupleTypeDesc {
        return syntaxNodeFromTupleTypeDesc(td);
    }
    else if td is ArrayTypeDesc {
        return syntaxNodeFromArrayTypeDesc(td);
    }
    else if td is MappingTypeDesc {
        return syntaxNodeFromMappingTypeDesc(td);
    }
    else if td is FunctionTypeDesc {
        return syntaxNodeFromFunctionTypeDesc(td);
    }
    else if td is BinaryTypeDesc {
        return syntaxNodeFromBinaryTypeDesc(td);
    }
    else if td is ErrorTypeDesc {
        return syntaxNodeFromErrorTypeDesc(td);
    }
    else if td is XmlSequenceTypeDesc {
        return syntaxNodeFromXmlSequenceTypeDesc(td);
    }
    else if td is TableTypeDesc {
        return syntaxNodeFromTableTypeDesc(td);
    }
    else {
        return syntaxNodeFromUnaryTypeDesc(td);
    }
}

function syntaxNodeFromTupleTypeDesc(TupleTypeDesc td) returns NonTerminalSyntaxNode {
    SyntaxNode[] memberNodes = [];
    foreach int i in 0 ..< td.members.length() {
        if i > 0 {
            memberNodes.push({ token: "," });
        }
        memberNodes.push(syntaxNodeFromTypeDesc(td.members[i]));
    }
    TypeDesc? rest = td.rest;
    if rest != () {
        // pr-todo: should these be combined?
        memberNodes.push(syntaxNodeFromTypeDesc(rest));
        memberNodes.push({ token: "..." });
    }
    return nonTerminalSyntaxNode(td, ...combineChildNodes([{ token: "[", pos: td.startPos}],
                                                          memberNodes,
                                                          [{ token: "]", pos: td.endPos}]));
}

function syntaxNodeFromArrayTypeDesc(ArrayTypeDesc td) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(td, syntaxNodeFromTypeDesc(td.member),
                                     { token: "[" },
                                     // pr-todo: deal with dimensions
                                     { token: "]", pos: td.endPos});
}

function syntaxNodeFromMappingTypeDesc(MappingTypeDesc td) returns NonTerminalSyntaxNode {
    TypeDesc|INCLUSIVE_RECORD_TYPE_DESC? rest = td.rest;
    if td.fields.length() > 0 {
        return nonTerminalSyntaxNode(td, ...combineChildNodes([{ token: "record", pos: td.startPos },
                                                              rest == INCLUSIVE_RECORD_TYPE_DESC ? { token: "{|" } : { token: "{" }], 
                                                              ( from FieldDesc f in td.fields select syntaxNodeFromFieldDesc(f)),
                                                              recordTypeDescRight(rest)));

    }
    else {
        return nonTerminalSyntaxNode(td, { token: "map", pos: td.startPos},
                                         { token: "<" },
                                         rest is TypeDesc ? syntaxNodeFromTypeDesc(rest) : { token: "never" },
                                         { token: ">", pos: td.endPos });
    }
}

function recordTypeDescRight(TypeDesc|INCLUSIVE_RECORD_TYPE_DESC? rest) returns SyntaxNode?[] {
   return combineChildNodes((rest is TypeDesc) ? [syntaxNodeFromTypeDesc(rest), { token: "..." }, SEMICOLON_NODE] : [()],
                            [rest is INCLUSIVE_RECORD_TYPE_DESC ? { token: "}" }: { token: "|}" }]);
}

// pr-todo: refactor this to nonTermianlSyntaxNode
// pr-todo: maybe we need a seperate function for function signature and get rid of skipHeader
function syntaxNodeFromFunctionTypeDesc(FunctionTypeDesc td, boolean skipHeader = false) returns SyntaxNode {
    SyntaxNode[] childNodes = [];
    if !skipHeader {
        childNodes.push({ token: "function" });
    }
    childNodes.push({ token: "(", pos: td.startPos });
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

function syntaxNodeFromBinaryTypeDesc(BinaryTypeDesc td) returns NonTerminalSyntaxNode {
    TypeDesc rightTd = td.right;
    if td.op === "|" && rightTd is BuiltinTypeDesc && rightTd.builtinTypeName === "null" {
        return nonTerminalSyntaxNode(td, syntaxNodeFromTypeDesc(td.left), { token: "?", pos: td.endPos });
    }
    else {
        // pr-todo: wrapping with paranthesis
        return nonTerminalSyntaxNode(td, syntaxNodeFromTypeDesc(td.left), { token: td.op, pos: td.opPos }, syntaxNodeFromTypeDesc(td.right));
    }
}

// pr-todo: refactor common parts among fallowing 3
function syntaxNodeFromErrorTypeDesc(ErrorTypeDesc td) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(td, { token: "error", pos: td.startPos },
                                     { token: "<" },
                                     syntaxNodeFromTypeDesc(td.detail),
                                     { token: ">", pos: td.endPos });
}

function syntaxNodeFromXmlSequenceTypeDesc(XmlSequenceTypeDesc td) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(td, { token: "xml", pos: td.startPos },
                                     { token: "<" },
                                     syntaxNodeFromTypeDesc(td.constituent),
                                     { token: ">", pos: td.endPos });
}

function syntaxNodeFromTableTypeDesc(TableTypeDesc td) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(td, { token: "table", pos: td.startPos },
                                     { token: "<" },
                                     syntaxNodeFromTypeDesc(td.row),
                                     { token: ">", pos: td.endPos });
}

function syntaxNodeFromUnaryTypeDesc(UnaryTypeDesc td) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(td , { token: td.op, pos: td.startPos }, syntaxNodeFromTypeDesc(td.td));
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
    // pr-todo: semicolon
    return { childNodes: [syntaxNodeFromTypeDesc(fd.typeDesc)], astNode: fd };
}

function finishWithSemiColon(AstNode astNode, SyntaxNode?... nodes) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(astNode, ...combineChildNodes(nodes, [SEMICOLON_NODE]));
}

function combineChildNodes(SyntaxNode?[] left, SyntaxNode?[] center, (SyntaxNode?[])? right = ()) returns SyntaxNode?[] {
    SyntaxNode?[] newNodes = [];
    newNodes.push(...left);
    newNodes.push(...center);
    if right != () {
        newNodes.push(...right);
    }
    return newNodes;
}

function nonTerminalSyntaxNode(AstNode astNode, SyntaxNode?... nodes) returns NonTerminalSyntaxNode {
    SyntaxNode[] childNodes = from var node in nodes where node != () select node;
    return { childNodes, astNode };
}
