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
    TerminalSyntaxNode[] importDecls = from ImportDecl decl in part.importDecls select buildImportDecl(decl);
    SyntaxNode[] moduleLevelDefns = from ModuleLevelDefn defn in part.defns select buildModuleLevelDefn(defn);
    return [importDecls, moduleLevelDefns];
}

function buildImportDecl(ImportDecl decl) returns TerminalSyntaxNode {
    // hardcoded spaces: no org pos
    Word[] tokenContent = [];
    importDeclToWords(tokenContent, decl);
    string token = wordsToString(tokenContent);
    return { startPos: decl.startPos, endPos: decl.endPos, token, astNode: decl };
}

function buildModuleLevelDefn(ModuleLevelDefn defn) returns SyntaxNode {
    if defn is ConstDefn {
        return buildConstDefn(defn);
    }
    else if defn is TypeDefn {
        return buildTypeDefn(defn);
    }
    else {
        return buildFunctionDefn(defn);
    }
}

function buildConstDefn(ConstDefn defn) returns NonTerminalSyntaxNode {
    return { startPos: defn.startPos, endPos: defn.endPos, childNodes: [buildExpr(defn.expr)], astNode: defn };
}

function buildTypeDefn(TypeDefn defn) returns TerminalSyntaxNode {
    Word[] tokenContent = [];
    typeDefnToWords(tokenContent, defn);
    string token = wordsToString(tokenContent);
    return { startPos: defn.startPos, endPos: defn.endPos, token, astNode: defn };
}

function buildFunctionDefn(FunctionDefn defn) returns NonTerminalSyntaxNode {
    SyntaxNode[] childNodes = from Stmt stmt in defn.body.stmts select buildStmt(stmt);
    return { startPos: defn.startPos, endPos: defn.endPos, childNodes, astNode: defn };
}

function buildStmtBlock(StmtBlock block) returns SyntaxNode[] {
    return from Stmt stmt in block.stmts select buildStmt(stmt);
}

function buildStmt(Stmt stmt) returns SyntaxNode {
    SyntaxNode[] childNodes;
    if stmt is VarDeclStmt {
       childNodes = [buildExpr(stmt.initExpr)];
    }
    else if stmt is ReturnStmt {
        Expr? returnExpr = stmt.returnExpr;
        childNodes = returnExpr != () ? [buildExpr(returnExpr)] : [];
    }
    else if stmt is PanicStmt {
        childNodes = [buildExpr(stmt.panicExpr)];
    }
    else if stmt is AssignStmt {
        LExpr|WILDCARD lValue = stmt.lValue;
        //pr-to: make better
        if lValue is LExpr {
            childNodes = buildExprs([lValue, stmt.expr]);
        }
        else {
            childNodes = [buildExpr(stmt.expr)];
        }
    }
    else if stmt is CompoundAssignStmt {
        childNodes = buildExprs([stmt.lValue, stmt.expr]);
    }
    else if stmt is IfElseStmt {
        childNodes = [buildExpr(stmt.condition)];
        // pr-todo: refactor stmt blocks
        childNodes.push(...buildStmtBlock(stmt.ifTrue));
        StmtBlock? ifFalse = stmt.ifFalse;
        if ifFalse != () {
            childNodes.push(...buildStmtBlock(ifFalse));
        }
    }
    else if stmt is MatchStmt {
        childNodes = [buildExpr(stmt.expr)];
        // pr-todo: deal with claues
    }
    else if stmt is WhileStmt {
        childNodes = [buildExpr(stmt.condition)];
        childNodes.push(...buildStmtBlock(stmt.body));
    }
    else if stmt is ForeachStmt {
        childNodes = buildExprs([stmt.range.lower, stmt.range.upper]);
        childNodes.push(...buildStmtBlock(stmt.body));
    }
    else if stmt is BreakContinueStmt {
        return { startPos: stmt.startPos, endPos: stmt.endPos, token: stmt.breakContinue + ";", astNode: stmt };
    }
    else {
        childNodes = [buildExpr(stmt.expr)];
    }
    return { startPos: stmt.startPos, endPos: stmt.endPos, childNodes, astNode: stmt };
}

function buildExprs(Expr[] exprs) returns SyntaxNode[] {
    return from Expr expr in exprs select buildExpr(expr);
}

type TerminalExpr VarRefExpr|ConstValueExpr|NumericLiteralExpr;
function buildTerminalExpr(TerminalExpr expr) returns TerminalSyntaxNode {
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

function buildExpr(Expr expr) returns SyntaxNode {
    SyntaxNode[] childNodes;
    if expr is TerminalExpr {
        return buildTerminalExpr(expr);
    }
    else if expr is BinaryExpr {
        childNodes = buildExprs([expr.left, expr.right]);
    }
    else if expr is TypeTestExpr {
        childNodes = [buildExpr(expr.left)];
    }
    else if expr is ErrorConstructorExpr {
        childNodes = [buildExpr(expr.message)];
    }
    else if expr is FunctionCallExpr {
        childNodes = buildExprs(expr.args);
    }
    else if expr is MethodCallExpr {
        childNodes = [buildExpr(expr.target)];
        childNodes.push(...buildExprs(expr.args));
    }
    else if expr is ListConstructorExpr {
        childNodes = buildExprs(expr.members);
    }
    else if expr is MappingConstructorExpr {
        // pr-todo: add build field
        Expr[] feildExpr = from Field f in expr.fields select f.value;
        childNodes = buildExprs(feildExpr);
    }
    else if expr is MemberAccessExpr {
        childNodes = buildExprs([expr.container, expr.index]);
    }
    else if expr is FieldAccessExpr {
        childNodes = [buildExpr(expr.container)];
    }
    else {
        childNodes = [buildExpr(expr.operand)];
    }
    return { startPos: expr.startPos, endPos: expr.endPos, childNodes, astNode: expr };
}

function wordsToString(Word[] words) returns string {
    return "\n".'join(...wordsToLines(words));
}
