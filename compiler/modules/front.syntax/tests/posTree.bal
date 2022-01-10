type SyntaxNode TerminalSyntaxNode|NonTerminalSyntaxNode;

type TerminalSyntaxNode record {|
  AstNode astNode;
  string? token;  // if non-nil expect the token to be this
|};

type NonTerminalSyntaxNode record {|
  AstNode astNode;
  SyntaxNode[] childNodes;
|};

type AstNode record {|
   *PositionFields;
   any...;
|};

// pr-todo: better names for buildFunctions

// pr-todo:
// function checkPositionSyntaxNode(Tokenizer tok, SyntaxNode node) [Position, Position] {
//     if node is NonTerminalSyntaxNode {
//         AstNode ast = node.astNode;
//
//         foreach var child in node.childNodes {
//             validateSyntaxNode(tok, child);
//         }
//         //
//     }
//     else {
//
//     }
//
// }

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
    Position parentStart = node.astNode.startPos;
    Position parentEnd = node.astNode.endPos;
    if node is NonTerminalSyntaxNode {
        Position lastEnd = parentStart;
        foreach SyntaxNode child in node.childNodes {
            Position childStartPos = child.astNode.startPos;
            Position childEndPos = child.astNode.endPos;
            // pr-todo: fix messages
            if childStartPos < parentStart || childEndPos > parentEnd {
                panic error("child node outside of parent"+ ":"+ node.astNode.toString()+ "<"+ child.astNode.toString());
            }
            if childStartPos < lastEnd {
                panic error("overlapping child nodes\n" + node.toString());
            }
            // pr-to: check if difference is all white space
            lastEnd = childEndPos;
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
    return { token, astNode: decl };
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

function addConstDefnNode(ConstDefn defn) returns SyntaxNode {
    return { childNodes: [addExprNode(defn.expr)], astNode: defn };
}

function addTypeDefnNode(TypeDefn defn) returns TerminalSyntaxNode {
    Word[] tokenContent = [];
    typeDefnToWords(tokenContent, defn);
    string token = wordsToString(tokenContent);
    return { token, astNode: defn };
}

function addFunctionDefnNode(FunctionDefn defn) returns SyntaxNode {
    SyntaxNode[] childNodes = from Stmt stmt in defn.body.stmts select addStmtNode(stmt);
    return { childNodes, astNode: defn };
}

function addStmtBlockNodes(StmtBlock block) returns SyntaxNode[] {
    return from Stmt stmt in block.stmts select addStmtNode(stmt);
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

function addStmtNode(Stmt stmt) returns SyntaxNode {
    SyntaxNode[] childNodes;
    if stmt is VarDeclStmt {
       childNodes = [addTypeDescNode(stmt.td), addExprNode(stmt.initExpr)];
    }
    else if stmt is ReturnStmt {
        Expr? returnExpr = stmt.returnExpr;
        if returnExpr == () {
            return { token: "return;", astNode: stmt };
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
        return { token: stmt.breakContinue + ";", astNode: stmt };
    }
    else {
        childNodes = [addExprNode(stmt.expr)];
    }
    if childNodes.length() == 0 {
        return { astNode: stmt, token: () };
    }
    return { childNodes, astNode: stmt };
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
    return { token, astNode: expr };
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
        childNodes = [addExprNode(expr.left), addTypeDescNode(expr.td)];
    }
    else if expr is ErrorConstructorExpr {
        childNodes = [addExprNode(expr.message)];
    }
    else if expr is FunctionCallExpr {
        if expr.args.length() == 0 {
            return { token: string`${expr.funcName}()`, astNode: expr };
        }
        childNodes = addExprNodes(expr.args);
    }
    else if expr is MethodCallExpr {
        childNodes = [addExprNode(expr.target)];
        childNodes.push(...addExprNodes(expr.args));
    }
    else if expr is ListConstructorExpr {
        if expr.members.length() == 0 {
            return { token: "[]", astNode: expr };
        }
        childNodes = addExprNodes(expr.members);
    }
    else if expr is MappingConstructorExpr {
        if expr.fields.length() == 0 {
            return { token: "{}", astNode: expr };
        }
        childNodes = from Field f in expr.fields select addFieldNode(f);
    }
    else if expr is MemberAccessExpr {
        childNodes = addExprNodes([expr.container, expr.index]);
    }
    else if expr is FieldAccessExpr {
        childNodes = [addExprNode(expr.container)];
    }
    else if expr is TypeCastExpr {
        childNodes = [addTypeDescNode(expr.td), addExprNode(expr.operand)];
    }
    else {
        childNodes = [addExprNode(expr.operand)];
    }
    if childNodes.length() == 0 {
        return { astNode: expr, token: () };
    }
    return { childNodes, astNode: expr };
}

function addFieldNode(Field f) returns SyntaxNode {
    return { childNodes: [addExprNode(f.value)], astNode: f };
}

function addTypeDescNodes(TypeDesc[] tds) returns SyntaxNode[] {
    return from TypeDesc td in tds select addTypeDescNode(td);
}

function addTypeDescNode(TypeDesc td) returns SyntaxNode {
    // pr-todo: fix this
    SyntaxNode[] childNodes;
    if td is TerminalTypeDesc {
        return addTerminalTypeDescNode(td);
    }
    if td is TupleTypeDesc {
        childNodes = addTypeDescNodes(td.members);
        TypeDesc? rest = td.rest;
        if rest != () {
            childNodes.push(addTypeDescNode(rest));
        }
    }
    else if td is ArrayTypeDesc {
        childNodes = [addTypeDescNode(td.member)];
        //pr-todo: add dimension nodes
    }
    else if td is MappingTypeDesc {
        childNodes = from FieldDesc fd in td.fields select addFieldDescNode(fd);
        TypeDesc|INCLUSIVE_RECORD_TYPE_DESC? rest = td.rest;
        if rest is TypeDesc {
            childNodes.push(addTypeDescNode(rest));
        }
    }
    else if td is FunctionTypeDesc {
        childNodes = from FunctionTypeParam param in td.params select addFunctionTypeParamNode(param);
        childNodes.push(addTypeDescNode(td.ret));
    }
    else if td is BinaryTypeDesc {
        childNodes = [addTypeDescNode(td.left), addTypeDescNode(td.right)];
    }
    else if td is ErrorTypeDesc {
        childNodes = [addTypeDescNode(td.detail)];
    }
    else if td is XmlSequenceTypeDesc {
        childNodes = [addTypeDescNode(td.constituent)];
    }
    else if td is TableTypeDesc {
        childNodes = [addTypeDescNode(td.row)];
    }
    else {
        childNodes = [addTypeDescNode(td.td)];
    }
    return { astNode: td, childNodes };
}

type TerminalTypeDesc BuiltinTypeDesc|TypeDescRef|SingletonTypeDesc;
function addTerminalTypeDescNode(TerminalTypeDesc td) returns TerminalSyntaxNode {
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
function addFieldDescNode(FieldDesc fd) returns SyntaxNode {
    return { childNodes: [addTypeDescNode(fd.typeDesc)], astNode: fd };
}

function addFunctionTypeParamNode(FunctionTypeParam param) returns SyntaxNode {
    return { childNodes: [addTypeDescNode(param.td)], astNode: param };
}

function wordsToString(Word[] words) returns string {
    return "\n".'join(...wordsToLines(words));
}
