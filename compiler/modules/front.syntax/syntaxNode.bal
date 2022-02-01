type TerminalSyntaxNode TerminalSyntaxAstNode|FixedSyntaxNode|IdentifierSyntaxNode|StringLiteralSyntaxNode;
type AstSyntaxNode TerminalSyntaxAstNode|NonTerminalSyntaxNode;
type SubSyntaxNode NonTerminalSyntaxNode|TerminalSyntaxNode;
type SyntaxNode SubSyntaxNode|RootSyntaxNode;

const CLING = 0;
const CLING_PREV = 1;
const CLING_NEXT = 2;
const NEWLINE_AFTER = 3;
const NEWLINE_BEFORE = 4;
const IGNORE_LITERAL_ESCAPE = 5;
type OutputFlag CLING|CLING_PREV|CLING_NEXT|NEWLINE_AFTER|NEWLINE_BEFORE|IGNORE_LITERAL_ESCAPE;

type TerminalSyntaxAstNode record {|
    AstNode astNode;
    OutputFlag? outputFlag = ();
    string token;
|};

type NonTerminalSyntaxNode record {|
    AstNode astNode;
    SubSyntaxNode[] childNodes;
    boolean wrap;
|};

type RootSyntaxNode record {|
    ModulePart part;
    SubSyntaxNode[] childNodes;
|};

// represents keywords and fixed tokens
type FixedSyntaxNode record {|
    FixedToken token;
    OutputFlag? outputFlag = ();
    Position? pos = ();
|};

type StringLiteralSyntaxNode record {|
    string literal;
    OutputFlag? outputFlag = ();
    Position? pos = ();
|};

// represents identifiers
type IdentifierSyntaxNode record {|
    string name;
    OutputFlag? outputFlag = ();
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
                               org != () ? [{ name: org, pos: () }, { token: "/", outputFlag: CLING }] : (),
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
                               syntaxNodeFromExpr(defn.expr, false)
    );
}

function syntaxNodeFromTypeDefn(TypeDefn defn) returns SubSyntaxNode {
    return finishWithSemiColon(defn,
                               defn.vis == "public" ? { token: "public" } : (),
                               { token: "type" },
                               { name: defn.name, pos: defn.namePos },
                               syntaxNodeFromTypeDesc(defn.td, false));
}

function syntaxNodeFromFunctionDefn(FunctionDefn defn) returns SubSyntaxNode {
    return nonTerminalSyntaxNode(defn,
                                 false,
                                 defn.vis == "public" ? { token: "public" } : (),
                                 { token: "function" },
                                 { name: defn.name, pos: defn.namePos, outputFlag: CLING_NEXT },
                                 syntaxNodeFromFunctionTypeDesc(defn.typeDesc, functionSignature = true),
                                 syntaxNodeFromStmtBlock(defn.body));
}

function syntaxNodeFromFunctionTypeParam(FunctionTypeParam param) returns SubSyntaxNode {
    string? name = param.name;
    return nonTerminalSyntaxNode(param,
                                 false,
                                 syntaxNodeFromTypeDesc(param.td, false),
                                 name != () ? { name, pos: param.namePos } : ());
}

function syntaxNodeFromStmtBlock(StmtBlock block) returns NonTerminalSyntaxNode {
    SubSyntaxNode[] body = from Stmt stmt in block.stmts select syntaxNodeFromStmt(stmt);
    return nonTerminalSyntaxNode(block, false, { token: "{", pos: block.startPos },
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
                               syntaxNodeFromTypeDesc(stmt.td, false),
                               { name: name ?: "_", pos: stmt.namePos },
                               { token: "=", pos: stmt.opPos },
                               syntaxNodeFromExpr(stmt.initExpr, false));
}

function syntaxNodeFromReturnStmt(ReturnStmt stmt) returns NonTerminalSyntaxNode {
    Expr? returnExpr = stmt.returnExpr;
    return finishWithSemiColon(stmt,
                               { token: "return", pos: stmt.startPos },
                               returnExpr != () ? syntaxNodeFromExpr(returnExpr, false) : ());
}

