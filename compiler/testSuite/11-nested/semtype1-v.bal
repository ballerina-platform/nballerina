import ballerina/io;
public type UniformTypeBitSet int; // should be int:Unsigned32
public type SemType UniformTypeBitSet|ComplexSemType;

type ProperSubtypeData StringSubtype|FloatSubtype|IntSubtype|BooleanSubtype|XmlSubtype|BddNode;
type SubtypeData ProperSubtypeData|boolean;

type Char string;  // should be string:Char

public type ComplexSemType record {|
    UniformTypeBitSet all;
    UniformTypeBitSet some;
    ProperSubtypeData[] subtypeDataList;
|};

type StringSubtype record {|
    CharStringSubtype char;
    NonCharStringSubtype nonChar;
|};

type CharStringSubtype record {|
    boolean allowed;
    Char[] values;
|};

type NonCharStringSubtype record {|
    boolean allowed;
    string[] values;
|};

type FloatSubtype record {|
    boolean allowed;
    float[] values;
|};

type BooleanSubtype record {|
    boolean value;
|};

type IntSubtype Range[];

type Range record {|
    int min;
    int max;
|};

public type XmlSubtype record {|
    int primitives;
    Bdd sequence;
|};

public type Bdd BddNode|boolean;

public type BddNode record {|
    Atom atom;
    Bdd left;
    Bdd middle;
    Bdd right;
|};

type Atom RecAtom|TypeAtom;

type RecAtom int;

type TypeAtom record {|
    int index;
    AtomicType atomicType;
|};

type AtomicType ListAtomicType|MappingAtomicType;

public type ListAtomicType record {|
    SemType[] members;
    SemType rest;
|};

public type MappingAtomicType record {|
    string[] names;
    SemType[] types;
    SemType rest;
|};

public const UT_NIL        = 0x00;
public const UT_BOOLEAN    = 0x01;

public const UT_LIST_RO    = 0x02;
public const UT_MAPPING_RO = 0x03;
public const UT_TABLE_RO   = 0x04;
public const UT_XML_RO     = 0x05;
public const UT_OBJECT_RO  = 0x06;

public const UT_INT        = 0x07;
public const UT_FLOAT      = 0x08;
public const UT_DECIMAL    = 0x09;
public const UT_STRING     = 0x0A;
public const UT_ERROR      = 0x0B;
public const UT_FUNCTION   = 0x0C;
public const UT_TYPEDESC   = 0x0D;
public const UT_HANDLE     = 0x0E;

public const UT_FUTURE     = 0x10;
public const UT_STREAM     = 0x11;

public const UT_LIST_RW    = 0x12;
public const UT_MAPPING_RW = 0x13;
public const UT_TABLE_RW   = 0x14;
public const UT_XML_RW     = 0x15;
public const UT_OBJECT_RW  = 0x16;

public const NEVER = 0;
public const NIL = 1 << UT_NIL;
public const FLOAT = 1 << UT_FLOAT;
public const INT = 1 << UT_INT;
public const STRING = 1 << UT_STRING;
public const LIST_RW = 1 << UT_LIST_RW;

public function main() {
    MappingAtomicType mat = {
        names: ["x", "y"],
        types: [FLOAT, FLOAT],
        rest: NEVER
    };
    BddNode bdd = {
        atom: { index: 42, atomicType: mat },
        left: true,
        middle: false,
        right: false
    };
    SemType semType = {
        all: 0,
        some: LIST_RW,
        subtypeDataList: [bdd]
    };
    io:println(semType is Bdd); // @output false
    if semType is ComplexSemType {
        io:println("complex"); // @output complex
        SubtypeData[] list = semType.subtypeDataList;
        SubtypeData st = list[0];
        if st is BddNode {
            io:println("bdd"); // @output bdd
            Atom atom = st.atom;
            if atom is TypeAtom {
                io:println(atom.index); // @output 42
                AtomicType t = atom.atomicType;
                if t is MappingAtomicType {
                    string[] names = t.names;
                    io:println(names[0]); // @output x
                }
            }
        }
    }
}
