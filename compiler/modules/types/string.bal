// Implementation specific to basic type string.

type StringSubtype readonly & record {|
    boolean allowed;
    string[] values;
|};

public function stringConst(string value) returns SemType {
    StringSubtype st = { allowed: true, values: [value] };
    return uniformSubtype(UT_STRING, st);
}

function stringSubtypeSingleValue(SubtypeData d) returns string? {
    if d is boolean {
        return ();
    }
    StringSubtype s = <StringSubtype>d;
    if !s.allowed {
        return ();
    }
    string[] values = s.values;
    if values.length() != 1 {
        return ();
    }
    return values[0];
}

function stringSubtypeContains(SubtypeData d, string s) returns boolean {
    if d is boolean {
        return d;
    }
    StringSubtype v = <StringSubtype>d;
    return v.values.indexOf(s) != () ? v.allowed : !v.allowed;
}

function stringSubtypeIntersect(SubtypeData d1, SubtypeData d2) returns SubtypeData =>
    enumerableSubtypeIntersect(<StringSubtype>d1, <StringSubtype>d2);

function stringSubtypeComplement(SubtypeData d) returns SubtypeData {
    StringSubtype s = <StringSubtype>d;
    return createStringSubtype(!s.allowed, s.values);
}

function createStringSubtype(boolean allowed, string[] values) returns SubtypeData {
    if values.length() == 0 {
        return !allowed;
    }
    StringSubtype res = { allowed, values: values.cloneReadOnly() };
    return res;
}

final UniformTypeOps stringOps = {
    union: function (SubtypeData d1, SubtypeData d2) returns SubtypeData =>
            enumerableSubtypeUnion(<StringSubtype>d1, <StringSubtype>d2),
    diff: function (SubtypeData d1, SubtypeData d2) returns SubtypeData =>
            stringSubtypeIntersect(d1, stringSubtypeComplement(d2)),
    intersect: stringSubtypeIntersect,
    complement: stringSubtypeComplement,
    // Empty string sets don't use subtype representation.
    isEmpty: notIsEmpty
};
