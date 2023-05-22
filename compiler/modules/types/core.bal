import wso2/nballerina.comm.lib;

// There is an integer for each basic type.

// JBUG #28334 type-descriptor is not needed
public const int VT_COUNT = BT_OBJECT + 1;

const int VT_MASK = (1 << VT_COUNT) - 1;

const int VT_COUNT_INHERENTLY_IMMUTABLE = 0xA;
public const int VT_INHERENTLY_IMMUTABLE = (1 << VT_COUNT_INHERENTLY_IMMUTABLE) - 1;

public type BasicTypeCode
    BT_NIL|BT_BOOLEAN|BT_INT|BT_FLOAT|BT_DECIMAL
    |BT_STRING|BT_ERROR|BT_TYPEDESC|BT_HANDLE|BT_FUNCTION
    |BT_FUTURE|BT_STREAM
    |BT_LIST|BT_MAPPING|BT_TABLE|BT_XML|BT_OBJECT
    |BT_CELL|BT_UNDEF;

type Atom RecAtom|TypeAtom;

type RecAtom int;

type TypeAtom readonly & record {|
    int index;
    AtomicType atomicType;
|};

type AtomicType ListAtomicType|MappingAtomicType|CellAtomicType|FunctionAtomicType;


// All the SemTypes used in any type operation (e.g. isSubtype) must have been created using the Env.
public isolated class Env {
    private final table<TypeAtom> key(atomicType) atomTable = table [];
    // Set up index 0 to be used by VAL_READONLY
    private final ListAtomicType?[] recListAtoms = [ LIST_ATOMIC_RO ];
    private final MappingAtomicType?[] recMappingAtoms = [ MAPPING_ATOMIC_RO ];
    private final FunctionAtomicType?[] recFunctionAtoms = [];
    // Count of the total number of non-nil members
    // of recListAtoms, recMappingAtoms and recFunctionAtoms
    private int recAtomCount = 2;

    public isolated function init() {
        // Reserving the first two indexes of atomTable to represent cell VAL and cell NEVER typeAtoms. 
        // This is to avoid passing down env argument when doing cell type operations.
        // Please refer to the cellSubtypeDataEnsureProper() in cell.bal
        _ = self.cellAtom(CELL_ATOMIC_VAL);
        _ = self.cellAtom(CELL_ATOMIC_NEVER);
        // Reserving the next index of atomTable to represent the typeAtom required to construct
        // equivalent subtypes of map<any|error> and (any|error)[].
        _ = self.cellAtom(CELL_ATOMIC_INNER);
        // Reserving the next two indexes of atomTable to represent typeAtoms related to (map<any|error>)[].
        // This is to avoid passing down env argument when doing tableSubtypeComplement operation.
        _ = self.cellAtom(CELL_ATOMIC_INNER_MAPPING);
        _ = self.listAtom(LIST_ATOMIC_MAPPING);
        // Reserving the next three indexes of atomTable to represent typeAtoms related to readonly type.
        // This is to avoid requiring context when referring to readonly type.
        // CELL_ATOMIC_INNER_MAPPING_RO & LIST_ATOMIC_MAPPING_RO are typeAtoms reuquired to construct readonly & (map<readonly>)[]
        // which is then used for readonly table type when constructing VAL_READONLY.
        _ = self.cellAtom(CELL_ATOMIC_INNER_MAPPING_RO);
        _ = self.listAtom(LIST_ATOMIC_MAPPING_RO);
        _ = self.cellAtom(CELL_ATOMIC_INNER_RO);
    }

    // Tests whether the Env is ready for use.
    // It is ready only if all the recursive atoms that have been allocated
    // have been defined.
    public isolated function isReady() returns boolean {
        lock {
            return self.recAtomCount
                   == (self.recListAtoms.length()
                       + self.recMappingAtoms.length()
                       + self.recFunctionAtoms.length());
        }  
    }

    isolated function listAtom(ListAtomicType atomicType) returns TypeAtom {
        return self.typeAtom(atomicType);
    }

    isolated function mappingAtom(MappingAtomicType atomicType) returns TypeAtom {
        return self.typeAtom(atomicType);
    }

    isolated function functionAtom(FunctionAtomicType atomicType) returns TypeAtom {
        return self.typeAtom(atomicType);
    }

    isolated function cellAtom(CellAtomicType atomicType) returns TypeAtom {
        return self.typeAtom(atomicType);
    }

    private isolated function typeAtom(AtomicType atomicType) returns TypeAtom {
        lock {
            TypeAtom? ta = self.atomTable[atomicType];
            if ta != () {
                return ta;
            }
            else {
                TypeAtom result = { index: self.atomTable.length(), atomicType };
                self.atomTable.add(result);
                return result;
            }
        }
    }

    isolated function listAtomType(Atom atom) returns ListAtomicType {
        if atom is RecAtom {
            return self.getRecListAtomType(atom);
        }
        else {
            return <ListAtomicType>atom.atomicType;
        }
    }

    isolated function mappingAtomType(Atom atom) returns MappingAtomicType {
        if atom is RecAtom {
            return self.getRecMappingAtomType(atom);
        }
        else {
            return <MappingAtomicType>atom.atomicType;
        }
    }

    isolated function functionAtomType(Atom atom) returns FunctionAtomicType {
        if atom is RecAtom {
            return self.getRecFunctionAtomType(atom);
        }
        else {
            return <FunctionAtomicType>atom.atomicType;
        }
    }

    isolated function recListAtom() returns RecAtom {
        lock {
            int result = self.recListAtoms.length();
            self.recListAtoms.push(());
            return result;
        }
    }

    isolated function recMappingAtom() returns RecAtom {
        lock {
            int result = self.recMappingAtoms.length();
            self.recMappingAtoms.push(());
            return result;
        }
    }

    isolated function recFunctionAtom() returns RecAtom {
        lock {
            int result = self.recFunctionAtoms.length();
            self.recFunctionAtoms.push(());
            return result;
        }
    }

    isolated function setRecListAtomType(RecAtom ra, ListAtomicType atomicType) {
        lock {
            self.recListAtoms[ra] = atomicType;
            self.recAtomCount += 1;
        }
    }

    isolated function setRecMappingAtomType(RecAtom ra, MappingAtomicType atomicType) {
        lock {
            self.recMappingAtoms[ra] = atomicType;
            self.recAtomCount += 1;
        }
    }

    isolated function setRecFunctionAtomType(RecAtom ra, FunctionAtomicType atomicType) {
        lock {
            self.recFunctionAtoms[ra] = atomicType;
            self.recAtomCount += 1;
        }
    }

    isolated function getRecListAtomType(RecAtom ra) returns ListAtomicType {
        lock {
            return <ListAtomicType>self.recListAtoms[ra];
        }
    }
    
    isolated function getRecMappingAtomType(RecAtom ra) returns MappingAtomicType {
        lock {
            return <MappingAtomicType>self.recMappingAtoms[ra];
        }
    }

    isolated function getRecFunctionAtomType(RecAtom ra) returns FunctionAtomicType {
        lock {
            return <FunctionAtomicType>self.recFunctionAtoms[ra];
        }
    }
}

function cellAtomType(Atom atom) returns CellAtomicType {
    return <CellAtomicType>(<TypeAtom>atom).atomicType;
}

// See memoSubtypeIsEmpty for what these mean.
type MemoEmpty boolean|"loop"|"cyclic"|"provisional"|();

type BddMemo record {|
    readonly Bdd bdd;
    MemoEmpty empty = ();
|};

type BddMemoTable table<BddMemo> key(bdd);

type ComparableMemo record {|
    readonly SemType semType1;
    readonly SemType semType2;
    // SUBSET We assume recursive types aren't comparable, reconsider after adding tuples.
    boolean comparable = false;
|};

