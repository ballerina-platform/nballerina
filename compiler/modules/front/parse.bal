// Parse a module
import wso2/nballerina.err;
import wso2/nballerina.types as t;

function parseSourcePart(string str) returns ModuleLevelDef[]|err:Syntax {
    ModuleLevelDef[] defs = [];
    Tokenizer tok = new (str);
    check tok.advance();
    while tok.current() != () {
        defs.push(check parseModuleDecl(tok));
    }
    return defs;
}

function parseModuleDecl(Tokenizer tok) returns ModuleLevelDef|err:Syntax {

    Token? cur = tok.current();
    match cur {
        "type" => {
            check tok.advance();
            return completeTypeDefinition(tok);
        }
        "const" => {
            check tok.advance();
            return completeConstDeclaration(tok);
        }
        "function" => {
            check tok.advance();
            return completeFunctionDefinition(tok);
        }
    }
    return parseError(tok);
}

function completeTypeDefinition(Tokenizer tok) returns TypeDef|err:Syntax {

    err:Position pos = tok.currentPos();
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        string name = t[1];
        check tok.advance();
        TypeDesc td = check parseTypeDesc(tok);
        check tok.expect(";");
        return {name, td, pos};
    }
    return parseError(tok);
}

function completeConstDeclaration(Tokenizer tok) returns TypeDef|err:Syntax {

    err:Position pos = tok.currentPos();
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        string name = t[1];
        check tok.advance();
        TypeDesc td = check parseConstExpr(tok);
        check tok.expect(";");
        return {name, td, pos};
    }
    return parseError(tok);
}

function completeFunctionDefinition(Tokenizer tok) returns FunctionDef|err:Syntax {

    err:Position pos = tok.currentPos();
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        string name = t[1];
        check tok.advance();
        string[] paramNames = [];
        FunctionTypeDesc typeDesc = check parseFunctionTypeDesc(tok, paramNames);
        Stmt[] body = check parseStmtBlock(tok);
        FunctionDef def = {name, paramNames, typeDesc, pos, body};
        return def;
    }
    return parseError(tok);
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
            BinaryExpr bin = {op, left: expr, right};
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
        VarRefExpr expr = {varName: t[1]};
        check tok.advance();
        return expr;
    } 
    else if t is [DECIMAL_NUMBER, string] {
        SimpleConstExpr expr = {value: check parseDigits(tok, t[1])};
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
            SingletonTypeDesc td = {value: check parseDigits(tok, sign + digits)};
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

function parseDigits(Tokenizer tok, string signDigits) returns int|err:Syntax {
    error|int res = int:fromString(signDigits);
    if res is error {
        return err:syntax("invalid number", tok.currentPos(), res);
    } 
    else {
        check tok.advance();
        return res;
    }
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
