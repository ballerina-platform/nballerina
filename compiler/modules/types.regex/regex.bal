import wso2/nballerina.types as t;

type StringAsList ()|[string:Char, StringAsList];

type RegexPattern Concat|End|Star|Or|Skip;

type Concat "concat";
type End "end";
type Skip "skip";

type Star record {|
    PatternRange range;
    int nextIndex; // starting position of the next pattern
|};

type Or record {|
    PatternRange lhs;
    PatternRange rhs;
    int nextIndex; // starting position of the next pattern
|};

type PatternRange record {|
    int startIndex; // position of first char in pattern (not including "(")
    int endIndex; // position of last char in pattern (not including ")")
|};

type IntermediateType IntermediateTypeReference|IntermediateTypeValue;

type IntermediateTypeReference string;

type IntermediateTypeValue IntermediateListType|IntermediateUnionType|IntermediateTerminalType;

type IntermediateTypeBase record {|
    IntermediateTypeReference name;
|};

type IntermediateListType record {|
    *IntermediateTypeBase;
    IntermediateType[2] operands;
    t:ListDefinition defn;
    t:SemType? semtype = ();
|};

type IntermediateUnionType record {|
    *IntermediateTypeBase;
    IntermediateType[] operands;
    t:SemType? semtype = ();
|};

type IntermediateTerminalType record {|
    *IntermediateTypeBase;
    string:Char? value;
|};

class RegexContext {
    map<IntermediateTypeValue> intermediateTypes = {};

    private function nextTypeRef() returns IntermediateTypeReference {
        return "T" + self.intermediateTypes.length().toString();
    }

    function unionType() returns IntermediateUnionType {
        IntermediateUnionType ty = { name: self.nextTypeRef(), operands: [] };
        self.intermediateTypes[ty.name] = ty;
        return ty;
    }

    function listType(IntermediateType[2] operands) returns IntermediateListType {
        t:ListDefinition defn = new;
        IntermediateListType ty = { name: self.nextTypeRef(), defn, operands };
        self.intermediateTypes[ty.name] = ty;
        return ty;
    }

    function terminalType(string:Char? value) returns IntermediateTerminalType {
        IntermediateTerminalType ty = { name: self.nextTypeRef(), value };
        self.intermediateTypes[ty.name] = ty;
        return ty;
    }

    function typeValue(IntermediateType ty) returns IntermediateTypeValue {
        if ty is IntermediateTypeValue {
            return ty;
        }
        return self.intermediateTypes.get(ty);
    }

    function intermediateTypeSame(IntermediateType lhs, IntermediateType rhs) returns boolean {
        IntermediateTypeReference lhsName = lhs is IntermediateTypeReference ? lhs : lhs.name;
        IntermediateTypeReference rhsName = rhs is IntermediateTypeReference ? rhs : rhs.name;
        return lhsName == rhsName;
    }
}

public function typeRelation(string lhs, string rhs) returns string  {
    t:Env env = new;
    t:SemType lhsTy = regexToSemType(env, lhs);
    t:SemType rhsTy = regexToSemType(env, rhs);
    t:Context cx = t:contextFromEnv(env);
    var relation = [t:isSubtype(cx, lhsTy, rhsTy), t:isSubtype(cx, rhsTy, lhsTy)];
    match relation {
        [true, true] => { return "="; }
        [true, false] => { return "<"; }
        [false, true] => { return ">"; }
        _ => { return "<>"; }
    }
}

public function regexToBalTypes(string regex) returns string {
    RegexContext cx = new;
    IntermediateType ty = regexToIntermediateType(cx, regex, 0, regex.length() - 1, cx.terminalType(()));
    return intermediateTypeToString(ty, {});
}

// This is faster than using regexToSemType but should produce the same result
function stringToSingleton(t:Env env, string str) returns t:SemType {
    StringAsList stringList = stringToList(str, 0);
    return stringListToSemType(env, stringList);
}

function stringToList(string str, int index) returns StringAsList {
    if index == str.length() {
        return ();
    }
    return [str[index], stringToList(str, index + 1)];
}

function stringListToSemType(t:Env env, StringAsList stringList) returns t:SemType {
    if stringList is () {
        return t:NIL;
    }
    t:ListDefinition definition = new;
    return t:defineListTypeWrapped(definition, env, [t:stringConst(stringList[0]), stringListToSemType(env, stringList[1])], mut = t:CELL_MUT_NONE);
}

