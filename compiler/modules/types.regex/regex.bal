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

type IntermediateType IntermediateTypeReference|IntermediateTypeActual;

type IntermediateTypeReference string;

// TODO: make this a union of types with a common base
type IntermediateTypeActual ListIntermediateType|UnionIntermediateType|TerminalIntermediateType; 
// TODO: better names
type IntermdiateTypeBase record {|
    "list"|"union"|"terminal" operator;
    IntermediateTypeReference name;
    (IntermediateType[])|() operands;
    t:SemType? ty = ();
|};

type ListIntermediateType record {|
    *IntermdiateTypeBase;
    IntermediateType[] operands = [];
    t:ListDefinition defn;
    "list" operator = "list"; 
|};

type UnionIntermediateType record {|
    *IntermdiateTypeBase;
    IntermediateType[] operands = [];
    "union" operator = "union"; 
|};

type TerminalIntermediateType record {|
    *IntermdiateTypeBase;
    "terminal" operator = "terminal"; 
    () operands = ();
    // JBUG: ? can't do t:SemType ty
|};

class RegexContext {
    map<IntermediateTypeActual> intermediateTypes = {};	

    private function nextTypeRef() returns IntermediateTypeReference {
        return "T" + self.intermediateTypes.length().toString();
    }

    // TODO: common code
    function unionType() returns UnionIntermediateType {
        UnionIntermediateType ty = { name: self.nextTypeRef() };
        self.intermediateTypes[ty.name] = ty;
        return ty;
    }

    function listType(t:Env env) returns ListIntermediateType {
        t:ListDefinition defn = new;
        ListIntermediateType ty = { name: self.nextTypeRef(), defn, ty:defn.getSemType(env) };
        self.intermediateTypes[ty.name] = ty;
        return ty;
    }

    function terminalType(t:SemType semtype) returns TerminalIntermediateType {
        TerminalIntermediateType ty = { name: self.nextTypeRef(), ty:semtype };
        self.intermediateTypes[ty.name] = ty;
        return ty;
    }

    function getAcutalType(IntermediateType ty) returns IntermediateTypeActual {
        if ty is IntermediateTypeActual {
            return ty;
        }
        return self.intermediateTypes.get(ty);
    }
}

function finalizeIntermediateType(RegexContext cx, t:Env env, IntermediateType root) returns t:SemType {
    // io:println("before compression:", root);
    // expandUnions(root);
    return intermediateTypeToSemTypeInner(cx, env, root);
}


function intermediateTypeToSemTypeInner(RegexContext cx, t:Env env, IntermediateType ty) returns t:SemType {
    if ty is IntermediateTypeReference {
        IntermediateTypeActual actualType = cx.getAcutalType(ty);
        if actualType.ty is () {
            return intermediateTypeToSemTypeInner(cx, env, actualType);
        }
        return <t:SemType>actualType.ty;
    }
    else if ty is TerminalIntermediateType {
        return <t:SemType>ty.ty;
    }
    else if ty is ListIntermediateType {
         t:ListDefinition defn = ty.defn;
         t:SemType[] operands = from var operand in ty.operands select intermediateTypeToSemTypeInner(cx, env, operand);
         return defn.define(env, operands);
    }
    else if ty is UnionIntermediateType {
        if ty.ty !is () {
            return <t:SemType>ty.ty;
        }
        t:SemType[] operandTypes = [];
        foreach var operand in ty.operands {
            if operand is IntermediateTypeReference || operand.ty is () {
                operandTypes.push(intermediateTypeToSemTypeInner(cx, env, operand));
            }
            else {
                operandTypes.push(<t:SemType>operand.ty);
            }
        }
        t:SemType accumType = operandTypes[0];
        foreach int i in 1 ..< operandTypes.length() {
            accumType = t:union(accumType, operandTypes[i]);
        }
        ty.ty = accumType;
        foreach var operand in ty.operands {
            _ = intermediateTypeToSemTypeInner(cx, env, operand);
        }
        return accumType;
    }
    panic error("Unexpected");
}

