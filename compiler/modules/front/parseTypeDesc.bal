// Parsing of type descriptors
import wso2/nballerina.err;

// This is for the subset we currently support in the compiler
function parseInlineTypeDesc(Tokenizer tok) returns InlineTypeDesc|err:Syntax {
    Token? t = tok.current();
    if t == "any" {
        check tok.advance();
        t = tok.current();
        if t == "[" {
            check tok.advance();
            check tok.expect("]");
            InlineArrayTypeDesc td = {};
            return td;
        }
        return "any";
    }
    else if t is InlineLeafTypeDesc {
        check tok.advance();
        return t;
    }
    return parseError(tok, "expected type descriptor");    
}

function parseTypeDesc(Tokenizer tok) returns TypeDesc|err:Syntax {
    if tok.current() == "function" {
        check tok.advance();
        return parseFunctionTypeDesc(tok);
    }
    return parseUnion(tok);
}

function parseUnion(Tokenizer tok) returns TypeDesc|err:Syntax {
    TypeDesc td = check parseIntersection(tok);
    while tok.current() == "|" {
        check tok.advance();
        TypeDesc right = check parseIntersection(tok);
        BinaryTypeDesc bin = { op: "|", left: td, right };
        td = bin;
    }
    return td;
}

function parseIntersection(Tokenizer tok) returns TypeDesc|err:Syntax {
    TypeDesc td = check parsePostfixTypeDesc(tok);
    while tok.current() == "&" {
        check tok.advance();
        TypeDesc right = check parsePostfixTypeDesc(tok);
        BinaryTypeDesc bin = { op: "&", left: td, right };
        td = bin;
    }
    return td;
}

function parsePostfixTypeDesc(Tokenizer tok) returns TypeDesc|err:Syntax {
    TypeDesc td = check parsePrimaryTypeDesc(tok);
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
function parsePrimaryTypeDesc(Tokenizer tok) returns TypeDesc|err:Syntax {
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
            return parseTupleTypeDesc(tok);
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
            return parseRecordTypeDesc(tok);         
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

function parseTypeParam(Tokenizer tok) returns TypeDesc|err:Syntax {
    check tok.expect("<");
    TypeDesc td = check parseTypeDesc(tok);
    check tok.expect(">");
    return td;
}

// current token should be "("
function parseFunctionTypeDesc(Tokenizer tok, string[]? paramNames = ()) returns FunctionTypeDesc|err:Syntax {
    // skip "function"
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
        match tok.current() {
            [IDENTIFIER, var paramName] => {
                if !(paramNames is ()) {
                    paramNames.push(paramName);
                }
                check tok.advance();
            }
            _ => {
                if !(paramNames is ()) {
                    return parseError(tok);
                }
            }
        }
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
function parseTupleTypeDesc(Tokenizer tok) returns ListTypeDesc|err:Syntax {
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

function parseRecordTypeDesc(Tokenizer tok) returns MappingTypeDesc|err:Syntax {
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
