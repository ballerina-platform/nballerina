// Parse a module
import wso2/nballerina.err;
import wso2/nballerina.types as t;

function parseSourcePart(string str) returns ModuleLevelDef[]|err:Syntax {
    ModuleLevelDef[] defs = [];
    Tokenizer tok = new(str);
    check tok.advance();
    while tok.current() != () {
        defs.push(check parseModuleLevelConstructs(tok));
    }
    return defs;
}


function parseModuleLevelConstructs(Tokenizer tok) returns ModuleLevelDef|err:Syntax {

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
        SimpleConstExpr constExpr = check parseConstExpr(tok);
        int|boolean? value = constExpr.value; // TODO: Support string type
        if value != () {
            SingletonTypeDesc td = {value};
            return {name, td, pos};
        }
        check tok.expect(";");
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
