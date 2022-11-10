// Parsing of type descriptors
import wso2/nballerina.comm.err;

function parseTypeDesc(Tokenizer tok) returns TypeDesc|err:Syntax {
    if tok.current() == "function" {
        check tok.advance();
        return parseFunctionTypeDesc(tok);
    }
    return parseUnion(tok);
}

function parseUnion(Tokenizer tok) returns TypeDesc|err:Syntax {
    Position startPos = tok.currentStartPos();
    TypeDesc td = check parseIntersection(tok);
    if tok.current() == "|" {
        td = check finishBinaryTypeDesc(tok, "|", td, startPos);
    }
    return td;
}

function parseIntersection(Tokenizer tok) returns TypeDesc|err:Syntax {
    Position startPos = tok.currentStartPos();
    TypeDesc td = check parseUnaryTypeDesc(tok);
    if tok.current() == "&" {
        td = check finishBinaryTypeDesc(tok, "&", td, startPos);
    }
    return td;
}

function finishBinaryTypeDesc(Tokenizer tok, BinaryTypeOp op, TypeDesc lhs, Position startPos) returns BinaryTypeDesc|err:Syntax {
    TypeDesc[] tds = [lhs];
    Position[] opPos = [];
    while tok.current() == op {
        opPos.push(tok.currentStartPos());
        check tok.advance();
        TypeDesc right = op == "|" ? check parseIntersection(tok) : check parseUnaryTypeDesc(tok);
        tds.push(right);
    }
    Position endPos = tok.previousEndPos();
    return { startPos, endPos, opPos, op, tds };
}

function parseUnaryTypeDesc(Tokenizer tok) returns TypeDesc|err:Syntax {
    if tok.current() == "!" {
        Position startPos = tok.currentStartPos();
        check tok.advance();
        TypeDesc td = check parseUnaryTypeDesc(tok);
        Position endPos = tok.previousEndPos();
        UnaryTypeDesc unary = { startPos, endPos, op: "!", opPos: startPos, td };
        return unary;
    }
    return parsePostfixTypeDesc(tok);
}

function parsePostfixTypeDesc(Tokenizer tok) returns TypeDesc|err:Syntax {
    Position startPos = tok.currentStartPos();
    TypeDesc td = check parsePrimaryTypeDesc(tok);
    while true {
        if tok.current() == "?" {
            Position opPos = tok.currentStartPos();
            Position endPos = tok.currentEndPos();
            check tok.advance();
            UnaryTypeDesc optionalTd = {
                startPos,
                endPos,
                op: "?",
                opPos,
                td
            };
            td = optionalTd;
        }
        else if tok.current() == "[" {
            SimpleConstExpr?[] dimensions = [];
            Position? endPos = ();
            // JBUG #34331 can re-write this to a `while true` and make `Position endPos;`  
            while tok.current() == "[" {
                check tok.advance();
                if tok.current() == "]" {
                    dimensions.push(());
                } 
                else {
                    dimensions.push(check parseArrayLengthExpr(tok));
                }
                endPos = check tok.expectEnd("]");
            }
            ArrayTypeDesc array = { startPos, endPos: <Position>endPos, member: td , dimensions };
            td = array;
        }
        else {
            break;
        }
    }
    return td;
}

