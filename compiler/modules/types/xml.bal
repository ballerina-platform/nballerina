// Implementation specific to basic type xml.

public type XmlSubtype readonly & record {|
    // Each xml singleton and the empty sequence is considered a primitive.
    int primitives;
    Bdd sequence;
|};

// Each bit represents a XML singleton subtype or a empty sequence.
// `primitives` fields are composed of allowed values from this singleton set.
// Atom of the `Bdd` represented by `sequence` field is also composed of these to indicate 
// non-empty sequence of allowed singletons.
const int XML_PRIMITIVE_NEVER      = 1;
const int XML_PRIMITIVE_TEXT       = 1 << 1;
const int XML_PRIMITIVE_ELEMENT_RO = 1 << 2;
const int XML_PRIMITIVE_PI_RO      = 1 << 3;
const int XML_PRIMITIVE_COMMENT_RO = 1 << 4;
const int XML_PRIMITIVE_ELEMENT_RW = 1 << 5;
const int XML_PRIMITIVE_PI_RW      = 1 << 6;
const int XML_PRIMITIVE_COMMENT_RW = 1 << 7;

const int XML_PRIMITIVE_RO_SINGLETON = XML_PRIMITIVE_TEXT | XML_PRIMITIVE_ELEMENT_RO | XML_PRIMITIVE_PI_RO | XML_PRIMITIVE_COMMENT_RO;
const int XML_PRIMITIVE_RO_MASK = XML_PRIMITIVE_NEVER | XML_PRIMITIVE_RO_SINGLETON;
const int XML_PRIMITIVE_RW_MASK = XML_PRIMITIVE_ELEMENT_RW | XML_PRIMITIVE_PI_RW | XML_PRIMITIVE_COMMENT_RW;
const int XML_PRIMITIVE_SINGLETON = XML_PRIMITIVE_RO_SINGLETON | XML_PRIMITIVE_RW_MASK;

final XmlSubtype xmlRwTop = { primitives: XML_PRIMITIVE_RW_MASK, sequence: bddAtom(XML_PRIMITIVE_SINGLETON) };

function xmlSingleton(int primitives) returns SemType {
    return createXmlSemtype(createXmlSubtype(primitives, false));
}

public function xmlSequence(SemType constituentType) returns SemType {
    if constituentType == NEVER {
        return xmlSequence(xmlSingleton(XML_PRIMITIVE_NEVER));
    }
    if constituentType is BasicTypeBitSet {
        return constituentType;
    }   
    else {        
        var xmlSubtype = <XmlSubtype|boolean>getComplexSubtypeData(constituentType, BT_XML);
        xmlSubtype = xmlSubtype is boolean ? xmlSubtype : makeSequence(xmlSubtype);
        return createXmlSemtype(xmlSubtype);
    }
}

function makeSequence(XmlSubtype d) returns XmlSubtype|boolean {
    int primitives = XML_PRIMITIVE_NEVER | d.primitives;
    int atom = d.primitives & XML_PRIMITIVE_SINGLETON;
    Bdd sequence = bddUnion(bddAtom(atom), d.sequence);
    return createXmlSubtype(primitives, sequence);
}

function createXmlSubtype(int primitives, Bdd sequence) returns XmlSubtype|boolean {
    int p = primitives & XML_PRIMITIVE_RW_MASK;
    if sequence == true && p == XML_PRIMITIVE_RW_MASK {
        return true;
    }
    return createXmlSubtypeOrEmpty(p, sequence);
}

function createXmlSubtypeOrEmpty(int primitives, Bdd sequence) returns XmlSubtype|false {
    if sequence == false && primitives == 0 {
        return false;
    }
    return { primitives, sequence };
}

function createXmlSemtype(XmlSubtype|boolean xmlSubtype) returns ComplexSemType {
    BasicSubtype[] subtypes = [];
    int all = 0;
    if xmlSubtype is boolean {
        if xmlSubtype {
            all = 1 << BT_XML;
        }
    }
    else {
        subtypes.push([BT_XML, xmlSubtype]);
    }
    return createComplexSemType(<BasicTypeBitSet>all, subtypes);  
}

function xmlSubtypeUnion(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtype v1 = <XmlSubtype>d1;
    XmlSubtype v2 = <XmlSubtype>d2;
    int primitives = v1.primitives | v2.primitives;
    return createXmlSubtype(primitives, bddUnion(v1.sequence, v2.sequence));
}

function xmlSubtypeIntersect(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtype v1 = <XmlSubtype>d1;
    XmlSubtype v2 = <XmlSubtype>d2;
    int primitives = v1.primitives & v2.primitives;
    return createXmlSubtypeOrEmpty(primitives, bddIntersect(v1.sequence, v2.sequence));
}

function xmlSubtypeDiff(SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtype v1 = <XmlSubtype>d1;
    XmlSubtype v2 = <XmlSubtype>d2;
    int primitives = v1.primitives & ~v2.primitives;
    return createXmlSubtypeOrEmpty(primitives, bddDiff(v1.sequence, v2.sequence));
}

function xmlSubtypeComplement(SubtypeData d) returns SubtypeData {
    XmlSubtype top = xmlRwTop;
    return xmlSubtypeDiff(top, d);
}

function xmlRwSubtypeIsEmpty(Context cx, SubtypeData d) returns boolean {
    XmlSubtype sd = <XmlSubtype>d;
    if sd.primitives != 0 {
        return false;
    }
    return xmlBddEmptyRw(cx, sd.sequence);
}

function xmlBddEmptyRw(Context cx, Bdd bdd) returns boolean {
    return bddEvery(cx, bdd, (), (), xmlFormulaIsEmptyRw);
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

final BasicTypeOps xmlOps = {
    union: xmlSubtypeUnion,
    intersect: xmlSubtypeIntersect,
    diff: xmlSubtypeDiff,
    complement: xmlSubtypeComplement,
    isEmpty: xmlRwSubtypeIsEmpty
};
