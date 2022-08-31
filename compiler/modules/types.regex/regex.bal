import wso2/nballerina.types as t;

type StringAsList ()|[string:Char, StringAsList];

type RegexPattern Concat|Star|Or;

type Concat "concat";

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
    return t:intersect(defn.define(env, members), t:LIST_RO);
}

function getReadonlyListType(t:ListDefinition defn, t:Env env) returns t:SemType {
    return t:intersect(defn.getSemType(env), t:LIST_RO);
}

function stringListToSemType(t:Env env, StringAsList stringList) returns t:SemType {
    if stringList is () {
        return t:NIL;
    }
    t:ListDefinition definition = new;
    return defineReadonlyListType(definition, env, [t:stringConst(stringList[0]), stringListToSemType(env, stringList[1])]);
}

public function regexToSemType(t:Env env, string regex) returns t:SemType {
    return regexToSemTypeInner(env, regex, 0, regex.length(), t:NIL);
}

function regexToSemTypeInner(t:Env env, string regex, int index, int end, t:SemType restTy) returns t:SemType {
    if index == end {
        return restTy;
    }
    else {
        RegexPattern pattern = nextPattern(regex, index, end);
        if pattern is Star {
            return starToSemType(env, regex, pattern, end, restTy);
        }
        else if pattern is Or {
            return orToSemType(env, regex, pattern, end, restTy);
        }
        else {
            string:Char char = regex[index];
            t:ListDefinition defn = new;
            return defineReadonlyListType(defn, env, [t:stringConst(char), regexToSemTypeInner(env, regex, index + 1, end, restTy)]);
        }
    }
}

function starToSemType(t:Env env, string regex, Star pattern, int end, t:SemType restTy) returns t:SemType {
    t:SemType rest = regexToSemTypeInner(env, regex, pattern.nextIndex, end, restTy);
    t:ListDefinition defn = new;
    t:SemType ty = t:union(rest, getReadonlyListType(defn, env));
    PatternRange range = pattern.range;
    _ = starToSemTypeInner(env, regex, range.startIndex, range.startIndex, range.endIndex, ty, defn);
    return ty;
}

function orToSemType(t:Env env, string regex, Or pattern, int end, t:SemType restTy) returns t:SemType {
    t:SemType rest = regexToSemTypeInner(env, regex, pattern.nextIndex, end, restTy);
    t:SemType lhs = regexToSemTypeInner(env, regex, pattern.lhs.startIndex, pattern.lhs.endIndex + 1, rest);
    t:SemType rhs = regexToSemTypeInner(env, regex, pattern.rhs.startIndex, pattern.rhs.endIndex + 1, rest);
    return t:union(lhs, rhs);
}

function starToSemTypeInner(t:Env env, string regex, int index, int startIndex, int endIndex, t:SemType recTy, t:ListDefinition recListDefn) returns t:SemType{
    t:ListDefinition defn = (index == startIndex) ? recListDefn : new;
    RegexPattern pattern = nextPattern(regex, index, endIndex);

    if (pattern is Star && pattern.range.startIndex == startIndex && pattern.range.endIndex == endIndex ) || pattern is Concat {
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
        t:SemType unionType = pattern is Star ? starToSemType(env, regex, pattern, endIndex + 1, recTy) : orToSemType(env, regex, pattern, endIndex + 1, recTy);
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
    var [lhs, lhsWrapped] = readPattern(regex, index, end);
    int endIndex = lhsWrapped ? (lhs.endIndex + 2) : (lhs.endIndex + 1);
    if end > endIndex {
        string op = regex[endIndex];
        if op == "*" {
            return { range: lhs, nextIndex: endIndex + 1 };
        }
        else if op == "|" {
            var [rhs, rhsWrapped] = readPattern(regex, endIndex + 1, end);
            int nextIndex = rhsWrapped ? (rhs.endIndex + 2) : (rhs.endIndex + 1);
            return { lhs, rhs, nextIndex };
        }
    }
    return "concat";
}

function readPattern(string regex, int index, int end) returns [PatternRange, boolean] {
    if regex[index] != "(" {
        int endIndex = index;
        while endIndex < (end) && regex[endIndex] !is "("|"|"|"*" {
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
