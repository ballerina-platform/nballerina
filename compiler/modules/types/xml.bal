// Implementation specific to basic type xml.

public type XmlSubtype readonly & record {|
    XmlSubtypeData ro;
    XmlSubtypeData rw;
|};

public type XmlSubtypeData readonly & record {|
    int data;
    Bdd sequence;
|};

const int XML_NEVER = 1;
const int TEXT = 1 << 1;
const int ELEM_RO = 1 << 2;
const int PI_RO = 1 << 3;
const int COMMENT_RO = 1 << 4;
const int ELEM_RW = 1 << 5;
const int PI_RW = 1 << 6;
const int COMMENT_RW = 1 << 7;
type XmlSingletonUT TEXT|ELEM_RO|ELEM_RW|PI_RO|PI_RW|COMMENT_RO|COMMENT_RW;

const int XML_RO_MASK = XML_NEVER | TEXT | ELEM_RO | PI_RO | COMMENT_RO;
const int XML_RW_MASK = ELEM_RW | PI_RW | COMMENT_RW;

function xmlSingleton(XmlSingletonUT xmlUT) returns SemType {
    int roBitset = xmlUT & XML_RO_MASK;
    int rwBitset =  xmlUT & XML_RW_MASK;
    XmlSubtype st = {
        ro: {
            data: roBitset,
            sequence: false
        }, 
        rw: {
            data: rwBitset,
            sequence: false
        }
    };
    UniformTypeCode typeCode = rwBitset == 0 ? UT_XML_RO : UT_XML_RW;
    return uniformSubtype(typeCode, st);
}

public function xmlSequence(SemType constituentType) returns SemType {
    // use getComplexSubtypeData
    XmlSubtype t = <XmlSubtype>(<ComplexSemType>constituentType).subtypeDataList[0];
    XmlSubtypeData ro = {
        data: 0,
        sequence: bddCreate(t.ro.data, true, false, false)
    };
    XmlSubtypeData rw = {
        data: 0,
        sequence: bddCreate(t.rw.data, true, false, false)
    };

    SubtypeData subtypeData = createXmlSubtype(ro, rw);
    if subtypeData is boolean {
        return subtypeData ? XML : NEVER;
    }
    UniformTypeCode typeCode = t.rw.data == 0 ? UT_XML_RO : UT_XML_RW;
    return uniformSubtype(typeCode, <ProperSubtypeData> subtypeData);
}

function createXmlSubtype(XmlSubtypeData ro, XmlSubtypeData rw) returns SubtypeData {
    int allBits = ro.data | rw.data;
    if allBits == 0 && ro.sequence == false && rw.sequence == false {
        return false;
    }
    else if (allBits & XML_NEVER) != 0 && ro.sequence == true && rw.sequence == true {
        return true;
    }
    return { ro, rw };
}

function xmlSubtypeUnion(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtype v1 = <XmlSubtype>d1;
    XmlSubtype v2 = <XmlSubtype>d2;
    int dataRo = v1.ro.data | v2.ro.data;
    int dataRw = v1.rw.data | v2.rw.data;
    // todo: factor into ro1, ro2, rw1, rw2; might look better
    return createXmlSubtype(
        { data :dataRo, sequence: bddUnion(v1.ro.sequence, v2.ro.sequence) },
        { data :dataRw, sequence: bddUnion(v1.rw.sequence, v2.rw.sequence) }
    );
}

function xmlSubtypeIntersect(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtype v1 = <XmlSubtype>d1;
    XmlSubtype v2 = <XmlSubtype>d2;
    int dataRo = v1.ro.data & v2.ro.data;
    int dataRw = v1.rw.data & v2.rw.data;
    return createXmlSubtype(
        { data :dataRo, sequence: bddIntersect(v1.ro.sequence, v2.ro.sequence) },
        { data :dataRw, sequence: bddIntersect(v1.rw.sequence, v2.rw.sequence) }
    );
}

function xmlSubtypeDiff(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtype v1 = <XmlSubtype>d1;
    XmlSubtype v2 = <XmlSubtype>d2;
    int dataRo = v1.ro.data & ~v2.ro.data;
    int dataRw = v1.rw.data & ~v2.rw.data;
    return createXmlSubtype(
        { data :dataRo, sequence: bddDiff(v1.ro.sequence, v2.ro.sequence) },
        { data :dataRw, sequence: bddDiff(v1.rw.sequence, v2.rw.sequence) }
    );
}

function xmlSubtypeComplement(SubtypeData d) returns SubtypeData {
    XmlSubtype v = <XmlSubtype>d;
    int dataRo = XML_RO_MASK & ~v.ro.data;
    int dataRw = XML_RW_MASK & ~v.rw.data;
    return createXmlSubtype(
        { data :dataRo, sequence: bddComplement(v.ro.sequence) },
        { data :dataRw, sequence: bddComplement(v.rw.sequence) }
    );
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