public function regexToSemType(t:Env env, string regex) returns t:SemType {
    RegexContext cx = new;
    IntermediateType ty = regexToIntermediateType(cx, regex, 0, regex.length() - 1, cx.terminalType(()));
    return intermediateTypeToSemType(cx, env, ty);
}

function intermediateTypeToSemType(RegexContext cx, t:Env env, IntermediateType ty) returns t:SemType {
    if ty is IntermediateTypeReference {
        IntermediateTypeValue actualType = cx.typeValue(ty);
        if actualType is IntermediateTerminalType {
            return intermediateTerminalTypeToSemType(actualType);
        }
        t:SemType? semtype = actualType.semtype;
        if semtype is () {
            return intermediateTypeToSemType(cx, env, actualType);
        }
        return semtype;
    }
    else if ty is IntermediateTerminalType {
        return intermediateTerminalTypeToSemType(ty);
    }
    else {
        if ty.semtype !is () {
            return <t:SemType>ty.semtype;
        }
        if ty is IntermediateListType {
            // This is to prevent infinite loop
            ty.semtype = ty.defn.getSemType(env);
        }
        // JBUG: cast
        t:SemType[] operandTypes = from var operand in <IntermediateType[]>ty.operands select intermediateTypeToSemType(cx, env, operand);
        if ty is IntermediateListType {
            return t:defineListTypeWrapped(ty.defn, env, operandTypes, mut = t:CELL_MUT_NONE);
        }
        t:SemType accumType = operandTypes[0];
        foreach int i in 1 ..< operandTypes.length() {
            accumType = t:union(accumType, operandTypes[i]);
        }
        ty.semtype = accumType;
        return accumType;
    }
}

function intermediateTerminalTypeToSemType(IntermediateTerminalType ty) returns t:SemType {
    string:Char? value = ty.value;
    if value is string:Char {
        return t:stringConst(value);
    }
    return t:NIL;
}

function regexToIntermediateType(RegexContext cx, string regex, int index, int end, IntermediateType restTy, boolean noPrefix=false) returns IntermediateType {
    int currentIndex = index;
    RegexPattern pattern = nextPattern(regex, currentIndex, end + 1);
    while pattern is Skip {
        pattern = nextPattern(regex, currentIndex + 1, end + 1);
        currentIndex += 1;
    }
    if pattern is Concat {
        return concatToSemType(cx, regex, currentIndex, end, restTy);
    }
    else if pattern is Star {
        return starToIntermediateType(cx, regex, pattern, end, restTy, noPrefix);
    }
    else if pattern is Or {
        return orToIntermediateType(cx, regex, pattern, end, restTy, noPrefix);
    }
    return restTy;
}

function concatToSemType(RegexContext cx, string regex, int index, int end, IntermediateType restTy) returns IntermediateType {
    string:Char char = regex[index];
    IntermediateListType ty = cx.listType([cx.terminalType(char), regexToIntermediateType(cx, regex, index + 1, end, restTy)]);
    return ty;
}

function starToIntermediateType(RegexContext cx, string regex, Star pattern, int end, IntermediateType restTy, boolean noPrefix) returns IntermediateType {
    IntermediateType unmatchedType = regexToIntermediateType(cx, regex, pattern.nextIndex, end, restTy);
    PatternRange range = pattern.range;
    RegexPattern body = nextPattern(regex, range.startIndex, range.endIndex + 1);
    if body is End {
        panic error("empty *");
    }
    if noPrefix {
        // if unmatchedType and restTy are same that means regexToIntermediateType returned restTy. Than happens only if pattern.nextIndex is >= end (via nextPattern)
        // that means there is nothing after this pattern (inside the range covered by end)
        if cx.intermediateTypeSame(unmatchedType, restTy) {
            // If we don't have a prefix or suffix that means it is a nested star (ex: (a*)*). This means restTy is the union type for the outer *
            // So we need to avoid adding a union type referring to the outer union type (to avoid invalid type cycle)
            // i.e we need
            // type T1 T2 | T0;
            // type T2 [T3, T1];
            // type T3 "a";
            // type T0 ();
            // ```
            // instead of
            // ```
            // type T1 T2 | T0;
            // type T2 T4 | T1; <- skip this
            // type T4 [T3, T2];
            // type T3 "a";
            // type T0 ();
            // ```
            return regexToIntermediateType(cx, regex, range.startIndex, range.endIndex, unmatchedType, true);
        }
    }
    IntermediateUnionType ty = cx.unionType();
    ty.operands = [regexToIntermediateType(cx, regex, range.startIndex, range.endIndex, ty, true), unmatchedType];
    return ty;
}

