type TerminalSyntaxNode TerminalSyntaxAstNode|FixedSyntaxNode|IdentifierSyntaxNode|StringLiteralSyntaxNode;
type AstSyntaxNode TerminalSyntaxAstNode|NonTerminalSyntaxNode;
type SubSyntaxNode NonTerminalSyntaxNode|TerminalSyntaxNode;
type SyntaxNode SubSyntaxNode|RootSyntaxNode;

const CLING_PREV = 0x1;
const CLING_NEXT = 0x2;
const int CLING = CLING_PREV|CLING_NEXT;
const NEWLINE_AFTER = 0x4;
const NEWLINE_BEFORE = 0x8;
const int NEWLINE = NEWLINE_BEFORE|NEWLINE_AFTER;
const IGNORE_LITERAL_ESCAPE = 0x10;
// used to mark ranges that should be in the same line
const SINGLE_LINE_START = 0x20;
const SINGLE_LINE_END = 0x40;

const NONE = 0x0;
type OutputFlags int;

type Word string|CLING|NEWLINE|SINGLE_LINE_START|SINGLE_LINE_END;

type TerminalSyntaxAstNode record {|
    AstNode astNode;
    string token;
|};

type NonTerminalSyntaxNode record {|
    AstNode astNode;
    SubSyntaxNode[] childNodes;
|};

type RootSyntaxNode record {|
    ModulePart part;
    SubSyntaxNode[] childNodes;
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
    SubSyntaxNode[] importDecls = from ImportDecl decl in part.importDecls select syntaxNodeFromImportDecl(decl);
    SubSyntaxNode[] moduleLevelDefns = from ModuleLevelDefn defn in part.defns select syntaxNodeFromModuleLevelDefn(defn);
    SubSyntaxNode[] childNodes = flattenSyntaxNodeList([importDecls, moduleLevelDefns]);
    return { childNodes, part };
}

function syntaxNodeFromImportDecl(ImportDecl decl) returns NonTerminalSyntaxNode {
    string? org = decl.org;
    string? prefix = decl.prefix;
    SubSyntaxNode[] nameNodes = joinSyntaxNodesWithSeperator((from int i in 0 ..< decl.names.length() select { name:decl.names[i], pos: i == 0 ? decl.namePos : () }), { token: "." });
    return finishWithSemiColon(decl,
                               { token: "import", pos: decl.startPos },
                               org != () ? [{ name: org, pos: () }, { token: "/" }] : (),
                               nameNodes,
                               prefix != () ? [{ token: "as" }, { name: prefix, pos: () }] : ());
}

function syntaxNodeFromModuleLevelDefn(ModuleLevelDefn defn) returns SubSyntaxNode {
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

function syntaxNodeFromConstDefn(ConstDefn defn) returns SubSyntaxNode {
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

function syntaxNodeFromTypeDefn(TypeDefn defn) returns SubSyntaxNode {
    return finishWithSemiColon(defn,
                               defn.vis == "public" ? { token: "public" } : (),
                               { token: "type" },
                               { name: defn.name, pos: defn.namePos },
                               syntaxNodeFromTypeDesc(defn.td));
}

function syntaxNodeFromFunctionDefn(FunctionDefn defn) returns SubSyntaxNode {
    return nonTerminalSyntaxNode(defn,
                                 defn.vis == "public" ? { token: "public" } : (),
                                 { token: "function" },
                                 { name: defn.name, pos: defn.namePos },
                                 syntaxNodeFromFunctionTypeDesc(defn.typeDesc, functionSignature = true),
                                 syntaxNodeFromStmtBlock(defn.body));
}

function syntaxNodeFromFunctionTypeParam(FunctionTypeParam param) returns SubSyntaxNode {
    string? name = param.name;
    return nonTerminalSyntaxNode(param,
                                 syntaxNodeFromTypeDesc(param.td),
                                 param.isRest ? { token: "..." } : (),
                                 name != () ? { name, pos: param.namePos } : ());
}

function syntaxNodeFromStmtBlock(StmtBlock block) returns NonTerminalSyntaxNode {
    SubSyntaxNode[] body = from Stmt stmt in block.stmts select syntaxNodeFromStmt(stmt);
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
    SubSyntaxNode[] clauses = from MatchClause clause in stmt.clauses select syntaxNodeFromMatchClause(clause);
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
    SubSyntaxNode[][] childNodes = from int i in 0 ..< patterns.length() select i > 0 ? [{ token: "|" }, syntaxNodeFromMatchPattern(patterns[i])] : [syntaxNodeFromMatchPattern(patterns[i])];
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
                               syntaxNodeFromExpr(stmt.callExpr));
}

function syntaxNodeFromExpr(Expr expr) returns SubSyntaxNode {
    if expr is GroupingExpr {
        return syntaxNodeFromGroupingExpr(expr);
    }
    else if expr is FixedLiteralExpr {
        return syntaxNodeFromFixedLiteralExpr(expr);
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
                                       syntaxNodeFromExpr(expr.expr),
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
    string? prefix = expr.prefix;
    return nonTerminalSyntaxNode(expr, prefix != () ? [{ name: prefix, pos: expr.qNamePos }, { token: ":" }] : (),
                                       { name: expr.funcName, pos: prefix == () ? expr.qNamePos : () },
                                       { token: "(", pos: expr.openParenPos },
                                       (joinSyntaxNodesWithSeperator((from Expr arg in expr.args select syntaxNodeFromExpr(arg)), { token: "," })),
                                       { token: ")" });
}

function syntaxNodeFromMethodCallExpr(MethodCallExpr expr) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr, syntaxNodeFromExpr(expr.target),
                                       { token: ".", pos: expr.opPos },
                                       { name: expr.methodName, pos: expr.namePos },
                                       { token: "(", pos: expr.openParenPos },
                                       (joinSyntaxNodesWithSeperator((from Expr arg in expr.args select syntaxNodeFromExpr(arg)), { token: "," })),
                                       { token: ")" });
}

