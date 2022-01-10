type SyntaxNode TerminalSyntaxNode|NonTerminalSyntaxNode;

type TerminalSyntaxNode record {|
  *PositionFields;
  AstNode astNode;
  string? token;  // if non-nil expect the token to be this
|};

type NonTerminalSyntaxNode record {|
  *PositionFields;
  AstNode astNode;
  SyntaxNode[] childNodes;
|};

type AstNode record {|
   *PositionFields;
   any...;
|};

// pr-todo: better names for buildFunctions

function validateModulePart(ModulePart part) {
    var [importDecls, moduleLevelDefns] = buildTree(part);
    foreach SyntaxNode decl in importDecls {
        validateSyntaxNode(decl);
    }
    foreach SyntaxNode defn in moduleLevelDefns {
        validateSyntaxNode(defn);
    }
}

function validateSyntaxNode(SyntaxNode node) {
    Position parentStart = node.startPos;
    Position parentEnd = node.endPos;
    if node is NonTerminalSyntaxNode {
        Position lastEnd = parentStart;
        foreach SyntaxNode child in node.childNodes {
            if child.startPos < parentStart || child.endPos > parentEnd {
                panic error("child node outside of parent");
            }
            if child.startPos < lastEnd {
                panic error("overlapping child nodes");
            }
            // pr-to: check if difference is all white space
            lastEnd = child.endPos;
            validateSyntaxNode(child);
        }
    }
}

function buildTree(ModulePart part) returns [SyntaxNode[], SyntaxNode[]] {
    TerminalSyntaxNode[] importDecls = from ImportDecl decl in part.importDecls select addImportDeclNode(decl);
    SyntaxNode[] moduleLevelDefns = from ModuleLevelDefn defn in part.defns select addModuleLevelDefnNode(defn);
    return [importDecls, moduleLevelDefns];
}

function addImportDeclNode(ImportDecl decl) returns TerminalSyntaxNode {
    // hardcoded spaces: no org pos
    Word[] tokenContent = [];
    importDeclToWords(tokenContent, decl);
    string token = wordsToString(tokenContent);
    return { startPos: decl.startPos, endPos: decl.endPos, token, astNode: decl };
}

function addModuleLevelDefnNode(ModuleLevelDefn defn) returns SyntaxNode {
    if defn is ConstDefn {
        return addConstDefnNode(defn);
    }
    else if defn is TypeDefn {
        return addTypeDefnNode(defn);
    }
    else {
        return addFunctionDefnNode(defn);
    }
}

function addConstDefnNode(ConstDefn defn) returns NonTerminalSyntaxNode {
    return { startPos: defn.startPos, endPos: defn.endPos, childNodes: [addExprNode(defn.expr)], astNode: defn };
}

function addTypeDefnNode(TypeDefn defn) returns TerminalSyntaxNode {
    Word[] tokenContent = [];
    typeDefnToWords(tokenContent, defn);
    string token = wordsToString(tokenContent);
    return { startPos: defn.startPos, endPos: defn.endPos, token, astNode: defn };
}

function addFunctionDefnNode(FunctionDefn defn) returns NonTerminalSyntaxNode {
    SyntaxNode[] childNodes = from Stmt stmt in defn.body.stmts select addStmtNode(stmt);
    return { startPos: defn.startPos, endPos: defn.endPos, childNodes, astNode: defn };
}

function addStmtBlockNodes(StmtBlock block) returns SyntaxNode[] {
    return from Stmt stmt in block.stmts select addStmtNode(stmt);
}

