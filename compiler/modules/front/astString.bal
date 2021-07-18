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
        exprToWords(w, stmt.lValue);
        w.push("=");
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
    else if stmt is ForeachStmt {
        w.push("foreach", "int");
        w.push(stmt.varName);
        w.push("in");
        exprToWords(w, stmt.range.lower, true);
        w.push("..<");
        exprToWords(w, stmt.range.upper, true);
        blockToWords(w, stmt.body);
    }
    else if stmt is BreakStmt || stmt is ContinueStmt {
        w.push(stmt, ";");
    }
    else {
        // This deals with function call and method call
        exprToWords(w, stmt);
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

function typeDescToWords(Word[] w, TypeDesc td, boolean wrap = false) {
    if td is string {
        w.push(td);
        return;
    }
    else if td is TypeDescRef {
        w.push(td.ref);
        return;
    }

    if wrap {
        w.push("(");
    }

    if td is ListTypeDesc {
        typeDescToWords(w, td.rest, true);
        w.push(CLING);
        w.push("[", "]");
    }
    else if td is BinaryTypeDesc {
        typeDescToWords(w, td.left, true);
        w.push(td.op);
        typeDescToWords(w, td.right, true);
    }
    else {
        panic err:unimplemented(`typedesc not supported ${(typeof td).toString()}`);
    }

    if wrap {
        w.push(")");
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
        var val = expr.value;
        if val == () {
            w.push("(", ")");
        }
        else if val is string {
            w.push(stringLiteral(val));
        }
        else {
            w.push(val.toString());
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
        if expr.prefix != () {
            w.push(expr.prefix, ":", CLING);
        }
        w.push(expr.funcName, CLING, "(");
        exprsToWords(w, expr.args);
        w.push(")");
    }
    else if expr is BinaryExpr {
        if wrap {
            w.push("(");
        }
        exprToWords(w, expr.left, true);
        string op;
        if expr is BinaryArithmeticExpr {
            op = expr.arithmeticOp;
        }
        else if expr is BinaryBitwiseExpr {
            op = expr.bitwiseOp;
        }
        else if expr is BinaryRelationalExpr {
            op = expr.relationalOp;
        }
        else {
            op = expr.equalityOp;
        }
        w.push(op);
        exprToWords(w, expr.right, true);
        if wrap {
            w.push(")");
        }
    }
    else if expr is TypeCastExpr {
        if wrap {
            w.push("(");
        }
        w.push("<", CLING);
        typeDescToWords(w, expr.td);
        w.push(CLING, ">", CLING);
        exprToWords(w, expr.operand, true);
        if wrap {
            w.push(")");
        }
    }
    else if expr is ListConstructorExpr {
        w.push("[");
        exprsToWords(w, expr.members);
        w.push("]");
    }
    else if expr is MappingConstructorExpr {
        w.push("{");
        boolean isFirst = true;
        foreach var f in expr.fields {
            if isFirst {
                isFirst = false;
            }
            else {
                w.push(",");
            }
            w.push(stringLiteral(f.name), ":");
            exprToWords(w, f.value);
        }
        w.push("}");
    }
    else if expr is MemberAccessExpr {
        if wrap {
            w.push("(");
        }
        exprToWords(w, expr.container, true);
        w.push(CLING, "[");
        exprToWords(w, expr.index, false);
        w.push("]");
        if wrap {
            w.push(")");
        }
    }
    else if expr is MethodCallExpr {
         if wrap {
            w.push("(");
        }
        exprToWords(w, expr.target, true);
        w.push(".", expr.methodName, CLING, "(");
        exprsToWords(w, expr.args);
        w.push(")");
        if wrap {
            w.push(")");
        }
    }
    else {
        w.push(expr.varName);
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
    // JBUG `foreach var ch in str` gives wrong ch for some str like "\u{10FFFF}""
    int[] cps = str.toCodePointInts();
    foreach int cp in cps {
        // JBUG can't lookup map with string:Char
        string ch = checkpanic string:fromCodePointInt(cp);
        string:Char? singleEscaped =  REVERSE_ESCAPES[ch];
        if singleEscaped is () {
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

function wordsToString(Word[] s) returns string {
    string[] buf = [];
    int level = 0;
    boolean firstInLine = true;
    boolean clingNext = false;
    foreach var a in s {
        if a is string {
            if !firstInLine && !alwaysClingBefore(a) && !clingNext {
                buf.push(" ");
            }
            clingNext = false;
            firstInLine = false;
            buf.push(a);
            
            if alwaysClingAfter(a) {
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

function alwaysClingAfter(string a) returns boolean {
    return a == "(" || a == "." || a == "[";
}

function alwaysClingBefore(string a) returns boolean {
    return a == ";" || a == ":" || a == "." || a == ")" || a == "," || a == "]";
}
