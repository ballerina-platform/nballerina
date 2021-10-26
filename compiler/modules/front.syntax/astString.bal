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
    ImportDecl[] importDecls = mod.importDecls;
    foreach int i in 0 ..< importDecls.length() {
        ImportDecl decl = importDecls[i];
        if i > 0 {
            // JBUG #33335 cast
            w.push(<Word>LF);
        }
        w.push("import");
        if decl.org is string {
            w.push(decl.org, CLING, "/", CLING);
        }
        foreach int j in 0 ..< decl.names.length() {
            if j > 0 {
                w.push(".");
            }
            string name = decl.names[j];
            w.push(name);
        }
        if decl.prefix is string {
            w.push("as", decl.prefix);
        }
        w.push(";");
    }
    foreach var defn in mod.defns {
        if defn is FunctionDefn {
            functionDefnToWords(w, defn);
        }
        else if defn is ConstDefn {
            constDefnToWords(w, defn);
        }
        else {
            typeDefnToWords(w, defn);
        }
    }
}

function functionDefnToWords(Word[] w, FunctionDefn func) {
    if func.vis != () {
        w.push(<Word>func.vis);
    }
    w.push("function");
    w.push(func.name, CLING, "(");
    boolean firstArg = true;
    foreach int i in 0 ..< func.typeDesc.args.length() {
        if i != 0 {
            w.push(",");
        }
        typeDescToWords(w, func.typeDesc.args[i]);
        w.push(func.paramNames[i]);
        firstArg = false;
    }
    w.push(")");
    TypeDesc funcRetTd = func.typeDesc.ret;
    if !(funcRetTd is BuiltinTypeDesc && funcRetTd.builtinTypeName == "null") {
        w.push("returns");
        typeDescToWords(w, func.typeDesc.ret);
    }
    blockToWords(w, func.body);
}

function constDefnToWords(Word[] w, ConstDefn defn) {
    if defn.vis != () {
        w.push(<Word>defn.vis);
    }
    w.push("const", defn.name, "=");
    exprToWords(w, defn.expr);
    w.push(";");
    // JBUG #33335 cast
    w.push(<Word>LF);
}

function typeDefnToWords(Word[] w, TypeDefn defn) {
    if defn.vis != () {
        w.push(<Word>defn.vis);
    }
    w.push("type", defn.name);
    typeDescToWords(w, defn.td);
    w.push(";");
    // JBUG #33335 cast
    w.push(<Word>LF);
}

