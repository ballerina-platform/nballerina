// Implementation specific to basic type xml.
import wso2/nballerina.err;

public type XmlSubtypeData readonly & record {|
    // Each xml singleton and the empty sequence is considered a primitive.
    int primitives;
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

final XmlSubtypeData xmlRoAll = { primitives: XML_RO_MASK, sequence: bddAtom(XML_RO_MASK & ~XML_NEVER) };
final XmlSubtypeData xmlRwAll = { primitives: XML_RW_MASK, sequence: bddAtom(XML_RW_MASK) };

function xmlSingleton(int primitives) returns SemType {
    return createXmlSemtype(
        { primitives: primitives & XML_RO_MASK, sequence: false }, 
        { primitives: primitives & XML_RW_MASK, sequence: false }
    );
}

public function xmlSequence(SemType constituentType, err:Location loc) returns SemType {
    if constituentType is UniformTypeBitSet {
        return constituentType;
    }   
    else {
        SubtypeData ro = getComplexSubtypeData(constituentType, UT_XML_RO);
        ro = ro is boolean ? ro : makeSequence(<XmlSubtypeData>ro);
        
        SubtypeData rw = getComplexSubtypeData(constituentType, UT_XML_RW);
        rw = rw is boolean ? rw : makeSequence(<XmlSubtypeData>rw);
        
        return createXmlSemtype(ro, rw);
    }
}

function makeSequence(XmlSubtypeData d) returns XmlSubtypeData {
    return { 
        primitives: XML_NEVER | d.primitives, 
        sequence: bddUnion(bddAtom(d.primitives & ~XML_NEVER), d.sequence) 
        };
}

function createXmlSubtype(boolean isRo, int primitives, Bdd sequence) returns SubtypeData {
    if sequence == true {
        int mask = isRo ? XML_RO_MASK : XML_RW_MASK;
        if (primitives & mask) == mask {
            return true;
        }
    }
    return createXmlSubtypeOrEmpty(primitives, sequence);
}

function createXmlSubtypeOrEmpty(int primitives, Bdd sequence) returns SubtypeData {
    if sequence == false {
        if primitives == 0 {
            return false;
        }
    }
    return { primitives, sequence };
}


function createXmlSemtype(SubtypeData ro, SubtypeData rw) returns ComplexSemType {
    if ro == false {
        return createComplexSemType(0, [[UT_XML_RW, rw]]);
    }
    else if rw == false {
        return createComplexSemType(0, [[UT_XML_RO, ro]]); 
    }
    else {
        return createComplexSemType(0, [[UT_XML_RO, ro], [UT_XML_RW, rw]]);
    }
}

function xmlSubtypeUnion(boolean isRo, SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtypeData v1 = <XmlSubtypeData>d1;
    XmlSubtypeData v2 = <XmlSubtypeData>d2;
    int primitives = v1.primitives | v2.primitives;
    return createXmlSubtype(isRo, primitives, bddUnion(v1.sequence, v2.sequence));
}

function xmlSubtypeIntersect(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtypeData v1 = <XmlSubtypeData>d1;
    XmlSubtypeData v2 = <XmlSubtypeData>d2;
    int primitives = v1.primitives & v2.primitives;
    return createXmlSubtypeOrEmpty(primitives, bddIntersect(v1.sequence, v2.sequence));
}

function xmlSubtypeDiff(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtypeData v1 = <XmlSubtypeData>d1;
    XmlSubtypeData v2 = <XmlSubtypeData>d2;
    int primitives = v1.primitives & ~v2.primitives;
    return createXmlSubtypeOrEmpty(primitives, bddDiff(v1.sequence, v2.sequence));
}

function xmlSubtypeComplement(boolean isRo, SubtypeData d) returns SubtypeData {
    XmlSubtypeData top = isRo ? xmlRoAll : xmlRwAll;
    return xmlSubtypeDiff(top, d);
}

function xmlSubtypeIsEmpty(Context cx, SubtypeData d) returns boolean {
    XmlSubtypeData sd = <XmlSubtypeData>d;
    if sd.primitives != 0 {
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

function xmlSubtypeComplementRo(SubtypeData d) returns SubtypeData => xmlSubtypeComplement(true, d);

function xmlSubtypeComplementRw(SubtypeData d) returns SubtypeData => xmlSubtypeComplement(false, d);

final UniformTypeOps xmlRoOps = {
    union: xmlSubtypeUnionRo,
    intersect: xmlSubtypeIntersect,
    diff: xmlSubtypeDiff,
    complement: xmlSubtypeComplementRo,
    isEmpty: xmlSubtypeIsEmpty
};

final UniformTypeOps xmlRwOps = {
    union: xmlSubtypeUnionRw,
    intersect: xmlSubtypeIntersect,
    diff: xmlSubtypeDiff,
    complement: xmlSubtypeComplementRw,
    isEmpty: xmlSubtypeIsEmpty
};
