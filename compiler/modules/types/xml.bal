// Implementation specific to basic type xml.

public type XmlSubtype readonly & record {|
    boolean emptyAllowed;
    int allowedTypes;
    BddNode? rest;
|};

const int TEXT = 1;
const int ELEM_RO = 1 << 1;
const int PI_RO = 1 << 2;
const int COMMENT_RO = 1 << 3;
const int ELEM_RW = 1 << 4;
const int PI_RW = 1 << 5;
const int COMMENT_RW = 1 << 6;
type XmlSingletonUT TEXT|ELEM_RO|ELEM_RW|PI_RO|PI_RW|COMMENT_RO|COMMENT_RW;

function xmlSingleton(XmlSingletonUT xmlUT) returns SemType {
    XmlSubtype st = {
        emptyAllowed: false,
        allowedTypes: xmlUT,
        rest: () 
    };
    return uniformSubtype(UT_XML_RW, st);
}

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