type SingletonMemo readonly & record {|
    boolean|int|decimal|float|string value;
    ComplexSemType semType;
|};

type FillerMemo record {|
    readonly SemType semType;
    Filler? filler;
|};

public type Filler WrappedSingleValue|MappingFiller|ListFiller;

public type ListFiller readonly & record {|
    ListAtomicType atomic;
    SemType semType;
    Filler[] memberFillers;
|};

public type MappingFiller readonly & record {|
    MappingAtomicType atomic;
    SemType semType;
|};

type FunctionTypeMemo readonly & record {|
    FunctionSignature signature;
    SemType semType;
|};

type FunctionSignatureMemo readonly & record {|
    FunctionAtomicType atomic;
    FunctionSignature signature;
|};

// Used in testing types.regex to create context without a Module
public function contextFromEnv(Env env) returns Context {
    return new(env);
}

// Operations on types require a Context.
// There can be multiple contexts for the same Env.
// Whereas an Env is isolated, a Context is not isolated.
// A Context can memoize expensive operations.
// Each strand should create its own Context. 
public class Context {
    public final Env env;
    BddMemoTable listMemo = table [];
    BddMemoTable mappingMemo = table [];
    BddMemoTable functionMemo = table [];

    // Contains all BddMemo entries in above table
    // with empty == "provisional".
    BddMemo[] memoStack = [];

    final table<ComparableMemo> key(semType1, semType2) comparableMemo = table [];
    final table<SingletonMemo> key(value) singletonMemo = table [];
    final table<FillerMemo> key(semType) fillerMemo = table [];
    final table<FunctionTypeMemo> key(signature) functionAtomicTypeMemo = table [];
    final table<FunctionSignatureMemo> key(atomic) functionSignatureMemo = table [];

    SemType? anydataMemo = ();
    SemType? jsonMemo = ();
    SemType? readOnlyMemo = ();

    function init(Env env) {
        self.env = env;
    }

    function listAtomType(Atom atom) returns ListAtomicType {
        if atom is RecAtom {
            return self.env.getRecListAtomType(atom);
        }
        else {
            return <ListAtomicType>atom.atomicType;
        }
    }

    function mappingAtomType(Atom atom) returns MappingAtomicType {
        if atom is RecAtom {
            return self.env.getRecMappingAtomType(atom);
        }
        else {
            return <MappingAtomicType>atom.atomicType;
        }
    }

    function functionAtomType(Atom atom) returns FunctionAtomicType {
        if atom is RecAtom {
            return self.env.getRecFunctionAtomType(atom);
        }
        else {
            return <FunctionAtomicType>atom.atomicType;
        }
    }
}

type ProperSubtypeData StringSubtype|DecimalSubtype|FloatSubtype|IntSubtype|BooleanSubtype|XmlSubtype|BddNode;
// true means everything and false means nothing (as with Bdd)
type SubtypeData ProperSubtypeData|boolean;

type BasicSubtype [BasicTypeCode, ProperSubtypeData];

type BinOp function(ProperSubtypeData t1, ProperSubtypeData t2) returns SubtypeData;
type UnaryOp function(ProperSubtypeData t) returns SubtypeData;
type UnaryTypeCheckOp function(Context cx, SubtypeData t) returns boolean;

function binOpPanic(ProperSubtypeData t1, ProperSubtypeData t2) returns SubtypeData {
    panic error("binary operation should not be called");
}

function unaryOpPanic(ProperSubtypeData t) returns SubtypeData {
    panic error("unary operation should not be called");
}

function unaryTypeCheckOpPanic(Context cx, SubtypeData t) returns boolean {
    panic error("unary boolean operation should not be called");
}

type BasicTypeOps readonly & record {|
    BinOp union = binOpPanic;
    BinOp intersect = binOpPanic;
    // diff can be implemented combining intersection and complement. i.e. diff = intersect(d1, complement(d2))
    // () is used when we want the aformentioned formula as the diff. 
    BinOp? diff = ();
    // The top type of a basic type could be in the form of a ComplexSemType instead of being a BasicTypeBitSet.
    // Therefore, the complement will not always be a ProperSubtypeData.
    UnaryOp complement = unaryOpPanic;
    UnaryTypeCheckOp isEmpty = unaryTypeCheckOpPanic;
|};

final readonly & (BasicSubtype[]) EMPTY_SUBTYPES = [];

public type BasicTypeBitSet int:Unsigned32;

public type SemType BasicTypeBitSet|ComplexSemType;

public type ComplexSemType readonly & record {|
    // For a basic type with code c,
    // all & (1 << c) is non-zero iff this type contains all of the basic type
    // some & (1 << c) is non-zero iff this type contains some but not all of the basic type
    BasicTypeBitSet all;
    BasicTypeBitSet some;
    // There is one member of subtypes for each bit set in some.
    // Ordered in increasing order of BasicTypeCode
    ProperSubtypeData[] subtypeDataList;
|};

// This is to represent a SemType belonging to cell basic type
public type CellSemType readonly & record {|
    0 all = 0;
    BasicTypeBitSet some = CELL;
    ProperSubtypeData[1] subtypeDataList;
|};

// subtypeList must be ordered
function createComplexSemType(BasicTypeBitSet all, BasicSubtype[] subtypeList = []) returns ComplexSemType {
    int some = 0;
    ProperSubtypeData[] dataList = [];
    foreach var [code, data] in subtypeList {
        dataList.push(data);
        int c = code;
        some |= 1 << c;
    }
    return {
        all,
        some: <BasicTypeBitSet>some,
        subtypeDataList: dataList.cloneReadOnly()
    };
}

function unpackComplexSemType(ComplexSemType t) returns BasicSubtype[] {
    int some = t.some;
    BasicSubtype[] subtypeList = [];
    foreach var data in t.subtypeDataList {
        var code = <BasicTypeCode>lib:numberOfTrailingZeros(some);
        subtypeList.push([code, data]);
        int c = code;
        some ^= (1 << c);
    }
    return subtypeList;
}

function singleBasicSubtype(ComplexSemType t) returns BasicSubtype? {
    if t.all == 0 && t.subtypeDataList.length() == 1 {
        return [<BasicTypeCode>lib:numberOfTrailingZeros(t.some), t.subtypeDataList[0]];
    }
    return ();
}

function getComplexSubtypeData(ComplexSemType t, BasicTypeCode code) returns SubtypeData {
    int c = code;
    c = 1 << c;
    if (t.all & c) != 0 {
        return true;
    }
    if (t.some & c) == 0 {
        return false;
    }
    int loBits = t.some & (c - 1);
    return t.subtypeDataList[loBits == 0 ? 0 : lib:bitCount(loBits)];
}

public function basicType(BasicTypeCode code) returns BasicTypeBitSet {
    return <BasicTypeBitSet>(1 << code);
}

// Union of complete basic types
// bits is bit vecor indexed by BasicTypeCode
// I would like to make the arg int:Unsigned32
// but are language/impl bugs that make this not work well
public function basicTypeUnion(int bits) returns BasicTypeBitSet {
    return <BasicTypeBitSet>bits;
}

function basicSubtype(BasicTypeCode code, ProperSubtypeData data) returns ComplexSemType {
    return createComplexSemType(0, [[code, data]]);
}

function subtypeData(SemType s, BasicTypeCode code) returns SubtypeData {
    if s is BasicTypeBitSet {
        return (s & (1 << <int>code)) != 0;
    }
    else {
        return getComplexSubtypeData(s, code);
    }
}

