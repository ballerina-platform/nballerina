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

const int XML_RO_MASK = XML_NEVER | TEXT | ELEM_RO | PI_RO | COMMENT_RO;
const int XML_RW_MASK = ELEM_RW | PI_RW | COMMENT_RW;
const int XML_RO_SEQ_MASK = TEXT | ELEM_RO | PI_RO | COMMENT_RO;

final XmlSubtypeData emptyXmlSubtype = { data: 0, sequence: false };

function xmlSingleton(int bits) returns SemType {
    return createXmlSemtype(
        { data: bits & XML_RO_MASK, sequence: false }, 
        { data: bits & XML_RW_MASK, sequence: false }
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
        return  { data: XML_NEVER | d.data, sequence: bddCreate(d.data, true, false, false) };
    }
    else {
        return d;
    }
}

function createXmlSubtype(boolean isRo, int data, Bdd sequence) returns SubtypeData {
    if data == 0 && sequence == false {
        return false;
    }
    boolean containsAllData = isRo ? (data & XML_RO_MASK) == XML_RO_MASK : (data & XML_RW_MASK) == XML_RW_MASK;
    if containsAllData && sequence == true {
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

function xmlSubtypeUnion(boolean isRo, SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtypeData v1 = <XmlSubtypeData>d1;
    XmlSubtypeData v2 = <XmlSubtypeData>d2;
    int data = v1.data | v2.data;
    return createXmlSubtype(isRo, data, bddUnion(v1.sequence, v2.sequence));
}

function xmlSubtypeIntersect(boolean isRo, SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtypeData v1 = <XmlSubtypeData>d1;
    XmlSubtypeData v2 = <XmlSubtypeData>d2;
    int data = v1.data & v2.data;
    return createXmlSubtype(isRo, data, bddIntersect(v1.sequence, v2.sequence));
}

function xmlSubtypeDiff(boolean isRo, SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtypeData v1 = <XmlSubtypeData>d1;
    XmlSubtypeData v2 = <XmlSubtypeData>d2;
    int data = v1.data & ~v2.data;
    return createXmlSubtype(isRo, data, bddDiff(v1.sequence, v2.sequence));
}

function xmlSubtypeComplement(boolean isRo, SubtypeData d) returns SubtypeData {
    XmlSubtypeData sd = <XmlSubtypeData>d;
    int emptySeqComp = ~sd.data & XML_NEVER;

    int singletonData = sd.data & ~XML_NEVER;
    int complement = emptySeqComp;
    if singletonData != 0 {
        complement |= ~singletonData & (isRo ? XML_RO_SEQ_MASK : XML_RW_MASK);
    }
    int rootAtom = isRo ? XML_RO_SEQ_MASK : XML_RW_MASK;
    Bdd seq = bddCreate(rootAtom, bddComplement(sd.sequence), false, false);
    return createXmlSubtype(isRo, complement, seq);
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
    return hasIntersectionAll(allBits(pos), neg);
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

function allBits(Conjunction? u) returns int {
    if u != null {
        return <int>u.atom | allBits(u.next);
    }
    return 0;
}

function xmlSubtypeUnionRo(SubtypeData d1, SubtypeData d2) returns SubtypeData => xmlSubtypeUnion(true, d1, d2);

function xmlSubtypeUnionRw(SubtypeData d1, SubtypeData d2) returns SubtypeData => xmlSubtypeUnion(false, d1, d2);

function xmlSubtypeIntersectRo(SubtypeData d1, SubtypeData d2) returns SubtypeData => xmlSubtypeIntersect(true, d1, d2);

function xmlSubtypeIntersectRw(SubtypeData d1, SubtypeData d2) returns SubtypeData => xmlSubtypeIntersect(false, d1, d2);

function xmlSubtypeDiffRo(SubtypeData d1, SubtypeData d2) returns SubtypeData => xmlSubtypeDiff(true, d1, d2);

function xmlSubtypeDiffRw(SubtypeData d1, SubtypeData d2) returns SubtypeData => xmlSubtypeDiff(false, d1, d2);

function xmlSubtypeComplementRo(SubtypeData d) returns SubtypeData => xmlSubtypeComplement(true, d);

function xmlSubtypeComplementRw(SubtypeData d) returns SubtypeData => xmlSubtypeComplement(false, d);

final UniformTypeOps xmlRoOps = {
    union: xmlSubtypeUnionRo,
    intersect: xmlSubtypeIntersectRo,
    diff: xmlSubtypeDiffRo,
    complement: xmlSubtypeComplementRo,
    isEmpty: xmlSubtypeIsEmpty
};

final UniformTypeOps xmlRwOps = {
    union: xmlSubtypeUnionRw,
    intersect: xmlSubtypeIntersectRw,
    diff: xmlSubtypeDiffRw,
    complement: xmlSubtypeComplementRw,
    isEmpty: xmlSubtypeIsEmpty
};
