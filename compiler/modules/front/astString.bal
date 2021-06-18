import wso2/nballerina.err;

// line feed
const LF = 0;
// line feed and indent
const LF_INDENT = 1;
// line feed and outdent
const LF_OUTDENT = -1;

type Word string|LF_INDENT|LF_OUTDENT|LF;

function modulePartToString(ModulePart mod) returns string {
    Word[] c = [];
    foreach var def in mod.defs {
        if def is FunctionDef {
            functionDefToWords(c, def);
        }
    }
    return wordsToString(c);
}

function functionDefToWords(Word[] c, FunctionDef func) {
    c.push("function");
    if func.vis != () {
        c.push(<Word>func.vis);
    }
    c.push(func.name, "(", ")", "returns");
    typeDescToWords(c, func.typeDesc.ret);
    blockToWords(c, func.body);
}

function stmtToWords(Word[] c, Stmt stmt) {
    if stmt is VarDeclStmt {
        typeDescToWords(c, stmt.td);
        c.push(stmt.varName, "=");
        exprToWords(c, stmt.initExpr);
        c.push(";");
    } 
    else if stmt is ReturnStmt {
        c.push("return");
        exprToWords(c, stmt.returnExpr);
        c.push(";");
    }
    else if stmt is AssignStmt {
        c.push(stmt.varName, "=");
        exprToWords(c, stmt.expr);
        c.push(";");
    }
    else if stmt is IfElseStmt {
        c.push("if");
        exprToWords(c, stmt.condition);
        blockToWords(c, stmt.ifTrue);
        if stmt.ifFalse.length() == 1 &&  stmt.ifFalse[0] is IfElseStmt{
            c.push(<Word>LF, "else");
            stmtToWords(c, stmt.ifFalse[0]);
        }
        else if stmt.ifFalse.length() > 0 {
            c.push(<Word>LF, "else");
            blockToWords(c, stmt.ifFalse);
        }
    }
    else if stmt is WhileStmt {
        c.push("while");
        exprToWords(c, stmt.condition);
        blockToWords(c, stmt.body);
    }
    else if stmt is BreakStmt || stmt is ContinueStmt {
        c.push(stmt, ";");
    }
    else {
        panic err:unimplemented(`stmt not supported ${(typeof stmt).toString()}`);
    }
}

function blockToWords(Word[] c, Stmt[] body) {
    c.push("{");
    boolean firstInBlock = true;
    foreach var stmt in body {
        c.push(<Word>(firstInBlock ? LF_INDENT : LF));
        firstInBlock = false;
        stmtToWords(c, stmt);
    }
    c.push(<Word>LF_OUTDENT, "}");
}

function typeDescToWords(Word[] c, TypeDesc td) {
    if td is string {
        c.push(td);
    }
    else {
        panic err:unimplemented(`typedesc not supported ${(typeof td).toString()}`);
    }
}

function exprToWords(Word[] c, Expr expr) {
    if expr is SimpleConstExpr {
        c.push(expr.value.toString());
    } 
    else if expr is UnaryExpr {
        c.push(expr.op);
        exprToWords(c, expr.operand);
    }
    else if expr is BinaryExpr {
        exprToWords(c, expr.left);
        c.push(expr.op);
        exprToWords(c, expr.right);
    }
    else if expr is VarRefExpr {
        c.push(expr.varName);
    }
    else {
        panic err:unimplemented(`expr not supported ${(typeof expr).toString()}`);
    }
}

function wordsToString(Word[] s) returns string {
    string[] buf = [];
    int level = 0;
    boolean firstInLine = true;
    foreach var a in s {
        if a is string {
            if !firstInLine && !isClingy(a) {
                buf.push(" ");
            }
            firstInLine = false;
            buf.push(a);
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

function isClingy(string a) returns boolean {
    return a == ";" || a == ")";
}