public final BasicTypeBitSet NEVER = basicTypeUnion(0);
public final BasicTypeBitSet NIL = basicType(BT_NIL);
public final BasicTypeBitSet BOOLEAN = basicType(BT_BOOLEAN);
public final BasicTypeBitSet INT = basicType(BT_INT);
public final BasicTypeBitSet FLOAT = basicType(BT_FLOAT);
public final BasicTypeBitSet DECIMAL = basicType(BT_DECIMAL);
public final BasicTypeBitSet STRING = basicType(BT_STRING);
public final BasicTypeBitSet ERROR = basicType(BT_ERROR);
public final BasicTypeBitSet LIST = basicType(BT_LIST);
public final BasicTypeBitSet MAPPING = basicType(BT_MAPPING);
public final BasicTypeBitSet TABLE = basicType(BT_TABLE);
public final BasicTypeBitSet CELL = basicType(BT_CELL);
public final BasicTypeBitSet UNDEF = basicType(BT_UNDEF);

// matches all functions
public final BasicTypeBitSet FUNCTION = basicType(BT_FUNCTION);
public final BasicTypeBitSet TYPEDESC = basicType(BT_TYPEDESC);
public final BasicTypeBitSet HANDLE = basicType(BT_HANDLE);

public final BasicTypeBitSet XML = basicType(BT_XML);
public final BasicTypeBitSet OBJECT = basicType(BT_OBJECT);
public final BasicTypeBitSet STREAM = basicType(BT_STREAM);
public final BasicTypeBitSet FUTURE = basicType(BT_FUTURE);

// this is SubtypeData|error
public final BasicTypeBitSet VAL = basicTypeUnion(VT_MASK);
public final BasicTypeBitSet INNER = VAL | UNDEF;
public final BasicTypeBitSet ANY = basicTypeUnion(VT_MASK & ~(1 << BT_ERROR));
public final BasicTypeBitSet SIMPLE_OR_STRING = basicTypeUnion((1 << BT_NIL) | (1 << BT_BOOLEAN) | (1 << BT_INT) | (1 << BT_FLOAT) | (1 << BT_DECIMAL) | (1 << BT_STRING));
public final BasicTypeBitSet NON_BEHAVIOURAL = basicTypeUnion((1 << BT_NIL) | (1 << BT_BOOLEAN) | (1 << BT_INT) | (1 << BT_FLOAT)| (1 << BT_DECIMAL) | (1 << BT_STRING)
                                                                 | (1 << BT_XML) | (1 << BT_LIST) | (1 << BT_MAPPING) | (1 << BT_TABLE));
public final BasicTypeBitSet NUMBER = basicTypeUnion((1 << BT_INT) | (1 << BT_FLOAT) | (1 << BT_DECIMAL));
public final SemType BYTE = intWidthUnsigned(8);
public final SemType STRING_CHAR = stringChar();
public final SemType XML_ELEMENT = xmlSingleton(XML_PRIMITIVE_ELEMENT_RO | XML_PRIMITIVE_ELEMENT_RW);
public final SemType XML_COMMENT = xmlSingleton(XML_PRIMITIVE_COMMENT_RO | XML_PRIMITIVE_COMMENT_RW);
public final SemType XML_TEXT = xmlSequence(xmlSingleton(XML_PRIMITIVE_TEXT));
public final SemType XML_PI = xmlSingleton(XML_PRIMITIVE_PI_RO | XML_PRIMITIVE_PI_RW);
public final SemType XML_RO = createXmlSemType(XML_SUBTYPE_RO);

public final ComplexSemType VAL_READONLY = createComplexSemType(
    basicTypeUnion(VT_INHERENTLY_IMMUTABLE),
[
    [BT_LIST, BDD_SUBTYPE_RO],
    [BT_MAPPING, BDD_SUBTYPE_RO],
    [BT_TABLE, LIST_SUBTYPE_MAPPING_RO],
    [BT_XML, XML_SUBTYPE_RO]
]);

final SemType INNER_READONLY = union(VAL_READONLY, UNDEF);

// Need this type to workaround slalpha4 bug.
// It has to be public to workaround another bug.
public type SubtypePairIterator object {
    // JBUG if `ProperSubtypeData` on the next line is changed to SubtypeData, jBallerina blows up
    public function next() returns record {| [BasicTypeCode, ProperSubtypeData?, ProperSubtypeData?] value; |}?;
};

class SubtypePairIteratorImpl {
    *object:Iterable;
    *SubtypePairIterator;
    private int i1;
    private int i2;
    private final BasicSubtype[] t1;
    private final BasicSubtype[] t2;
    private final BasicTypeBitSet bits;

    function init(SemType t1, SemType t2, BasicTypeBitSet bits) {
        self.i1 = 0;
        self.i2 = 0;
        self.t1 = (t1 is BasicTypeBitSet) ? [] : unpackComplexSemType(t1);
        self.t2 = (t2 is BasicTypeBitSet) ? [] : unpackComplexSemType(t2);
        self.bits = bits;
    }

    public function iterator() returns SubtypePairIterator {
        return self;
    }

    public function next() returns record {| [BasicTypeCode, ProperSubtypeData?, ProperSubtypeData?] value; |}? {
        while true {
            if self.i1 >= self.t1.length() {
                if self.i2 >= self.t2.length() {
                    break;
                }
                var [code, data2] = self.get2();
                self.i2 += 1;
                if self.include(code) {
                    return { value: [code, (), data2] };
                }
            }
            else if self.i2 >= self.t2.length() {
                var [code, data1] = self.get1();
                self.i1 += 1;
                if self.include(code) {
                    return { value: [code, data1, ()] };
                }
            }
            else {
                var [code1, data1] = self.get1();
                var [code2, data2] = self.get2();
                if code1 == code2 {
                    self.i1 += 1;
                    self.i2 += 1;
                    if self.include(code1) {    
                        return { value: [code1, data1, data2] };
                    }
                }
                else if code1 < code2 {
                    self.i1 += 1;
                    if self.include(code1) {
                        return { value: [code1, data1, ()] };
                    }
                }
                else {
                    self.i2 += 1;
                    if self.include(code2) {
                        return { value: [code2, (), data2] };
                    }
                }

            }
        }
        return ();
    } 

    private function include(BasicTypeCode code) returns boolean {
        int c = code;
        return (self.bits & (1 << c)) != 0;
    }

    private function get1() returns BasicSubtype {
        return self.t1[self.i1];
    }

    private function get2() returns BasicSubtype {
        return self.t2[self.i2];
    }
}


public function union(SemType t1, SemType t2) returns SemType {
    BasicTypeBitSet all1;
    BasicTypeBitSet all2;
    BasicTypeBitSet some1;
    BasicTypeBitSet some2;

    if t1 is BasicTypeBitSet {
        if t2 is BasicTypeBitSet {
            return t1|t2;
        }
        else if t1 == 0 {
            return t2;
        }
        else {
            all2 = t2.all;
            some2 = t2.some;
        }
        all1 = t1;
        some1 = 0;
    }
    else {
        all1 = t1.all;
        some1 = t1.some;
        if t2 is BasicTypeBitSet {
            if t2 == 0 {
                return t1;
            }
            all2 = t2;
            some2 = 0;
        }
        else {
            all2 = t2.all;
            some2 = t2.some;
        }
    }
    
    BasicTypeBitSet all = all1 | all2;
    BasicTypeBitSet some = (some1 | some2) & ~<int>all;
    if some == 0 {
        return basicTypeUnion(all);
    }
    BasicSubtype[] subtypes = [];
    foreach var [code, data1, data2] in new SubtypePairIteratorImpl(t1, t2, some) {
        SubtypeData data;
        if data1 == () {
            data = <SubtypeData>data2; // if they are both null, something's gone wrong
        }
        else if data2 == () {
            data = data1;
        }
        else {
            var union = ops[code].union;
            data = union(data1, data2);
        }
        if data == true {
            int c = code;
            all |= <BasicTypeBitSet>(1 << c);
        }
        else {
            // data cannot be false since data1 and data2 are not both false
            subtypes.push([code, <ProperSubtypeData>data]);
        }
    }
    if subtypes.length() == 0 {
        return all;
    }
    return createComplexSemType(all, subtypes);
}

