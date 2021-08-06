// Implementation specific to basic type float.

type FloatSubtype readonly & record {|
    boolean allowed;
    float[] values;
|};

public function floatConst(float value) returns SemType {
    FloatSubtype st = { allowed: true, values: [value] };
    return uniformSubtype(UT_FLOAT, st);
}

function floatSubtypeIntersect(SubtypeData d1, SubtypeData d2) returns SubtypeData =>
    enumerableSubtypeIntersect(<FloatSubtype>d1, <FloatSubtype>d2);


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
    union: function (SubtypeData d1, SubtypeData d2) returns SubtypeData =>
               enumerableSubtypeUnion(<FloatSubtype>d1, <FloatSubtype>d2),
    diff: function (SubtypeData d1, SubtypeData d2) returns SubtypeData =>
               floatSubtypeIntersect(d1, floatSubtypeComplement(d2)),
    intersect: floatSubtypeIntersect,
    complement: floatSubtypeComplement,
    // Empty float sets don't use subtype representation.
    isEmpty: notIsEmpty
};