function syntaxNodeFromPanicStmt(PanicStmt stmt) returns NonTerminalSyntaxNode {
    return finishWithSemiColon(stmt,
                               { token: "panic", pos: stmt.startPos },
                               syntaxNodeFromExpr(stmt.panicExpr, false));
}

function syntaxNodeFromAssignStmt(AssignStmt stmt) returns NonTerminalSyntaxNode {
    LExpr|WILDCARD lValue = stmt.lValue;
    return finishWithSemiColon(stmt,
                               lValue is LExpr ? syntaxNodeFromLExpr(lValue) : { token: "_", pos: stmt.startPos },
                               { token: "=", pos: stmt.opPos },
                               syntaxNodeFromExpr(stmt.expr, false));
}

function syntaxNodeFromCompoundAssignStmt(CompoundAssignStmt stmt) returns NonTerminalSyntaxNode {
    return finishWithSemiColon(stmt,
                               syntaxNodeFromLExpr(stmt.lValue),
                               { token: <FixedToken>(stmt.op + "="), pos: stmt.opPos },
                               syntaxNodeFromExpr(stmt.expr, false));
}

function syntaxNodeFromIfElseStmt(IfElseStmt stmt) returns NonTerminalSyntaxNode {
    StmtBlock|IfElseStmt? ifFalse = stmt.ifFalse;
    return nonTerminalSyntaxNode(stmt,
                                 false,
                                 { token: "if", pos: stmt.startPos },
                                 syntaxNodeFromExpr(stmt.condition, false),
                                 syntaxNodeFromStmtBlock(stmt.ifTrue),
                                 ifFalse != () ? { token: "else" } : (),
                                 ifFalse is StmtBlock ? syntaxNodeFromStmtBlock(ifFalse) : (ifFalse is IfElseStmt ? syntaxNodeFromStmt(ifFalse) : ()));
}

function syntaxNodeFromMatchStmt(MatchStmt stmt) returns NonTerminalSyntaxNode {
    SubSyntaxNode[] clauses = from MatchClause clause in stmt.clauses select syntaxNodeFromMatchClause(clause);
    return nonTerminalSyntaxNode(stmt,
                                 false,
                                 { token: "match", pos: stmt.startPos },
                                 syntaxNodeFromExpr(stmt.expr, false),
                                 { token: "{" },
                                 clauses,
                                 { token: "}" });
}

function syntaxNodeFromMatchClause(MatchClause clause) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(clause, false, syntaxNodeFromMatchPatterns(clause.patterns),
                                                { token: "=>", pos: clause.opPos },
                                                syntaxNodeFromStmtBlock(clause.block));
}

function syntaxNodeFromMatchPatterns(MatchPattern[] patterns) returns NonTerminalSyntaxNode[] {
    SubSyntaxNode[][] childNodes = from int i in 0 ..< patterns.length() select i > 0 ? [{ token: "|" }, syntaxNodeFromMatchPattern(patterns[i])] : [syntaxNodeFromMatchPattern(patterns[i])];
    return from int i in 0 ..< patterns.length() select nonTerminalSyntaxNode(patterns[i], false, childNodes[i]);
}

function syntaxNodeFromMatchPattern(MatchPattern pattern) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(pattern, false, pattern is WildcardMatchPattern ? { token: "_" } : syntaxNodeFromExpr(pattern, false));
}

function syntaxNodeFromWhileStmt(WhileStmt stmt) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(stmt,
                                 false,
                                 { token: "while", pos: stmt.startPos },
                                 syntaxNodeFromExpr(stmt.condition, false),
                                 syntaxNodeFromStmtBlock(stmt.body));
}

function syntaxNodeFromForeachStmt(ForeachStmt stmt) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(stmt,
                                 false,
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
                               syntaxNodeFromExpr(stmt.expr, false));
}