function stmtToWords(Word[] w, Stmt stmt) {
    if stmt is VarDeclStmt {
        if stmt.isFinal {
            w.push("final");
        }
        typeDescToWords(w, stmt.td);
        string? varName = stmt.varName;
        if varName is WILDCARD {
            w.push("_");
        }
        else {
            w.push(varName);
        }
        w.push("=");
        exprToWords(w, stmt.initExpr);
        w.push(";");
    }
    else if stmt is ReturnStmt {
        w.push("return");
        Expr? retExpr = stmt.returnExpr;
        if retExpr != () {
            exprToWords(w, retExpr);
        }
        w.push(";");
    }
    else if stmt is PanicStmt {
        w.push("panic");
        exprToWords(w, stmt.panicExpr);
        w.push(";");
    }
    else if stmt is AssignStmt {
        LExpr|WILDCARD lValue = stmt.lValue;
        if lValue is WILDCARD {
            w.push("_");
        }
        else {
            lExprToWords(w, lValue);
        }
        w.push("=");
        exprToWords(w, stmt.expr);
        w.push(";");
    }
    else if stmt is CompoundAssignStmt {
        lExprToWords(w, stmt.lValue);
        w.push(stmt.op, CLING, "=");
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
    else if stmt is MatchStmt {
        w.push("match");
        exprToWords(w, stmt.expr);
        w.push("{");
        boolean firstClause = true;
        foreach var clause in stmt.clauses {
            if firstClause {
                w.push(<Word>LF_INDENT);
                firstClause = false;
            }
            else {
                w.push(<Word>LF);
            }
            boolean firstPattern = true;
            foreach var pattern in clause.patterns {
                if firstPattern {
                    firstPattern = false;
                }
                else {
                    w.push("|");
                }
                if pattern is string {
                    w.push(pattern);
                }
                else {
                    exprToWords(w, pattern.expr);
                }
            }
            w.push("=>");
            blockToWords(w, clause.block);
        }
        w.push(<Word>(firstClause ? LF : LF_OUTDENT), "}");
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
    else if stmt is BreakContinueStmt {
        w.push(stmt.breakContinue, ";");
    }
    else if stmt is CheckingStmt {
        w.push(stmt.checkingKeyword);
        exprToWords(w, stmt.operand);
        w.push(";");
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
    w.push(<Word>(firstInBlock ? LF : LF_OUTDENT), "}");
}

function typeDescToWords(Word[] w, TypeDesc td, boolean|BinaryTypeOp wrap = false) {
    if td is BuiltinTypeDesc {
        if td.builtinTypeName == "null" {
            w.push("()");
        }
        else {
            w.push(td.builtinTypeName);
        }
        return;
    }
    else if td is TypeDescRef {
        string? prefix = td.prefix;
        if prefix != () {
            w.push(prefix, ":", CLING);
        }
        w.push(td.typeName);
        return;
    }
    else if td is MappingTypeDesc {
        w.push("map", CLING, "<", CLING);
        TypeDesc? rest = td.rest;
        if rest == () {
            typeDescToWords(w, { startPos: td.startPos, endPos: td.endPos, builtinTypeName: "never" });
        }
        else {
            typeDescToWords(w, rest);
        }
        w.push(CLING, ">");
        return;
    }
    else if td is ListTypeDesc {
        if wrap != false {
            w.push("(");
        }
        typeDescToWords(w, td.rest, true);
        w.push(CLING);
        w.push("[", "]");
        if wrap != false {
            w.push(")");
        }
    }
    else if td is BinaryTypeDesc {
        // subset 6 does not allow parentheses
        // so we need to take care not to add them unnecessarily
        TypeDesc rightTd = td.right;
        if td.op === "|" && rightTd is BuiltinTypeDesc && rightTd.builtinTypeName === "null" {
            typeDescToWords(w, td.left, wrap);
            w.push(CLING, "?");
        }
        else {
            boolean noWrap = wrap == false || wrap == td.op;
            if !noWrap {
                w.push("(");
            }
            typeDescToWords(w, td.left, td.op);
            w.push(td.op);
            typeDescToWords(w, td.right, td.op);
            if !noWrap {
                w.push(")");
            }
        }
    }
    else {
        panic err:impossible(`typedesc not implemented in typeDescToWords: ${td.toString()}`);
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

function lExprToWords(Word[] w, LExpr expr) {
    if expr is VarRefExpr {
        string? prefix = expr.prefix;
        if prefix != () {
            w.push(prefix, ":", CLING);
        }
        w.push(expr.varName);
    }
    else if expr is MemberAccessLExpr {
        lExprToWords(w, expr.container);
        w.push("[");
        exprToWords(w, expr.index, true);
        w.push("]");
    }
    else {
        // expr is FieldAccessLExpr
        lExprToWords(w, expr.container);
        w.push(".", expr.fieldName);
    }
}

function exprToWords(Word[] w, Expr expr, boolean wrap = false) {
    if expr is ConstValueExpr {
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
    else if expr is FloatZeroExpr {
        exprToWords(w, expr.expr, wrap);
    }
    else if expr is IntLiteralExpr {
        if expr.base == 16 {
            w.push("0x" + expr.digits.toUpperAscii());
        }
        else {
            w.push(expr.digits);
        }
    }
    else if expr is FpLiteralExpr {
        w.push(expr.untypedLiteral, CLING, expr.typeSuffix);
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
    else if expr is CheckingExpr {
        if wrap {
            w.push("(");
        }
        w.push(expr.checkingKeyword);
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
    else if expr is ErrorConstructorExpr {
        w.push("error", CLING, "(");
        exprToWords(w, expr.message);
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
    else if expr is TypeTestExpr {
        if wrap {
            w.push("(");
        }
        exprToWords(w, expr.left, true);
        if expr.negated {
            w.push("!");
        }
        w.push("is");
        typeDescToWords(w, expr.td);
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
    else if expr is FieldAccessExpr {
        if wrap {
            w.push("(");
        }
        exprToWords(w, expr.container, true);
        w.push(".", expr.fieldName);
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
        // VarRefExpr
        string? prefix = expr.prefix;
        if prefix != () {
            w.push(prefix, ":", CLING);
        }
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

function wordsToLines(Word[] s) returns string[] {
    string[] lines = [];
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
            lines.push("".'join(...buf));
            buf.setLength(0);
            foreach int i in 0..<level {
                buf.push("    ");
            }
        }
    }
    lines.push("".'join(...buf));
    return lines;
}

function alwaysClingAfter(string a) returns boolean {
    return a == "(" || a == "." || a == "[";
}

function alwaysClingBefore(string a) returns boolean {
    return a == ";" || a == ":" || a == "." || a == ")" || a == "," || a == "]";
}

// Useful for debugging
public function exprToString(Expr expr) returns string {
    Word[] words = [];
    exprToWords(words, expr);
    return "\n".'join(...wordsToLines(words));
}