function addStmtNode(Stmt stmt) returns SyntaxNode {
    SyntaxNode[] childNodes;
    if stmt is VarDeclStmt {
       childNodes = [addExprNode(stmt.initExpr)];
    }
    else if stmt is ReturnStmt {
        Expr? returnExpr = stmt.returnExpr;
        if returnExpr == () {
            return { startPos: stmt.startPos, endPos: stmt.endPos, token: "return;", astNode: stmt };
        }
        else {
            childNodes = [addExprNode(returnExpr)];
        }
    }
    else if stmt is PanicStmt {
        childNodes = [addExprNode(stmt.panicExpr)];
    }
    else if stmt is AssignStmt {
        LExpr|WILDCARD lValue = stmt.lValue;
        //pr-to: make better
        if lValue is LExpr {
            childNodes = addExprNodes([lValue, stmt.expr]);
        }
        else {
            childNodes = [addExprNode(stmt.expr)];
        }
    }
    else if stmt is CompoundAssignStmt {
        childNodes = addExprNodes([stmt.lValue, stmt.expr]);
    }
    else if stmt is IfElseStmt {
        childNodes = [addExprNode(stmt.condition)];
        // pr-todo: refactor stmt blocks
        childNodes.push(...addStmtBlockNodes(stmt.ifTrue));
        StmtBlock? ifFalse = stmt.ifFalse;
        if ifFalse != () {
            childNodes.push(...addStmtBlockNodes(ifFalse));
        }
    }
    else if stmt is MatchStmt {
        childNodes = [addExprNode(stmt.expr)];
        // pr-todo: deal with claues
    }
    else if stmt is WhileStmt {
        childNodes = [addExprNode(stmt.condition)];
        childNodes.push(...addStmtBlockNodes(stmt.body));
    }
    else if stmt is ForeachStmt {
        childNodes = addExprNodes([stmt.range.lower, stmt.range.upper]);
        childNodes.push(...addStmtBlockNodes(stmt.body));
    }
    else if stmt is BreakContinueStmt {
        return { startPos: stmt.startPos, endPos: stmt.endPos, token: stmt.breakContinue + ";", astNode: stmt };
    }
    else {
        childNodes = [addExprNode(stmt.expr)];
    }
    if childNodes.length() == 0 {
        return { startPos: stmt.startPos, endPos: stmt.endPos, astNode: stmt, token: () };
    }
    return { startPos: stmt.startPos, endPos: stmt.endPos, childNodes, astNode: stmt };
}

function addExprNodes(Expr[] exprs) returns SyntaxNode[] {
    return from Expr expr in exprs select addExprNode(expr);
}

type TerminalExpr VarRefExpr|ConstValueExpr|NumericLiteralExpr;
function addTerminalExprNode(TerminalExpr expr) returns TerminalSyntaxNode {
    string token;
    if expr is VarRefExpr {
        string? prefix = expr.prefix;
        token = prefix == () ? "" : prefix+":";
        token += expr.name;
    }
    else if expr is ConstValueExpr {
        token = expr.value.toString();
    }
    else if expr is IntLiteralExpr {
        token = expr.digits;
    }
    else {
        token = expr.untypedLiteral;
    }
    return { startPos: expr.startPos, endPos: expr.endPos, token, astNode: expr };
}

// pr-todo: should we use empty array or string consts for empty
function addExprNode(Expr expr) returns SyntaxNode {
    SyntaxNode[] childNodes;
    if expr is TerminalExpr {
        return addTerminalExprNode(expr);
    }
    else if expr is BinaryExpr {
        childNodes = addExprNodes([expr.left, expr.right]);
    }
    else if expr is TypeTestExpr {
        childNodes = [addExprNode(expr.left)];
    }
    else if expr is ErrorConstructorExpr {
        childNodes = [addExprNode(expr.message)];
    }
    else if expr is FunctionCallExpr {
        if expr.args.length() == 0 {
            return { startPos: expr.startPos, endPos: expr.endPos, token: string`${expr.funcName}()`, astNode: expr };
        }
        childNodes = addExprNodes(expr.args);
    }
    else if expr is MethodCallExpr {
        childNodes = [addExprNode(expr.target)];
        childNodes.push(...addExprNodes(expr.args));
    }
    else if expr is ListConstructorExpr {
        if expr.members.length() == 0 {
            return { startPos: expr.startPos, endPos: expr.endPos, token: "[]", astNode: expr };
        }
        childNodes = addExprNodes(expr.members);
    }
    else if expr is MappingConstructorExpr {
        if expr.fields.length() == 0 {
            return { startPos: expr.startPos, endPos: expr.endPos, token: "{}", astNode: expr };
        }
        childNodes = from Field f in expr.fields select addFieldNode(f);
    }
    else if expr is MemberAccessExpr {
        childNodes = addExprNodes([expr.container, expr.index]);
    }
    else if expr is FieldAccessExpr {
        childNodes = [addExprNode(expr.container)];
    }
    else {
        childNodes = [addExprNode(expr.operand)];
    }
    if childNodes.length() == 0 {
        return { startPos: expr.startPos, endPos: expr.endPos, astNode: expr, token: () };
    }
    return { startPos: expr.startPos, endPos: expr.endPos, childNodes, astNode: expr };
}

function addFieldNode(Field f) returns NonTerminalSyntaxNode {
    return { startPos: f.startPos, endPos: f.endPos, childNodes: [addExprNode(f.value)], astNode: f };
}

function wordsToString(Word[] words) returns string {
    return "\n".'join(...wordsToLines(words));
}
