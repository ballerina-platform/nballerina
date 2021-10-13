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
const int XML_RO_SEQ_MASK = TEXT | ELEM_RO | PI_RO | COMMENT_RO;

final XmlSubtypeData emptyXmlSubtype = { data: 0, sequence: false };

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
    if constituentType == XML {
        return constituentType;
    }
    var roData = getComplexSubtypeData(<ComplexSemType>constituentType, UT_XML_RO);
    var rwData = getComplexSubtypeData(<ComplexSemType>constituentType, UT_XML_RW);

    XmlSubtypeData ro = roData == false ? emptyXmlSubtype : makeSequence((<XmlSubtype>roData).ro);
    XmlSubtypeData rw = rwData == false ? emptyXmlSubtype : makeSequence((<XmlSubtype>rwData).rw);

    SubtypeData subtypeData = createXmlSubtype(ro, rw);
    if subtypeData is boolean {
        return subtypeData ? XML : NEVER;
    }
    
    XmlSubtype roPart = { ro, rw: emptyXmlSubtype };
    XmlSubtype rwPart = { ro: emptyXmlSubtype, rw };
    if ro == emptyXmlSubtype {
        return createComplexSemType(0, [[UT_XML_RW, rwPart]]);
    }
    else if rw == emptyXmlSubtype {
        return createComplexSemType(0, [[UT_XML_RO, roPart]]); 
    }
    else {
        return createComplexSemType(0, [[UT_XML_RO, roPart], [UT_XML_RW, rwPart]]);
    }
}

function makeSequence(XmlSubtypeData d) returns XmlSubtypeData {
    if d.sequence == false {
        return  { data: 0, sequence: bddCreate(d.data, true, false, false) };
    }
    else {
        return d;
    }
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
    int dataRo = v.ro.data == 0 ? 0 : XML_RO_MASK & ~v.ro.data;
    int dataRw = v.rw.data == 0 ? 0 : XML_RW_MASK & ~v.rw.data;

    Bdd roComplement = v.ro.sequence == false ? false : bddCreate(XML_RO_SEQ_MASK, bddComplement(v.ro.sequence), false,  false);
    Bdd rwComplement = v.rw.sequence == false ? false : bddCreate(XML_RW_MASK, bddComplement(v.rw.sequence), false,  false);
    return createXmlSubtype(
        { data :dataRo, sequence: roComplement },
        { data :dataRw, sequence: rwComplement }
    );
}

function xmlSubtypeIsEmpty(Context cx, SubtypeData sd) returns boolean {
    var { ro, rw } = <XmlSubtype>sd;
    if ro.data != 0 || rw.data != 0 {
        return false;
    }
    return !(xmlSequenceInhabited(cx, ro.sequence) || xmlSequenceInhabited(cx, rw.sequence));
}

function xmlRoSubtypeIsEmpty(Context cx, SubtypeData d) returns boolean {
    XmlSubtypeData ro = (<XmlSubtype>d).ro;
    if ro.data != 0 {
        return false;
    }
    return !xmlSequenceInhabited(cx, ro.sequence);
}

function xmlSequenceInhabited(Context cx, Bdd bdd) returns boolean {
    boolean isEmpty = bddEvery(cx, bdd, (), (), xmlFormulaIsEmpty);
    return !isEmpty;
}

function xmlFormulaIsEmpty(Context cx, Conjunction? pos, Conjunction? neg) returns boolean {
    int posBits = allBits(pos);
    if posBits == 0 {
        return true;
    }
    return hasIntersectionAll(posBits, neg);
}

function allBits(Conjunction? u) returns int {
    if u != null {
        return <int>u.atom | allBits(u.next);
    }
    return 0;
}

function hasIntersectionAll(int bits, Conjunction? c) returns boolean {
    if c != null {
        if (bits & ~<int>c.atom) == 0 {
            return true;
        }
        return hasIntersectionAll(bits, c.next);
    }
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