function orToIntermediateType(RegexContext cx, string regex, Or pattern, int end, IntermediateType restTy, boolean noPrefix) returns IntermediateType {
    IntermediateType rest = regexToIntermediateType(cx, regex, pattern.nextIndex, end, restTy);
    IntermediateType lhs = regexToIntermediateType(cx, regex, pattern.lhs.startIndex, pattern.lhs.endIndex, rest, noPrefix);
    IntermediateType rhs = regexToIntermediateType(cx, regex, pattern.rhs.startIndex, pattern.rhs.endIndex, rest, noPrefix);
    IntermediateUnionType ty = cx.unionType();
    ty.operands = [lhs, rhs];
    return ty;
}

function nextPattern(string regex, int index, int end) returns RegexPattern {
    if index >= end {
        return "end";
    }
    if regex[index] is "*"|"|" {
        panic error("unexpected start position " + index.toString());
    }
    var [lhs, lhsWrapped] = readPattern(regex, index, end, false);
    int endIndex = lhsWrapped ? (lhs.endIndex + 2) : (lhs.endIndex + 1);
    if end > endIndex && endIndex < regex.length() {
        string op = regex[endIndex];
        if op == "*" {
            int nextIndex = skipTillEnd(regex, endIndex + 1);
            return { range: lhs, nextIndex };
        }
        else if op == "|" {
            var [rhs, rhsWrapped] = readPattern(regex, endIndex + 1, end, true);
            int nextIndex = rhsWrapped ? (rhs.endIndex + 2) : (rhs.endIndex + 1);
            nextIndex = skipTillEnd(regex, nextIndex);
            return { lhs, rhs, nextIndex };
        }
    }
    return regex[index] is "("|")" ? "skip" : "concat";
}

function readPattern(string regex, int index, int end, boolean isRhs) returns [PatternRange, boolean] {
    if regex[index] != "(" {
        int endIndex = index;
        while endIndex < end && regex[endIndex] !is "("|"*"|")" && (isRhs || regex[endIndex] != "|") {
            endIndex += 1;
        }
        if endIndex < end && regex[endIndex] == "*" {
            return [{ startIndex: index, endIndex: index }, false];
        }
        return [{ startIndex: index, endIndex: endIndex - 1 }, false];
    }
    else {
        int endIndex = index + 1;
        int openCount = 1;
        while openCount != 0 {
            if regex[endIndex] == "(" {
                openCount += 1;
            }
            endIndex += 1;
            if regex[endIndex] == ")" {
                openCount -= 1;
            }
        }
        return [{ startIndex: index + 1, endIndex: endIndex - 1 }, true];
    }
}

function skipTillEnd(string regex, int currentIndex) returns int {
    int nextIndex = currentIndex;
    while nextIndex < regex.length() && regex[nextIndex] is ")"|"|"|"*" {
        nextIndex += 1;
    }
    return nextIndex;
}

function intermediateTypeToString(IntermediateType ty, map<true> visited) returns string {
    if ty is IntermediateTypeReference {
        return ty;
    }
    else if visited.hasKey(ty.name) {
        return "";
    }
    else if ty is IntermediateTerminalType {
        visited[ty.name] = true;
        string? value = ty.value;
        if value is () {
            return string `type ${ty.name} ();`;
        }
        return string `type ${ty.name} "${value}";`;
    }
    else {
        visited[ty.name] = true;
        string[] body = [];
        if ty is IntermediateListType {
            body.push("type " + ty.name + " " + "[" + ", ".'join(...from var operand in ty.operands select operand is IntermediateTypeReference ? operand : operand.name) + "]" + ";");
        }
        else {
            body.push("type " + ty.name + " " + " | ".'join(...from var operand in ty.operands select operand is IntermediateTypeReference ? operand : operand.name) + ";");
        }
        // JBUG: cast
        body.push(...from var operand in <IntermediateType[]>ty.operands where operand !is IntermediateTypeReference select intermediateTypeToString(operand, visited));
        return "\n".'join(...from var line in body where line != "" select line);
    }
}
