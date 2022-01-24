type TerminalSyntaxNode TerminalSyntaxAstNode|FixedSyntaxNode|IdentifierSyntaxNode|StringLiteralSyntaxNode;
type AstSyntaxNode TerminalSyntaxAstNode|NonTerminalSyntaxNode;
type SyntaxNode NonTerminalSyntaxNode|TerminalSyntaxNode;

type TerminalSyntaxAstNode record {|
    AstNode astNode;
    string token;
|};

type NonTerminalSyntaxNode record {|
    AstNode astNode;
    SyntaxNode[] childNodes;
|};

type RootSyntaxNode record {|
    ModulePart part;
    SyntaxNode[] childNodes;
|};

// represents keywords and fixed tokens
type FixedSyntaxNode record {|
    FixedToken token;
    Position? pos = ();
|};

type StringLiteralSyntaxNode record {|
    string literal;
    Position? pos = ();
|};

// represents identifiers
type IdentifierSyntaxNode record {|
    string name;
    Position? pos;
|};

type AstNode record {|
   *PositionFields;
   any...;
|};

function rootSyntaxNode(ModulePart part) returns RootSyntaxNode {
    SyntaxNode[] importDecls = from ImportDecl decl in part.importDecls select syntaxNodeFromImportDecl(decl);
    SyntaxNode[] moduleLevelDefns = from ModuleLevelDefn defn in part.defns select syntaxNodeFromModuleLevelDefn(defn);
    SyntaxNode[] childNodes = flattenSyntaxNodeList([importDecls, moduleLevelDefns]);
    return { childNodes, part };
}

function syntaxNodeFromImportDecl(ImportDecl decl) returns NonTerminalSyntaxNode {
    string? org = decl.org;
    string? prefix = decl.prefix;
    SyntaxNode[] nameNodes = flattenSyntaxNodeList(from int i in 0 ..< decl.names.length() select
                                                   fixedTokenSeperatedSyntaxNode(i, { name: decl.names[i], pos: i == 0 ? decl.namePos : () }, "."));
    return finishWithSemiColon(decl,
                               { token: "import", pos: decl.startPos },
                               org != () ? [{ name: org, pos: () }, { token: "/" }] : (),
                               nameNodes,
                               prefix != () ? [{ token: "as" }, { name: prefix, pos: () }] : ());
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
                               defn.vis == "public" ? { token: "public" } : (),
                               { token: "const" },
                               td != () ? { token: td.builtinTypeName } : (),
                               { name: defn.name, pos: defn.namePos },
                               { token: "=" },
                               syntaxNodeFromExpr(defn.expr)
    );
}

function syntaxNodeFromTypeDefn(TypeDefn defn) returns SyntaxNode {
    return finishWithSemiColon(defn,
                               defn.vis == "public" ? { token: "public" } : (),
                               { token: "type" },
                               { name: defn.name, pos: defn.namePos },
                               syntaxNodeFromTypeDesc(defn.td));
}

function syntaxNodeFromFunctionDefn(FunctionDefn defn) returns SyntaxNode {
    return nonTerminalSyntaxNode(defn,
                                 defn.vis == "public" ? { token: "public" } : (),
                                 { token: "function" },
                                 { name: defn.name, pos: defn.namePos },
                                 syntaxNodeFromFunctionTypeDesc(defn.typeDesc, functionSignature = true),
                                 syntaxNodeFromStmtBlock(defn.body));
}

function syntaxNodeFromFunctionTypeParam(FunctionTypeParam param) returns SyntaxNode {
    string? name = param.name;
    return nonTerminalSyntaxNode(param,
                                 syntaxNodeFromTypeDesc(param.td),
                                 name != () ? { name, pos: param.namePos } : ());
}

