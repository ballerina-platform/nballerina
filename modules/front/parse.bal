// Parse a module

function parseModule(string str) returns Module|ParseError {
    Tokenizer tok = new(str);
    check tok.advance();
    Module mod = table [];
    while tok.current() != () {
        check parseModuleLevel(tok, mod);
    }
    return mod;
}

function parseModuleLevel(Tokenizer tok, Module mod) returns ParseError? {
    string kw;
    if tok.current() == "type" {
        kw = "type";
    }
    else if tok.current() == "const" {
        kw = "const";
    }
    else {
        return parseError(tok);
    } 
    check tok.advance();
    Token? t = tok.current();
    if t is [IDENTIFIER, string] {
        string name = t[1];
        Position pos = tok.currentPos();
        check tok.advance();
        // JBUG putting check before conditional gets an error #30737
        TypeDesc td = kw == "type" ? check parseTypeDesc(tok) : check parseConstExpr(tok);
        mod.add({name, td, pos});
        check tok.expect(";");
    }
    else {
        return parseError(tok);
    }
}

function parseConstExpr(Tokenizer tok) returns TypeDesc|ParseError {
    check tok.expect("=");
    string sign = "";
    if tok.current() == "-" {
        check tok.advance();
        sign = "-";
    }
    match tok.current() {
        [DECIMAL_NUMBER, var digits] => {
            error|int res = int:fromString(sign + digits);
            if res is error {
                return error ParseError("invalid number", res, pos=tok.currentPos());
            }
            else {
                check tok.advance();
                return <SingletonTypeDesc>{ value: res };
            }
            // JBUG this gets a bad sad #30738
            // NullPointerException in BIROptimizer$RHSTempVarOptimizer.visit
            // int n;
            // do {
            //     n = check int:fromString(sign + digits);
            // } on fail var cause {
            //     return error ParseError("invalid number", cause, pos=tok.currentPos());
            // }
            // check tok.advance();
            // return <SingletonTypeDesc>{ value: n };         
        }
    }
    return parseError(tok);
}

function parseError(Tokenizer tok, string? detail = ()) returns ParseError {
    string message = "parse error" + (detail != () ?  " \""+ detail + "\" ": "");
    Token? t = tok.current();
    if t is string {
        // JBUG cast needed #30734
        message += " at '" + <string>t + "'";
    }
    return tok.err(message);
}