// function expandUnions(IntermediateType ty) {
//     if ty !is UnionIntermediateType {
//         return;
//     }
//     foreach var operand in ty.operands {
//         expandUnions(operand);
//     }
//     IntermediateType[] newOperands = [];
//     foreach var operand in ty.operands {
//         if operand is UnionIntermediateType {
//             newOperands.push(...operand.operands);
//         }
//         newOperands.push(operand);
//     }
//     ty.operands = newOperands;
// }
// 
// function intermediateTypeToSemType(RegexContext cx, t:Env env, IntermediateType ty) returns t:SemType {
//     if ty is IntermediateTypeReference {
//         IntermediateTypeActual actualType = cx.getAcutalType(ty);
//         // if actualType.ty is () {
//         //     io:println("--", actualType);
//         // }
//         return <t:SemType>actualType.ty;
//     }
//     else if ty is UnionIntermediateType {
//         t:SemType[] operandTypes = from var operandRef in ty.operands select <t:SemType>cx.getAcutalType(operandRef).ty;
//         t:SemType accumType = operandTypes[0];
//         foreach int i in 1 ..< operandTypes.length() {
//             accumType = t:union(accumType, operandTypes[i]);
//         }
//         ty.ty = accumType;
//         foreach var operand in ty.operands {
//             _ = intermediateTypeToSemType(cx, env, operand);
//         }
//         return accumType;
//     }
//     else if ty is ListIntermediateType {
//         t:ListDefinition defn = ty.defn;
//         t:SemType[] operands = from var operand in ty.operands select intermediateTypeToSemType(cx, env, operand);
//         return defn.define(env, operands);
//     }
//     else {
//         return <t:SemType>ty.ty;
//     }
//     // JBUG:
//     panic error("unexpectd");
// }

// better name
// function compressIntermediateTypes(RegexContext cx, IntermediateType ty) {
//     // IntermediateTypeActual ty = cx.getAcutalType(typeRef);
//     if ty !is UnionIntermediateType|ListIntermediateType {
//         return;
//     }
//     // JBUG: cast
//     // foreach var operand in <IntermediateType[]>ty.operands {
//     //     compressIntermediateTypes(cx, operand);
//     // }
//     if ty is ListIntermediateType {
//         return;
//     }
//     IntermediateTypeActual[] operands = from var operand in ty.operands select cx.getAcutalType(operand);
//     t:SemType accumType = <t:SemType>operands[0].ty;
//     foreach int i in 1 ..< operands.length() {
//         if operands[i].ty is () {
//             io:println(operands[i].name);
//         }
//         accumType = t:union(accumType, <t:SemType>operands[i].ty);
//     }
//     ty.ty = accumType;
// }

// function compressedUnionTypeOperands(RegexContext cx, UnionIntermediateType unionType) returns IntermediateType[] {
//     IntermediateType[] operands = [];
//     foreach var operand in unionType.operands {
//         // IntermediateTypeActual operand = cx.getAcutalType(operandRef); 
//         // io:println(operand);
//         if operand !is UnionIntermediateType {
//             operands.push(operand);
//         }
//         else {
//             operands.push(...compressedUnionTypeOperands(cx, operand));
//         }
//     }
//     return operands;
// }

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

function defineReadonlyListType(t:ListDefinition defn, t:Env env, t:SemType[] members) returns t:SemType {
    return defn.define(env, members); // FIX_RO: intersect with LIST_RO
}

function getReadonlyListType(t:ListDefinition defn, t:Env env) returns t:SemType {
    return defn.getSemType(env); // FIX_RO: intersect with LIST_RO
}

function stringListToSemType(t:Env env, StringAsList stringList) returns t:SemType {
    if stringList is () {
        return t:NIL;
    }
    t:ListDefinition definition = new;
    return defineReadonlyListType(definition, env, [t:stringConst(stringList[0]), stringListToSemType(env, stringList[1])]);
}

public function regexToSemType(t:Env env, string regex) returns t:SemType {
    RegexContext cx = new;
    t:Context tc = t:contextFromEnv(env);
    IntermediateType ty = regexToIntermediateTypeInner(cx, env, regex, 0, regex.length() - 1, cx.terminalType(t:NIL));
    t:SemType t1 = finalizeIntermediateType(cx, env, ty);
    t:SemType t2 = regexToSemTypeInner(env, regex, 0, regex.length() - 1, t:NIL);
    if !t:isSameType(tc, t1, t2) {
        panic error("invalid type for" + regex);
    }
    return t1;
}


function regexToSemTypeInner(t:Env env, string regex, int index, int end, t:SemType restTy) returns t:SemType {
    RegexPattern pattern = nextPattern(regex, index, end + 1);
    if pattern is Star {
        return starToSemType(env, regex, pattern, end, restTy);
    }
    else if pattern is Or {
        return orToSemType(env, regex, pattern, end, restTy);
    }
    else if pattern is End {
        return restTy;
    }
    else {
        string:Char char = regex[index];
        t:ListDefinition defn = new;
        return defineReadonlyListType(defn, env, [t:stringConst(char), regexToSemTypeInner(env, regex, index + 1, end, restTy)]);
    }
}

function regexToIntermediateTypeInner(RegexContext cx, t:Env env, string regex, int index, int end, IntermediateType restTy) returns IntermediateType {
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
    IntermediateTypeActual ty = cx.listType(env);
    ty.operands = [cx.terminalType(t:stringConst(char)), regexToIntermediateTypeInner(cx, env, regex, index + 1, end, restTy)];
    return ty;
} 

