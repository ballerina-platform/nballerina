// Parse a module
import wso2/nballerina.err;
import wso2/nballerina.types as t;

function parseModule(string str) returns Module|err:Syntax {
    Tokenizer tok = new(str);
    check tok.advance();
    Module mod = table [];
    while tok.current() != () {
        check parseModuleLevel(tok, mod);
    }
    return mod;
}

// This is a mess
function parseModuleLevel(Tokenizer tok, Module mod) returns err:Syntax? {
    string kw;
    if tok.current() == "type" {
        kw = "type";
    }
    else if tok.current() == "const" {
        kw = "const";
    }
    else if tok.current() == "function" {
        kw = "function";
    }
    else {
        return parseError(tok);
    } 
    check tok.advance();
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        string name = t[1];
        err:Position pos = tok.currentPos();
        check tok.advance();
        // JBUG switching the order of these gets a bad, sad
        if kw != "function" {
            // JBUG putting check before conditional gets an error #30737
            TypeDesc td = kw == "type" ? check parseTypeDesc(tok) : check parseConstExpr(tok);
            mod.add({name, td, pos});
            check tok.expect(";");
        }
        else {
            string[] paramNames = [];
            FunctionTypeDesc typeDesc = check parseFunctionTypeDesc(tok, paramNames);
            Stmt[] body = check parseBlock(tok);
            FunctionDef def = { name, paramNames, typeDesc, pos, body };
            mod.add(def);
        }
    }
    else {
        return parseError(tok);
    }
}

// Called with current token which should be "{"
// Consumes closing "}"
function parseBlock(Tokenizer tok) returns err:Syntax|Stmt[] {
    Stmt[] stmts = [];
    check tok.expect("{");
    while true {
        Token? t = tok.current();
        if t == "}" {
            break;
        }
        else if t == "int" {
            stmts.push(check parseVarDeclStmt(tok, t));
        }
        else if t is [IDENTIFIER, string] {
            stmts.push(check parseAssignStmt(tok, t[1]));
        }
        else if t is "return" {
            stmts.push(check parseReturnStmt(tok));
        }
        else {
            return parseError(tok);
        }
    }
    // Get here after we have seen "}"
    check tok.advance();
    return stmts;
}

// Called with current token of "int"
function parseVarDeclStmt(Tokenizer tok, LeafTypeDesc td) returns VarDeclStmt|err:Syntax {
    check tok.advance();
    Token? t = tok.current();
    string varName;
    if t is [IDENTIFIER, string] {
        varName = t[1];
    }
    else {
        return parseError(tok);
    }
    check tok.advance();
    check tok.expect("=");
    Expr initExpr = check parseExpr(tok);
    check tok.expect(";");
    return { td, varName, initExpr, semType: t:INT};
}

function parseAssignStmt(Tokenizer tok, string varName) returns AssignStmt|err:Syntax {
    check tok.advance();
    check tok.expect("=");
    Expr expr = check parseExpr(tok);
    check tok.expect(";");
    return { varName, expr };
}

function parseReturnStmt(Tokenizer tok) returns ReturnStmt|err:Syntax {
    check tok.advance();
    Expr returnExpr;
    if tok.current() == ";" {
        returnExpr = <SimpleConstExpr>{ value: () };
        check tok.advance();
    }
    else {
        returnExpr = check parseExpr(tok);
        check tok.expect(";");
    }
    return <ReturnStmt> { returnExpr };
}

function parseExpr(Tokenizer tok) returns Expr|err:Syntax {
    return parseAdditiveExpr(tok);
}

function parseAdditiveExpr(Tokenizer tok) returns Expr|err:Syntax {
    Expr expr = check parsePrimaryExpr(tok);
    while true {
        Token? t = tok.current();
        if t is ("+"|"-") {
            BinaryExprOp op = t;
            check tok.advance();
            Expr right = check parsePrimaryExpr(tok);
            BinaryExpr bin = { op, left: expr, right };
            expr = bin;
        }
        else {
            break;
        }
    }
    return expr;
}

function parsePrimaryExpr(Tokenizer tok) returns VarRefExpr|SimpleConstExpr|err:Syntax {
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        VarRefExpr expr = { varName: t[1] };
        check tok.advance();
        return expr;
    }
    else if t is [DECIMAL_NUMBER, string] {
        SimpleConstExpr expr = { value: check parseDigits(tok, t[1]) };
        return expr;
    }
    else {
        return parseError(tok);
    }
}


function parseConstExpr(Tokenizer tok) returns TypeDesc|err:Syntax {
    check tok.expect("=");
    string sign = "";
    if tok.current() == "-" {
        check tok.advance();
        sign = "-";
    }
    match tok.current() {
        [DECIMAL_NUMBER, var digits] => {
            SingletonTypeDesc td = { value: check parseDigits(tok, sign + digits) };
            return td;
            // JBUG this gets a bad sad #30738
            // NullPointerException in BIROptimizer$RHSTempVarOptimizer.visit
            // int n;
            // do {
            //     n = check int:fromString(sign + digits);
            // } on fail var cause {
            //     return err:syntax("invalid number", cause, pos=tok.currentPos());
            // }
            // check tok.advance();
            // return <SingletonTypeDesc>{ value: n };         
        }
    }
    return parseError(tok);
}

function getSemType(TypeDesc td) returns t:SemType|err:Syntax {
    if td is BuiltinIntSubtypeDesc || td is "int" {
        return t:INT;
    } else if td is "boolean" {
        return t:BOOLEAN;
    } else if td is "()" {
        return t:NIL;
    }
    return err:syntax("Unhandle Typedec \"" + td.toString() + "\"");
}

function parseError(Tokenizer tok, string? detail = ()) returns err:Syntax {
    string message = "parse error" + (detail != () ? " \"" + detail + "\" " : "");
    Token? t = tok.current();
    if t is string {
        // JBUG cast needed #30734
        message += " at '" + t + "'";
    }
    return tok.err(message);
}
