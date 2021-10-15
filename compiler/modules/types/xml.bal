// Implementation specific to basic type xml.
import wso2/nballerina.err;

public type XmlSubtypeData readonly & record {|
    // allowed non-empty sequence values
    int data;
    Bdd sequence;
|};

const int XML_NEVER = 1;
const int TEXT = 1 << 1;
const int ELEMENT_RO = 1 << 2;
const int PI_RO = 1 << 3;
const int COMMENT_RO = 1 << 4;
const int ELEMENT_RW = 1 << 5;
const int PI_RW = 1 << 6;
const int COMMENT_RW = 1 << 7;

const int XML_RO_MASK = XML_NEVER | TEXT | ELEMENT_RO | PI_RO | COMMENT_RO;
const int XML_RW_MASK = ELEMENT_RW | PI_RW | COMMENT_RW;
const int XML_RO_SEQ_MASK = TEXT | ELEMENT_RO | PI_RO | COMMENT_RO;

final XmlSubtypeData emptyXmlSubtype = { data: 0, sequence: false };

function xmlSingleton(int data) returns SemType {
    return createXmlSemtype(
        { data: data & XML_RO_MASK, sequence: false }, 
        { data: data & XML_RW_MASK, sequence: false }
    );
}

public function xmlSequence(SemType constituentType, err:Location loc) returns SemType|err:Semantic {
    if constituentType == XML {
        return constituentType;
    }
    if constituentType is UniformTypeBitSet {
        return err:semantic("invalid xml constituent type", loc=loc);
    }   
    else {
        if !isSubtypeSimple(constituentType, XML) {
            return err:semantic("non xml type as xml constituent type", loc=loc);
        }
        SubtypeData roData = getComplexSubtypeData(constituentType, UT_XML_RO);
        SubtypeData rwData = getComplexSubtypeData(constituentType, UT_XML_RW);

        XmlSubtypeData? ro = (roData == false) ? () : makeSequence((<XmlSubtypeData>roData));
        XmlSubtypeData? rw = (rwData == false) ? () : makeSequence((<XmlSubtypeData>rwData));
        
        return createXmlSemtype(ro, rw);
    }
}

function hasNonXmlTypes(ComplexSemType t) returns boolean {
    return (t.all & ~XML) != 0 || (t.some & ~XML) != 0;
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
    if sequence == false {
        if data == 0 {
            return false;
        }
    }
    else if sequence == true {
        int mask = isRo ? XML_RO_MASK : XML_RW_MASK;
        if (data & mask) == mask {
            return true;
        }
    }
    return { data, sequence };
}

function createXmlSemtype(XmlSubtypeData? ro, XmlSubtypeData? rw) returns ComplexSemType {
    if ro == () && rw == () {
        panic error("illegal state"); // todo: How should we handle this?
    }
    else if ro == () {
        // JBUG: type narrowing doesn't narrow rw.
        return createComplexSemType(0, [[UT_XML_RW, <SubtypeData> rw]]);
    }
    else if rw == () {
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
    int complement = ~sd.data & (isRo ? XML_RO_MASK : XML_RW_MASK);
    int rootAtom = isRo ? XML_RO_SEQ_MASK : XML_RW_MASK;
    Bdd seq = bddCreate(rootAtom, bddComplement(sd.sequence), false, false);
    return createXmlSubtype(isRo, complement, seq);
}

function xmlSubtypeIsEmpty(Context cx, SubtypeData d) returns boolean {
    XmlSubtypeData sd = <XmlSubtypeData>d;
    if sd.data != 0 {
        return false;
    }
    return xmlBddEmpty(cx, sd.sequence);
}

function xmlBddEmpty(Context cx, Bdd bdd) returns boolean {
    return bddEvery(cx, bdd, (), (), xmlFormulaIsEmpty);
}

function xmlFormulaIsEmpty(Context cx, Conjunction? pos, Conjunction? neg) returns boolean {
    int allBits = 0;
    Conjunction? current = pos;
    while current != () {
        allBits |= <int>current.atom;
        current = current.next;
    }

    Conjunction? n = neg;
    while n != () {
        if (allBits & ~<int>n.atom) == 0 {
            return true;
        }
        n = n.next;
    }
    return false;
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
