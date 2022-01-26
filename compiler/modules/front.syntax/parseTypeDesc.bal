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
    while tok.current() == "|" {
        Position opPos = tok.currentStartPos();
        check tok.advance();
        TypeDesc right = check parseIntersection(tok);
        Position endPos = tok.previousEndPos();
        BinaryTypeDesc bin = { startPos, endPos, opPos, op: "|", left: td, right };
        td = bin;
    }
    return td;
}

function parseIntersection(Tokenizer tok) returns TypeDesc|err:Syntax {
    Position startPos = tok.currentStartPos();
    TypeDesc td = check parseUnaryTypeDesc(tok);
    while tok.current() == "&" {
        Position opPos = tok.currentStartPos();
        check tok.advance();
        TypeDesc right = check parseUnaryTypeDesc(tok);
        Position endPos = tok.previousEndPos();
        BinaryTypeDesc bin = { startPos, endPos, opPos, op: "&", left: td, right };
        td = bin;
    }
    return td;
}

function parseUnaryTypeDesc(Tokenizer tok) returns TypeDesc|err:Syntax {
    if tok.current() == "!" {
        Position startPos = tok.currentStartPos();
        check tok.advance();
        TypeDesc td = check parseUnaryTypeDesc(tok);
        Position endPos = tok.previousEndPos();
        UnaryTypeDesc unary = { startPos, endPos, op: "!", td };
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
            BinaryTypeDesc bin =  {
                startPos,
                endPos,
                opPos,
                op: "|",
                left: td,
                right: { startPos: endPos, endPos, builtinTypeName: "null"} // start and end position of right is same because its single character
            };
            td = bin;
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
                    dimensions.push(check parseSimpleConstExpr(tok));
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
            TypeDesc innerTd = check parseTypeDesc(tok);
            endPos = check tok.expectEnd(")");
            return { startPos, endPos, innerTd };
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
        [STRING_LITERAL, var str] => {
            Position endPos = tok.currentEndPos();
            check tok.advance();
            return { startPos, endPos, value: str };
        }
        [DECIMAL_NUMBER, _]
        | [HEX_INT_LITERAL, _]
        | [DECIMAL_FP_NUMBER, _, _] => {
            return parseNumericLiteralTypeDesc(tok, ());
        }
        "-" => {
            Position signPos = tok.currentStartPos();
            check tok.advance();
            return parseNumericLiteralTypeDesc(tok, signPos);
        }
        "true" => {
            Position endPos = tok.currentEndPos();
            check tok.advance();
            return <SingletonTypeDesc>{ startPos, endPos, value: true };
        }
        "false" => {
            Position endPos = tok.currentEndPos();
            check tok.advance();
            return <SingletonTypeDesc>{ startPos, endPos, value: false };
        }
    }
    return parseError(tok);
}

// It would be cleaner to handle this using const folding, but there are obstacles:
// it treats conversion errors as semantic errors, but at this point we can only return syntax errors;
// we don't have what we need to create a context.
// Another approach would be to have a kind of TypeDesc that refers to an NumericLiteralExpr and then convert in resolveTypes.
// XXX Revisit when floats (and maybe decimals) are fully incorporated in the front-end.
function parseNumericLiteralTypeDesc(Tokenizer tok, Position? signPos = ()) returns SingletonTypeDesc|err:Syntax {
    Position startPos = signPos != () ? signPos : tok.currentStartPos();
    NumericLiteralExpr expr = check parseNumericLiteralExpr(tok);
    if expr is FpLiteralExpr {
        if expr.typeSuffix == "d" {
            var f = decimal:fromString(expr.untypedLiteral);
            if f is error {
                return tok.err(`invalid decimal literal ${expr.untypedLiteral}`);
            }
            else {
                decimal value = f;
                if signPos != () {
                    value = -value;
                }
                return { startPos, endPos: expr.endPos, value };
            }
        }
        else {
            var f = float:fromString(expr.untypedLiteral);
            if f is error {
                return tok.err(`invalid float literal ${expr.untypedLiteral}`); // don't think this should happen
            }
            else {
                float value = f;
                if signPos != () {
                    value = -value;
                }
                return { startPos, endPos: expr.endPos, value };
            }
        }
    }
    else {
        var n = intFromIntLiteral(expr.base, expr.digits);
        if n is error {
            return tok.err(`invalid integer literal ${expr.digits}`);
        }
        else {
            int value;
            if signPos == () {
                value = n;
            }
            else if n == int:MIN_VALUE {
                return tok.err(`-${expr.digits} overflows`);
            }
            else {
                value = -n;
            }
            return { startPos, endPos: expr.endPos, value };
        }
    }
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
        match tok.current() {
            [IDENTIFIER, var paramName] => {
                string name = paramName;
                Position namePos = tok.currentStartPos();
                FunctionParam param = { startPos: paramStartPos, endPos: tok.currentEndPos(), name, namePos, td };
                params.push(param);
                check tok.advance();
            }
            _ => {
                if namedParams != () {
                    return parseError(tok);
                }
                params.push({ startPos: paramStartPos, endPos: tok.currentEndPos(), name: (), namePos: (), td });
            }
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
        TypeDesc td = check parseTypeDesc(tok);
        if tok.current() == "..." {
            rest = td;
            check tok.advance();
            check tok.expect(";");
        }
        else {
            fields.push(check parseFieldDesc(tok, td, fieldStartPos));
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
        TypeDesc td = check parseTypeDesc(tok);
        fields.push(check parseFieldDesc(tok, td, fieldStartPos));
    }
    Position endPos = tok.currentEndPos();
    check tok.advance();
    return { startPos, endPos, fields, rest: INCLUSIVE_RECORD_TYPE_DESC };
}

function parseFieldDesc(Tokenizer tok, TypeDesc typeDesc, Position startPos) returns FieldDesc|err:Syntax {
    string name = check tok.expectIdentifier();
    Position endPos = check tok.expectEnd(";");
    return { startPos, endPos, name, typeDesc };
}