function syntaxNodeFromStmtBlock(StmtBlock block) returns NonTerminalSyntaxNode {
    SyntaxNode[] body = from Stmt stmt in block.stmts select syntaxNodeFromStmt(stmt);
    return nonTerminalSyntaxNode(block, { token: "{", pos: block.startPos },
                                        body, // JBUG: can't use query expression directly
                                        { token: "}" });
}

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
    string? name = stmt.name;
    return finishWithSemiColon(stmt,
                               stmt.isFinal ? { token: "final", pos: stmt.startPos }: (),
                               syntaxNodeFromTypeDesc(stmt.td),
                               { name: name ?: "_", pos: stmt.namePos },
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
                               lValue is LExpr ? syntaxNodeFromExpr(lValue) : { token: "_", pos: stmt.startPos },
                               { token: "=", pos: stmt.opPos },
                               syntaxNodeFromExpr(stmt.expr));
}

function syntaxNodeFromCompoundAssignStmt(CompoundAssignStmt stmt) returns NonTerminalSyntaxNode {
    return finishWithSemiColon(stmt,
                               syntaxNodeFromExpr(stmt.lValue),
                               { token: <FixedToken>(stmt.op + "="), pos: stmt.opPos },
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
    SyntaxNode[] clauses = from MatchClause clause in stmt.clauses select syntaxNodeFromMatchClause(clause);
    return nonTerminalSyntaxNode(stmt,
                                 { token: "match", pos: stmt.startPos },
                                 syntaxNodeFromExpr(stmt.expr),
                                 { token: "{" },
                                 clauses,
                                 { token: "}" });
}

function syntaxNodeFromMatchClause(MatchClause clause) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(clause, syntaxNodeFromMatchPatterns(clause.patterns),
                                         { token: "=>", pos: clause.opPos },
                                         syntaxNodeFromStmtBlock(clause.block));
}

function syntaxNodeFromMatchPatterns(MatchPattern[] patterns) returns NonTerminalSyntaxNode[] {
    SyntaxNode[][] childNodes = from int i in 0 ..< patterns.length() select i > 0 ? [{ token: "|" }, syntaxNodeFromMatchPattern(patterns[i])] : [syntaxNodeFromMatchPattern(patterns[i])];
    return from int i in 0 ..< patterns.length() select nonTerminalSyntaxNode(patterns[i], childNodes[i]);
}

function syntaxNodeFromMatchPattern(MatchPattern pattern) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(pattern, pattern is WildcardMatchPattern ? { token: "_" } : syntaxNodeFromExpr(pattern));
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
                               { token: stmt.breakContinue, pos: stmt.startPos });
}

function syntaxNodeFromCallStmt(CallStmt stmt) returns NonTerminalSyntaxNode {
    return finishWithSemiColon(stmt,
                               syntaxNodeFromExpr(stmt.expr));
}

function syntaxNodeFromExpr(Expr expr) returns SyntaxNode {
    if expr is GroupingExpr {
        return syntaxNodeFromGroupingExpr(expr);
    }
    else if expr is TerminalExpr {
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

function syntaxNodeFromGroupingExpr(GroupingExpr expr) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr, { token: "(", pos: expr.startPos },
                                       syntaxNodeFromExpr(expr.innerExpr),
                                       { token: ")" });
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
                                 expr.negated ? { token: "!" } : (),
                                 { token: "is", pos: expr.kwPos },
                                 syntaxNodeFromTypeDesc(expr.td));
}

function syntaxNodeFromErrorConstructorExpr(ErrorConstructorExpr expr) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr,
                                 { token: "error", pos: expr.startPos },
                                 { token: "(" },
                                 syntaxNodeFromExpr(expr.message),
                                 { token: ")" });
}

function syntaxNodeFromFunctionCallExpr(FunctionCallExpr expr) returns NonTerminalSyntaxNode {
    SyntaxNode[] args = flattenSyntaxNodeList(from int i in 0 ..< expr.args.length() select fixedTokenSeperatedSyntaxNode(i, syntaxNodeFromExpr(expr.args[i]), ","));
    string? prefix = expr.prefix;
    return nonTerminalSyntaxNode(expr, prefix != () ? [{ name: prefix, pos: expr.qNamePos }, { token: ":" }] : (),
                                       { name: expr.funcName, pos: prefix == () ? expr.qNamePos : () },
                                       { token: "(", pos: expr.openParenPos },
                                       // JBUG: can't use the query exprssion directly
                                       args,
                                       { token: ")" });
}

