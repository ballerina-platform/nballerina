import wso2/nballerina.err;

function functionDefToJson(FunctionDef func) returns json {
    return [ "function",
             func.vis ?: "non-public",
             func.name,
             func.typeDesc.args.map(typeDescToJson),
             typeDescToJson(func.typeDesc.ret),
             func.body.map(stmtToJson) ];
}

function stmtToJson(Stmt stmt) returns json {
    if stmt is VarDeclStmt {
        return ["var-decl", typeDescToJson(stmt.td), stmt.varName, exprToJson(stmt.initExpr)];
    }
    else if stmt is ReturnStmt {
        return ["ret", exprToJson(stmt.returnExpr)];
    }
    panic err:unimplemented(`stmt not supported ${(typeof stmt).toString()}`);
}

function typeDescToJson(TypeDesc td) returns json {
    if td is string {
        return td;
    }
    panic err:unimplemented(`typedesc not supported ${(typeof td).toString()}`);
}

function exprToJson(Expr expr) returns json {
    if expr is SimpleConstExpr {
        return ["const", expr.value];
    }
    else if expr is VarRefExpr {
        return ["ref", expr.varName];
    }
    panic err:unimplemented(`expr not supported ${(typeof expr).toString()}`);
}