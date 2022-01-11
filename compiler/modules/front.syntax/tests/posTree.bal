type SyntaxNode TerminalSyntaxNode|NonTerminalSyntaxNode|IdentifierSyntaxNode|FixedSyntaxNode;

// pr-todo: may be we need a union of Node that has a ASTNode to simplify stuff
type TerminalSyntaxNode record {|
    AstNode astNode;
    string? token;  // if non-nil expect the token to be this
|};

type NonTerminalSyntaxNode record {|
    AstNode astNode;
    SyntaxNode[] childNodes;
|};

type RootSyntaxNode record {|
    ModulePart part;
    SyntaxNode[] childNodes;
|};

// pr-todo: may be we can merge fallowing together
// represents keywords and fixed tokens
type FixedSyntaxNode record {|
    string token;
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

// pr-todo: add these to all commong fixed tokens that don't have positions
FixedSyntaxNode SEMICOLON_NODE = { token: ";" };

function validateModulePart(ModulePart part) {
    RootSyntaxNode root = buildTree(part);
    foreach SyntaxNode node in root.childNodes {
        validateSyntaxNode(node);
    }
}

function validateSyntaxNode(SyntaxNode node) {
    if node is FixedSyntaxNode|IdentifierSyntaxNode {
        return;
    }
    else {
        Position parentStart = node.astNode.startPos;
        Position parentEnd = node.astNode.endPos;
        if node is NonTerminalSyntaxNode {
            Position lastEnd = parentStart;
            foreach SyntaxNode child in node.childNodes {
                if child is TerminalSyntaxNode|NonTerminalSyntaxNode {
                    Position childStartPos = child.astNode.startPos;
                    Position childEndPos = child.astNode.endPos;
                    if childStartPos < parentStart || childEndPos > parentEnd {
                        outofBoundChildErrr(node, child);
                    }
                    if childStartPos < lastEnd {
                        overlappingNodeErr(node, lastEnd, childStartPos);
                    }
                    // pr-to: check if difference is all white space
                    lastEnd = childEndPos;
                    validateSyntaxNode(child);
                }
                else {
                    // pr-todo:
                    // Position? pos = child.pos;
                    // if pos != () {
                    //     if pos < lastEnd {
                    //         overlappingNodeErr(node, lastEnd, pos);
                    //     }
                    //     lastEnd = pos;
                    // }
                    // pr-todo: consume token
                }
            }
        }
    }
}

// pr-todo: show file names in the error msg
function overlappingNodeErr(NonTerminalSyntaxNode parent, Position lastEnd, Position currentStart) {
    string[] body = ["overlapping child nodes"];
    body.push(string `ast node: ${parent.astNode.toString()}`);
    body.push(string`overlapping range: ${unpackPosition(lastEnd).toString()}:${unpackPosition(currentStart).toString()}`);
    string msg = "\n".'join(...body);
    panic error(msg);
}

function outofBoundChildErrr(NonTerminalSyntaxNode parent, NonTerminalSyntaxNode|TerminalSyntaxNode child) {
    string[] body = ["child node outside of parent"];
    body.push(string `parent node: ${parent.astNode.toString()}`);
    body.push(string `child node: ${child.astNode.toString()}`);
    string msg = "\n".'join(...body);
    panic error(msg);
}

function buildTree(ModulePart part) returns RootSyntaxNode {
    SyntaxNode[] importDecls = from ImportDecl decl in part.importDecls select importDeclToNode(decl);
    SyntaxNode[] moduleLevelDefns = from ModuleLevelDefn defn in part.defns select moduleLevelDefnToNode(defn);
    SyntaxNode[] childNodes = [];
    childNodes.push(...importDecls);
    childNodes.push(...moduleLevelDefns);
    return { childNodes, part };
}

function importDeclToNode(ImportDecl decl) returns NonTerminalSyntaxNode {
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

function moduleLevelDefnToNode(ModuleLevelDefn defn) returns SyntaxNode {
    if defn is ConstDefn {
        return constDefnToNode(defn);
    }
    else if defn is TypeDefn {
        return typeDefnToNode(defn);
    }
    else {
        return functionDefnToNode(defn);
    }
}

// pr-todo: add fixed tokens
function constDefnToNode(ConstDefn defn) returns SyntaxNode {
    return { childNodes: [exprToNode(defn.expr)], astNode: defn };
}

function typeDefnToNode(TypeDefn defn) returns SyntaxNode {
    SyntaxNode[] childNodes = [];
    if defn.vis == "public" {
        childNodes.push({ token: "public", pos: defn.startPos });
    }
    childNodes.push({ token: "type" });
    childNodes.push({ name: defn.name, pos: defn.namePos });
    childNodes.push(typeDescToNode(defn.td));
    childNodes.push(SEMICOLON_NODE);
    return { childNodes, astNode: defn };
}

// pr-todo: add fixed tokens
function functionDefnToNode(FunctionDefn defn) returns SyntaxNode {
    SyntaxNode[] childNodes = from Stmt stmt in defn.body.stmts select stmtToNode(stmt);
    return { childNodes, astNode: defn };
}

function stmtBlockToNodes(StmtBlock block) returns SyntaxNode[] {
    SyntaxNode[] childNodes = [{ token: "{", pos: block.startPos }];
    foreach Stmt stmt in block.stmts {
        childNodes.push(stmtToNode(stmt));
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

function stmtToNode(Stmt stmt) returns SyntaxNode {
    SyntaxNode[] childNodes;
    // pr-todo: add all the fixed tokens
    if stmt is VarDeclStmt {
       childNodes = [typeDescToNode(stmt.td), exprToNode(stmt.initExpr)];
    }
    else if stmt is ReturnStmt {
        Expr? returnExpr = stmt.returnExpr;
        if returnExpr == () {
            childNodes = [{ token: "return", pos: stmt.startPos }];
        }
        else {
            childNodes = [exprToNode(returnExpr)];
        }
    }
    else if stmt is PanicStmt {
        childNodes = [exprToNode(stmt.panicExpr)];
    }
    else if stmt is AssignStmt {
        LExpr|WILDCARD lValue = stmt.lValue;
        if lValue is LExpr {
            childNodes = from Expr child in [lValue, stmt.expr] select exprToNode(child);
        }
        else {
            childNodes = [exprToNode(stmt.expr)];
        }
    }
    else if stmt is CompoundAssignStmt {
        childNodes = from Expr expr in [stmt.lValue, stmt.expr] select exprToNode(expr);
    }
    else if stmt is IfElseStmt {
        childNodes = [exprToNode(stmt.condition)];
        childNodes.push(...stmtBlockToNodes(stmt.ifTrue));
        StmtBlock|IfElseStmt? ifFalse = stmt.ifFalse;
        if ifFalse is StmtBlock {
            childNodes.push(...stmtBlockToNodes(ifFalse));
        }
        else if ifFalse is IfElseStmt {
            childNodes.push(stmtToNode(ifFalse));
        }
    }
    else if stmt is MatchStmt {
        childNodes = [exprToNode(stmt.expr)];
        // pr-todo: deal with claues
    }
    else if stmt is WhileStmt {
        childNodes = [exprToNode(stmt.condition)];
        childNodes.push(...stmtBlockToNodes(stmt.body));
    }
    else if stmt is ForeachStmt {
        childNodes = from Expr expr in [stmt.range.lower, stmt.range.upper] select exprToNode(expr);
        childNodes.push(...stmtBlockToNodes(stmt.body));
    }
    else if stmt is BreakContinueStmt {
        return { token: stmt.breakContinue, astNode: stmt };
    }
    else {
        childNodes = [exprToNode(stmt.expr)];
    }
    childNodes.push(SEMICOLON_NODE);
    return { childNodes, astNode: stmt };
}

function exprToNode(Expr expr) returns SyntaxNode {
    SyntaxNode[] childNodes;
    if expr is TerminalExpr {
        return terminalExprToNode(expr);
    }
    else if expr is BinaryExpr {
        return binaryExprToNode(expr);
    }
    // pr-todo: add the keyword nodes
    else if expr is TypeTestExpr {
        childNodes = [exprToNode(expr.left), typeDescToNode(expr.td)];
    }
    else if expr is ErrorConstructorExpr {
        childNodes = [exprToNode(expr.message)];
    }
    else if expr is FunctionCallExpr {
        childNodes = [];
        childNodes.push({ name: expr.funcName, pos: expr.startPos });
        childNodes.push({ token: "(", pos: expr.openParenPos });
        foreach Expr arg in expr.args {
            childNodes.push(exprToNode(arg));
        }
        childNodes.push({ token: ")", pos: expr.endPos });
    }
    // pr-todo: refactor the fallowing out to a function
    else if expr is MethodCallExpr {
        childNodes = [exprToNode(expr.target)];
        // pr-todo: refactor this part out
        childNodes.push({ token: "(", pos: expr.openParenPos });
        childNodes.push(...from Expr arg in expr.args select exprToNode(arg));
        childNodes.push({ token: ")"});
    }
    else if expr is ListConstructorExpr {
        childNodes = [];
        childNodes.push({ token: "[", pos: expr.startPos });
        childNodes.push(...from Expr member in expr.members select exprToNode(member));
        childNodes.push({ token: "]", pos: expr.endPos });
    }
    else if expr is MappingConstructorExpr {
        childNodes = [];
        childNodes.push({ token: "{", pos: expr.startPos });
        childNodes.push(...from Field f in expr.fields select fieldToNode(f));
        childNodes.push({ token: "}", pos: expr.startPos });
    }
    else if expr is MemberAccessExpr {
        childNodes = from Expr each in [expr.container, expr.index] select exprToNode(each);
    }
    else if expr is FieldAccessExpr {
        childNodes = [exprToNode(expr.container)];
    }
    else if expr is TypeCastExpr {
        childNodes = [typeDescToNode(expr.td), exprToNode(expr.operand)];
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
    else {
        childNodes = [exprToNode(expr.operand)];
    }
    return { childNodes, astNode: expr };
}

type TerminalExpr ConstValueExpr|NumericLiteralExpr;
function terminalExprToNode(TerminalExpr expr) returns TerminalSyntaxNode {
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

function binaryExprToNode(BinaryExpr expr) returns SyntaxNode {
    SyntaxNode[] childNodes = [exprToNode(expr.left)];
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
    childNodes.push(exprToNode(expr.right));
    return { astNode: expr, childNodes };
}

function fieldToNode(Field f) returns SyntaxNode {
    return { childNodes: [exprToNode(f.value)], astNode: f };
}

function typeDescToNode(TypeDesc td) returns SyntaxNode {
    SyntaxNode[] childNodes;
    // pr-todo: add fixed tokens
    if td is TerminalTypeDesc {
        return addTerminalTypeDescNode(td);
    }
    if td is TupleTypeDesc {
        childNodes = from TypeDesc member in td.members select typeDescToNode(member);
        TypeDesc? rest = td.rest;
        if rest != () {
            childNodes.push(typeDescToNode(rest));
        }
    }
    else if td is ArrayTypeDesc {
        childNodes = [typeDescToNode(td.member)];
        //pr-todo: add dimension nodes
    }
    else if td is MappingTypeDesc {
        childNodes = from FieldDesc fd in td.fields select addFieldDescNode(fd);
        TypeDesc|INCLUSIVE_RECORD_TYPE_DESC? rest = td.rest;
        if rest is TypeDesc {
            childNodes.push(typeDescToNode(rest));
        }
    }
    else if td is FunctionTypeDesc {
        childNodes = from FunctionTypeParam param in td.params select addFunctionTypeParamNode(param);
        childNodes.push(typeDescToNode(td.ret));
    }
    else if td is BinaryTypeDesc {
        childNodes = [typeDescToNode(td.left), typeDescToNode(td.right)];
    }
    else if td is ErrorTypeDesc {
        childNodes = [typeDescToNode(td.detail)];
    }
    else if td is XmlSequenceTypeDesc {
        childNodes = [typeDescToNode(td.constituent)];
    }
    else if td is TableTypeDesc {
        childNodes = [typeDescToNode(td.row)];
    }
    else {
        childNodes = [typeDescToNode(td.td)];
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
    return { childNodes: [typeDescToNode(fd.typeDesc)], astNode: fd };
}

function addFunctionTypeParamNode(FunctionTypeParam param) returns SyntaxNode {
    return { childNodes: [typeDescToNode(param.td)], astNode: param };
}
