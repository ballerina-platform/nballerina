import wso2/nballerina.err;

type Code [-1|0|1]|string;

// line feed and indent
Code LF_IN = [1];

// line feed and outdent
Code LF_OUT = [-1];

// line feed
Code LF = [0];

function modulePartToString(ModulePart mod) returns string {
    Code[] c = [];
    foreach var def in mod.defs {
        if def is FunctionDef {
            functionDefToCode(c, def);
        }
    }
    return codeToString(c);
}

function functionDefToCode(Code[] c, FunctionDef func) {
    c.push("function");
    if func.vis != () {
        c.push(<Code>func.vis); // JBUG cast
    }
    c.push(func.name, "(", ")", "returns");
    typeDescToCode(c, func.typeDesc.ret);
    c.push("{", LF_IN);
    foreach var stmt in func.body {
        stmtToCode(c, stmt);
        c.push(";", LF);
    }
    c.push(LF_OUT, "}");
}

function stmtToCode(Code[] c, Stmt stmt) {
    if stmt is VarDeclStmt {
        typeDescToCode(c, stmt.td);
        c.push(stmt.varName, "=");
        exprToCode(c, stmt.initExpr);
    } 
    else if stmt is ReturnStmt {
        c.push("return");
        exprToCode(c, stmt.returnExpr);
    } else {
        panic err:unimplemented(`stmt not supported ${(typeof stmt).toString()}`);
    }
}

function typeDescToCode(Code[] c, TypeDesc td) {
    if td is string {
        c.push(td);
    } else {
        panic err:unimplemented(`typedesc not supported ${(typeof td).toString()}`);
    }
}

function exprToCode(Code[] c, Expr expr) {
    if expr is SimpleConstExpr {
        c.push(expr.value.toString());
    } 
    else if expr is VarRefExpr {
        c.push(expr.varName);
    } else {
        panic err:unimplemented(`expr not supported ${(typeof expr).toString()}`);
    }
}


function codeToString(Code[] s) returns string {
    string[] buf = [];
    int level = 0;
    boolean firstInLine = true;
    foreach var a in s {
        if a is string {
            if !firstInLine {
                buf.push(" ");
            }
            firstInLine = false;
            buf.push(a);
        }
        else {
            level += a[0];
            firstInLine = true;
            buf.push("\n");
            foreach int i in 0..<level {
                buf.push("    ");
            }
        }
    }
    return "".'join(...buf);
}
