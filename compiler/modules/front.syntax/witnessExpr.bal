import wso2/nballerina.types as t;

public function typeWitnessToString(t:WitnessCollector witness) returns string {
    t:WitnessValue value = witness.get();
    if value is string {
        return value;
    }
    else if value == () {
        return "";
    }
    else {
        Expr expr = nonStringWitnessToExpr(value);
        return exprToString(expr);
    }
}

public function typeWitnessToExpr(t:WitnessValue value) returns Expr {
    if value == () || value is string {
        return { startPos: 0, endPos: 0, value };
    }
    else {
        return nonStringWitnessToExpr(value);
    }
}

function nonStringWitnessToExpr(t:WrappedSingleValue|map<t:WitnessValue>|t:ListWitnessValue value) returns Expr {
    if value is t:WrappedSingleValue {
        return singleValueToLiteral(value);
    }
    else if value is map<t:WitnessValue> {
        return mappingWitnessToLiteral(value);
    }
    else if value is t:ListWitnessValue {
        return listWitnessToLiteral(value);
    }
}

function listWitnessToLiteral(t:ListWitnessValue value) returns ListConstructorExpr {
    var { memberValues, indices, fixedLen } = value;
    Expr[] members = [];
    foreach int i in 0 ..< memberValues.length() {
        Expr m = typeWitnessToExpr(memberValues[i]);
        if i + 1 < indices.length() {
            int nextIndex = indices[i + 1];
            members.push(m);
            foreach var _ in members.length() ..< nextIndex {
                members.push(m);
            }
        }
    }

    foreach int i in members.length() ..< fixedLen {
        members.push(typeWitnessToExpr(memberValues[memberValues.length() - 1]));
    }
    return { startPos: 0, endPos: 0, opPos: 0, members };
}

function mappingWitnessToLiteral(map<t:WitnessValue> value) returns MappingConstructorExpr {
    int startPos = 0;
    int endPos = 0;
    Field[] fields = from var [name, val] in value.entries()
        select { startPos, endPos, colonPos: startPos, isIdentifier: true, name, value: typeWitnessToExpr(val) };
    return { startPos, endPos, opPos: startPos, fields };
}

function singleValueToLiteral(t:WrappedSingleValue value) returns LiteralExpr|NumericLiteralExpr {
    t:SingleValue v = value.value;
    int startPos = 0;
    int endPos = 0;
    if v == () || v is string || v is boolean {
        return { startPos, endPos, value: v };
    }
    else if v is int {
        return { startPos, endPos, base: 10, digits: v.toString() };
    }
    else if v is float {
        return { startPos, endPos, typeSuffix: "f", untypedLiteral: v.toString() };
    }
    else if v is decimal {
        return { startPos, endPos, typeSuffix: "d", untypedLiteral: v.toString() };
    }
}