public function intersect(SemType t1, SemType t2) returns SemType {
    BasicTypeBitSet all1;
    BasicTypeBitSet all2;
    BasicTypeBitSet some1;
    BasicTypeBitSet some2;

    if t1 is BasicTypeBitSet {
        if t2 is BasicTypeBitSet {
            return t1&t2;
        }
        else {
            if t1 == 0 {
                return t1;
            }
            if t1 == VT_MASK {
                return t2;
            }
            all2 = t2.all;
            some2 = t2.some;
        }
        all1 = t1;
        some1 = 0;
    }
    else {
        all1 = t1.all;
        some1 = t1.some;
        if t2 is BasicTypeBitSet {
            if t2 == 0 {
                return t2;
            }
            if t2 == VT_MASK {
                return t1;
            }
            all2 = t2;
            some2 = 0;
        }
        else {
            all2 = t2.all;
            some2 = t2.some;
        }
    }
   
    BasicTypeBitSet all = all1 & all2;

    // some(t1 & t2) = some(t1) & some(t2)
    BasicTypeBitSet some = (some1 | all1) & (some2 | all2);

    some &= ~<int>all;
    if some == 0 {
        return basicTypeUnion(all);
    }
    BasicSubtype[] subtypes = [];
    foreach var [code, data1, data2] in new SubtypePairIteratorImpl(t1, t2, some) {
        SubtypeData data;
        if data1 == () {
            data = <ProperSubtypeData>data2;
        }
        else if data2 == () {
            data = data1;
        }
        else {
            var intersect = ops[code].intersect;
            data = intersect(data1, data2);
        }
        if data != false {
            // data cannot be true since data1 and data2 are not both true
            subtypes.push([code, <ProperSubtypeData>data]);
        }
    }
    if subtypes.length() == 0 {
        return all;
    }
    return createComplexSemType(all, subtypes);    
}

public function intersectMemberSemTypes(Env env, CellSemType t1, CellSemType t2) returns CellSemType {
    var { ty, mut } = intersectCellAtomicType(<CellAtomicType>cellAtomicType(t1), <CellAtomicType>cellAtomicType(t2));
    return cellContaining(env, ty, ty == UNDEF ? CELL_MUT_NONE : mut);
}

public function diff(SemType t1, SemType t2) returns SemType {
    BasicTypeBitSet all1;
    BasicTypeBitSet all2;
    BasicTypeBitSet some1;
    BasicTypeBitSet some2;

    if t1 is BasicTypeBitSet {
        if t2 is BasicTypeBitSet {
            return t1 & ~<int>t2;
        }
        else {
            if t1 == 0 {
                return t1;
            }
            all2 = t2.all;
            some2 = t2.some;
        }
        all1 = t1;
        some1 = 0;
    }
    else {
        all1 = t1.all;
        some1 = t1.some;
        if t2 is BasicTypeBitSet {
            if t2 == VT_MASK {
                return <BasicTypeBitSet>0;
            }
            all2 = t2;
            some2 = 0;
        }
        else {
            all2 = t2.all;
            some2 = t2.some;
        }
    }

    // all(t1 \ t2) = all(t1) & not(all(t2)|some(t2))
    BasicTypeBitSet all = all1 & ~<int>(all2 | some2);
    // some(t1 \ t2) = some(t1) & not(all(t2))
    BasicTypeBitSet some = (all1 | some1) & ~<int>all2;
    some &= ~<int>all;

    if some == 0 {
        return basicTypeUnion(all);
    }
    BasicSubtype[] subtypes = [];
    foreach var [code, data1, data2] in new SubtypePairIteratorImpl(t1, t2, some) {
        SubtypeData data;
        if data1 == () {
            var complement = ops[code].complement;
            data = complement(<ProperSubtypeData>data2);
        }
        else if data2 == () {
            data = data1;
        }
        else {
            data = subtypeDiff(code, data1, data2);
        }
        // JBUG `data` is not narrowed properly if you swap the order by doing `if data == true {} else if data != false {}`
        if data !is boolean {
            subtypes.push([code, data]);
        }
        else if data == true {
            int c = code;
            all |= <BasicTypeBitSet>(1 << c);
        }
        // No need to consider `data == false` case. The `some` variable above is not used to create the SemType
    }
    if subtypes.length() == 0 {
        return all;
    }
    return createComplexSemType(all, subtypes);        
}

function subtypeDiff(BasicTypeCode code, ProperSubtypeData d1, ProperSubtypeData d2) returns SubtypeData {
    var diff = ops[code].diff;
    if diff != () {
        return diff(d1, d2);
    }
    var complement = ops[code].complement;
    SubtypeData d2Complement = complement(d2);
    if d2Complement is boolean {
        if d2Complement {
            return d1;
        }
        else {
            return false;
        }
    }
    var intersect = ops[code].intersect;
    return intersect(d1, d2Complement);
}

public function complement(SemType t) returns SemType {
    return diff(VAL, t);
}

public function isCyclic(Context cx, SemType t) returns boolean {
    if !isEmpty(cx, t) {
        return false;
    }
    BddNode[] subtypes = toBddSubtypes(cx, t);
    boolean listSubtype = isSubtypeSimple(t, LIST);
    foreach var subtype in subtypes {
        boolean cyclic = listSubtype ? listBddIsCyclic(cx, subtype) : mappingBddIsCyclic(cx, subtype);
        if cyclic {
            return true;
        }
    }
    return false;
}

public function isEmpty(Context cx, SemType t) returns boolean {
    if t is BasicTypeBitSet {
        return t == 0;
    }
    else {
        if t.all != 0 {
            // includes all of one or more basic types
            return false;
        }
        foreach var st in unpackComplexSemType(t) {
            var [code, data] = st;
            var isEmpty = ops[code].isEmpty;
            if !isEmpty(cx, data) {
                return false;
            }
        }
        return true;
    }
}
    
public function isSubtype(Context cx, SemType t1, SemType t2) returns boolean { 
    return isEmpty(cx, diff(t1, t2));
}

public function includesSome(SemType t1, SemType t2) returns boolean {
    return intersect(t1, t2) != NEVER;
}

public function isSubtypeSimple(SemType t1, BasicTypeBitSet t2) returns boolean {
    int bits;
    if t1 is BasicTypeBitSet {
        bits = t1;
    }
    else {
        bits = t1.all | t1.some;
    }
    return (bits & ~<int>t2) == 0;
}

public function isSameType(Context cx, SemType t1, SemType t2) returns boolean {
    return t1 == t2 || (isSubtype(cx, t1, t2) && isSubtype(cx, t2, t1));
}

public function widenToBasicTypes(SemType t) returns BasicTypeBitSet {
    if t is BasicTypeBitSet {
        return t;
    }
    else {
        return <BasicTypeBitSet>(t.all | t.some);
    }
}

public function basicTypeCode(BasicTypeBitSet bitSet) returns BasicTypeCode? {
    if lib:bitCount(bitSet) != 1 {
        return ();
    }
    return <BasicTypeCode>lib:numberOfTrailingZeros(bitSet);
}

public function comparable(Context cx, SemType t1, SemType t2) returns boolean {
    SemType semType = diff(union(t1, t2), NIL);
    if isSubtypeSimple(semType, SIMPLE_OR_STRING) {
        int nOrderings = lib:bitCount(widenToBasicTypes(semType));
        return nOrderings <= 1;
    }
    if isSubtypeSimple(semType, LIST) {
        return comparableNillableList(cx, t1, t2);
    }
    return false;
}

