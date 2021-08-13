// Implementation specific to basic type float.

type FloatSubtype readonly & record {|
    boolean allowed;
    float[] values;
|};

public function floatConst(float value) returns SemType {
    FloatSubtype st = { allowed: true, values: [value] };
    return uniformSubtype(UT_FLOAT, st);
}

function floatSubtypeUnion(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    float[] values = [];
    boolean allowed = enumerableSubtypeUnion(<FloatSubtype>d1, <FloatSubtype>d2, values);
    return createFloatSubtype(allowed, values);
}

function floatSubtypeIntersect(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    float[] values = [];
    boolean allowed = enumerableSubtypeIntersect(<FloatSubtype>d1, <FloatSubtype>d2, values);
    return createFloatSubtype(allowed, values);
}

function floatSubtypeDiff(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    return floatSubtypeIntersect(d1, floatSubtypeComplement(d2));
}

function floatSubtypeComplement(SubtypeData d) returns SubtypeData {
    FloatSubtype s = <FloatSubtype>d;
    return createFloatSubtype(!s.allowed, s.values);
}

function createFloatSubtype(boolean allowed, float[] values) returns SubtypeData {
    if values.length() == 0 {
        return !allowed;
    }
    FloatSubtype res = { allowed, values: values.cloneReadOnly() };
    return res;
}

final UniformTypeOps floatOps = {
    union: floatSubtypeUnion,
    intersect: floatSubtypeIntersect,
    diff: floatSubtypeDiff,
    complement: floatSubtypeComplement,
    // Empty float sets don't use subtype representation.
    isEmpty: notIsEmpty
};
