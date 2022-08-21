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

final XmlSubtype xmlRoTop = { primitives: XML_PRIMITIVE_RO_MASK, sequence: bddAtom(XML_PRIMITIVE_RO_SINGLETON) };
final XmlSubtype xmlRwTop = { primitives: XML_PRIMITIVE_RW_MASK, sequence: bddAtom(XML_PRIMITIVE_SINGLETON) };

function xmlSingleton(int primitives) returns SemType {
    return createXmlSemtype(
        createXmlSubtype(true, primitives, false), 
        createXmlSubtype(false, primitives, false)
    );
}

public function xmlSequence(SemType constituentType) returns SemType {
    if constituentType == NEVER {
        return xmlSequence(xmlSingleton(XML_PRIMITIVE_NEVER));
    }
    if constituentType is BasicTypeBitSet {
        return constituentType;
    }   
    else {
        var ro = <XmlSubtype|boolean>getComplexSubtypeData(constituentType, UT_XML_RO);
        ro = ro is boolean ? ro : makeSequence(true, ro);
        
        var rw = <XmlSubtype|boolean>getComplexSubtypeData(constituentType, BT_XML);
        rw = rw is boolean ? rw : makeSequence(false, rw);
        
        return createXmlSemtype(ro, rw);
    }
}

function makeSequence(boolean roPart, XmlSubtype d) returns XmlSubtype|boolean {
    int primitives = XML_PRIMITIVE_NEVER | d.primitives;
    int atom = d.primitives & (roPart ? XML_PRIMITIVE_RO_SINGLETON : XML_PRIMITIVE_SINGLETON);
    Bdd sequence = bddUnion(bddAtom(atom), d.sequence);
    return createXmlSubtype(roPart, primitives, sequence);
}

function createXmlSubtype(boolean isRo, int primitives, Bdd sequence) returns XmlSubtype|boolean {
    int mask = isRo ? XML_PRIMITIVE_RO_MASK : XML_PRIMITIVE_RW_MASK;
    int p = primitives & mask;
    if sequence == true && p == mask {
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

function createXmlSemtype(XmlSubtype|boolean ro, XmlSubtype|boolean rw) returns ComplexSemType {
    BasicSubtype[] subtypes = [];
    int all = 0;
    if ro is boolean {
        if ro {
            all = 1 << UT_XML_RO;
        }
    }
    else {
        subtypes.push([UT_XML_RO, ro]);
    }
    if rw is boolean {
        if rw {
            all |= 1 << BT_XML;
        }
    }
    else {
        subtypes.push([BT_XML, rw]);
    }
    return createComplexSemType(<BasicTypeBitSet>all, subtypes);  
}

function xmlSubtypeUnion(boolean isRo, SubtypeData d1, SubtypeData d2) returns SubtypeData {
    XmlSubtype v1 = <XmlSubtype>d1;
    XmlSubtype v2 = <XmlSubtype>d2;
    int primitives = v1.primitives | v2.primitives;
    return createXmlSubtype(isRo, primitives, bddUnion(v1.sequence, v2.sequence));
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

function xmlSubtypeComplement(boolean isRo, SubtypeData d) returns SubtypeData {
    XmlSubtype top = isRo ? xmlRoTop : xmlRwTop;
    return xmlSubtypeDiff(top, d);
}

function xmlRwSubtypeIsEmpty(Context cx, SubtypeData d) returns boolean {
    XmlSubtype sd = <XmlSubtype>d;
    if sd.primitives != 0 {
        return false;
    }
    return xmlBddEmptyRw(cx, sd.sequence);
}

function xmlRoSubtypeIsEmpty(Context cx, SubtypeData d) returns boolean {
    XmlSubtype sd = <XmlSubtype>d;
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

final BasicTypeOps xmlRoOps = {
    union: xmlSubtypeUnionRo,
    intersect: xmlSubtypeIntersect,
    diff: xmlSubtypeDiff,
    complement: xmlSubtypeComplementRo,
    isEmpty: xmlRoSubtypeIsEmpty
};

final BasicTypeOps xmlRwOps = {
    union: xmlSubtypeUnionRw,
    intersect: xmlSubtypeIntersect,
    diff: xmlSubtypeDiff,
    complement: xmlSubtypeComplementRw,
    isEmpty: xmlRwSubtypeIsEmpty
};