function syntaxNodeFromExpr(Expr expr, boolean wrap) returns SubSyntaxNode {
    if expr is GroupingExpr {
        return syntaxNodeFromGroupingExpr(expr, wrap);
    }
    else if expr is TerminalExpr {
        return syntaxNodeFromTerminalExpr(expr);
    }
    else if expr is BinaryExpr {
        return syntaxNodeFromBinaryExpr(expr, wrap);
    }
    else if expr is TypeTestExpr {
        return syntaxNodeFromTypeTestExpr(expr, wrap);
    }
    else if expr is ErrorConstructorExpr {
        return syntaxNodeFromErrorConstructorExpr(expr);
    }
    else if expr is FunctionCallExpr {
        return syntaxNodeFromFunctionCallExpr(expr);
    }
    else if expr is MethodCallExpr {
        return syntaxNodeFromMethodCallExpr(expr, wrap);
    }
    else if expr is ListConstructorExpr {
        return syntaxNodeFromListConstructorExpr(expr);
    }
    else if expr is MappingConstructorExpr {
        return syntaxNodeFromMappingConstructorExpr(expr);
    }
    else if expr is MemberAccessExpr {
        return syntaxNodeFromMemberAccessExpr(expr, wrap);
    }
    else if expr is FieldAccessExpr {
        return syntaxNodeFromFieldAccessExpr(expr, wrap);
    }
    else if expr is TypeCastExpr {
        return syntaxNodeFromTypeCastExpr(expr, wrap);
    }
    else if expr is VarRefExpr {
        return syntaxNodeFromVarRefExpr(expr);
    }
    else if expr is CheckingExpr {
        return syntaxNodeFromCheckingExpr(expr);
    }
    else {
        return syntaxNodeFromUnaryExpr(expr, wrap);
    }
}

function syntaxNodeFromLExpr(LExpr expr) returns NonTerminalSyntaxNode {
    if expr is MemberAccessLExpr {
        return nonTerminalSyntaxNode(expr, false, syntaxNodeFromLExpr(expr.container),
                                                  { token: "[", outputFlag: CLING_PREV },
                                                  syntaxNodeFromExpr(expr.index, true),
                                                  { token: "]"});
    }
    else if expr is FieldAccessLExpr {
        return nonTerminalSyntaxNode(expr, false, syntaxNodeFromLExpr(expr.container),
                                                  { token: ".", pos: expr.opPos },
                                                  { name: expr.fieldName, pos: () });
    }
    else {
        return syntaxNodeFromVarRefExpr(expr);
    }
}

function syntaxNodeFromGroupingExpr(GroupingExpr expr, boolean wrap) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr, false, { token: "(", pos: expr.startPos },
                                              syntaxNodeFromExpr(expr.innerExpr, wrap),
                                              { token: ")" });
}

function syntaxNodeFromRangeExpr(RangeExpr expr) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr,
                                 false,
                                 syntaxNodeFromExpr(expr.lower, false),
                                 { token: "..<", pos: expr.opPos },
                                 syntaxNodeFromExpr(expr.upper, false)
    );
}

function syntaxNodeFromTypeTestExpr(TypeTestExpr expr, boolean wrap) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr,
                                 wrap,
                                 syntaxNodeFromExpr(expr.left, true),
                                 expr.negated ? { token: "!" } : (),
                                 { token: "is", pos: expr.kwPos },
                                 syntaxNodeFromTypeDesc(expr.td, false));
}

function syntaxNodeFromErrorConstructorExpr(ErrorConstructorExpr expr) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr,
                                 false,
                                 { token: "error", pos: expr.startPos, outputFlag: CLING_NEXT },
                                 { token: "(" },
                                 syntaxNodeFromExpr(expr.message, false),
                                 { token: ")" });
}