// t1, t2 must be subtype of LIST|?
function comparableNillableList(Context cx, SemType t1, SemType t2) returns boolean {
    ComparableMemo? memoized = cx.comparableMemo[t1, t2];
    if memoized != () {
        return memoized.comparable;
    }
    ComparableMemo memo = { semType1: t1, semType2: t2 };
    cx.comparableMemo.add(memo);
    var [ranges1, memberTypes1] = listAllMemberTypesInner(cx, t1);
    var [ranges2, memberTypes2] = listAllMemberTypesInner(cx, t2);
    foreach var [_, i1, i2] in combineRanges(ranges1, ranges2) {
        if i1 != () && i2 != () && !comparable(cx, memberTypes1[i1], memberTypes2[i2]) {
            memo.comparable = false;
            return false;
        }
    }
    memo.comparable = true;
    return true;
}

public function listAtomicFillableFrom(Context cx, ListAtomicType atomic, int specLength) returns boolean {
    return specLength >= atomic.members.fixedLength || specLength >= listAtomicMinLengthWithFill(cx, atomic);
}

// Number of members that must be specified in the list constructor
// Potentially memoizable
public function listAtomicMinLengthWithFill(Context cx, ListAtomicType atomic) returns int {
    readonly & CellSemType[] members = atomic.members.initial;
    int i = members.length();
    while i > 0 && filler(cx, cellInner(members[i - 1])) != () {
        i -= 1;
    }
    return i == members.length() ? atomic.members.fixedLength : i;
}

public function filler(Context cx, SemType semType) returns Filler? {
    FillerMemo? existing = cx.fillerMemo[semType];
    if existing != () {
        return existing.filler;
    }
    FillerMemo memo = { semType, filler: () };
    // This is to handle recursive tuples
    cx.fillerMemo.add(memo);
    Filler? f = computeFiller(cx, semType);
    memo.filler = f;
    return f;
}

function computeFiller(Context cx, SemType t) returns Filler? {
    if containsNil(t) {
        return { value: () };
    }
    BasicTypeBitSet bitSet = widenToBasicTypes(t);
    SingleValue value = ();
    match basicTypeCode(bitSet) {
        BT_BOOLEAN => {
            value = false;
        }
        BT_INT => {
            value = 0; 
        }
        BT_DECIMAL => {
            value = 0d;
        }
        BT_FLOAT => {
            value = 0f;
        }
        BT_STRING => {
            value = "";
        }
    }
    if value != () && (t is BasicTypeBitSet || containsConst(t, value)) {
        return { value };
    }
    WrappedSingleValue? wrapped = singleShape(t);
    if wrapped != () {
        return wrapped;
    }
    MappingAtomicType? mat = mappingAtomicType(cx, t);
    if mat != () && mat.names.length() == 0 {
        return { atomic: mat, semType: t };
    }
    ListAtomicType? lat = listAtomicType(cx, t);
    if lat != () {
        Filler[] memberFillers = [];
        foreach var memberType in lat.members.initial {
            Filler? f = filler(cx, cellInner(memberType));
            if f is () {
                return ();
            }
            memberFillers.push(f);
        }
        return { atomic: lat, semType: t,  memberFillers: memberFillers.cloneReadOnly() };
    }
    return ();
}

// If t is a non-empty subtype of a built-in unsigned int subtype (Unsigned8/16/32),
// then return the smallest such subtype. Otherwise, return t.
public function widenUnsigned(SemType t) returns SemType {
    if t is BasicTypeBitSet {
        return t;
    }
    else {
        if !isSubtypeSimple(t, INT) {
            return t;
        }
        SubtypeData data = intSubtypeWidenUnsigned(subtypeData(t, BT_INT));
        if data is boolean {
            return INT;
        }
        else {
            return basicSubtype(BT_INT, data);
        }
    }
}

public function booleanSubtype(SemType t) returns BooleanSubtype|boolean {
    return <boolean|BooleanSubtype>subtypeData(t, BT_BOOLEAN);
}

// Describes the subtype of int included in the type: true/false mean all or none of string
public function intSubtype(SemType t) returns IntSubtype|boolean {
    return <boolean|IntSubtype>subtypeData(t, BT_INT);
}

public function floatSubtype(SemType t) returns FloatSubtype|boolean {
    return <boolean|FloatSubtype>subtypeData(t, BT_FLOAT);
}

public function decimalSubtype(SemType t) returns DecimalSubtype|boolean {
    return <boolean|DecimalSubtype>subtypeData(t, BT_DECIMAL);
}

public function stringSubtype(SemType t) returns StringSubtype|boolean {
    return <boolean|StringSubtype>subtypeData(t, BT_STRING);
}

public function listSubtype(SemType t) returns Bdd {
    return <boolean|Bdd>subtypeData(t, BT_LIST);
}

public function mappingSubtype(SemType t) returns Bdd {
    return <boolean|Bdd>subtypeData(t, BT_MAPPING);
}

public function tableSubtype(SemType t) returns Bdd {
    return <boolean|Bdd>subtypeData(t, BT_TABLE);
}

public function xmlSubtype(SemType t) returns XmlSubtype|boolean {
    return <boolean|XmlSubtype>subtypeData(t, BT_XML);
}

public function errorSubtype(SemType t) returns Bdd {
    return <boolean|Bdd>subtypeData(t, BT_ERROR);
}

public function functionSubtype(SemType t) returns Bdd {
    return <boolean|Bdd>subtypeData(t, BT_FUNCTION);
}

// Constraints on a subtype of `int`.
public type IntSubtypeConstraints readonly & record {|
    // all values in the subtype are >= min
    int min;
    // all values in the subtype are <= max
    int max;
    // does the subtype contain all values between min and max?
    boolean all;
|};

// Returns `()` if `t` is not a proper, non-empty subtype of `int`.
// i.e. returns `()` if `t` contains all or non of `int`.
public function intSubtypeConstraints(SemType t) returns IntSubtypeConstraints? {
    var intSubtype = intSubtype(t);
    // JBUG can't flatten inner if-else
    if intSubtype is boolean {
        return ();
    }
    else {
        int len = intSubtype.length();
        return { min: intSubtypeMin(intSubtype), max: intSubtypeMax(intSubtype), all: len == 1 };
    } 
}

public function listAtomicSimpleArrayMemberTypeInner(ListAtomicType? atomic) returns BasicTypeBitSet? {
    if atomic != () && atomic.members.fixedLength == 0 {
        SemType memberType = cellInnerVal(atomic.rest);
        if memberType is BasicTypeBitSet {
            return memberType;
        }
    }
    return ();   
}

final readonly & ListMemberTypes LIST_MEMBER_TYPES_ALL = [[{ min: 0, max: int:MAX_VALUE }], [VAL]];
final readonly & ListMemberTypes LIST_MEMBER_TYPES_NONE = [[], []];

public function listAllMemberTypesInner(Context cx, SemType t) returns ListMemberTypes {
    if t is BasicTypeBitSet {
        return (t & LIST) != 0 ? LIST_MEMBER_TYPES_ALL : LIST_MEMBER_TYPES_NONE;
    }
    else {
        Range[] ranges = [];
        SemType[] types = [];
        Range[] allRanges = bddListAllRanges(cx, <Bdd>getComplexSubtypeData(t, BT_LIST), []);
        foreach Range r in allRanges {
            SemType m = listMemberTypeInnerVal(cx, t, intConst(r.min));
            if m != NEVER {
                ranges.push(r);
                types.push(m);
            }
        }
        return [ranges, types];
    }
}

