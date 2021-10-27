// Implementation specific to basic type xml.

public type XmlSubtypeData readonly & record {|
    // Each xml singleton and the empty sequence is considered a primitive.
    int primitives;
    Bdd sequence;
|};

// Each bit represents a XML singleton subtype or a empty sequence.
// `primitives` fields are composed of allowed values from this singleton set.
// Atom of the `Bdd` represented by `sequence` field is also composed of these to indicate 
// non-empty sequence of allowed singletons.
const int XML_PRIMITIVE_NEVER_BIT      = 1;
const int XML_PRIMITIVE_TEXT_BIT       = 1 << 1;
const int XML_PRIMITIVE_ELEMENT_RO_BIT = 1 << 2;
const int XML_PRIMITIVE_PI_RO_BIT      = 1 << 3;
const int XML_PRIMITIVE_COMMENT_RO_BIT = 1 << 4;
const int XML_PRIMITIVE_ELEMENT_RW_BIT = 1 << 5;
const int XML_PRIMITIVE_PI_RW_BIT      = 1 << 6;
const int XML_PRIMITIVE_COMMENT_RW_BIT = 1 << 7;

const int XML_PRIMITIVE_RO_SINGLETONS = XML_PRIMITIVE_TEXT_BIT | XML_PRIMITIVE_ELEMENT_RO_BIT | XML_PRIMITIVE_PI_RO_BIT | XML_PRIMITIVE_COMMENT_RO_BIT;
const int XML_PRIMITIVE_RO_MASK = XML_PRIMITIVE_NEVER_BIT | XML_PRIMITIVE_RO_SINGLETONS;
const int XML_PRIMITIVE_RW_MASK = XML_PRIMITIVE_ELEMENT_RW_BIT | XML_PRIMITIVE_PI_RW_BIT | XML_PRIMITIVE_COMMENT_RW_BIT;

final XmlSubtypeData xmlRoTop = { primitives: XML_PRIMITIVE_RO_MASK, sequence: bddAtom(XML_PRIMITIVE_RO_SINGLETONS) };
final XmlSubtypeData xmlRwTop = { primitives: XML_PRIMITIVE_RW_MASK, sequence: bddAtom(XML_PRIMITIVE_RW_MASK|XML_PRIMITIVE_RO_SINGLETONS) };

function xmlSingleton(int primitives) returns SemType {
    return createXmlSemtype(
        createXmlSubtype(true, primitives, false), 
        createXmlSubtype(false, primitives, false)
    );
}

public function xmlSequence(SemType constituentType) returns SemType {
    if constituentType == NEVER {
        return xmlSequence(xmlSingleton(XML_PRIMITIVE_NEVER_BIT));
    }
    if constituentType is UniformTypeBitSet {
        return constituentType;
    }   
    else {
        SubtypeData ro = getComplexSubtypeData(constituentType, UT_XML_RO);
        ro = ro is boolean ? ro : makeSequence(true, <XmlSubtypeData>ro);
        
        SubtypeData rw = getComplexSubtypeData(constituentType, UT_XML_RW);
        rw = rw is boolean ? rw : makeSequence(false, <XmlSubtypeData>rw);
        
        return createXmlSemtype(ro, rw);
    }
}

function makeSequence(boolean roPart, XmlSubtypeData d) returns XmlSubtypeData {
    return { 
        primitives: (roPart ? XML_PRIMITIVE_NEVER_BIT : 0) | d.primitives, 
        sequence: bddUnion(bddAtom(d.primitives & ~XML_PRIMITIVE_NEVER_BIT), d.sequence) 
    };
}

function createXmlSubtype(boolean isRo, int primitives, Bdd sequence) returns SubtypeData {
    int mask = isRo ? XML_PRIMITIVE_RO_MASK : XML_PRIMITIVE_RW_MASK;
    int p = primitives & mask;
    if sequence == true && p == mask {
        return true;
    }
    return createXmlSubtypeOrEmpty(p, sequence);
}

function createXmlSubtypeOrEmpty(int primitives, Bdd sequence) returns SubtypeData {
    if sequence == false && primitives == 0 {
        return false;
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
    XmlSubtypeData top = isRo ? xmlRoTop : xmlRwTop;
    return xmlSubtypeDiff(top, d);
}

function xmlRwSubtypeIsEmpty(Context cx, SubtypeData d) returns boolean {
    XmlSubtypeData sd = <XmlSubtypeData>d;
    if sd.primitives != 0 {
        return false;
    }
    return xmlBddEmptyRw(cx, sd.sequence);
}

function xmlRoSubtypeIsEmpty(Context cx, SubtypeData d) returns boolean {
    XmlSubtypeData sd = <XmlSubtypeData>d;
    if sd.primitives != 0 {
        return false;
    }
    return xmlBddEmptyRo(cx, sd.sequence);
}

function xmlBddEmptyRw(Context cx, Bdd bdd) returns boolean {
    return bddEvery(cx, bdd, (), (), xmlFormulaIsEmptyRw);
}

function xmlBddEmptyRo(Context cx, Bdd bdd) returns boolean {
    return bddEvery(cx, bdd, (), (), xmlFormulaIsEmptyRo);
}

function xmlFormulaIsEmptyRo(Context cx, Conjunction? pos, Conjunction? neg) returns boolean {
    return hasTotalNegative(collectAllBits(pos), neg);
}

function xmlFormulaIsEmptyRw(Context cx, Conjunction? pos, Conjunction? neg) returns boolean {
    int rwOnlyBits = collectAllBits(pos) & XML_PRIMITIVE_RW_MASK;
    return hasTotalNegative(rwOnlyBits, neg);
}

function collectAllBits(Conjunction? con) returns int {
    int allBits = 0;
    Conjunction? current = con;
    while current != () {
        allBits |= <int>current.atom;
        current = current.next;
    }
    return allBits;
}

function hasTotalNegative(int allBits, Conjunction? con) returns boolean {
    if allBits == 0 {
        return true;
    }

    Conjunction? n = con;
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
    isEmpty: xmlRoSubtypeIsEmpty
};

final UniformTypeOps xmlRwOps = {
    union: xmlSubtypeUnionRw,
    intersect: xmlSubtypeIntersect,
    diff: xmlSubtypeDiff,
    complement: xmlSubtypeComplementRw,
    isEmpty: xmlRwSubtypeIsEmpty
};
