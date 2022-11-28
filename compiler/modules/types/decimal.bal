// Implementation specific to basic type decimal.

public type DecimalSubtype readonly & record {|
    boolean allowed;
    decimal[] values;
|};

public function decimalConst(decimal value) returns ComplexSemType {
    DecimalSubtype st = { allowed: true, values: [value] };
    return basicSubtype(BT_DECIMAL, st);
}

function decimalSubtypeSingleValue(SubtypeData d) returns decimal? {
    if d is boolean {
        return ();
    }
    DecimalSubtype s = <DecimalSubtype>d;
    if !s.allowed {
        return ();
    }
    decimal[] values = s.values;
    if values.length() != 1 {
        return ();
    }
    return values[0];
}

function decimalSubtypeContains(SubtypeData d, decimal f) returns boolean {
    if d is boolean {
        return d;
    }
    DecimalSubtype v = <DecimalSubtype>d;
    foreach decimal val in v.values {
        if val == f {
            return v.allowed;
        }
    }
    return !v.allowed;
}

function decimalSubtypeUnion(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    decimal[] values = [];
    boolean allowed = enumerableSubtypeUnion(<DecimalSubtype>d1, <DecimalSubtype>d2, values);
    return createDecimalSubtype(allowed, values);
}

function decimalSubtypeIntersect(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    decimal[] values = [];
    boolean allowed = enumerableSubtypeIntersect(<DecimalSubtype>d1, <DecimalSubtype>d2, values);
    return createDecimalSubtype(allowed, values);
}

function decimalSubtypeComplement(SubtypeData d) returns SubtypeData {
    DecimalSubtype s = <DecimalSubtype>d;
    return createDecimalSubtype(!s.allowed, s.values);
}

function createDecimalSubtype(boolean allowed, decimal[] values) returns SubtypeData {
    if values.length() == 0 {
        return !allowed;
    }
    DecimalSubtype res = { allowed, values: values.cloneReadOnly() };
    return res;
}

final BasicTypeOps decimalOps = {
    union: decimalSubtypeUnion,
    intersect: decimalSubtypeIntersect,
    complement: decimalSubtypeComplement,
    isEmpty: notIsEmpty
};