public function listAtomicType(Context cx, SemType t) returns ListAtomicType? {
    ListAtomicType listAtomicInner = LIST_ATOMIC_INNER;
    if t is BasicTypeBitSet {
        return t == LIST ? listAtomicInner : ();
    }
    else {
        Env env = cx.env;
        if !isSubtypeSimple(t, LIST) {
            return ();
        }
        return bddListAtomicType(env, <Bdd>getComplexSubtypeData(t, BT_LIST), listAtomicInner);    
    }
}

function bddListAtomicType(Env env, Bdd bdd, ListAtomicType top) returns ListAtomicType? {
    if bdd is boolean { 
        if bdd {
            return top;
        }
    }
    else if bdd.left == true && bdd.middle == false && bdd.right == false {
        return env.listAtomType(bdd.atom);    
    }
    return ();
}

public function mappingMemberTypeInnerVal(Context cx, SemType t, SemType k) returns SemType {
    return diff(mappingMemberTypeInner(cx, t, k), UNDEF);
}

// This computes the spec operation called "member type of K in T",
// for the case when T is a subtype of list, and K is either `int` or a singleton int.
// This is what Castagna calls projection.
// We will extend this to allow `key` to be a SemType, which will turn into an IntSubtype.
// If `t` is not a list, NEVER is returned
public function listMemberTypeInnerVal(Context cx, SemType t, SemType k) returns SemType {
    if t is BasicTypeBitSet {
        return (t & LIST) != 0 ? VAL : NEVER;
    }
    else {
        IntSubtype|boolean keyData = intSubtype(k);
        if keyData == false {
            return NEVER;
        }
        return bddListMemberTypeInnerVal(cx, <Bdd>getComplexSubtypeData(t, BT_LIST), <IntSubtype|true>keyData, VAL);
    }
}

public function listAtomicTypeApplicableMemberTypesInnerVal(Context cx, ListAtomicType atomic, SemType indexType) returns readonly & SemType[] {
    IntSubtype|boolean indexIntType;
    if indexType is BasicTypeBitSet {
        indexIntType = (indexType & INT) != 0;
    }
    else {
        indexIntType = intSubtype(indexType);
    }
    if indexIntType == false {
        return [];
    }
    else {
        return listAtomicApplicableMemberTypesInnerVal(atomic, <IntSubtype|true>indexIntType).cloneReadOnly();
    }
}

public type ListAlternative record {|
    SemType semType;
    ListAtomicType? pos;
    ListAtomicType[] neg;
|};

public type FunctionAlternative record {|
    SemType semType;
    FunctionAtomicType? pos;
    FunctionAtomicType[] neg;
|};

public function listAlternatives(Context cx, SemType t) returns ListAlternative[] {
    if t is BasicTypeBitSet {
        if (t & LIST) == 0 {
            return [];
        }
        else {
            return [
                {
                    semType: LIST,
                    pos: (),
                    neg: []
                }
            ];
        }
    }
    else {
        BddPath[] paths = [];
        bddPaths(<Bdd>getComplexSubtypeData(t, BT_LIST), paths, {});
        /// JBUG (33709) runtime error on construct1-v.bal if done as from/select
        ListAlternative[] alts = [];
        foreach var { pos, neg } in paths {
            var intersection = intersectListAtoms(cx.env, from var atom in pos select cx.listAtomType(atom));
            if intersection !is () {
                alts.push({
                    semType: intersection[0],
                    pos: intersection[1],
                    neg: from var atom in neg select cx.listAtomType(atom)
                });
            }
        }
        return alts;
    }
}

public function functionAlternatives(Context cx, SemType t) returns FunctionAlternative[] {
    if t is BasicTypeBitSet {
        if (t & FUNCTION) == 0 {
            return [];
        }
        else {
            return [
                {
                    semType: FUNCTION,
                    pos: (),
                    neg: []
                }
            ];
        }
    }
    else {
        BddPath[] paths = [];
        bddPaths(<Bdd>getComplexSubtypeData(t, BT_FUNCTION), paths, {});
        FunctionAlternative[] alts = [];
        foreach var { pos, neg } in paths {
            var intersection = intersectFunctionAtoms(cx, from var atom in pos select cx.functionAtomType(atom));
            if intersection !is () {
                alts.push({
                    semType: intersection[0],
                    pos: intersection[1],
                    neg: from var atom in neg select cx.functionAtomType(atom)
                });
            }
        }
        return alts;
    }
}

public function mappingAtomicType(Context cx, SemType t) returns MappingAtomicType? {
    MappingAtomicType mappingAtomicInner = MAPPING_ATOMIC_INNER;
    if t is BasicTypeBitSet {
        return t == MAPPING ? mappingAtomicInner : ();
    }
    else {
        Env env = cx.env;
        if !isSubtypeSimple(t, MAPPING) {
            return ();
        }
        return bddMappingAtomicType(env, <Bdd>getComplexSubtypeData(t, BT_MAPPING), mappingAtomicInner);
    }
}

function bddMappingAtomicType(Env env, Bdd bdd, MappingAtomicType top) returns MappingAtomicType? {
    if bdd is boolean { 
        if bdd {
            return top;
        }
    }
    else if bdd.left == true && bdd.middle == false && bdd.right == false {
        return env.mappingAtomType(bdd.atom);    
    }
    return ();
}

// This computes the spec operation called "member type of K in T",
// for when T is a subtype of mapping, and K is either `string` or a singleton string.
// This is what Castagna calls projection.
public function mappingMemberTypeInner(Context cx, SemType t, SemType k) returns SemType {
    if t is BasicTypeBitSet {
        return (t & MAPPING) != 0 ? VAL : UNDEF;
    }
    else {
        StringSubtype|boolean keyData = stringSubtype(k);
        if keyData == false {
            return UNDEF;
        }
        return bddMappingMemberTypeInner(cx, <Bdd>getComplexSubtypeData(t, BT_MAPPING), <StringSubtype|true>keyData, INNER);
    }
}

public function mappingAtomicTypeApplicableMemberTypesInner(MappingAtomicType atomic, SemType keyType) returns readonly & SemType[] {
    StringSubtype|boolean keyStringType;
    if keyType is BasicTypeBitSet {
        keyStringType = (keyType & STRING) != 0;
    }
    else {
        keyStringType = stringSubtype(keyType);
    }
    if keyStringType == false {
        return [];
    }
    else {
        return mappingAtomicApplicableMemberTypesInner(atomic, <StringSubtype|true>keyStringType).cloneReadOnly();
    }
}

public type MappingAlternative record {|
    SemType semType;
    MappingAtomicType? pos;
    MappingAtomicType[] neg;
|};

public function mappingAlternatives(Context cx, SemType t) returns MappingAlternative[] {
    if t is BasicTypeBitSet {
        if (t & MAPPING) == 0 {
            return [];
        }
        else {
            return [
                {
                    semType: MAPPING,
                    pos: (),
                    neg: []
                }
            ];
        }
    }
    else {
        BddPath[] paths = [];
        bddPaths(<Bdd>getComplexSubtypeData(t, BT_MAPPING), paths, {});
        /// JBUG (33709) runtime error on construct1-v.bal if done as from/select
        MappingAlternative[] alts = [];
        foreach var { pos, neg } in paths {
            var intersection = intersectMappingAtoms(cx.env, from var atom in pos select cx.mappingAtomType(atom));
            if intersection !is () {
                alts.push({
                    semType: intersection[0],
                    pos: intersection[1],
                    neg: from var atom in neg select cx.mappingAtomType(atom)
                });
            }
        }
        return alts;
    }
}

public function cellInnerVal(CellSemType t) returns SemType {
    return diff(cellInner(t), UNDEF);
}

public function cellInner(CellSemType t) returns SemType {
    return (<CellAtomicType>cellAtomicType(t)).ty;
}

function cellContainingInnerVal(Env env, CellSemType t) returns CellSemType {
    CellAtomicType cat = <CellAtomicType>cellAtomicType(t);
    return cellContaining(env, diff(cat.ty, UNDEF), cat.mut);
}