function syntaxNodeFromFunctionCallExpr(FunctionCallExpr expr) returns NonTerminalSyntaxNode {
    SubSyntaxNode[] args = joinSyntaxNodesWithSeperator((from Expr arg in expr.args select syntaxNodeFromExpr(arg, false)), { token: "," });
    string? prefix = expr.prefix;
    return nonTerminalSyntaxNode(expr, false, prefix != () ? [{ name: prefix, pos: expr.qNamePos }, { token: ":", outputFlag: CLING }] : (),
                                              { name: expr.funcName, pos: prefix == () ? expr.qNamePos : () , outputFlag: CLING_NEXT},
                                              { token: "(", pos: expr.openParenPos },
                                              // JBUG: can't use the query exprssion directly
                                              args,
                                              { token: ")" });
}

function syntaxNodeFromMethodCallExpr(MethodCallExpr expr, boolean wrap) returns NonTerminalSyntaxNode {
    SubSyntaxNode[] args = joinSyntaxNodesWithSeperator((from Expr arg in expr.args select syntaxNodeFromExpr(arg, false)), { token: "," });
    return nonTerminalSyntaxNode(expr, wrap, syntaxNodeFromExpr(expr.target, true),
                                             { token: ".", pos: expr.opPos },
                                             { name: expr.methodName, pos: expr.namePos, outputFlag: CLING_NEXT },
                                             { token: "(", pos: expr.openParenPos, outputFlag: CLING_PREV },
                                             // JBUG: can't use the query exprssion directly
                                             args,
                                             { token: ")" });
}

function syntaxNodeFromListConstructorExpr(ListConstructorExpr expr) returns NonTerminalSyntaxNode{
    SubSyntaxNode[] members = joinSyntaxNodesWithSeperator((from Expr member in expr.members select syntaxNodeFromExpr(member, false)), { token: "," });
    return nonTerminalSyntaxNode(expr, false, { token: "[", pos: expr.startPos },
                                              // JBUG: can't use the query exprssion directly
                                              members,
                                              { token: "]" });
}

function syntaxNodeFromMappingConstructorExpr(MappingConstructorExpr expr) returns NonTerminalSyntaxNode{
    SubSyntaxNode[] fields = joinSyntaxNodesWithSeperator((from Field f in expr.fields select syntaxNodeFromField(f)), { token: ",", outputFlag: NEWLINE_AFTER });
    return nonTerminalSyntaxNode(expr, false, { token: "{", pos: expr.startPos },
                                              // JBUG: can't use the query exprssion directly
                                              fields,
                                              { token: "}" });
}

function syntaxNodeFromMemberAccessExpr(MemberAccessExpr expr, boolean wrap) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr, wrap, syntaxNodeFromExpr(expr.container, true),
                                             { token: "[", outputFlag: CLING_PREV },
                                             syntaxNodeFromExpr(expr.index, false),
                                             { token: "]"});
}

function syntaxNodeFromFieldAccessExpr(FieldAccessExpr expr, boolean wrap) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr, wrap, syntaxNodeFromExpr(expr.container, true),
                                             { token: ".", pos: expr.opPos },
                                             { name: expr.fieldName, pos: () });
}

function syntaxNodeFromTypeCastExpr(TypeCastExpr expr, boolean wrap) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr, wrap, { token: "<", outputFlag: CLING_NEXT },
                                             syntaxNodeFromTypeDesc(expr.td, false),
                                             { token: ">", outputFlag: CLING },
                                             syntaxNodeFromExpr(expr.operand, true));
}

function syntaxNodeFromVarRefExpr(VarRefExpr expr) returns NonTerminalSyntaxNode {
    string? prefix = expr.prefix;
    Position? identifierPos = prefix == () ? expr.qNamePos : ();
    return nonTerminalSyntaxNode(expr, false, prefix != () ? [{ name: prefix, pos: expr.qNamePos }, { token: ":", outputFlag: CLING }] : (),
                                              { name: expr.name, pos: identifierPos });
}

function syntaxNodeFromCheckingExpr(CheckingExpr expr) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr, false, { token: expr.checkingKeyword, pos: expr.kwPos },
                                              syntaxNodeFromExpr(expr.operand, false));
}

