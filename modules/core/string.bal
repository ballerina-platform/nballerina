// Implementation specific to basic type string.

type StringSubtype readonly & record {|
    boolean allowed;
    string[] values;
|};

public function stringConst(string value) returns SemType {
    StringSubtype st = { allowed: true, values: [value] };
    return uniformSubtype(UT_STRING, st);
}

function stringSubtypeUnion(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    StringSubtype t1 = <StringSubtype>d1;
    StringSubtype t2 = <StringSubtype>d2;
    StringSubtype res;
    boolean b1 = t1.allowed;
    boolean b2 = t2.allowed;
    if b1 && b2 {
       return createStringSubtype(true, stringListUnion(t1.values, t2.values));
    }
    else if !b1 && !b2 {
       return createStringSubtype(false, stringListIntersect(t1.values, t2.values));
    }
    else if b1 && !b2 {
       return createStringSubtype(false, stringListDiff(t2.values, t1.values));
    }
    else {
        // !b1 && b2
       return createStringSubtype(false, stringListDiff(t1.values, t2.values));
    }
}

function stringSubtypeIntersect(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    StringSubtype t1 = <StringSubtype>d1;
    StringSubtype t2 = <StringSubtype>d2;
    StringSubtype res;
    boolean b1 = t1.allowed;
    boolean b2 = t2.allowed;
    if b1 && b2 {
       return createStringSubtype(true, stringListIntersect(t1.values, t2.values));
    }
    else if !b1 && !b2 {
       return createStringSubtype(false, stringListUnion(t1.values, t2.values));
    }
    else if b1 && !b2 {
       return createStringSubtype(true, stringListDiff(t1.values, t2.values));
    }
    else {
        // !b1 && b2
       return createStringSubtype(true, stringListDiff(t2.values, t1.values));
    }
}

function stringSubtypeDiff(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    return stringSubtypeIntersect(d1, stringSubtypeComplement(d2));
}

function stringSubtypeComplement(SubtypeData d) returns SubtypeData {
    StringSubtype s = <StringSubtype>d;
    return createStringSubtype(!s.allowed, s.values);
}

function stringListUnion(string[] v1, string[] v2) returns (readonly & string[]) {
    string[] result = [];
    int i1 = 0;
    int i2 = 0;
    int len1 = v1.length();
    int len2 = v2.length();
    while true {
        if i1 >= len1 {
            if i2 >= len2 {
                break;
            }
            result.push(v2[i2]);
            i2 += 1;
        }
        else if i2 >= len2 {
            result.push(v1[i1]);
            i1 += 1;
        }
        else {
            string s1 = v1[i1];
            string s2 = v2[i2];
            if s1 == s2 {
                result.push(s1);
                i1 += 1;
                i2 += 1;
            }
            else if s1 < s2 {
                result.push(s1);
                i1 += 1;
            }
            else {
                result.push(s2);
                i2 += 1;
            }
        }
    }
    return result.cloneReadOnly();
}

function stringListIntersect(string[] v1, string[] v2) returns (readonly & string[]) {
    string[] result = [];
    int i1 = 0;
    int i2 = 0;
    int len1 = v1.length();
    int len2 = v2.length();
    while true {
        if i1 >= len1 || i2 >= len2 {
            break;
        }
        else {
            string s1 = v1[i1];
            string s2 = v2[i2];
            if s1 == s2 {
                result.push(s1);
                i1 += 1;
                i2 += 1;
            }
            else if s1 < s2 {
                i1 += 1;
            }
            else {
                i2 += 1;
            }
        }
    }
    return result.cloneReadOnly();
}

function stringListDiff(string[] v1, string[] v2) returns (readonly & string[]) {
    string[] result = [];
    int i1 = 0;
    int i2 = 0;
    int len1 = v1.length();
    int len2 = v2.length();
    while true {
        if i1 >= len1 {
            break;
        }
        if i2 >= len2 {
            result.push(v1[i1]);
            i1 += 1;
        }
        else {
            string s1 = v1[i1];
            string s2 = v2[i2];
            if s1 == s2 {
                i1 += 1;
                i2 += 1;
            }
            else if s1 < s2 {
                result.push(s1);
                i1 += 1;
            }
            else {
                i2 += 1;
            }
        }
    }
    return result.cloneReadOnly();
}

function createStringSubtype(boolean allowed, string[] values) returns SubtypeData {
    if values.length() == 0 {
        return !allowed;
    }
    StringSubtype res = { allowed, values: values.cloneReadOnly() };
    return res;
}

final UniformTypeOps stringOps = {
    union: stringSubtypeUnion,
    intersect: stringSubtypeIntersect,
    diff: stringSubtypeDiff,
    complement: stringSubtypeComplement,
    // Empty string sets don't use subtype representation.
    isEmpty: notIsEmpty
};