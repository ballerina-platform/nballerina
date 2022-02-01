// Implementation specific to basic type string.

public type StringSubtype readonly & record {|
    CharStringSubtype char;
    NonCharStringSubtype nonChar;
|};

// allowed = false with empty `values` means `String:char`
public type CharStringSubtype readonly & record {|
    boolean allowed;
    string:Char[] values;
|};

// allowed = false with empty `values` mean all non char strings
public type NonCharStringSubtype readonly & record {|
    boolean allowed;
    string[] values;
|};

type StringSubtypeIntersectionResult record {|
    boolean covered;
    int[] indices;
|};

public function stringConst(string value) returns ComplexSemType {
    CharStringSubtype char;
    NonCharStringSubtype nonChar;
    
    if value.length() == 1 {
        char = { allowed: true, values: [<string:Char>value] };
        nonChar = { allowed: true, values: [] };
    }
    else {
        char = { allowed: true, values: [] };
        nonChar = { allowed: true, values: [value] };
    }
    return uniformSubtype(UT_STRING, { char, nonChar });
}

function stringChar() returns SemType {
    StringSubtype st = {
        char: { allowed: false, values: [] }, 
        nonChar: { allowed: true, values: [] }
    };
    return uniformSubtype(UT_STRING, st);
}

function stringSubtypeSingleValue(SubtypeData d) returns string? {
    if d is boolean {
        return ();
    }
    var { char, nonChar } = <StringSubtype>d;
    int charCount = char.allowed ? char.values.length() : 2;
    int nonCharCount = nonChar.allowed ? nonChar.values.length() : 2;
    if charCount + nonCharCount == 1 {
        return charCount != 0 ? char.values[0] : nonChar.values[0];
    }
    return ();
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

function stringSubtypeContainedIn(StringSubtype subtype, string[] values) returns boolean {
    return stringSubtypeIntersection(subtype, values).covered;
}

// `values` represents a subtype of string containing each of the members of the list.
// `values` must be sorted.
// returns { covered, indices }
// Where `covered` is true if the first arg is a subtype of the type represented by the second arg
// and `indices`` contains the index of each member of values that is a subtype of the first arg
function stringSubtypeIntersection(StringSubtype subtype, string[] values) returns StringSubtypeIntersectionResult {
    int[] indices = [];
    var { char, nonChar } = subtype;
    int stringConsts = 0;
    if char.allowed {
        stringListIntersection(values, char.values, indices);
        stringConsts = char.values.length();
    }
    else if char.values.length() == 0 {
        foreach var i in 0 ..< values.length() {
            if values[i].length() == 1 {
                indices.push(i);
            }
        }
    }
    if nonChar.allowed {
        stringListIntersection(values, nonChar.values, indices);
        stringConsts += nonChar.values.length();
    }
    else if nonChar.values.length() == 0 {
        foreach var i in 0 ..< values.length() {
            if values[i].length() != 1 {
                indices.push(i);
            }
        }
    }
    return { covered: stringConsts == indices.length(), indices };
}

function stringListIntersection(string[] values, string[] target, int[] indices) {
    int i1 = 0;
    int i2 = 0;
    int len1 = values.length();
    int len2 = target.length();
    while true {
        if i1 >= len1 || i2 >= len2 {
            break;
        }
        else {
            match compareEnumerable(values[i1], target[i2]) {
                EQ => {
                    indices.push(i1);
                    i1 += 1;
                    i2 += 1;
                }
                LT => {
                    i1 += 1;
                }
                GT => {
                    i2 += 1;
                }
            }
        }
    }
}

function stringSubtypeUnion(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    StringSubtype sd1 = <StringSubtype>d1;
    StringSubtype sd2 = <StringSubtype>d2;
    string:Char[] chars = [];
    string[] nonChars = [];
    boolean charsAllowed = enumerableSubtypeUnion(sd1.char, sd2.char, chars);
    boolean nonCharsAllowed = enumerableSubtypeUnion(sd1.nonChar, sd2.nonChar, nonChars);

    return createStringSubtype(
        { allowed: charsAllowed, values: chars.cloneReadOnly() },
        { allowed: nonCharsAllowed, values: nonChars.cloneReadOnly() }
    );
} 

function stringSubtypeIntersect(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    if d1 is boolean {
        return d1 == true ? d2 : false;
    }
    if d2 is boolean {
        return d2 == true ? d1 : false;
    }

    StringSubtype sd1 = <StringSubtype>d1;
    StringSubtype sd2 = <StringSubtype>d2;
    string:Char[] chars = [];
    string[] nonChars = [];
    boolean charsAllowed = enumerableSubtypeIntersect(sd1.char, sd2.char, chars);
    boolean nonCharsAllowed = enumerableSubtypeIntersect(sd1.nonChar, sd2.nonChar, nonChars);
    
    return createStringSubtype(
        { allowed: charsAllowed, values: chars.cloneReadOnly() },
        { allowed: nonCharsAllowed, values: nonChars.cloneReadOnly() }
    );
}

function stringSubtypeDiff(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    return stringSubtypeIntersect(d1, stringSubtypeComplement(d2));
}

function stringSubtypeComplement(SubtypeData d) returns SubtypeData {
    var {char, nonChar} = <StringSubtype>d;
    if char.values.length() == 0 && nonChar.values.length() == 0 {
        if char.allowed && nonChar.allowed {
            return true;
        }
        else if !char.allowed && !nonChar.allowed {
            return false;
        }
    }
    return createStringSubtype(
        { allowed: !char.allowed, values: char.values },
        { allowed: !nonChar.allowed, values: nonChar.values }
    );
}

function createStringSubtype(CharStringSubtype char, NonCharStringSubtype nonChar) returns SubtypeData {
    if char.values.length() == 0 && nonChar.values.length() == 0 {
        if !char.allowed && !nonChar.allowed {
            return true;
        }
        else if char.allowed && nonChar.allowed {
            return false;
        }
    }
    return { char, nonChar };
}

final UniformTypeOps stringOps = {
    union: stringSubtypeUnion,
    intersect: stringSubtypeIntersect,
    diff: stringSubtypeDiff,
    complement: stringSubtypeComplement,
    // Empty string sets don't use subtype representation.
    isEmpty: notIsEmpty
};
