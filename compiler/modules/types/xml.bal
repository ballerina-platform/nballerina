// Implementation specific to basic type xml.

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
    return createXmlSemtype(
        { data: xmlUT & XML_RO_MASK, sequence: false }, 
        { data: xmlUT & XML_RW_MASK, sequence: false }
    );
}

public function xmlSequence(SemType constituentType) returns SemType {
    if constituentType == XML {
        return constituentType;
    }
    var roData = getComplexSubtypeData(<ComplexSemType>constituentType, UT_XML_RO);
    var rwData = getComplexSubtypeData(<ComplexSemType>constituentType, UT_XML_RW);

    XmlSubtypeData ro = roData == false ? emptyXmlSubtype : makeSequence((<XmlSubtypeData>roData));
    XmlSubtypeData rw = rwData == false ? emptyXmlSubtype : makeSequence((<XmlSubtypeData>rwData));
    
    return createXmlSemtype(ro, rw);
}

function makeSequence(XmlSubtypeData d) returns XmlSubtypeData {
    if d.sequence == false {
        return  { data: 0, sequence: bddCreate(d.data, true, false, false) };
    }
    else {
        return d;
    }
}

function createXmlSubtype(int data, Bdd sequence) returns SubtypeData {
    if data == 0 && sequence == false {
        return false;
    }
    else if (data & XML_NEVER) != 0 && sequence == true {
        return true;
    }
    return { data, sequence };
}

function createXmlSemtype(XmlSubtypeData ro, XmlSubtypeData rw) returns ComplexSemType {
    if ro == emptyXmlSubtype {
        return createComplexSemType(0, [[UT_XML_RW, rw]]);
    }
    else if rw == emptyXmlSubtype {
        return createComplexSemType(0, [[UT_XML_RO, ro]]); 
    }
    else {
        return createComplexSemType(0, [[UT_XML_RO, ro], [UT_XML_RW, rw]]);
    }
}

function xmlSubtypeUnion(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtypeData v1 = <XmlSubtypeData>d1;
    XmlSubtypeData v2 = <XmlSubtypeData>d2;
    int data = v1.data | v2.data;
    return createXmlSubtype(data, bddUnion(v1.sequence, v2.sequence));
}

function xmlSubtypeIntersect(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtypeData v1 = <XmlSubtypeData>d1;
    XmlSubtypeData v2 = <XmlSubtypeData>d2;
    int data = v1.data & v2.data;
    return createXmlSubtype(data, bddIntersect(v1.sequence, v2.sequence));
}

function xmlSubtypeDiff(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtypeData v1 = <XmlSubtypeData>d1;
    XmlSubtypeData v2 = <XmlSubtypeData>d2;
    int data = v1.data & ~v2.data;
    return createXmlSubtype(data, bddDiff(v1.sequence, v2.sequence));
}

function xmlSubtypeComplement(SubtypeData d) returns SubtypeData {
    XmlSubtypeData v = <XmlSubtypeData>d;
    int data = v.data == 0 ? 0 : XML_RO_MASK & ~v.data;
    Bdd c = v.sequence == false ? false : bddComplement(v.sequence);
    return createXmlSubtype(data, c);
}

function xmlSubtypeIsEmpty(Context cx, SubtypeData d) returns boolean {
    XmlSubtypeData sd = <XmlSubtypeData>d;
    if sd.data != 0 {
        return false;
    }
    return !xmlSequenceInhabited(cx, sd.sequence);
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
    isEmpty: xmlSubtypeIsEmpty
};

final UniformTypeOps xmlRwOps = {
    union: xmlSubtypeUnion,
    intersect: xmlSubtypeIntersect,
    diff: xmlSubtypeDiff,
    complement: xmlSubtypeComplement,
    isEmpty: xmlSubtypeIsEmpty
};
