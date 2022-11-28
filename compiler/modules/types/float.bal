// Implementation specific to basic type float.

public type FloatSubtype readonly & record {|
    boolean allowed;
    float[] values;
|};

public function floatConst(float value) returns ComplexSemType {
    FloatSubtype st = { allowed: true, values: [value] };
    return basicSubtype(BT_FLOAT, st);
}

function floatSubtypeSingleValue(SubtypeData d) returns float? {
    if d is boolean {
        return ();
    }
    FloatSubtype f = <FloatSubtype>d;
    if !f.allowed {
        return ();
    }
    float[] values = f.values;
    if values.length() != 1 {
        return ();
    }
    return values[0];
}

// XXX should this be generified and moved to enumerable? 
function floatSubtypeContains(SubtypeData d, float f) returns boolean {
    if d is boolean {
        return d;
    }
    FloatSubtype v = <FloatSubtype>d;
    int? index = v.values.indexOf(f);
    if index != () {
        return v.allowed;
    }
    return !v.allowed;
}

function floatSubtypeUnion(ProperSubtypeData d1, ProperSubtypeData d2) returns SubtypeData {
    float[] values = [];
    boolean allowed = enumerableSubtypeUnion(<FloatSubtype>d1, <FloatSubtype>d2, values);
    return createFloatSubtype(allowed, values);
}

function floatSubtypeIntersect(ProperSubtypeData d1, ProperSubtypeData d2) returns SubtypeData {
    float[] values = [];
    boolean allowed = enumerableSubtypeIntersect(<FloatSubtype>d1, <FloatSubtype>d2, values);
    return createFloatSubtype(allowed, values);
}

function floatSubtypeComplement(ProperSubtypeData d) returns SubtypeData {
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

final BasicTypeOps floatOps = {
    union: floatSubtypeUnion,
    intersect: floatSubtypeIntersect,
    complement: floatSubtypeComplement,
    // Empty float sets don't use subtype representation.
    isEmpty: notIsEmpty
};
