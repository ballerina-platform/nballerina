// Implementation specific to basic type string.

type StringSubtype readonly & record {|
    CharStringSubtype char;
    NonCharStringSubtype nonChar;
|};

// allowed = false, empty values means `String:char`
type CharStringSubtype readonly & record {|
    boolean allowed;
    string:Char[] values;
|};

type NonCharStringSubtype readonly & record {|
    boolean allowed;
    string[] values;
|};

public function stringConst(string value) returns SemType {
    StringSubtype st;
    if (value.length() == 1) {
        st = {
            char: {allowed: true, values: [<string:Char>value]},
            nonChar: {allowed: true, values: []}
        };
    } else {
        st = {
            char: {allowed: false, values: []},
            nonChar: {allowed: true, values: [value]}
        };
    }
    return uniformSubtype(UT_STRING, st);
}

public function stringChar() returns SemType {
    StringSubtype st = {
            char: {allowed: false, values: []},
            nonChar: {allowed: true, values: []}
        };
    return uniformSubtype(UT_STRING, st);
}

function isCharAllowed(StringSubtype st) returns boolean {
    return !st.char.allowed && st.char.values.length() == 0;
}

function stringSubtypeSingleValue(SubtypeData d) returns string? {
    if d is boolean {
        return ();
    }
    var st =  <StringSubtype>d;
    if isCharAllowed(st) {
        return ();
    }
    var { char, nonChar } = st;
    if !nonChar.allowed {
        return ();
    }
    if char.allowed {
        if char.values.length() == 1 && nonChar.values.length() == 0 {
            return char.values[0];
        }
    } else {
        if nonChar.values.length() == 1 {
            return nonChar.values[0];
        }
    }
}

function stringSubtypeContains(SubtypeData d, string s) returns boolean {
    if d is boolean {
        return d;
    }
    StringSubtype st = <StringSubtype>d;
    var { char, nonChar } = st;

    if s.length() == 1 {
        return char.values.indexOf(<string:Char>s) != () ? char.allowed : !char.allowed;
    }

    return nonChar.values.indexOf(s) != () ? nonChar.allowed : !nonChar.allowed;
}

function stringSubtypeUnion(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    string:Char[] chars = [];
    string[] nonChars = [];
    boolean charsAllowed = enumerableSubtypeUnion((<StringSubtype>d1).char, (<StringSubtype>d2).char, chars);
    boolean nonCharsAllowed = enumerableSubtypeUnion((<StringSubtype>d1).nonChar, (<StringSubtype>d2).nonChar, nonChars);

    return {
        char: {allowed: charsAllowed, values: chars.cloneReadOnly()},
        nonChar: {allowed: nonCharsAllowed, values: nonChars.cloneReadOnly()}
    };
}

function stringSubtypeIntersect(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    string:Char[] chars = [];
    string[] nonChars = [];
    boolean charsAllowed = enumerableSubtypeIntersect((<StringSubtype>d1).char, (<StringSubtype>d2).char, chars);
    boolean nonCharsAllowed = enumerableSubtypeIntersect((<StringSubtype>d1).nonChar, (<StringSubtype>d2).nonChar, nonChars);
    
    return {
        char: {allowed: charsAllowed, values: chars.cloneReadOnly()},
        nonChar: {allowed: nonCharsAllowed, values: nonChars.cloneReadOnly()}
    };
}

function stringSubtypeDiff(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    return stringSubtypeIntersect(d1, stringSubtypeComplement(d2));
}

function stringSubtypeComplement(SubtypeData d) returns SubtypeData {
    var {char, nonChar} = <StringSubtype>d;
    return {
        char: {allowed: !char.allowed, values: char.values.cloneReadOnly()},
        nonChar: {allowed: !nonChar.allowed, values: nonChar.values.cloneReadOnly()}
    };
}

function createStringSubtype(boolean allowed, string[] values) returns SubtypeData {
    if values.length() == 0 {
        return !allowed;
    }
    string[] nonChars = [];
    string:Char[] chars = [];
    foreach string v in values {
        if v.length() == 1 {
            chars.push(<string:Char>v);
        } else {
            nonChars.push(v);
        }
    }

    return {
        char: {allowed, values: chars.cloneReadOnly()},
        nonChar: {allowed, values: nonChars.cloneReadOnly()}
    };
}

final UniformTypeOps stringOps = {
    union: stringSubtypeUnion,
    intersect: stringSubtypeIntersect,
    diff: stringSubtypeDiff,
    complement: stringSubtypeComplement,
    // Empty string sets don't use subtype representation.
    isEmpty: notIsEmpty
};