// Tokenizer is on first token of the type descriptor
// Afterwards it is on the token immediately following the type descriptor
function parsePrimaryTypeDesc(Tokenizer tok) returns TypeDesc|err:Syntax {
    Token? cur = tok.current();
    Position startPos = tok.currentStartPos();
    match cur {
        "(" => {
            check tok.advance();
            Position endPos;
            if tok.current() == ")" {
                endPos = tok.currentEndPos();
                check tok.advance();
                return { startPos, endPos, builtinTypeName: "null" };
            }
            TypeDesc td = check parseTypeDesc(tok);
            endPos = check tok.expectEnd(")");
            return { startPos, endPos, op: "(", opPos: startPos, td };
        }
        "boolean"
        | "decimal"
        | "float"
        | "typedesc"
        | "handle"
        | "any"
        | "anydata"
        | "never"
        | "json"
        | "readonly"
        | "null" => {
            Position endPos = tok.currentEndPos();
            check tok.advance();
            // JBUG should not need cast #30191
            return { startPos, endPos, builtinTypeName: <BuiltinTypeName>cur };
        }
        "string"
        |"int" => {
            Position qNamePos = tok.currentStartPos();
            Position endPos = tok.currentEndPos();
            check tok.advance();
            if !tok.currentIsNoSpaceColon() {
                // JBUG should not need cast #30191
                return { startPos, endPos, builtinTypeName: <BuiltinTypeName>cur };
            }
            check tok.advance();
            string typeName = check tok.expectIdentifier();
            endPos = tok.previousEndPos();
            return { startPos, endPos, prefix: <string>cur, typeName, qNamePos };
        }
        "xml" => {
            Position pos = tok.currentStartPos();
            Position endPos = tok.currentEndPos();
            check tok.advance();
            if tok.currentIsNoSpaceColon() {
                check tok.advance();
                string typeName = check tok.expectIdentifier();
                endPos = tok.previousEndPos();
                return { startPos, endPos, prefix: <string>cur, typeName, qNamePos: pos };
            }
            else if tok.current() == "<" {
                TypeDesc constituent = check parseTypeParam(tok);
                endPos = tok.previousEndPos();
                return { startPos, endPos, constituent, pos };
            }
            return  { startPos, endPos, builtinTypeName: <BuiltinTypeName>cur };
        }
        "byte" => {
            Position endPos = tok.currentEndPos();
            check tok.advance();
            return { startPos, endPos, builtinTypeName: "byte" };
        }
        "[" => {
            return parseTupleTypeDesc(tok);
        }
        "map" => {
            check tok.advance();
            var rest = check parseTypeParam(tok);
            Position endPos = tok.previousEndPos();
            return { startPos, endPos, rest, fields: [] };
        }
        "error" => {
            Position endPos = tok.currentEndPos();
            check tok.advance();
            if tok.current() != "<" {
                return { startPos, endPos, builtinTypeName: "error" };
            }
            var detail = check parseTypeParam(tok);
            endPos = tok.previousEndPos();
            return { startPos, endPos, detail };
        }
        "record" => {
            return parseRecordTypeDesc(tok, startPos);
        }
        "table" => {
            check tok.advance();
            TypeDesc row = check parseTypeParam(tok);
            Position endPos = tok.previousEndPos();
            return { startPos, endPos, row };
        }
        [IDENTIFIER, var identifier] => {
            Position qNamePos = tok.currentStartPos();
            check tok.advance();
            var [prefix, typeName] = check parseOptQualIdentifier(tok, identifier);
            Position endPos = tok.previousEndPos();
            return { startPos, endPos, prefix, typeName, qNamePos };
        }
    }
    Position endPos = tok.currentEndPos();
    SimpleConstExpr valueExpr = check parseSimpleConstExpr(tok);
    if valueExpr is ExtendedLiteralExpr {
        return { startPos, endPos, valueExpr };
    }
    return parseError(tok);
}

function parseTypeParam(Tokenizer tok) returns TypeDesc|err:Syntax {
    check tok.expect("<");
    tok.setMode(MODE_TYPE_DESC);
    TypeDesc td = check parseTypeDesc(tok);
    check tok.expect(">");
    tok.setMode(MODE_NORMAL);
    return td;
}

// current token should be "("
function parseFunctionTypeDesc(Tokenizer tok, FunctionParam[]? namedParams = ()) returns FunctionTypeDesc|err:Syntax {
    // skip "function"
    Position startPos = tok.currentStartPos();
    check tok.expect("(");
    FunctionTypeParam[] params = namedParams ?: [];
    while true {
        if tok.current() == ")" {
            break;
        }
        Position paramStartPos = tok.currentStartPos();
        TypeDesc td = check parseTypeDesc(tok);
        if tok.current() == "..." {
            check tok.advance();
            params.push(check finishParam(tok, td, paramStartPos, namedParams == (), true));
            if tok.current() == ")" {
                break;
            }
            else {
                return parseError(tok, "parameter after rest parameter");
            }
        }
        else {
            params.push(check finishParam(tok, td, paramStartPos, namedParams == (), false));
        }
        if tok.current() == "," {
            check tok.advance();
        }
    }
    Position endPos = tok.previousEndPos();
    // on ")"
    check tok.advance();
    TypeDesc? ret = ();
    if tok.current() == "returns" {
        check tok.advance();
        ret = check parseTypeDesc(tok);
    }
    endPos = tok.previousEndPos();
    return { startPos, endPos, params, ret };
}

