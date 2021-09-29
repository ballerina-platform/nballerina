// Implementation specific to basic type string.

type StringSubtype readonly & record {|
    CharStringSubtype char;
    NonCharStringSubtype nonChar;
|};

// allowed = false with empty `values` means `String:char`
type CharStringSubtype readonly & record {|
    boolean allowed;
    string:Char[] values;
|};

// allowed = false with empty `values` mean all non char strings
type NonCharStringSubtype readonly & record {|
    boolean allowed;
    string[] values;
|};

public function stringConst(string value) returns SemType {
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

public function stringChar() returns SemType {
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
    int charCount = char.values.length();
    int nonCharCount = nonChar.values.length();
    if char.allowed {
        if nonChar.allowed {
            if charCount == 1 && nonCharCount == 0 {
                return char.values[0];
            }
            if charCount == 0 && nonCharCount == 1 {
                return nonChar.values[0];
            }
        }
        else {
            if charCount == 1 && nonCharCount != 0 {
                return char.values[0];
            }
        }
    } 
    else {
        if  nonChar.allowed && nonCharCount == 1 && charCount != 0 {
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
        { allowed: !char.allowed, values: char.values.cloneReadOnly() },
        { allowed: !nonChar.allowed, values: nonChar.values.cloneReadOnly() }
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