function syntaxNodeFromUnaryExpr(UnaryExpr expr, boolean wrap) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(expr, wrap, { token: expr.op, pos: expr.opPos, outputFlag: CLING_NEXT },
                                             syntaxNodeFromExpr(expr.operand, true));
}

type TerminalExpr LiteralExpr|NumericLiteralExpr;
function syntaxNodeFromTerminalExpr(TerminalExpr expr, SimpleConstNegateExpr? sign = ()) returns AstSyntaxNode {
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

function syntaxNodeFromBinaryExpr(BinaryExpr expr, boolean wrap) returns SubSyntaxNode {
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
    return nonTerminalSyntaxNode(expr, wrap,  syntaxNodeFromExpr(expr.left, true),
                                              { token: op, pos: expr.opPos },
                                              syntaxNodeFromExpr(expr.right, true));
}

function syntaxNodeFromField(Field f) returns SubSyntaxNode {
    return nonTerminalSyntaxNode(f, false, f.isIdentifier ? { name: f.name, pos: f.startPos} : { literal: f.name, pos: f.startPos },
                                           { token: ":", pos: f.colonPos },
                                           syntaxNodeFromExpr(f.value, false));
}

function syntaxNodeFromTypeDesc(TypeDesc td, boolean|BinaryTypeOp wrap) returns SubSyntaxNode {
    if td is TerminalTypeDesc {
        return syntaxNodeFromTerminalTypeDesc(td);
    }
    else if td is TupleTypeDesc {
        return syntaxNodeFromTupleTypeDesc(td);
    }
    else if td is ArrayTypeDesc {
        return syntaxNodeFromArrayTypeDesc(td, wrap);
    }
    else if td is MappingTypeDesc {
        return syntaxNodeFromMappingTypeDesc(td);
    }
    else if td is FunctionTypeDesc {
        return syntaxNodeFromFunctionTypeDesc(td);
    }
    else if td is BinaryTypeDesc {
        return syntaxNodeFromBinaryTypeDesc(td, wrap);
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
        return syntaxNodeFromUnaryTypeDesc(td, wrap);
    }
}

function syntaxNodeFromTupleTypeDesc(TupleTypeDesc td) returns NonTerminalSyntaxNode {
    SubSyntaxNode[] memberNodes = joinSyntaxNodesWithSeperator((from TypeDesc member in td.members select syntaxNodeFromTypeDesc(member, false)), { token: "," });
    TypeDesc? rest = td.rest;
    return nonTerminalSyntaxNode(td, false, { token: "[", pos: td.startPos },
                                            memberNodes,
                                            rest != () && td.members.length() > 0 ? { token: "," } : (),
                                            rest != () ? [syntaxNodeFromTypeDesc(rest, false), { token: "..." }] : (),
                                            { token: "]" });
}

function syntaxNodeFromArrayTypeDesc(ArrayTypeDesc td, boolean|BinaryTypeOp wrap) returns NonTerminalSyntaxNode {
    SubSyntaxNode[][] dimensions = from SimpleConstExpr? dimension in td.dimensions select dimension == () ? [{ token: "[", outputFlag: CLING_PREV }, { token: "]" }]:
                                                                                                          [{ token: "[", outputFlag: CLING_PREV }, syntaxNodeFromExpr(dimension, false), { token: "]" }];
    return nonTerminalSyntaxNode(td, wrap != false, syntaxNodeFromTypeDesc(td.member, true),
                                                    ...dimensions);
}

function syntaxNodeFromMappingTypeDesc(MappingTypeDesc td) returns NonTerminalSyntaxNode {
    TypeDesc|INCLUSIVE_RECORD_TYPE_DESC? rest = td.rest;
    if td.fields.length() > 0 {
        SubSyntaxNode[] fields = from FieldDesc f in td.fields select syntaxNodeFromFieldDesc(f);
        return nonTerminalSyntaxNode(td, false, { token: "record", pos: td.startPos },
                                                rest == INCLUSIVE_RECORD_TYPE_DESC ? { token: "{" } : { token: "{|" },
                                                // JBUG: can't use query expression directly
                                                fields,
                                                (rest is TypeDesc) ? [syntaxNodeFromTypeDesc(rest, false), { token: "..." }, { token: ";" }] : (),
                                                rest == INCLUSIVE_RECORD_TYPE_DESC ? { token: "}" } : { token: "|}" });
    }
    else {
        return nonTerminalSyntaxNode(td, false, { token: "map", pos: td.startPos },
                                                { token: "<", outputFlag: CLING },
                                                rest is TypeDesc ? syntaxNodeFromTypeDesc(rest, false) : { token: "never" },
                                                { token: ">", outputFlag: CLING_PREV });
    }
}

function syntaxNodeFromFunctionTypeDesc(FunctionTypeDesc td, boolean functionSignature = false) returns SubSyntaxNode {
    SubSyntaxNode[] params = joinSyntaxNodesWithSeperator((from FunctionTypeParam param in td.params select syntaxNodeFromFunctionTypeParam(param)), { token: "," });
    TypeDesc? retTd = td.ret;
    return nonTerminalSyntaxNode(td, false, functionSignature ? () : { token: "function" },
                                            { token: "(", pos: td.startPos },
                                            params,
                                            { token: ")" },
                                            retTd != () ? [{ token: "returns" }, syntaxNodeFromTypeDesc(retTd, false)] : ());
}

function syntaxNodeFromBinaryTypeDesc(BinaryTypeDesc td, boolean|BinaryTypeOp wrap) returns NonTerminalSyntaxNode {
    boolean noWrap = wrap == false || wrap == td.op;
    return nonTerminalSyntaxNode(td, !noWrap, syntaxNodeFromTypeDesc(td.left, td.op), { token: td.op, pos: td.opPos }, syntaxNodeFromTypeDesc(td.right, td.op));
}

function syntaxNodeFromErrorTypeDesc(ErrorTypeDesc td) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(td, false, { token: "error", pos: td.startPos, outputFlag: CLING_NEXT },
                                            syntaxNodesFromTypeParameter(td.detail));
}

