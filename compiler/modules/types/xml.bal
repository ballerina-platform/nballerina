// Implementation specific to basic type xml.


// Each bit represents a XML singleton subtype or a empty XML sequence.
const int XML_PRIMITIVE_NEVER      = 1;
const int XML_PRIMITIVE_TEXT       = 1 << 1;
const int XML_PRIMITIVE_ELEMENT_RO = 1 << 2;
const int XML_PRIMITIVE_PI_RO      = 1 << 3;
const int XML_PRIMITIVE_COMMENT_RO = 1 << 4;
const int XML_PRIMITIVE_ELEMENT_RW = 1 << 5;
const int XML_PRIMITIVE_PI_RW      = 1 << 6;
const int XML_PRIMITIVE_COMMENT_RW = 1 << 7;

// A subtype of xml.
public type XmlSubtype readonly & record {|
    // This is the bitwise-or of above XML_PRIMITIVE_* fields.
    // If the XML_PRIMITIVE_NEVER bit is set, then the empty XML sequence belongs to the type.
    // If one of the other XML_PRIMITVE_* bits is set, then the type contains the
    // corresponding singleton type.
    int primitives;
    // This is a logical combination of the allowed sequences types. The `atom` field of
    // the `BddNode` is a bitwise-or of XML_PRIMTIVE_* (except for XML_PRIMITIVE_NEVER).
    // It represents a sequence or more singletons, where the allowed singletons
    // are those whose bit is set in the `atom` field.
    Bdd sequence;
|};

const int XML_PRIMITIVE_RO_SINGLETON = XML_PRIMITIVE_TEXT | XML_PRIMITIVE_ELEMENT_RO | XML_PRIMITIVE_PI_RO | XML_PRIMITIVE_COMMENT_RO;
const int XML_PRIMITIVE_RO_MASK = XML_PRIMITIVE_NEVER | XML_PRIMITIVE_RO_SINGLETON;
const int XML_PRIMITIVE_RW_MASK = XML_PRIMITIVE_ELEMENT_RW | XML_PRIMITIVE_PI_RW | XML_PRIMITIVE_COMMENT_RW;
const int XML_PRIMITIVE_SINGLETON = XML_PRIMITIVE_RO_SINGLETON | XML_PRIMITIVE_RW_MASK;
const int XML_PRIMITIVE_ALL_MASK = XML_PRIMITIVE_RO_MASK | XML_PRIMITIVE_RW_MASK;

final XmlSubtype XML_SUBTYPE_RO = { primitives: XML_PRIMITIVE_RO_MASK, sequence: bddAtom(XML_PRIMITIVE_RO_SINGLETON) };
final XmlSubtype XML_SUBTYPE_TOP = { primitives: XML_PRIMITIVE_ALL_MASK, sequence: true };

function xmlSingleton(int primitives) returns SemType {
    return createXmlSemType(createXmlSubtype(primitives, false));
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
        xmlSubtype = xmlSubtype is boolean ? xmlSubtype : makeXmlSequence(xmlSubtype);
        return createXmlSemType(xmlSubtype);
    }
}

function makeXmlSequence(XmlSubtype d) returns XmlSubtype|boolean {
    int primitives = XML_PRIMITIVE_NEVER | d.primitives;
    int atom = d.primitives & XML_PRIMITIVE_SINGLETON;
    Bdd sequence = bddUnion(bddAtom(atom), d.sequence);
    return createXmlSubtype(primitives, sequence);
}

function createXmlSubtype(int primitives, Bdd sequence) returns XmlSubtype|boolean {
    int p = primitives & XML_PRIMITIVE_ALL_MASK;
    if sequence == true && p == XML_PRIMITIVE_ALL_MASK {
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

function createXmlSemType(XmlSubtype|boolean xmlSubtype) returns SemType {
    if xmlSubtype is boolean {
        return xmlSubtype ? XML : NEVER;
    }
    else {
        return basicSubtype(BT_XML, xmlSubtype);  
    }
}

function xmlSubtypeUnion(ProperSubtypeData d1, ProperSubtypeData d2) returns SubtypeData {
    XmlSubtype v1 = <XmlSubtype>d1;
    XmlSubtype v2 = <XmlSubtype>d2;
    int primitives = v1.primitives | v2.primitives;
    return createXmlSubtype(primitives, bddUnion(v1.sequence, v2.sequence));
}

function xmlSubtypeIntersect(ProperSubtypeData d1, ProperSubtypeData d2) returns SubtypeData {
    XmlSubtype v1 = <XmlSubtype>d1;
    XmlSubtype v2 = <XmlSubtype>d2;
    int primitives = v1.primitives & v2.primitives;
    return createXmlSubtypeOrEmpty(primitives, bddIntersect(v1.sequence, v2.sequence));
}

function xmlSubtypeDiff(ProperSubtypeData d1, ProperSubtypeData d2) returns SubtypeData {
    XmlSubtype v1 = <XmlSubtype>d1;
    XmlSubtype v2 = <XmlSubtype>d2;
    int primitives = v1.primitives & ~v2.primitives;
    return createXmlSubtypeOrEmpty(primitives, bddDiff(v1.sequence, v2.sequence));
}

function xmlSubtypeComplement(ProperSubtypeData d) returns SubtypeData {
    return xmlSubtypeDiff(XML_SUBTYPE_TOP, d);
}

function xmlSubtypeIsEmpty(Context cx, SubtypeData d) returns boolean {
    XmlSubtype sd = <XmlSubtype>d;
    if sd.primitives != 0 {
        return false;
    }
    return xmlBddEmpty(cx, sd.sequence);
}

function xmlBddEmpty(Context cx, Bdd bdd) returns boolean {
    return bddEvery(cx, bdd, (), (), xmlFormulaIsEmpty);
}

function xmlFormulaIsEmpty(Context cx, Conjunction? pos, Conjunction? neg) returns boolean {
    int allPosBits = xmlCollectAllPrimitives(pos) & XML_PRIMITIVE_ALL_MASK;
    return xmlHasTotalNegative(allPosBits, neg);
}

function xmlCollectAllPrimitives(Conjunction? con) returns int {
    int bits = 0;
    Conjunction? current = con;
    while current != () {
        bits &= <int>current.atom;
        current = current.next;
    }
    return bits;
}

function xmlHasTotalNegative(int allBits, Conjunction? con) returns boolean {
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
    isEmpty: xmlSubtypeIsEmpty
};