function syntaxNodeFromMethodCallExpr(MethodCallExpr expr) returns NonTerminalSyntaxNode {
    SyntaxNode[] args = from Expr arg in expr.args select syntaxNodeFromExpr(arg);
    return nonTerminalSyntaxNode(expr, syntaxNodeFromExpr(expr.target),
                                       { token: ".", pos: expr.opPos },
                                       { name: expr.methodName, pos: expr.namePos },
                                       { token: "(", pos: expr.openParenPos },
                                       // JBUG: can't use the query exprssion directly
                                       args,
                                       { token: ")" });
}

function syntaxNodeFromListConstructorExpr(ListConstructorExpr expr) returns NonTerminalSyntaxNode{
    SyntaxNode[] members = flattenSyntaxNodeList(from int i in 0 ..< expr.members.length() select fixedTokenSeperatedSyntaxNode(i, syntaxNodeFromExpr(expr.members[i]), ","));
    return nonTerminalSyntaxNode(expr, { token: "[", pos: expr.startPos },
                                       // JBUG: can't use the query exprssion directly
                                       members,
                                       { token: "]" });
}

function syntaxNodeFromMappingConstructorExpr(MappingConstructorExpr expr) returns NonTerminalSyntaxNode{
    SyntaxNode[] fields = flattenSyntaxNodeList(from int i in 0 ..< expr.fields.length() select fixedTokenSeperatedSyntaxNode(i, syntaxNodeFromField(expr.fields[i]), ","));
    return nonTerminalSyntaxNode(expr, { token: "{", pos: expr.startPos },
                                       // JBUG: can't use the query exprssion directly
                                       fields,
                                       { token: "}" });
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
    return nonTerminalSyntaxNode(expr, { token: "<" },
                                       syntaxNodeFromTypeDesc(expr.td),
                                       { token: ">" },
                                       syntaxNodeFromExpr(expr.operand));
}

