
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

function parseTypeDesc(Tokenizer tok) returns TypeDesc|ParseError {
    if tok.current() == "function" {
        return parseFunction(tok);
    }
    return parseUnion(tok);
}

function parseUnion(Tokenizer tok) returns TypeDesc|ParseError {
    TypeDesc td = check parseIntersection(tok);
    while tok.current() == "|" {
        check tok.advance();
        TypeDesc right = check parseIntersection(tok);
        BinaryTypeDesc bin = { op: "|", left: td, right };
        td = bin;
    }
    return td;
}

function parseIntersection(Tokenizer tok) returns TypeDesc|ParseError {
    TypeDesc td = check parsePostfix(tok);
    while tok.current() == "&" {
        check tok.advance();
        TypeDesc right = check parsePostfix(tok);
        BinaryTypeDesc bin = { op: "&", left: td, right };
        td = bin;
    }
    return td;
}

function parsePostfix(Tokenizer tok) returns TypeDesc|ParseError {
    TypeDesc td = check parsePrimary(tok);
    while true {
        if tok.current() == "?" {
            check tok.advance();
            BinaryTypeDesc bin =  { op: "|", left: td, right: "()" };
            td = bin;
        }
        else if tok.current() == "[" {
            check tok.advance();
            check tok.expect("]");
            ListTypeDesc list = { members: [], rest: td };
            td = list;
        }
        else {
            break;
        }
    }
    return td;
}

final map<BuiltinIntSubtypeDesc> BUILTIN_INT_SUBTYPES = {
    Signed8: "sint8",
    Signed16: "sint16",
    Signed32: "sint32",
    Unsigned8: "uint8",
    Unsigned16: "uint16",
    Unsigned32: "uint32"
};

// Tokenizer is on first token of the type descriptor
// Afterwards it is on the token immediately following the type descriptor
function parsePrimary(Tokenizer tok) returns TypeDesc|ParseError {
    Token? cur = tok.current();
    match cur {
        "(" => {
            check tok.advance();
            if tok.current() == ")" {
                check tok.advance();
                return "()";
            }
            TypeDesc td = check parseTypeDesc(tok);
            check tok.expect(")");
            return td;
        }
        "boolean"
        | "decimal"
        | "float"
        | "string"
        | "xml"
        | "typedesc"
        | "handle"
        | "any"
        | "never"
        | "json"
        |  "readonly" => {
            check tok.advance();
            // JBUG should not need cast #30191
            return <LeafTypeDesc>cur;
        }
        "byte" => {
            check tok.advance();
            return "uint8";
        }
        "[" => {
            return parseTuple(tok);
        }
        "map" => {
            check tok.advance();
            return <MappingTypeDesc>{ rest: check parseTypeParam(tok), fields: [] };
        }
        "error" => {
            check tok.advance();
            if tok.current() != "<" {
                return "error";
            }
            return <ErrorTypeDesc>{ detail: check parseTypeParam(tok) };
        }        
        "record" => {
            return parseRecord(tok);         
        }
        "int" => {
            check tok.advance();
            if tok.current() != ":" {
                return "int";
            }
            check tok.advance();
            Token? t = tok.current();
            if t is [IDENTIFIER, string] {
                var name = t[1];
                BuiltinIntSubtypeDesc? desc = BUILTIN_INT_SUBTYPES[name];
                if !(desc is ()) {
                    check tok.advance();
                    return desc;
                }
                return tok.err("unrecognized integer subtype '" + name + "'");
            }
            // match falls through to parseError
        }
        // JBUG language server sometimes flags `var ref`
        // here as something like
        // "some variable cannot repeat in a match pattern"
        [IDENTIFIER, var ref] => {
            TypeDescRef r = { ref, pos: tok.currentPos() };
            check tok.advance();
            return r;
        }
        [STRING_LITERAL, var str] => {
            check tok.advance();
            return <SingletonTypeDesc>{ value: str };
        }
        "true" => {
            check tok.advance();
            return <SingletonTypeDesc>{ value: true };
        }
        "false" => {
            check tok.advance();
            return <SingletonTypeDesc>{ value: false };
        }
    }
    return parseError(tok);
}

function parseTypeParam(Tokenizer tok) returns TypeDesc|ParseError {
    check tok.expect("<");
    TypeDesc td = check parseTypeDesc(tok);
    check tok.expect(">");
    return td;
}

// current token is "function"
function parseFunction(Tokenizer tok) returns TypeDesc|ParseError {
    // skip "function"
    check tok.advance();
    check tok.expect("(");
    TypeDesc[] args = [];
    while true {
        if tok.current() == ")" {
            break;
        }
        // JBUG inlining td in args.push gets an error #30737
        // invalid usage of the 'check' expression operator: no matching error return type(s) in the enclosing invokable
        TypeDesc td = check parseTypeDesc(tok);
        args.push(td);
        if tok.current() == "," {
            check tok.advance();
        }
    }
    // on ")"
    check tok.advance();
    TypeDesc ret;
    if tok.current() == "returns" {
        check tok.advance();
        ret = check parseTypeDesc(tok);
    }
    else {
        ret = "()";
    }
    return <FunctionTypeDesc>{ args, ret };
}

// current token is []
function parseTuple(Tokenizer tok) returns ListTypeDesc|ParseError {
    TypeDesc[] members = [];
    TypeDesc rest = "never";
    check tok.advance();
    if tok.current() != "]" {
        while true {
            TypeDesc td = check parseTypeDesc(tok);
            if tok.current() == "..." {
                rest = td;
                check tok.advance();
            }
            else {
                members.push(td);
                if tok.current() == "," {
                    check tok.advance();
                    continue;
                }
                if tok.current() == "]" {
                    break;
                }
            }
            return parseError(tok);
        }
    }
    check tok.advance();
    return {members, rest};
}

function parseRecord(Tokenizer tok) returns MappingTypeDesc|ParseError {
    check tok.advance();
    check tok.expect("{|");
    FieldDesc[] fields = [];
    TypeDesc? rest = ();
    while tok.current() != "|}" {
        if !(rest is ()) {
            return parseError(tok);
        }
        TypeDesc td = check parseTypeDesc(tok);
        match tok.current() {
            "..." => {
                rest = td;
                check tok.advance();
            }
            [IDENTIFIER, var name] => {
                check tok.advance();
                fields.push({name, typeDesc: td});
            }
            _ => {
                return parseError(tok);
            }
        }
        check tok.expect(";");
    }
    check tok.advance();
    return { fields, rest: rest ?: "never" };
}

function parseError(Tokenizer tok) returns ParseError {
    string message = "parse error";
    Token? t = tok.current();
    if t is string {
        // JBUG cast needed #30734
        message += " at '" + <string>t + "'";
    }
    return tok.err(message);
}