final CellAtomicType CELL_ATOMIC_VAL = { ty: VAL, mut: CELL_MUT_LIMITED }; // TODO: Revisit with match patterns
final CellAtomicType CELL_ATOMIC_INNER = { ty: INNER, mut: CELL_MUT_LIMITED };
final CellAtomicType CELL_ATOMIC_NEVER = { ty: NEVER, mut: CELL_MUT_LIMITED };
final CellAtomicType CELL_ATOMIC_INNER_MAPPING = { ty: union(MAPPING, UNDEF), mut: CELL_MUT_LIMITED };
final CellAtomicType CELL_ATOMIC_INNER_MAPPING_RO = { ty: union(MAPPING_RO, UNDEF), mut: CELL_MUT_NONE };
final CellAtomicType CELL_ATOMIC_INNER_RO = { ty: INNER_READONLY, mut: CELL_MUT_NONE };

final MappingAtomicType MAPPING_ATOMIC_INNER = { names: [], types: [], rest: CELL_SEMTYPE_INNER };
final ListAtomicType LIST_ATOMIC_INNER = { members: { initial: [], fixedLength: 0 }, rest: CELL_SEMTYPE_INNER };
final ListAtomicType LIST_ATOMIC_MAPPING = { members: {initial: [], fixedLength: 0 }, rest: CELL_SEMTYPE_INNER_MAPPING };

final TypeAtom ATOM_CELL_VAL = { index: 0, atomicType: CELL_ATOMIC_VAL };
final TypeAtom ATOM_CELL_NEVER = { index: 1, atomicType: CELL_ATOMIC_NEVER };
final TypeAtom ATOM_CELL_INNER = { index: 2, atomicType: CELL_ATOMIC_INNER };
final TypeAtom ATOM_CELL_INNER_MAPPING = { index: 3, atomicType: CELL_ATOMIC_INNER_MAPPING };
final TypeAtom ATOM_LIST_MAPPING = { index: 4, atomicType: LIST_ATOMIC_MAPPING };
final TypeAtom ATOM_CELL_INNER_MAPPING_RO = { index: 5, atomicType: CELL_ATOMIC_INNER_MAPPING_RO };
final TypeAtom ATOM_LIST_MAPPING_RO = { index: 6, atomicType: LIST_ATOMIC_MAPPING_RO };
final TypeAtom ATOM_CELL_INNER_RO = { index: 7, atomicType: CELL_ATOMIC_INNER_RO };

const BDD_REC_ATOM_READONLY = 0;
final BddNode BDD_SUBTYPE_RO = bddAtom(BDD_REC_ATOM_READONLY); // represents both readonly & map<readonly> and readonly & readonly[]
final BddNode LIST_SUBTYPE_MAPPING = bddAtom(ATOM_LIST_MAPPING); // represents (map<any|error>)[]
final BddNode LIST_SUBTYPE_MAPPING_RO = bddAtom(ATOM_LIST_MAPPING_RO); // represents readonly & (map<readonly>)[]

final ComplexSemType MAPPING_RO = basicSubtype(BT_MAPPING, BDD_SUBTYPE_RO);
final CellSemType CELL_SEMTYPE_VAL = <CellSemType>basicSubtype(BT_CELL, bddAtom(ATOM_CELL_VAL));
final CellSemType CELL_SEMTYPE_INNER = <CellSemType>basicSubtype(BT_CELL, bddAtom(ATOM_CELL_INNER));
final CellSemType CELL_SEMTYPE_INNER_MAPPING = <CellSemType>basicSubtype(BT_CELL, bddAtom(ATOM_CELL_INNER_MAPPING));
final CellSemType CELL_SEMTYPE_INNER_RO = <CellSemType>basicSubtype(BT_CELL, bddAtom(ATOM_CELL_INNER_RO));
final CellSemType CELL_SEMTYPE_INNER_MAPPING_RO = <CellSemType>basicSubtype(BT_CELL, bddAtom(ATOM_CELL_INNER_MAPPING_RO));

public function cellAtomicType(SemType t) returns CellAtomicType? {
    if t is BasicTypeBitSet {
        return t == CELL ? CELL_ATOMIC_VAL : ();
    }
    else {
        if !isSubtypeSimple(t, CELL) {
            return ();
        }
        return bddCellAtomicType(<Bdd>getComplexSubtypeData(t, BT_CELL), CELL_ATOMIC_VAL);
    }
}

function bddCellAtomicType(Bdd bdd, CellAtomicType top) returns CellAtomicType? {
    if bdd is boolean {
        if bdd {
            return top;
        }
    }
    else if bdd.left == true && bdd.middle == false && bdd.right == false {
        return cellAtomType(bdd.atom);
    }
    return ();
}

function createBasicSemType(BasicTypeCode typeCode, SubtypeData subtypeData) returns SemType {
    if subtypeData is boolean {
        return subtypeData ? <BasicTypeBitSet>(1 << typeCode) : 0;
    }
    else {
        return createComplexSemType(0, [[typeCode, subtypeData]]);
    }
}

public type SplitSemType record {|
    BasicTypeBitSet all;
    [BasicTypeCode, ComplexSemType][] some;
|};

public function split(SemType t) returns SplitSemType  {
    if t is BasicTypeBitSet {
        return { all: t, some: [] };
    }
    else {
        return {
            all: t.all,
            some: from var [code, sd] in unpackComplexSemType(t) select [code, createComplexSemType(0, [[code, sd]])]
        };
    }
}

public type SingleValue ()|boolean|int|float|decimal|string;

public type WrappedSingleValue readonly & record {|
   SingleValue value;
|};

// If the type contains exactly one shape, return a record
// containing a value with that shape. Otherwise, return ().
public function singleShape(SemType t) returns WrappedSingleValue? {
    if t is BasicTypeBitSet {
        return t === NIL ? { value: () } : ();
    }
    BasicSubtype? s = singleBasicSubtype(t);
    if s is () {
        return ();
    }
    var [code, sd] = s;  
    SingleValue value;
    if code == BT_INT {
        value = intSubtypeSingleValue(sd);
    }
    else if code == BT_FLOAT {
        value = floatSubtypeSingleValue(sd);
    }
    else if code == BT_DECIMAL {
        value = decimalSubtypeSingleValue(sd);
    }
    else if code == BT_STRING {
        value = stringSubtypeSingleValue(sd);
    }
    else if code == BT_BOOLEAN {
        value = booleanSubtypeSingleValue(sd);
    }
    else {
        return ();
    }
    if value == () {
        return ();
    }
    return { value };
}

public function singleDecimalShape(SemType t) returns decimal? {
    if t is ComplexSemType && t.some == DECIMAL && t.all == 0 {
        return decimalSubtypeSingleValue(t.subtypeDataList[0]);
    }
    return ();
}

public function singleFloatShape(SemType t) returns float? {
    if t is ComplexSemType && t.some == FLOAT && t.all == 0 {
        return floatSubtypeSingleValue(t.subtypeDataList[0]);
    }
    return ();
}

public function singleIntShape(SemType t) returns int? {
    if t is ComplexSemType && t.some == INT && t.all == 0 {
        return intSubtypeSingleValue(t.subtypeDataList[0]);
    }
    return ();
}

public function singleBooleanShape(SemType t) returns boolean? {
    if t is ComplexSemType && t.some == BOOLEAN && t.all == 0 {
        return booleanSubtypeSingleValue(t.subtypeDataList[0]);
    }
    return ();
}

public function singleStringShape(SemType t) returns string? {
    if t is ComplexSemType && t.some == STRING && t.all == 0 {
        return stringSubtypeSingleValue(t.subtypeDataList[0]);
    }
    return ();
}