function syntaxNodeFromVarRefExpr(VarRefExpr expr) returns NonTerminalSyntaxNode {
    string? prefix = expr.prefix;
    Position? identifierPos = prefix == () ? expr.qNamePos : ();
    return nonTerminalSyntaxNode(expr, prefix != () ? [{ name: prefix, pos: expr.qNamePos }, { token: ":" }] : (),
                                       { name: expr.name, pos: identifierPos });
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
function syntaxNodeFromTerminalExpr(TerminalExpr expr) returns TerminalSyntaxAstNode {
    string token;
    if expr is ConstValueExpr {
        token = expr.value != () ? expr.value.toString() : "()";
    }
    else if expr is IntLiteralExpr {
        token = expr.base == 16 ? "0x" + expr.digits : expr.digits;
    }
    else {
        FpTypeSuffix? typeSuffix = expr.typeSuffix;
        token = expr.untypedLiteral + (typeSuffix ?: "");
    }
    return { token, astNode: expr };
}

function syntaxNodeFromBinaryExpr(BinaryExpr expr) returns SyntaxNode {
    BinaryExprOp|BinaryBitwiseOp|BinaryLogicalOp op;
    if expr is BinaryEqualityExpr {
        op = expr.equalityOp;
    }
    else if expr is BinaryRelationalExpr {
        op = expr.relationalOp;
    }
    else if expr is BinaryArithmeticExpr {
        op = expr.arithmeticOp;
    }
    else if expr is BinaryBitwiseExpr {
        op = expr.bitwiseOp;
    }
    else {
        op = expr.logicalOp;
    }
    return nonTerminalSyntaxNode(expr, syntaxNodeFromExpr(expr.left),
                                       { token: op, pos: expr.opPos },
                                       syntaxNodeFromExpr(expr.right));
}

function syntaxNodeFromField(Field f) returns SyntaxNode {
    return nonTerminalSyntaxNode(f, f.isIdentifier ? { name: f.name, pos: f.startPos} : { literal: f.name, pos: f.startPos },
                                    { token: ":", pos: f.colonPos },
                                    syntaxNodeFromExpr(f.value));
}

function syntaxNodeFromTypeDesc(TypeDesc td) returns SyntaxNode {
    if td is GroupingTypeDesc {
        return syntaxNodeFromGroupingTypeDesc(td);
    }
    else if td is TerminalTypeDesc {
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
    else if td is TypeDescRef {
        return syntaxNodeFromTypeDescRef(td);
    }
    else {
        return syntaxNodeFromUnaryTypeDesc(td);
    }
}

function syntaxNodeFromGroupingTypeDesc(GroupingTypeDesc td) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(td, { token: "(", pos: td.startPos },
                                     syntaxNodeFromTypeDesc(td.innerTd),
                                     { token: ")" });
}

function syntaxNodeFromTupleTypeDesc(TupleTypeDesc td) returns NonTerminalSyntaxNode {
    SyntaxNode[] memberNodes = flattenSyntaxNodeList(from int i in 0 ..< td.members.length() select fixedTokenSeperatedSyntaxNode(i, syntaxNodeFromTypeDesc(td.members[i]), ","));
    TypeDesc? rest = td.rest;
    return nonTerminalSyntaxNode(td, { token: "[", pos: td.startPos },
                                     memberNodes,
                                     rest != () && td.members.length() > 0 ? { token: "," } : (),
                                     rest != () ? [syntaxNodeFromTypeDesc(rest), { token: "..." }] : (),
                                     { token: "]" });
}

function syntaxNodeFromArrayTypeDesc(ArrayTypeDesc td) returns NonTerminalSyntaxNode {
    SyntaxNode[][] dimensions = from SimpleConstExpr? dimension in td.dimensions select dimension == () ? [{ token: "[" }, { token: "]" }]:
                                                                                                          [{ token: "[" }, syntaxNodeFromExpr(dimension), { token: "]" }];
    return nonTerminalSyntaxNode(td, syntaxNodeFromTypeDesc(td.member),
                                     ...dimensions);
}

function syntaxNodeFromMappingTypeDesc(MappingTypeDesc td) returns NonTerminalSyntaxNode {
    TypeDesc|INCLUSIVE_RECORD_TYPE_DESC? rest = td.rest;
    if td.fields.length() > 0 {
        SyntaxNode[] fields = from FieldDesc f in td.fields select syntaxNodeFromFieldDesc(f);
        return nonTerminalSyntaxNode(td, { token: "record", pos: td.startPos },
                                         rest == INCLUSIVE_RECORD_TYPE_DESC ? { token: "{" } : { token: "{|" },
                                         // JBUG: can't use query expression directly
                                         fields,
                                         (rest is TypeDesc) ? [syntaxNodeFromTypeDesc(rest), { token: "..." }, { token: ";" }] : (),
                                         rest == INCLUSIVE_RECORD_TYPE_DESC ? { token: "}" } : { token: "|}" });
    }
    else {
        return nonTerminalSyntaxNode(td, { token: "map", pos: td.startPos },
                                         { token: "<" },
                                         rest is TypeDesc ? syntaxNodeFromTypeDesc(rest) : { token: "never" },
                                         { token: ">" });
    }
}

function syntaxNodeFromFunctionTypeDesc(FunctionTypeDesc td, boolean functionSignature = false) returns SyntaxNode {
    SyntaxNode[] params = flattenSyntaxNodeList(from int i in 0 ..< td.params.length() select fixedTokenSeperatedSyntaxNode(i, syntaxNodeFromFunctionTypeParam(td.params[i]), ","));
    TypeDesc? retTd = td.ret;
    return nonTerminalSyntaxNode(td, functionSignature ? () : { token: "function" },
                                     { token: "(", pos: td.startPos },
                                     params,
                                     { token: ")" },
                                     retTd != () ? [{ token: "returns" }, syntaxNodeFromTypeDesc(retTd)] : ());
}

function syntaxNodeFromBinaryTypeDesc(BinaryTypeDesc td) returns NonTerminalSyntaxNode {
    TypeDesc rightTd = td.right;
    if td.op === "|" && rightTd is BuiltinTypeDesc && rightTd.builtinTypeName === "null" && rightTd.startPos == rightTd.endPos {
        return nonTerminalSyntaxNode(td, syntaxNodeFromTypeDesc(td.left), { token: "?" });
    }
    else {
        // todo: wrapping with parenthesis
        return nonTerminalSyntaxNode(td, syntaxNodeFromTypeDesc(td.left), { token: td.op, pos: td.opPos }, syntaxNodeFromTypeDesc(td.right));
    }
}

function syntaxNodeFromErrorTypeDesc(ErrorTypeDesc td) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(td, { token: "error", pos: td.startPos },
                                     syntaxNodesFromTypeParameter(td.detail));
}