function syntaxNodeFromListConstructorExpr(ListConstructorExpr expr) returns NonTerminalSyntaxNode{
    return nonTerminalSyntaxNode(expr, { token: "[", pos: expr.startPos },
                                       (joinSyntaxNodesWithSeperator((from Expr member in expr.members select syntaxNodeFromExpr(member)), { token: "," })),
                                       { token: "]" });
}

function syntaxNodeFromMappingConstructorExpr(MappingConstructorExpr expr) returns NonTerminalSyntaxNode{
    return nonTerminalSyntaxNode(expr, { token: "{", pos: expr.startPos },
                                       (joinSyntaxNodesWithSeperator((from Field f in expr.fields select syntaxNodeFromField(f)), { token: "," })),
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

type FixedLiteralExpr LiteralExpr|NumericLiteralExpr;
function syntaxNodeFromFixedLiteralExpr(FixedLiteralExpr expr, SimpleConstNegateExpr? sign = ()) returns AstSyntaxNode {
    string token;
    if expr is LiteralExpr {
        token = expr.value != () ? expr.value.toString() : "()";
    }
    else if expr is IntLiteralExpr {
        token = expr.base == 16 ? "0x" + expr.digits : expr.digits;
    }
    else {
        FpTypeSuffix? typeSuffix = expr.typeSuffix;
        token = expr.untypedLiteral + (typeSuffix ?: "");
    }
    if sign != () {
        return nonTerminalSyntaxNode(sign, { token: "-" }, { literal: token });
    }
    return { token, astNode: expr };
}

function syntaxNodeFromBinaryExpr(BinaryExpr expr) returns SubSyntaxNode {
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

function syntaxNodeFromField(Field f) returns SubSyntaxNode {
    return nonTerminalSyntaxNode(f, f.isIdentifier ? { name: f.name, pos: f.startPos} : { literal: f.name, pos: f.startPos },
                                    { token: ":", pos: f.colonPos },
                                    syntaxNodeFromExpr(f.value));
}

function syntaxNodeFromTypeDesc(TypeDesc td) returns SubSyntaxNode {
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
    else if td is TypeDescRef {
        return syntaxNodeFromTypeDescRef(td);
    }
    else {
        return syntaxNodeFromUnaryTypeDesc(td);
    }
}

function syntaxNodeFromTupleTypeDesc(TupleTypeDesc td) returns NonTerminalSyntaxNode {
    SubSyntaxNode[] memberNodes = joinSyntaxNodesWithSeperator((from TypeDesc member in td.members select syntaxNodeFromTypeDesc(member)), { token: "," });
    TypeDesc? rest = td.rest;
    return nonTerminalSyntaxNode(td, { token: "[", pos: td.startPos },
                                     memberNodes,
                                     rest != () && td.members.length() > 0 ? { token: "," } : (),
                                     rest != () ? [syntaxNodeFromTypeDesc(rest), { token: "..." }] : (),
                                     { token: "]" });
}

function syntaxNodeFromArrayTypeDesc(ArrayTypeDesc td) returns NonTerminalSyntaxNode {
    SubSyntaxNode[][] dimensions = from SimpleConstExpr? dimension in td.dimensions select dimension == () ? [{ token: "[" }, { token: "]" }]:
                                                                                                          [{ token: "[" }, syntaxNodeFromExpr(dimension), { token: "]" }];
    return nonTerminalSyntaxNode(td, syntaxNodeFromTypeDesc(td.member),
                                     ...dimensions);
}

function syntaxNodeFromMappingTypeDesc(MappingTypeDesc td) returns NonTerminalSyntaxNode {
    TypeDesc|INCLUSIVE_RECORD_TYPE_DESC? rest = td.rest;
    if td.fields.length() > 0 {
        SubSyntaxNode[] fields = from FieldDesc f in td.fields select syntaxNodeFromFieldDesc(f);
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

function syntaxNodeFromFunctionTypeDesc(FunctionTypeDesc td, boolean functionSignature = false) returns SubSyntaxNode {
    SubSyntaxNode[] params = joinSyntaxNodesWithSeperator((from FunctionTypeParam param in td.params select syntaxNodeFromFunctionTypeParam(param)), { token: "," });
    TypeDesc? retTd = td.ret;
    return nonTerminalSyntaxNode(td, functionSignature ? () : { token: "function" },
                                     { token: "(", pos: td.startPos },
                                     params,
                                     { token: ")" },
                                     retTd != () ? [{ token: "returns" }, syntaxNodeFromTypeDesc(retTd)] : ());
}

function syntaxNodeFromBinaryTypeDesc(BinaryTypeDesc td) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(td, joinSyntaxNodesWithSeperator(from TypeDesc operand in td.tds select syntaxNodeFromTypeDesc(operand), { token: td.op }));
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

function syntaxNodesFromTypeParameter(TypeDesc td) returns SubSyntaxNode[] {
    return [{ token: "<" }, syntaxNodeFromTypeDesc(td), { token: ">" }];
}

function syntaxNodeFromUnaryTypeDesc(UnaryTypeDesc td) returns NonTerminalSyntaxNode {
    SubSyntaxNode[] childNodes = [{ token: td.op, pos: td.startPos }, syntaxNodeFromTypeDesc(td.td)];
    if td.op == "(" {
        return nonTerminalSyntaxNode(td, childNodes, { token: ")" });
    }
    else if td.op == "!" {
        return nonTerminalSyntaxNode(td, childNodes);
    }
    else {
        return nonTerminalSyntaxNode(td, syntaxNodeFromTypeDesc(td.td), { token: td.op, pos: td.opPos });
    }
}

type TerminalTypeDesc BuiltinTypeDesc|SingletonTypeDesc;
function syntaxNodeFromTerminalTypeDesc(TerminalTypeDesc td) returns SubSyntaxNode {
    string token;
    if td is BuiltinTypeDesc {
        token = td.builtinTypeName == "null" ? "()" : td.builtinTypeName;
        return { token, astNode: td };
    }
    else {
        ExtendedLiteralExpr valueExpr = td.valueExpr;
        if valueExpr is SimpleConstNegateExpr {
            return syntaxNodeFromFixedLiteralExpr(valueExpr.operand, valueExpr);
        }
        else {
            return syntaxNodeFromFixedLiteralExpr(valueExpr);
        }
    }
}

function syntaxNodeFromFieldDesc(FieldDesc fd) returns SubSyntaxNode {
    return finishWithSemiColon(fd, fd.ro ? { token: "readonly" } : (), syntaxNodeFromTypeDesc(fd.typeDesc), { name: fd.name, pos: () }, fd.opt ? { token: "?" } : ());
}

function finishWithSemiColon(AstNode astNode, SubSyntaxNode[]|SubSyntaxNode?... nodes) returns NonTerminalSyntaxNode {
    nodes.push({ token: ";" });
    return nonTerminalSyntaxNode(astNode, ...nodes);
}

function nonTerminalSyntaxNode(AstNode astNode, SubSyntaxNode[]|SubSyntaxNode?... nodes) returns NonTerminalSyntaxNode {
    SubSyntaxNode[] childNodes = flattenSyntaxNodeList(nodes);
    return { childNodes, astNode };
}

function joinSyntaxNodesWithSeperator(SubSyntaxNode[] nodes, FixedSyntaxNode seperator) returns SubSyntaxNode[] {
    SubSyntaxNode[] newNodes = [];
    foreach int i in 0 ..< nodes.length() {
        if i > 0 {
            newNodes.push(seperator);
        }
        newNodes.push(nodes[i]);
    }
    return newNodes;
}

function flattenSyntaxNodeList((SubSyntaxNode[]|SubSyntaxNode?)[] arr) returns SubSyntaxNode[] {
    SubSyntaxNode[] nodes = [];
    foreach var node in arr {
        if node is SubSyntaxNode[] {
            foreach var child in node {
                nodes.push(child);
            }
        }
        else if node is SubSyntaxNode {
            nodes.push(node);
        }
    }
    return nodes;
}

public function exprToString(Expr expr) returns string {
    return "\n".'join(...syntaxNodeToString(syntaxNodeFromExpr(expr)));
}

public function typeDefnToString(TypeDefn typeDefn) returns string {
    return "\n".'join(...syntaxNodeToString(syntaxNodeFromTypeDefn(typeDefn)));
}

function syntaxNodeToString(SyntaxNode node) returns string[] {
    Word[] words = [];
    syntaxNodeToWords(words, node);
    return concat(...words);
}

function syntaxNodeToWords(Word[] words, SyntaxNode node) {
    if node is TerminalSyntaxNode {
        words.push(terminalSyntaxNodeToString(node, NONE));
    }
    else {
        SubSyntaxNode[] childNodes = node.childNodes;
        foreach var child in childNodes {
            if child is TerminalSyntaxNode {
                OutputFlags flags = terminalSyntaxNodeFlags(child, node);
                if (flags & CLING_PREV) != 0 {
                    // JBUG #33335 cast
                    words.push(<Word>CLING);
                }
                if (flags & NEWLINE_BEFORE) != 0 {
                    // JBUG #33335 cast
                    words.push(<Word>NEWLINE);
                }
                if (flags & SINGLE_LINE_START) != 0 {
                    words.push(<Word>SINGLE_LINE_START);
                }
                words.push(terminalSyntaxNodeToString(child, flags));
                if (flags & SINGLE_LINE_END) != 0 {
                    words.push(<Word>SINGLE_LINE_END);
                }
                if (flags & CLING_NEXT) != 0 {
                    // JBUG #33335 cast
                    words.push(<Word>CLING);
                }
                if (flags & NEWLINE_AFTER) != 0 {
                    // JBUG #33335 cast
                    words.push(<Word>NEWLINE);
                }
            }
            else {
                syntaxNodeToWords(words, child);
            }
        }
    }
}

function terminalSyntaxNodeFlags(TerminalSyntaxNode node, SyntaxNode? parentNode) returns OutputFlags {
    AstNode? parent = parentNode != () ? syntaxNodeToAstNode(parentNode) : ();
    if node is FixedSyntaxNode {
        match node.token {
            ";" => {
                return NEWLINE_AFTER;
            }
            ":" => {
                if parent is FunctionCallExpr|VarRefExpr|TypeDescRef {
                    return CLING;
                }
            }
            "," => {
                if parent is MappingConstructorExpr {
                    return NEWLINE_AFTER;
                }
            }
            "/" => {
                if parent is ImportDecl {
                    return CLING;
                }
            }
            "-" | "!" | "~" => {
                if parent is UnaryExpr|UnaryTypeDesc|SingletonTypeDesc {
                    return CLING_NEXT;
                }
            }
            "?" => {
                if parent is UnaryTypeDesc {
                    return CLING_PREV;
                }
            }
            "[" => {
                if parent is MemberAccessExpr|ArrayTypeDesc {
                    return CLING_PREV;
                }
            }
            "(" => {
                if parent is UnaryTypeDesc {
                    return CLING_NEXT;
                }
            }
            "<" => {
                if parent is MappingTypeDesc {
                    return CLING;
                }
                else if parent is TypeCastExpr|TypeDesc {
                    return CLING_NEXT;
                }
            }
            ">" => {
                if parent is TypeCastExpr {
                    return CLING;
                }
                else if parent is TypeDesc {
                    return CLING_PREV;
                }
            }
            "{" | "{|" => {
                if parent is MappingConstructorExpr {
                    return SINGLE_LINE_START;
                }
            }
            "}" | "|}" => {
                if parent is MappingConstructorExpr {
                    return SINGLE_LINE_END;
                }
            }
            "error" => {
                if parent is ErrorConstructorExpr|ErrorTypeDesc {
                    return CLING_NEXT;
                }
            }
        }
    }
    if node is IdentifierSyntaxNode {
        if parent is FunctionDefn {
            return CLING_NEXT;
        }
        if parent is FunctionCallExpr|MethodCallExpr {
            string name = parent is FunctionCallExpr ? parent.funcName : parent.methodName;
            if node.name == name {
                return CLING_NEXT;
            }
        }
    }
    if node is StringLiteralSyntaxNode {
        if parent is SimpleConstNegateExpr {
            return IGNORE_LITERAL_ESCAPE;
        }
    }
    return NONE;
}

function syntaxNodeToAstNode(SyntaxNode node) returns AstNode? {
    return node is AstSyntaxNode ? node.astNode : ();
}

function terminalSyntaxNodeToString(TerminalSyntaxNode node, OutputFlags flags) returns string {
    if node is IdentifierSyntaxNode {
        return node.name;
    }
    else if node is StringLiteralSyntaxNode {
        if (flags & IGNORE_LITERAL_ESCAPE) != 0 {
            return node.literal;
        }
        return stringLiteral(node.literal);
    }
    else if node is TerminalSyntaxAstNode {
        AstNode astNode = node.astNode;
        if astNode is LiteralExpr && astNode.value is string {
            return stringLiteral(node.token);
        }
        return node.token;
    }
    else {
        return node.token;
    }
}

final readonly & map<string:Char> REVERSE_ESCAPES = {
    "\\": "\\",
    "\"": "\"",
    "\n": "n",
    "\r": "r",
    "\t": "t"
};

function stringLiteral(string str) returns string {
    string[] chunks = ["\""];
    foreach var ch in str {
        string:Char? singleEscaped =  REVERSE_ESCAPES[ch];
        if singleEscaped == () {
            int cp = ch.toCodePointInt();
            if 0x20 <= cp && cp < 0x7F {
                chunks.push(ch);
            }
            else {
                chunks.push("\\u{", cp.toHexString().toUpperAscii(), "}");
            }
        }
        else {
            chunks.push("\\", singleEscaped);
        }
    }
    chunks.push("\"");
    return "".'join(...chunks);
}

function concat(Word... words) returns string[] {
    string[] parts = [];
    string[] lines = [];
    boolean skipSpace = true;
    boolean ignoreNewLine = false;
    int indentSize = 0;
    foreach int i in 0 ..< words.length() {
        Word token = words[i];
        Word? nextToken = i < words.length() - 1 ? words[i + 1] : ();
        if token is string {
            if (token == "}" || token == "|}") {
                if !ignoreNewLine {
                    indentSize -= 1;
                    parts = addNewLine(parts, lines, indentSize);
                }
                else {
                    parts.push(" ");
                }
            }
            if !skipSpace && !omitSpaceBefore(token) {
                parts.push(" ");
            }
            parts.push(token);
            skipSpace = omitSpaceAfter(token);
            if (token == "{" || token == "{|") {
                if !ignoreNewLine {
                    indentSize += 1;
                    parts = addNewLine(parts, lines, indentSize);
                }
                else if nextToken != "}" && nextToken != "|}" {
                    parts.push(" ");
                }
            }
            if (token == "}" || token == "|}") && nextToken != ";" && !ignoreNewLine {
                parts = addNewLine(parts, lines, indentSize);
            }
        }
        else if token == CLING {
            skipSpace = true;
        }
        else if token is SINGLE_LINE_START{
            ignoreNewLine = true;
        }
        else if token is SINGLE_LINE_END {
            ignoreNewLine = false;
        }
        else if token == NEWLINE && !ignoreNewLine {
            skipSpace = true;
            parts = addNewLine(parts, lines, indentSize);
        }
    }
    string lastLine = string:concat(...parts).trim();
    if lastLine.length() != 0 {
        lines.push(lastLine);
    }
    string[] filteredLines = from string line in lines where line.trim().length() > 0 select line;
    return filteredLines;
}

function addNewLine(string[] parts, string[] lines, int indentSize) returns string[] {
    lines.push(string:concat(...parts));
    return [indent(indentSize)];
}

function indent(int indentSize) returns string {
    string[] content = [];
    foreach int i in 0 ..< indentSize {
        content.push("    ");
    }
    return "".'join(...content);
}

function omitSpaceBefore(string token) returns boolean {
    return token == "," || token == ")" || token == "]" || token == ":" || token == "." || token == ";" || token == "}" || token == "|}";
}

function omitSpaceAfter(string token) returns boolean {
    return token == "(" || token == "\"" || token == "[" || token == "." || token == "!" || token == ";" || token == "{" || token == "{|" || token == "}" || token == "|}";
}