function starToSemType(t:Env env, string regex, Star pattern, int end, t:SemType restTy) returns t:SemType {
    t:SemType rest = regexToSemTypeInner(env, regex, pattern.nextIndex, end, restTy);
    t:ListDefinition defn = new;
    t:SemType ty = t:union(rest, getReadonlyListType(defn, env));
    PatternRange range = pattern.range;
    _ = starToSemTypeInner(env, regex, range.startIndex, range.startIndex, range.endIndex, ty, defn);
    return ty;
}

function starToIntermediateType(RegexContext cx, t:Env env, string regex, Star pattern, int end, IntermediateType restTy) returns IntermediateType {
    IntermediateType rest = regexToIntermediateTypeInner(cx, env, regex, pattern.nextIndex, end, restTy);
    IntermediateTypeActual ty = cx.unionType();
    PatternRange range = pattern.range;
    IntermediateType recursiveTy = starToIntermediateTypeInnner(cx, env, regex, range.startIndex, range.startIndex, range.endIndex, ty.name);
    ty.operands = [recursiveTy, rest];
    return ty;
}

function starToIntermediateTypeInnner(RegexContext cx, t:Env env, string regex, int index, int startIndex, int endIndex, IntermediateTypeReference recTy) returns IntermediateType {
    RegexPattern pattern = nextPattern(regex, index, endIndex + 1);
    if pattern is End {
        panic error("unexpected");
    }
    if (pattern is Star && pattern.range.startIndex == startIndex && pattern.range.endIndex == endIndex) || pattern is Concat {
        string:Char char = regex[index];
        IntermediateTypeActual ty = cx.listType(env);
        if index == endIndex {
            // last character in the pattern
            ty.operands = [cx.terminalType(t:stringConst(char)), recTy];
        }
        else {
            ty.operands = [cx.terminalType(t:stringConst(char)), starToIntermediateTypeInnner(cx, env, regex, index + 1, startIndex, endIndex, recTy)];
        }
        return ty;
    }
    return regexToIntermediateTypeInner(cx, env, regex, index, endIndex, recTy);
}

function orToSemType(t:Env env, string regex, Or pattern, int end, t:SemType restTy) returns t:SemType {
    t:SemType rest = regexToSemTypeInner(env, regex, pattern.nextIndex, end, restTy);
    t:SemType lhs = regexToSemTypeInner(env, regex, pattern.lhs.startIndex, pattern.lhs.endIndex, rest);
    t:SemType rhs = regexToSemTypeInner(env, regex, pattern.rhs.startIndex, pattern.rhs.endIndex, rest);
    return t:union(lhs, rhs);
}

function orToIntermediateType(RegexContext cx, t:Env env, string regex, Or pattern, int end, IntermediateType restTy) returns IntermediateType {
    IntermediateType rest = regexToIntermediateTypeInner(cx, env, regex, pattern.nextIndex, end, restTy);
    IntermediateType lhs = regexToIntermediateTypeInner(cx, env, regex, pattern.lhs.startIndex, pattern.lhs.endIndex, rest);
    IntermediateType rhs = regexToIntermediateTypeInner(cx, env, regex, pattern.rhs.startIndex, pattern.rhs.endIndex, rest);
    IntermediateTypeActual ty = cx.unionType();
    ty.operands = [lhs, rhs];
    return ty;
}

function starToSemTypeInner(t:Env env, string regex, int index, int startIndex, int endIndex, t:SemType recTy, t:ListDefinition recListDefn) returns t:SemType{
    t:ListDefinition defn = (index == startIndex) ? recListDefn : new;
    RegexPattern pattern = nextPattern(regex, index, endIndex + 1);
    if pattern is End {
        panic error("unexpected");
    }
    if (pattern is Star && pattern.range.startIndex == startIndex && pattern.range.endIndex == endIndex) || pattern is Concat {
        string:Char char = regex[index];
        if index == endIndex {
            // last character in the pattern
            return defineReadonlyListType(defn, env, [t:stringConst(char), recTy]);
        }
        else {
            return defineReadonlyListType(defn, env, [t:stringConst(char),
                                                      starToSemTypeInner(env, regex, index + 1, startIndex, endIndex, recTy, recListDefn)]);
        }
    }
    else {
        t:SemType unionType = pattern is Star ? starToSemType(env, regex, pattern, endIndex, recTy) : orToSemType(env, regex, pattern, endIndex, recTy);
        if index == startIndex {
            t:Context cx = t:contextFromEnv(env);
            t:ListMemberTypes memberTypes = t:listAllMemberTypes(cx, unionType); // unionType is [T1, T2] | [T3, T4] == [S1, S2]
            t:SemType[] memberSemTypes = memberTypes[1];
            return defineReadonlyListType(defn, env, memberSemTypes);
        }
        return unionType;
    }
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
