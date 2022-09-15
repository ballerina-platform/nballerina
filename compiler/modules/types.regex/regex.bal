import wso2/nballerina.types as t;

type StringAsList ()|[string:Char, StringAsList];

type RegexPattern Concat|End|Star|Or;

type Concat "concat";
type End "end";

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
    "list"|"union"|"terminal" operator;
    IntermediateTypeReference name;
    (IntermediateType[])|() operands;
    t:SemType? semtype = ();
|};

type IntermediateListType record {|
    *IntermediateTypeBase;
    IntermediateType[] operands = [];
    t:ListDefinition defn;
    "list" operator = "list";
|};

type IntermediateUnionType record {|
    *IntermediateTypeBase;
    IntermediateType[] operands = [];
    "union" operator = "union";
|};

type IntermediateTerminalType record {|
    *IntermediateTypeBase;
    "terminal" operator = "terminal";
    // JBUG:
    // t:SemType semtype;
    () operands = ();
    string rep;
|};

class RegexContext {
    map<IntermediateTypeValue> intermediateTypes = {};

    private function nextTypeRef() returns IntermediateTypeReference {
        return "T" + self.intermediateTypes.length().toString();
    }

    function unionType() returns IntermediateUnionType {
        IntermediateUnionType ty = { name: self.nextTypeRef() };
        self.intermediateTypes[ty.name] = ty;
        return ty;
    }

    function listType(t:Env env) returns IntermediateListType {
        t:ListDefinition defn = new;
        IntermediateListType ty = { name: self.nextTypeRef(), defn };
        self.intermediateTypes[ty.name] = ty;
        return ty;
    }

    function terminalType(string:Char|() value) returns IntermediateTerminalType {
        t:SemType semtype;
        string rep;
        if value is string:Char {
            semtype = t:stringConst(value);
            rep = "\"" + value + "\"";
        }
        else {
            semtype = t:NIL;
            rep = "()";
        }
        IntermediateTerminalType ty = { name: self.nextTypeRef(), semtype, rep };
        self.intermediateTypes[ty.name] = ty;
        return ty;
    }

    function typeValue(IntermediateType ty) returns IntermediateTypeValue {
        if ty is IntermediateTypeValue {
            return ty;
        }
        return self.intermediateTypes.get(ty);
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
    t:Env env = new;
    RegexContext cx = new;
    IntermediateType ty = regexToIntermediateType(cx, env, regex, 0, regex.length() - 1, cx.terminalType(()));
    return intermediateTypeToString(ty);
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
    return definition.define(env, [t:stringConst(stringList[0]), stringListToSemType(env, stringList[1])]);
}

public function regexToSemType(t:Env env, string regex) returns t:SemType {
    RegexContext cx = new;
    IntermediateType ty = regexToIntermediateType(cx, env, regex, 0, regex.length() - 1, cx.terminalType(()));
    return intermediateTypeToSemType(cx, env, ty);
}

function intermediateTypeToSemType(RegexContext cx, t:Env env, IntermediateType ty) returns t:SemType {
    if ty is IntermediateTypeReference {
        IntermediateTypeValue actualType = cx.typeValue(ty);
        if actualType.semtype is () {
            return intermediateTypeToSemType(cx, env, actualType);
        }
        return <t:SemType>actualType.semtype;
    }
    else if ty is IntermediateTerminalType {
        return <t:SemType>ty.semtype;
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
            // FIXME:
            return ty.defn.define(env, operandTypes);
        }
        t:SemType accumType = operandTypes[0];
        foreach int i in 1 ..< operandTypes.length() {
            accumType = t:union(accumType, operandTypes[i]);
        }
        ty.semtype = accumType;
        return accumType;
    }
}


function regexToIntermediateType(RegexContext cx, t:Env env, string regex, int index, int end, IntermediateType restTy) returns IntermediateType {
    RegexPattern pattern = nextPattern(regex, index, end + 1);
    if pattern is Concat {
        return concatToSemType(cx, env, regex, index, end, restTy);
    }
    else if pattern is Star {
        return starToIntermediateType(cx, env, regex, pattern, end, restTy);
    }
    else if pattern is Or {
        return orToIntermediateType(cx, env, regex, pattern, end, restTy);
    }
    return restTy;
}

function concatToSemType(RegexContext cx, t:Env env, string regex, int index, int end, IntermediateType restTy) returns IntermediateType {
    string:Char char = regex[index];
    IntermediateTypeValue ty = cx.listType(env);
    ty.operands = [cx.terminalType(char), regexToIntermediateType(cx, env, regex, index + 1, end, restTy)];
    return ty;
}