public function singleton(Context cx, SingleValue value) returns SemType {
    if value is () {
        return NIL;
    }
    // JBUG this memoization code doesn't work with numeric zeros
    // looks like zeros of different basic types are being treated as `==` by table code
    // JBUG #34712
    // note: Uncomment the line that adds to the table.
    //SingletonMemo? memo = cx.singletonMemo[value];
    //if memo != () {
    //    return memo.semType;
    //}
    ComplexSemType semType;
    if value is int {
        semType = intConst(value);
    }
    else if value is float {
        semType = floatConst(value);
    }
    else if value is string {
        semType = stringConst(value);
    }
    else if value is decimal {
        semType = decimalConst(value);
    }
    else {
        boolean _ = value;
        semType = booleanConst(value);
    }
    //cx.singletonMemo.add({ value, semType });
    return semType;
}

public type SingleValueBasicTypeCode BT_STRING|BT_INT|BT_FLOAT|BT_BOOLEAN|BT_NIL|BT_DECIMAL;

public function constBasicTypeCode(SingleValue v) returns SingleValueBasicTypeCode {
    if v == () {
        return BT_NIL;
    }
    else if v is int {
        return BT_INT;
    }
    else if v is float {
        return BT_FLOAT;
    }
    else if v is string {
        return BT_STRING;
    }
    else if v is decimal {
        return BT_DECIMAL;
    }
    else {
        return BT_BOOLEAN;
    }
}

public function constBasicType(SingleValue v) returns BasicTypeBitSet {
    return  basicType(constBasicTypeCode(v));
}

public function containsConst(SemType t, SingleValue v) returns boolean {
    if v == () {
        return containsNil(t);
    }
    else if v is int {
        return containsConstInt(t, v);
    }
    else if v is float {
        return containsConstFloat(t, v);
    }
    else if v is string {
        return containsConstString(t, v);
    }
    else if v is decimal {
        return containsConstDecimal(t, v);
    }
    else {
        return containsConstBoolean(t, v);
    }
}

public function replaceUndefWithNil(SemType t) returns SemType {
    if !containsUndef(t) {
        return t;
    }
    return union(diff(t, UNDEF), NIL);
}

public function containsUndef(SemType t) returns boolean {
    if t is BasicTypeBitSet {
        return (t & (1 << BT_UNDEF)) != 0;
    }
    else {
        return <boolean>getComplexSubtypeData(t, BT_UNDEF);
    }
}

public function containsNil(SemType t) returns boolean {
    if t is BasicTypeBitSet {
        return (t & (1 << BT_NIL)) != 0;
    }
    else {
        return <boolean>getComplexSubtypeData(t, BT_NIL);
    }
}

public function containsConstString(SemType t, string s) returns boolean {
    if t is BasicTypeBitSet {
        return (t & (1 << BT_STRING)) != 0;
    }
    else {
        return stringSubtypeContains(getComplexSubtypeData(t, BT_STRING), s);
    }
}

public function containsConstInt(SemType t, int n) returns boolean {
    if t is BasicTypeBitSet {
        return (t & (1 << BT_INT)) != 0;
    }
    else {
        return intSubtypeContains(getComplexSubtypeData(t, BT_INT), n);
    }
}

public function containsConstFloat(SemType t, float n) returns boolean {
    if t is BasicTypeBitSet {
        return (t & (1 << BT_FLOAT)) != 0;
    }
    else {
        return floatSubtypeContains(getComplexSubtypeData(t, BT_FLOAT), n);
    }
}

public function containsConstBoolean(SemType t, boolean b) returns boolean {
    if t is BasicTypeBitSet {
        return (t & (1 << BT_BOOLEAN)) != 0;
    }
    else {
        return booleanSubtypeContains(getComplexSubtypeData(t, BT_BOOLEAN), b);
    }
}

public function containsConstDecimal(SemType t, decimal d) returns boolean {
    if t is BasicTypeBitSet {
        return (t & (1 << BT_DECIMAL)) != 0;
    }
    else {
        return decimalSubtypeContains(getComplexSubtypeData(t, BT_DECIMAL), d);
    }
}

public function singleNumericType(SemType semType) returns BasicTypeBitSet? {
    SemType numType = intersect(semType, NUMBER);
    if numType == NEVER {
        return ();
    }
    if isSubtypeSimple(numType, INT) {
        return INT;
    }
    if isSubtypeSimple(numType, FLOAT) {
        return FLOAT;
    }
    if isSubtypeSimple(numType, DECIMAL) {
        return DECIMAL;
    }
    return ();
}

public function typeContext(Env env) returns Context {
    return new(env);
}

public function createJson(Context context) returns SemType {
    SemType? memo = context.jsonMemo;
    if memo != () {
        return memo;
    }
    Env env = context.env;
    ListDefinition listDef = new;
    MappingDefinition mapDef = new;
    SemType j = union(SIMPLE_OR_STRING, union(listDef.getSemType(env), mapDef.getSemType(env)));
    _ = defineListTypeWrapped(listDef, env, rest = j);
    _ = defineMappingTypeWrapped(mapDef, env, [], j);
    context.jsonMemo = j;
    return j;
}

// This is an approximation, because we don't have table subtypes yet.
// SUBSET table subtypes
public function createAnydata(Context context) returns SemType {
    SemType? memo = context.anydataMemo;
    Env env = context.env;
    if memo != () {
        return memo;
    }
    ListDefinition listDef = new;
    MappingDefinition mapDef = new;
    SemType tableTy = tableContaining(env, mapDef.getSemType(env));
    SemType ad = union(union(SIMPLE_OR_STRING, union(XML, tableTy)), union(listDef.getSemType(env), mapDef.getSemType(env)));
    _ = defineListTypeWrapped(listDef, env, rest = ad);
    _ = defineMappingTypeWrapped(mapDef, env, [], ad);
    context.anydataMemo = ad;
    return ad;
}

final readonly & BasicTypeOps[] ops;

function init() {
    ops = [
        {}, // nil
        booleanOps, // boolean
        intOps, // int
        floatOps, // float
        decimalOps, // decimal
        stringOps, // string
        errorOps, // error
        {}, // typedesc
        {}, // handle
        functionOps, // function
        {}, // future
        {}, // stream
        listOps, // list
        mappingOps, // mapping
        tableOps, // table
        xmlOps, // xml
        {}, // object
        cellOps, // cell
        {} // undef
    ];
}

public function isMemberNever(Context cx, SemType ty) returns boolean {
    SemType[] members = toMemberSemtypes(cx, ty);
    foreach SemType member in members {
        if member == NEVER {
            return true;
        }
    }
    return false;
}

function toMemberSemtypes(Context cx, SemType ty) returns SemType[] {
    BddNode[] subtypes = toBddSubtypes(cx, ty);
    SemType[] members = [];
    boolean listSubtype = isSubtypeSimple(ty, LIST);
    foreach var subtype in subtypes {
        if listSubtype {
            ListAtomicType atomicTy = cx.listAtomType(subtype.atom);
            members.push(...from int i in 0 ..< atomicTy.members.fixedLength select listAtomicTypeMemberAt(atomicTy, i));
        }
        else {
            MappingAtomicType atomicTy = cx.mappingAtomType(subtype.atom);
            members.push(...from string name in atomicTy.names select mappingAtomicTypeMemberAt(atomicTy, name));
        }
    }
    return members;
}

function toBddSubtypes(Context cx, SemType ty) returns BddNode[] {
    boolean listSubtype = isSubtypeSimple(ty, LIST);
    boolean mappingSubtype = isSubtypeSimple(ty, MAPPING);
    if ty !is ComplexSemType || !(listSubtype || mappingSubtype) {
        return [];
    }
    return from var subtype in ty.subtypeDataList select <BddNode>subtype;
}
