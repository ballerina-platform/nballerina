// Implementation specific to basic type xml.

public type XmlSubtype readonly & record {|
    boolean emptyAllowed;
    int allowedTypes;
    BddNode? rest;
|};

function xmlSubtypeUnion(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtype v1 = <XmlSubtype>d1;
    XmlSubtype v2 = <XmlSubtype>d2;
    
    return false;
}

function xmlSubtypeIntersect(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtype v1 = <XmlSubtype>d1;
    XmlSubtype v2 = <XmlSubtype>d2;
    return false;
}

function xmlSubtypeDiff(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtype v1 = <XmlSubtype>d1;
    XmlSubtype v2 = <XmlSubtype>d2;

    return false;
}

function xmlSubtypeComplement(SubtypeData d) returns SubtypeData {
    XmlSubtype v = <XmlSubtype>d;
    return false;
}

function xmlSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    return false;
}

function xmlRoSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    return false;
}

final UniformTypeOps xmlRoOps = {
    union: xmlSubtypeUnion,
    intersect: xmlSubtypeIntersect,
    diff: xmlSubtypeDiff,
    complement: xmlSubtypeComplement,
    isEmpty: xmlRoSubtypeIsEmpty
};

final UniformTypeOps xmlRwOps = {
    union: xmlSubtypeUnion,
    intersect: xmlSubtypeIntersect,
    diff: xmlSubtypeDiff,
    complement: xmlSubtypeComplement,
    isEmpty: xmlSubtypeIsEmpty
};