function starToIntermediateType(RegexContext cx, t:Env env, string regex, Star pattern, int end, IntermediateType restTy) returns IntermediateType {
    IntermediateType rest = regexToIntermediateType(cx, env, regex, pattern.nextIndex, end, restTy);
    IntermediateTypeValue ty = cx.unionType();
    PatternRange range = pattern.range;
    IntermediateType recursiveTy = starToIntermediateTypeInner(cx, env, regex, range.startIndex, range.startIndex, range.endIndex, ty.name);
    ty.operands = [recursiveTy, rest];
    return ty;
}

function starToIntermediateTypeInner(RegexContext cx, t:Env env, string regex, int index, int startIndex, int endIndex, IntermediateTypeReference recTy) returns IntermediateType {
    RegexPattern pattern = nextPattern(regex, index, endIndex + 1);
    if pattern is End {
        panic error("unexpected end of pattern");
    }
    if (pattern is Star && pattern.range.startIndex == startIndex && pattern.range.endIndex == endIndex) || pattern is Concat {
        string:Char char = regex[index];
        IntermediateTypeValue ty = cx.listType(env);
        if index == endIndex {
            // last character in the pattern
            ty.operands = [cx.terminalType(char), recTy];
        }
        else {
            ty.operands = [cx.terminalType(char), starToIntermediateTypeInner(cx, env, regex, index + 1, startIndex, endIndex, recTy)];
        }
        return ty;
    }
    return regexToIntermediateType(cx, env, regex, index, endIndex, recTy);
}

function orToIntermediateType(RegexContext cx, t:Env env, string regex, Or pattern, int end, IntermediateType restTy) returns IntermediateType {
    IntermediateType rest = regexToIntermediateType(cx, env, regex, pattern.nextIndex, end, restTy);
    IntermediateType lhs = regexToIntermediateType(cx, env, regex, pattern.lhs.startIndex, pattern.lhs.endIndex, rest);
    IntermediateType rhs = regexToIntermediateType(cx, env, regex, pattern.rhs.startIndex, pattern.rhs.endIndex, rest);
    IntermediateTypeValue ty = cx.unionType();
    ty.operands = [lhs, rhs];
    return ty;
}

function nextPattern(string regex, int index, int end) returns RegexPattern {
    if index >= end {
        return "end";
    }
    if regex[index] is ")"|"*"|"|" {
        panic error("unexpected start position " + index.toString());
    }
    var [lhs, lhsWrapped] = readPattern(regex, index, end);
    int endIndex = lhsWrapped ? (lhs.endIndex + 2) : (lhs.endIndex + 1);
    if end > endIndex && endIndex < regex.length() {
        string op = regex[endIndex];
        if op == "*" {
            int nextIndex = skipTillEnd(regex, endIndex + 1);
            return { range: lhs, nextIndex };
        }
        else if op == "|" {
            var [rhs, rhsWrapped] = readPattern(regex, endIndex + 1, end);
            int nextIndex = rhsWrapped ? (rhs.endIndex + 2) : (rhs.endIndex + 1);
            nextIndex = skipTillEnd(regex, nextIndex);
            return { lhs, rhs, nextIndex };
        }
    }
    return "concat";
}

function readPattern(string regex, int index, int end) returns [PatternRange, boolean] {
    if regex[index] != "(" {
        int endIndex = index;
        while endIndex < end && regex[endIndex] !is "("|"|"|"*"|")" {
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

function intermediateTypeToString(IntermediateType ty) returns string {
    if ty is IntermediateTypeReference {
        return ty;
    }
    else if ty is IntermediateTerminalType {
        return string `type ${ty.name} ${ty.rep};`;
    }
    else if ty is IntermediateListType {
        string[] body = [];
        body.push("type " + ty.name + " " + "[" + ", ".'join(...from var operand in ty.operands select operand is IntermediateTypeReference ? operand : operand.name) + "]" + ";");
        body.push(...from var operand in ty.operands where operand !is IntermediateTypeReference select intermediateTypeToString(operand));
        return "\n".'join(...body);
    }
    else {
        string[] body = [];
        body.push("type " + ty.name + " " + " | ".'join(...from var operand in ty.operands select operand is IntermediateTypeReference ? operand : operand.name) + ";");
        body.push(...from var operand in ty.operands where operand !is IntermediateTypeReference select intermediateTypeToString(operand));
        return "\n".'join(...body);
    }
}