function finishParam(Tokenizer tok, TypeDesc td, Position startPos, boolean allowUnnamed, boolean isRest) returns FunctionTypeParam|FunctionParam|err:Syntax {
    Token? t = tok.current();
    if !allowUnnamed || t is [IDENTIFIER, string] {
        return finishFunctionParam(tok, td, startPos, isRest);
    }
    return { startPos, endPos: tok.previousEndPos(), name: (), namePos: (), td, isRest };
}

function finishFunctionParam(Tokenizer tok, TypeDesc td, Position startPos, boolean isRest) returns FunctionParam|err:Syntax {
    Position namePos = tok.currentStartPos();
    string name = check tok.expectIdentifier();
    return { startPos, endPos: tok.currentEndPos(), name, namePos, td, isRest };
}

// current token is []
function parseTupleTypeDesc(Tokenizer tok) returns TupleTypeDesc|err:Syntax {
    TypeDesc[] members = [];
    Position startPos = tok.currentStartPos();
    check tok.advance();
    Position endPos = tok.currentEndPos();
    TypeDesc? rest = ();
    if tok.current() != "]" {
        while true {
            TypeDesc td = check parseTypeDesc(tok);
            if tok.current() == "..." {
                rest = td;
                check tok.advance();
                break;
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
    endPos = tok.currentEndPos();
    check tok.advance();
    return { startPos, endPos, members, rest };
}

function parseRecordTypeDesc(Tokenizer tok, Position startPos) returns MappingTypeDesc|err:Syntax {
    check tok.advance();
    match tok.current() {
        "{|" => {
            return parseExclusiveRecordTypeDesc(tok, startPos);
        }
        "{" => {
            return parseInclusiveRecordTypeDesc(tok, startPos);
        }
        _ => {
            return parseError(tok);
        }
    }
}

function parseExclusiveRecordTypeDesc(Tokenizer tok, Position startPos) returns MappingTypeDesc|err:Syntax {
    check tok.advance();
    FieldDesc[] fields = [];
    TypeDesc? rest = ();
    while tok.current() != "|}" {
        if rest != () {
            return parseError(tok);
        }
        Position fieldStartPos = tok.currentStartPos();
        boolean ro = false;
        if tok.current() == "readonly" {
            ro = true;
            check tok.advance();
        }
        TypeDesc td = check parseTypeDesc(tok);
        if tok.current() == "..." {
            rest = td;
            check tok.advance();
            check tok.expect(";");
        }
        else {
            fields.push(check parseFieldDesc(tok, td, ro, fieldStartPos));
        }
    }
    Position endPos = tok.currentEndPos();
    check tok.advance();
    return { startPos, endPos, fields, rest };
}

function parseInclusiveRecordTypeDesc(Tokenizer tok, Position startPos) returns MappingTypeDesc|err:Syntax {
    check tok.advance();
    FieldDesc[] fields = [];
    while tok.current() != "}" {
        Position fieldStartPos = tok.currentStartPos();
        boolean ro = false;
        if tok.current() == "readonly" {
            ro = true;
            check tok.advance();
        }
        TypeDesc td = check parseTypeDesc(tok);
        fields.push(check parseFieldDesc(tok, td, ro, fieldStartPos));
    }
    Position endPos = tok.currentEndPos();
    check tok.advance();
    return { startPos, endPos, fields, rest: INCLUSIVE_RECORD_TYPE_DESC };
}

function parseFieldDesc(Tokenizer tok, TypeDesc typeDesc, boolean ro, Position startPos) returns FieldDesc|err:Syntax {
    string name = check tok.expectIdentifier();
    boolean opt = false;
    if tok.current() == "?" {
        opt = true;
        check tok.advance();
    }
    Position endPos = check tok.expectEnd(";");
    return { startPos, endPos, name, typeDesc, ro, opt };
}
