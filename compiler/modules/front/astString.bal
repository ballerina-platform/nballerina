import wso2/nballerina.err;


// join words without space
const CLING = ();
// line feed
const LF = 0;
// line feed and indent
const LF_INDENT = 1;
// line feed and outdent
const LF_OUTDENT = -1;

type Word string|LF_INDENT|LF_OUTDENT|LF|CLING;

function modulePartToWords(Word[] w, ModulePart mod) {
     ImportDecl? im = mod.importDecl;
    if im != () {
        w.push("import", im.org, CLING, "/", CLING, im.module, ";");
    }
    foreach var def in mod.defs {
        if def is FunctionDef {
            functionDefToWords(w, def);
        }
        else {
            // XXX type defs are not part of the current subset
        }
    }
}

function functionDefToWords(Word[] w, FunctionDef func) {
    w.push("function");
    if func.vis != () {
        w.push(<Word>func.vis);
    }
    w.push(func.name, CLING, "(");
    boolean firstArg = true;
    foreach int i in 0..<func.typeDesc.args.length() {
        if i != 0 {
            w.push(",");
        }
        typeDescToWords(w, func.typeDesc.args[i]);
        w.push(func.paramNames[i]);
        firstArg = false;
    }
    w.push(")");
    if !(func.typeDesc.ret is "()") {
        w.push("returns");
        typeDescToWords(w, func.typeDesc.ret);
    }
    blockToWords(w, func.body);
}

function stmtToWords(Word[] w, Stmt stmt) {
    if stmt is VarDeclStmt {
        typeDescToWords(w, stmt.td);
        w.push(stmt.varName, "=");
        exprToWords(w, stmt.initExpr);
        w.push(";");
    } 
    else if stmt is ReturnStmt {
        w.push("return");
        Expr ret = stmt.returnExpr;
        if !(ret is SimpleConstExpr) || ret.value != () {
            exprToWords(w, stmt.returnExpr);
        }
        w.push(";");
    }
    else if stmt is AssignStmt {
        w.push(stmt.varName, "=");
        exprToWords(w, stmt.expr);
        w.push(";");
    }
    else if stmt is IfElseStmt {
        w.push("if");
        exprToWords(w, stmt.condition);
        blockToWords(w, stmt.ifTrue);
        if stmt.ifFalse.length() == 1 &&  stmt.ifFalse[0] is IfElseStmt{
            w.push(<Word>LF, "else");
            stmtToWords(w, stmt.ifFalse[0]);
        }
        else if stmt.ifFalse.length() > 0 {
            w.push(<Word>LF, "else");
            blockToWords(w, stmt.ifFalse);
        }
    }
    else if stmt is WhileStmt {
        w.push("while");
        exprToWords(w, stmt.condition);
        blockToWords(w, stmt.body);
    }
    else if stmt is BreakStmt || stmt is ContinueStmt {
        w.push(stmt, ";");
    }
    else {
        functionCallToWords(w, stmt);
        w.push(";");
    }
}

function blockToWords(Word[] w, Stmt[] body) {
    w.push("{");
    boolean firstInBlock = true;
    foreach var stmt in body {
        w.push(<Word>(firstInBlock ? LF_INDENT : LF));
        firstInBlock = false;
        stmtToWords(w, stmt);
    }
    w.push(<Word>(firstInBlock ? LF :LF_OUTDENT), "}");
}

function typeDescToWords(Word[] w, TypeDesc td) {
    if td is string {
        w.push(td);
    }
    else {
        panic err:unimplemented(`typedesc not supported ${(typeof td).toString()}`);
    }
}

function exprsToWords(Word[] w, Expr[] exprs) {
    boolean firstExpr = true;
    foreach var expr in exprs {
        if !firstExpr {
            w.push(",");
        }
        exprToWords(w, expr);
        firstExpr = false;
    }
}

function exprToWords(Word[] w, Expr expr, boolean wrap = false) {
    if expr is SimpleConstExpr {
        if expr.value == () {
            w.push("(", ")");
        }
        else {
            w.push(expr.value.toString());
        }
    } 
    else if expr is UnaryExpr {
        if wrap {
            w.push("(");
        }
        w.push(expr.op, CLING);
        exprToWords(w, expr.operand, true);
        if wrap {
            w.push(")");
        }
    }
    else if expr is FunctionCallExpr {
        functionCallToWords(w, expr);
    }
    else if expr is BinaryExpr {
        if wrap {
            w.push("(");
        }
        exprToWords(w, expr.left, true);
        w.push(expr.op);
        exprToWords(w, expr.right, true);
        if wrap {
            w.push(")");
        }
    }
    else {
        w.push(expr.varName);
    }
}

function functionCallToWords(Word[] w, FunctionCallExpr func) {
    if func.prefix != () {
        w.push(func.prefix, ":");
    }
    w.push(func.funcName, CLING, "(");
    exprsToWords(w, func.args);
    w.push(")");
}

function wordsToString(Word[] s) returns string {
    string[] buf = [];
    int level = 0;
    boolean firstInLine = true;
    boolean clingNext = false;
    foreach var a in s {
        if a is string {
            if !firstInLine && !alwaysClingRight(a) && !clingNext {
                buf.push(" ");
            }
            clingNext = false;
            firstInLine = false;
            buf.push(a);
            
            if alwaysClingLeft(a) {
                clingNext = true;
            }
        }
        else if a is CLING {
            clingNext = true;
        }
        else {
            level += a;
            firstInLine = true;
            buf.push("\n");
            foreach int i in 0..<level {
                buf.push("    ");
            }
        }
    }
    return "".'join(...buf);
}

function alwaysClingLeft(string a) returns boolean {
    return a == "(" || a == ":";
}

function alwaysClingRight(string a) returns boolean {
    return a == ";" || a == ":" || a == ")" || a == ",";
}
