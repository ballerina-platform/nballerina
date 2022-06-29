import ballerina/test;
import ballerina/io;
import ballerina/regex;

type TestCase [string, string, boolean];
// TODO: is StringList a better name?
type StringAsList ()|[string:Char, StringAsList];

@test:Config{
    dataProvider: readRegexTests
}
function testRegex(string str, string regex, boolean expected) {
    Env env = new;
    Context context = new(env);
    SemType strTy = stringToSingleton(env, str);
    // SemType regexTy = regexToSingleton(env, regex);
    // io:println(regex, "=>", parseRegex(regex));
    SemType regexTy = regexToSemType(env, regex);
    boolean isMatch = isSubtype(context, strTy, regexTy);
    if regex:matches(str, regex) != expected {
        io:println("jBal discrepancy in ", regex, ":", str);
    }// sanity check to make sure our test is valid
    // if isMatch != expected {
    //     io:println(regexTy, "\n");
    // }
    test:assertEquals(isMatch, expected);
}

function stringToSingleton(Env env, string str) returns SemType {
    StringAsList stringList = stringToList(str);
    return stringListToSemType(env, stringList);
}

function stringToList(string str) returns StringAsList {
    if str.length() == 0 {
        return ();
    }
    return [str[0], stringToList(str.substring(1))];
}

function stringListToSemType(Env env, StringAsList stringList) returns SemType {
    if stringList is () {
        return NIL;
    }
    ListDefinition definition = new;
    return definition.define(env, [stringConst(stringList[0]), stringListToSemType(env, stringList[1])]);
}

function regexToSemType(Env env, string regex) returns SemType {
    return regexToSemTypeInner(env, regex, 0, regex.length(), NIL);
}

function regexToSemTypeInner(Env env, string regex, int index, int end, SemType restTy) returns SemType {
    if index == end {
        return restTy;
    }
    else {
        RegexPattern pattern = nextPattern(regex, index, end);
        if pattern is Star {
            SemType rest = regexToSemTypeInner(env, regex, pattern.nextIndex, end, restTy);
            ListDefinition defn = new;
            SemType ty = union(rest, defn.getSemType(env));
            PatternRange range = pattern.range;
            _ = starToSemType(env, regex, range.startIndex, range.startIndex, range.endIndex, ty, defn);
            return ty;
        }
        else if pattern is Or {
            SemType rest = regexToSemTypeInner(env, regex, pattern.nextIndex, end, restTy);
            SemType lhs = regexToSemTypeInner(env, regex, pattern.lhs.startIndex, pattern.lhs.endIndex + 1, rest);
            SemType rhs = regexToSemTypeInner(env, regex, pattern.rhs.startIndex, pattern.rhs.endIndex + 1, rest);
            return union(lhs, rhs);
        }
        else {
            string:Char char = regex[index];
            ListDefinition defn = new;
            return defn.define(env, [stringConst(char), regexToSemTypeInner(env, regex, index+1, end, restTy)]);
        }
    }
}

function starToSemType(Env env, string regex, int index, int startIndex, int endIndex, SemType recTy, ListDefinition recListDefn) returns SemType{
    ListDefinition defn = (index == startIndex) ? recListDefn : new;
    RegexPattern pattern = nextPattern(regex, index, endIndex);
    if (pattern is Star && pattern.range.startIndex == startIndex && pattern.range.endIndex == endIndex ) || pattern is Seq {
        string:Char char = regex[index];
        if index == endIndex {
            // last character in the pattern
            return defn.define(env, [stringConst(char), recTy]);
        }
        else {
            return defn.define(env, [stringConst(char),
                                     starToSemType(env, regex, index + 1, startIndex, endIndex, recTy, recListDefn)]);
        }
    }
    else if pattern is Star {
        // io:println(regex, ":", regex.substring(pattern.nextIndex, endIndex+1), "<=", pattern, regex[endIndex]);
        SemType rest = regexToSemTypeInner(env, regex, pattern.nextIndex, endIndex+1, recTy);
        ListDefinition innerLD = new;
        SemType ty = union(rest, innerLD.getSemType(env));
        // pr-todo fix pattern.pattern
        PatternRange range = pattern.range;
        _ = starToSemType(env, regex, range.startIndex, range.startIndex, range.endIndex, ty, innerLD);
        return ty;
    }
    else {
        panic error("not implemented");
    }
}

type RegexPattern Seq|Star|Or;

type Seq "seq";

type PatternRange record {|
    int startIndex; // position of first char in pattern (not including "(")
    int endIndex; // position of last char in pattern (not including ")")
|};

type Star record {|
    PatternRange range;
    int nextIndex; // starting position of the next pattern
|};

type Or record {|
    PatternRange lhs;
    PatternRange rhs;
    int nextIndex;
|};

function nextPattern(string regex, int index, int end) returns RegexPattern {
    var [lhs, lhsWrapped] = readPattern(regex, index);
    int endIndex = lhsWrapped ? (lhs.endIndex + 2) : (lhs.endIndex + 1);
    if end > endIndex {
        string op = regex[endIndex];
        if op == "*" {
            return {
                range: lhs,
                nextIndex: endIndex + 1
            };
        }
        else if op == "|" {
            var [rhs, rhsWrapped] = readPattern(regex, endIndex + 1);
            int nextIndex = rhsWrapped ? (rhs.endIndex + 2) : (rhs.endIndex + 1);
            return {
                lhs,
                rhs,
                nextIndex
            };
        }
    }
    return "seq";
}

function readPattern(string regex, int index) returns [PatternRange, boolean] {
    if regex[index] != "(" {
        return [{ startIndex: index, endIndex: index }, false];
    }
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

function readRegexTests() returns map<TestCase>|error {
    map<TestCase> tests = {};
    json data = check io:fileReadJson("modules/types/tests/data/regextest.json");
    TestCase[] testCases = check data.fromJsonWithType();
    foreach var test in testCases {
        string equality = test[2] ? "==" : "!=";
        tests[string `${test[0]} ${equality} ${test[1]}`] = test;
    }
    return tests;
}