function syntaxNodeFromXmlSequenceTypeDesc(XmlSequenceTypeDesc td) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(td, false, { token: "xml", pos: td.startPos },
                                            syntaxNodesFromTypeParameter(td.constituent));
}

function syntaxNodeFromTableTypeDesc(TableTypeDesc td) returns NonTerminalSyntaxNode {
    return nonTerminalSyntaxNode(td, false, { token: "table", pos: td.startPos },
                                            syntaxNodesFromTypeParameter(td.row));
}

function syntaxNodeFromTypeDescRef(TypeDescRef td) returns NonTerminalSyntaxNode {
    string? prefix = td.prefix;
    return nonTerminalSyntaxNode(td, false, prefix != () ? [{ name: prefix, pos: td.qNamePos }, { token: ":", outputFlag: CLING }] : (),
                                            { name: td.typeName, pos: prefix == () ? td.qNamePos : () });
}

function syntaxNodesFromTypeParameter(TypeDesc td) returns SubSyntaxNode[] {
    return [{ token: "<", outputFlag: CLING_NEXT }, syntaxNodeFromTypeDesc(td, false), { token: ">", outputFlag: CLING_PREV }];
}

function syntaxNodeFromUnaryTypeDesc(UnaryTypeDesc td, boolean|BinaryTypeOp wrap) returns NonTerminalSyntaxNode {
    SubSyntaxNode[] childNodes = [{ token: td.op, pos: td.startPos, outputFlag: CLING_NEXT }, syntaxNodeFromTypeDesc(td.td, wrap)];
    if td.op == "(" {
        return nonTerminalSyntaxNode(td, false, childNodes, { token: ")" });
    }
    else if td.op == "!" {
        return nonTerminalSyntaxNode(td, false, childNodes);
    }
    else {
        return nonTerminalSyntaxNode(td, false, syntaxNodeFromTypeDesc(td.td, wrap), { token: td.op, pos: td.opPos, outputFlag: CLING_PREV });
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
            return syntaxNodeFromTerminalExpr(valueExpr.operand, valueExpr);
        }
        else {
            return syntaxNodeFromTerminalExpr(valueExpr);
        }
    }
}