function syntaxNodeFromXmlSequenceTypeDesc(XmlSequenceTypeDesc td) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(td, { token: "xml", pos: td.startPos },
                                     syntaxNodesFromTypeParameter(td.constituent));
}

function syntaxNodeFromTableTypeDesc(TableTypeDesc td) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(td, { token: "table", pos: td.startPos },
                                     syntaxNodesFromTypeParameter(td.row));
}

function syntaxNodeFromTypeDescRef(TypeDescRef td) returns NonTerminalSyntaxNode {
    string? prefix = td.prefix;
    return nonTerminalSyntaxNode(td, prefix != () ? [{ name: prefix, pos: td.qNamePos }, { token: ":" }] : (),
                                     { name: td.typeName, pos: prefix == () ? td.qNamePos : () });
}

function syntaxNodesFromTypeParameter(TypeDesc td) returns SyntaxNode[] {
    return [{ token: "<" }, syntaxNodeFromTypeDesc(td), { token: ">" }];
}

function syntaxNodeFromUnaryTypeDesc(UnaryTypeDesc td) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(td , { token: td.op, pos: td.startPos }, syntaxNodeFromTypeDesc(td.td));
}

type TerminalTypeDesc BuiltinTypeDesc|SingletonTypeDesc;
function syntaxNodeFromTerminalTypeDesc(TerminalTypeDesc td) returns SyntaxNode {
    string token;
    if td is BuiltinTypeDesc {
        token = td.builtinTypeName == "null" ? "()" : td.builtinTypeName;
    }
    else {
        var value = td.value;
        if (value is int && value < 0) || (value is float && value < 0.0) {
            return nonTerminalSyntaxNode(td, { token: "-" }, { literal: (value * -1).toString() });
        }
        else {
            token = td.value.toString();
        }
    }
    return { token, astNode: td };
}

function syntaxNodeFromFieldDesc(FieldDesc fd) returns SyntaxNode {
    return finishWithSemiColon(fd, syntaxNodeFromTypeDesc(fd.typeDesc), { name: fd.name, pos: () });
}

function fixedTokenSeperatedSyntaxNode(int index, SyntaxNode node, FixedToken seperator) returns SyntaxNode[] {
    return index > 0 ? [{ token: seperator }, node] : [node];
}

function finishWithSemiColon(AstNode astNode, SyntaxNode[]|SyntaxNode?... nodes) returns NonTerminalSyntaxNode {
    nodes.push({ token: ";" });
    return nonTerminalSyntaxNode(astNode, ...nodes);
}

function nonTerminalSyntaxNode(AstNode astNode, SyntaxNode[]|SyntaxNode?... nodes) returns NonTerminalSyntaxNode {
    SyntaxNode[] childNodes = flattenSyntaxNodeList(nodes);
    return { childNodes, astNode };
}

function flattenSyntaxNodeList((SyntaxNode[]|SyntaxNode?)[] arr) returns SyntaxNode[] {
    SyntaxNode[] nodes = [];
    foreach var node in arr {
        if node is SyntaxNode[] {
            foreach var child in node {
                nodes.push(child);
            }
        }
        else if node is SyntaxNode {
            nodes.push(node);
        }
    }
    return nodes;
}