function syntaxNodeFromFieldDesc(FieldDesc fd) returns SubSyntaxNode {
    return finishWithSemiColon(fd, syntaxNodeFromTypeDesc(fd.typeDesc, false), { name: fd.name, pos: () });
}

function finishWithSemiColon(AstNode astNode, SubSyntaxNode[]|SubSyntaxNode?... nodes) returns NonTerminalSyntaxNode {
    nodes.push({ token: ";", outputFlag: NEWLINE_AFTER });
    return nonTerminalSyntaxNode(astNode, false, ...nodes);
}

function nonTerminalSyntaxNode(AstNode astNode, boolean wrap, SubSyntaxNode[]|SubSyntaxNode?... nodes) returns NonTerminalSyntaxNode {
    SubSyntaxNode[] childNodes = flattenSyntaxNodeList(nodes);
    return { childNodes, wrap, astNode };
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
    return "\n".'join(...syntaxNodeToString(syntaxNodeFromExpr(expr, false)));
}

const NEWLINE = -1;
type Word string|CLING|NEWLINE;

function syntaxNodeToString(SyntaxNode node) returns string[] {
    Word[] words = [];
    syntaxNodeToWords(words, node);
    return concat(...words);
}

function syntaxNodeToWords(Word[] words, SyntaxNode node) {
    if node is TerminalSyntaxNode {
        words.push(terminalSyntaxNodeToString(node));
    }
    else {
        SubSyntaxNode[] childNodes = node.childNodes;
        foreach var child in childNodes {
            if child is TerminalSyntaxNode {
                if child.outputFlag is CLING|CLING_PREV {
                    // JBUG #33335 cast
                    words.push(<Word>CLING);
                }
                if child.outputFlag is NEWLINE_BEFORE {
                    // JBUG #33335 cast
                    words.push(<Word>NEWLINE);
                }
                words.push(terminalSyntaxNodeToString(child));
                if child.outputFlag is CLING|CLING_NEXT {
                    // JBUG #33335 cast
                    words.push(<Word>CLING);
                }
                if child.outputFlag is NEWLINE_AFTER {
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

function terminalSyntaxNodeToString(TerminalSyntaxNode node) returns string {
    if node is IdentifierSyntaxNode {
        return node.name;
    }
    else if node is StringLiteralSyntaxNode {
        if node.outputFlag == IGNORE_LITERAL_ESCAPE {
            return node.literal;
        }
        return stringLiteral(node.literal);
    }
    else if node is TerminalSyntaxAstNode {
        AstNode astNode = node.astNode;
        if astNode is NumericLiteralExpr|BuiltinTypeDesc ||
           astNode is LiteralExpr|SingletonTypeDesc && astNode.value !is string {
            return node.token;
        }
        return stringLiteral(node.token);
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
    int indentSize = 0;
    foreach int i in 0 ..< words.length() {
        Word token = words[i];
        Word? nextToken = i < words.length() - 1 ? words[i + 1] : ();
        if token is string {
            if token == "}" || token == "|}" {
                indentSize -= 1;
                parts = addNewLine(parts, lines, indentSize);
            }
            if !skipSpace && !omitSpaceBefore(token) {
                parts.push(" ");
            }
            parts.push(token);
            skipSpace = omitSpaceAfter(token);
            if token == "{" || token == "{|" {
                indentSize += 1;
                parts = addNewLine(parts, lines, indentSize);
            }
            if (token == "}" || token == "|}") && nextToken != ";" {
                parts = addNewLine(parts, lines, indentSize);
            }
        }
        else if token is CLING {
            skipSpace = true;
        }
        else {
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
