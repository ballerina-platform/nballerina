import wso2/nballerina.comm.lib;

// There is an integer for each uniform type.
// Uniform types are like basic types except that each selectively immutable
// basic type is split into two uniform types, one immutable and on mutable.

// JBUG #28334 type-descriptor is not needed
public const int UT_COUNT = UT_OBJECT_RW + 1;

const int UT_MASK = (1 << UT_COUNT) - 1;

const int UT_COUNT_RO = 0x10;
public const int UT_READONLY = (1 << UT_COUNT_RO) - 1;

const int UT_RW_MASK = UT_MASK & ~UT_READONLY;


public type UniformTypeCode
    UT_NIL|UT_BOOLEAN|UT_INT|UT_FLOAT|UT_DECIMAL
    |UT_STRING|UT_ERROR|UT_FUNCTION|UT_TYPEDESC|UT_HANDLE
    |UT_XML_RO|UT_LIST_RO|UT_MAPPING_RO|UT_TABLE_RO|UT_OBJECT_RO
    |UT_XML_RW|UT_LIST_RW|UT_MAPPING_RW|UT_TABLE_RW|UT_OBJECT_RW
    |UT_STREAM|UT_FUTURE;

type Atom RecAtom|TypeAtom;

type RecAtom int;

type TypeAtom readonly & record {|
    int index;
    AtomicType atomicType;
|};

type AtomicType ListAtomicType|MappingAtomicType;


// All the SemTypes used in any type operation (e.g. isSubtype) must have been created using the Env.
public isolated class Env {
    private final table<TypeAtom> key(atomicType) atomTable = table [];
    // Set up index 0 for use by bddFixReadOnly
    private final ListAtomicType?[] recListAtoms = [ LIST_SUBTYPE_RO ];
    private final MappingAtomicType?[] recMappingAtoms = [ MAPPING_SUBTYPE_RO ];
    private final FunctionAtomicType?[] recFunctionAtoms = [];
    // Count of the total number of non-nil members
    // of recListAtoms, recMappingAtoms and recFunctionAtoms
    private int recAtomCount = 2;

    public isolated function init() {
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

public type BddMemo record {|
    readonly Bdd bdd;
    boolean? isEmpty = ();
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
    final table<ComparableMemo> key(semType1, semType2) comparableMemo = table [];
    final table<SingletonMemo> key(value) singletonMemo = table [];
    SemType? anydataMemo = ();
    SemType? jsonMemo = ();

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
        return self.env.getRecFunctionAtomType(<RecAtom>atom);
    }
}

type ProperSubtypeData StringSubtype|DecimalSubtype|FloatSubtype|IntSubtype|BooleanSubtype|XmlSubtype|RwTableSubtype|BddNode;
// true means everything and false means nothing (as with Bdd)
type SubtypeData ProperSubtypeData|boolean;

type UniformSubtype [UniformTypeCode, ProperSubtypeData];

type BinOp function(SubtypeData t1, SubtypeData t2) returns SubtypeData;
type UnaryOp function(SubtypeData t) returns SubtypeData;
type UnaryTypeCheckOp function(Context cx, SubtypeData t) returns boolean;

function binOpPanic(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    panic error("binary operation should not be called");
}

function unaryOpPanic(SubtypeData t) returns SubtypeData {
    panic error("unary operation should not be called");
}

function unaryTypeCheckOpPanic(Context cx, SubtypeData t) returns boolean {
    panic error("unary boolean operation should not be called");
}

type UniformTypeOps readonly & record {|
    BinOp union = binOpPanic;
    BinOp intersect = binOpPanic;
    BinOp diff = binOpPanic;
    UnaryOp complement = unaryOpPanic;
    UnaryTypeCheckOp isEmpty = unaryTypeCheckOpPanic;
|};

final readonly & (UniformSubtype[]) EMPTY_SUBTYPES = [];

public type UniformTypeBitSet int:Unsigned32;

public type SemType UniformTypeBitSet|ComplexSemType;

public type ComplexSemType readonly & record {|
    // For a uniform type with code c,
    // all & (1 << c) is non-zero iff this type contains all of the uniform type
    // some & (1 << c) is non-zero iff this type contains some but not all of the uniform type
    UniformTypeBitSet all;
    UniformTypeBitSet some;
    // There is one member of subtypes for each bit set in some.
    // Ordered in increasing order of UniformTypeCode
    ProperSubtypeData[] subtypeDataList;
|};

// subtypeList must be ordered
function createComplexSemType(UniformTypeBitSet all, UniformSubtype[] subtypeList = []) returns ComplexSemType {
    int some = 0;
    ProperSubtypeData[] dataList = [];
    foreach var [code, data] in subtypeList {
        dataList.push(data);
        int c = code;
        some |= 1 << c;
    }
    return {
        all,
        some: <UniformTypeBitSet>some,
        subtypeDataList: dataList.cloneReadOnly()
    };
}

function unpackComplexSemType(ComplexSemType t) returns UniformSubtype[] {
    int some = t.some;
    UniformSubtype[] subtypeList = [];
    foreach var data in t.subtypeDataList {
        var code = <UniformTypeCode>lib:numberOfTrailingZeros(some);
        subtypeList.push([code, data]);
        int c = code;
        some ^= (1 << c);
    }
    return subtypeList;
}

function singleUniformSubtype(ComplexSemType t) returns UniformSubtype? {
    if t.all == 0 && t.subtypeDataList.length() == 1 {
        return [<UniformTypeCode>lib:numberOfTrailingZeros(t.some), t.subtypeDataList[0]];
    }
    return ();
}

function getComplexSubtypeData(ComplexSemType t, UniformTypeCode code) returns SubtypeData {
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

public function uniformType(UniformTypeCode code) returns UniformTypeBitSet {
    return <UniformTypeBitSet>(1 << code);
}

// Union of complete uniform types
// bits is bit vecor indexed by UniformTypeCode
// I would like to make the arg int:Unsigned32
// but are language/impl bugs that make this not work well
public function uniformTypeUnion(int bits) returns UniformTypeBitSet {
    return <UniformTypeBitSet>bits;
}

function uniformSubtype(UniformTypeCode code, ProperSubtypeData data) returns ComplexSemType {
    return createComplexSemType(0, [[code, data]]);
}

function subtypeData(SemType s, UniformTypeCode code) returns SubtypeData {
    if s is UniformTypeBitSet {
        return (s & (1 << <int>code)) != 0;
    }
    else {
        return getComplexSubtypeData(s, code);
    }
}

public final UniformTypeBitSet NEVER = uniformTypeUnion(0);
public final UniformTypeBitSet NIL = uniformType(UT_NIL);
public final UniformTypeBitSet BOOLEAN = uniformType(UT_BOOLEAN);
public final UniformTypeBitSet INT = uniformType(UT_INT);
public final UniformTypeBitSet FLOAT = uniformType(UT_FLOAT);
public final UniformTypeBitSet DECIMAL = uniformType(UT_DECIMAL);
public final UniformTypeBitSet STRING = uniformType(UT_STRING);
public final UniformTypeBitSet ERROR = uniformType(UT_ERROR);
public final UniformTypeBitSet LIST_RO = uniformType(UT_LIST_RO);
public final UniformTypeBitSet LIST_RW = uniformType(UT_LIST_RW);
public final UniformTypeBitSet LIST = uniformTypeUnion((1 << UT_LIST_RO) | (1 << UT_LIST_RW));
public final UniformTypeBitSet MAPPING_RO = uniformType(UT_MAPPING_RO);
public final UniformTypeBitSet MAPPING_RW = uniformType(UT_MAPPING_RW);
public final UniformTypeBitSet MAPPING = uniformTypeUnion((1 << UT_MAPPING_RO) | (1 << UT_MAPPING_RW));
public final UniformTypeBitSet TABLE_RO = uniformType(UT_TABLE_RO);
public final UniformTypeBitSet TABLE_RW = uniformType(UT_TABLE_RW);
public final UniformTypeBitSet TABLE = uniformTypeUnion((1 << UT_TABLE_RO) | (1 << UT_TABLE_RW));

// matches all functions
public final UniformTypeBitSet FUNCTION = uniformType(UT_FUNCTION);
public final UniformTypeBitSet TYPEDESC = uniformType(UT_TYPEDESC);
public final UniformTypeBitSet HANDLE = uniformType(UT_HANDLE);

public final UniformTypeBitSet XML = uniformTypeUnion((1 << UT_XML_RO) | (1 << UT_XML_RW));
public final UniformTypeBitSet STREAM = uniformType(UT_STREAM);
public final UniformTypeBitSet FUTURE = uniformType(UT_FUTURE);

// this is SubtypeData|error
public final UniformTypeBitSet TOP = uniformTypeUnion(UT_MASK);
public final UniformTypeBitSet ANY = uniformTypeUnion(UT_MASK & ~(1 << UT_ERROR));
public final UniformTypeBitSet READONLY = uniformTypeUnion(UT_READONLY);
public final UniformTypeBitSet SIMPLE_OR_STRING = uniformTypeUnion((1 << UT_NIL) | (1 << UT_BOOLEAN) | (1 << UT_INT) | (1 << UT_FLOAT) | (1 << UT_DECIMAL) | (1 << UT_STRING));
public final UniformTypeBitSet NON_BEHAVIOURAL = uniformTypeUnion((1 << UT_NIL) | (1 << UT_BOOLEAN) | (1 << UT_INT) | (1 << UT_FLOAT)| (1 << UT_DECIMAL) | (1 << UT_STRING)
                                                                 | (1 << UT_XML_RO) | (1 << UT_LIST_RO) | (1 << UT_MAPPING_RO) | (1 << UT_TABLE_RO)
                                                                 | (1 << UT_XML_RW) | (1 << UT_LIST_RW) | (1 << UT_MAPPING_RW) | (1 << UT_TABLE_RW));
public final UniformTypeBitSet NUMBER = uniformTypeUnion((1 << UT_INT) | (1 << UT_FLOAT) | (1 << UT_DECIMAL));
public final SemType BYTE = intWidthUnsigned(8);
public final SemType STRING_CHAR = stringChar();
public final SemType XML_ELEMENT = xmlSingleton(XML_PRIMITIVE_ELEMENT_RO | XML_PRIMITIVE_ELEMENT_RW);
public final SemType XML_COMMENT = xmlSingleton(XML_PRIMITIVE_COMMENT_RO | XML_PRIMITIVE_COMMENT_RW);
public final SemType XML_TEXT = xmlSequence(xmlSingleton(XML_PRIMITIVE_TEXT));
public final SemType XML_PI = xmlSingleton(XML_PRIMITIVE_PI_RO | XML_PRIMITIVE_PI_RW);

// Need this type to workaround slalpha4 bug.
// It has to be public to workaround another bug.
public type SubtypePairIterator object {
    // JBUG if `ProperSubtypeData` on the next line is changed to SubtypeData, jBallerina blows up
    public function next() returns record {| [UniformTypeCode, ProperSubtypeData?, ProperSubtypeData?] value; |}?;
};

class SubtypePairIteratorImpl {
    *object:Iterable;
    *SubtypePairIterator;
    private int i1;
    private int i2;
    private final UniformSubtype[] t1;
    private final UniformSubtype[] t2;
    private final UniformTypeBitSet bits;

    function init(SemType t1, SemType t2, UniformTypeBitSet bits) {
        self.i1 = 0;
        self.i2 = 0;
        self.t1 = (t1 is UniformTypeBitSet) ? [] : unpackComplexSemType(t1);
        self.t2 = (t2 is UniformTypeBitSet) ? [] : unpackComplexSemType(t2);
        self.bits = bits;
    }

    public function iterator() returns SubtypePairIterator {
        return self;
    }

    public function next() returns record {| [UniformTypeCode, ProperSubtypeData?, ProperSubtypeData?] value; |}? {
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

    private function include(UniformTypeCode code) returns boolean {
        int c = code;
        return (self.bits & (1 << c)) != 0;
    }

    private function get1() returns UniformSubtype {
        return self.t1[self.i1];
    }

    private function get2() returns UniformSubtype {
        return self.t2[self.i2];
    }
}


public function union(SemType t1, SemType t2) returns SemType {
    UniformTypeBitSet all1;
    UniformTypeBitSet all2;
    UniformTypeBitSet some1;
    UniformTypeBitSet some2;

    if t1 is UniformTypeBitSet {
        if t2 is UniformTypeBitSet {
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
        if t2 is UniformTypeBitSet {
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
    
    UniformTypeBitSet all = all1 | all2;
    UniformTypeBitSet some = (some1 | some2) & ~<int>all;
    if some == 0 {
        return uniformTypeUnion(all);
    }
    UniformSubtype[] subtypes = [];
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
            all |= <UniformTypeBitSet>(1 << c);
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
    UniformTypeBitSet all1;
    UniformTypeBitSet all2;
    UniformTypeBitSet some1;
    UniformTypeBitSet some2;

    if t1 is UniformTypeBitSet {
        if t2 is UniformTypeBitSet {
            return t1&t2;
        }
        else {
            if t1 == 0 {
                return t1;
            }
            if t1 == UT_MASK {
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
        if t2 is UniformTypeBitSet {
            if t2 == 0 {
                return t2;
            }
            if t2 == UT_MASK {
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
   
    UniformTypeBitSet all = all1 & all2;

    // some(t1 & t2) = some(t1) & some(t2)
    UniformTypeBitSet some = (some1 | all1) & (some2 | all2);

    some &= ~<int>all;
    if some == 0 {
        return uniformTypeUnion(all);
    }
    UniformSubtype[] subtypes = [];
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

public function roDiff(Context cx, SemType t1, SemType t2) returns SemType {
    return maybeRoDiff(t1, t2, cx);
}

public function diff(SemType t1, SemType t2) returns SemType {
    return maybeRoDiff(t1, t2, ());
}

function maybeRoDiff(SemType t1, SemType t2, Context? cx) returns SemType {
    UniformTypeBitSet all1;
    UniformTypeBitSet all2;
    UniformTypeBitSet some1;
    UniformTypeBitSet some2;

    if t1 is UniformTypeBitSet {
        if t2 is UniformTypeBitSet {
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
        if t2 is UniformTypeBitSet {
            if t2 == UT_MASK {
                return <UniformTypeBitSet>0;
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
    UniformTypeBitSet all = all1 & ~<int>(all2 | some2);
    // some(t1 \ t2) = some(t1) & not(all(t2))
    UniformTypeBitSet some = (all1 | some1) & ~<int>all2;
    some &= ~<int>all;

    if some == 0 {
        return uniformTypeUnion(all);
    }
    UniformSubtype[] subtypes = [];
    foreach var [code, data1, data2] in new SubtypePairIteratorImpl(t1, t2, some) {
        SubtypeData data;
        if cx == () || code < UT_COUNT_RO {
            // normal diff or read-only uniform type
            if data1 == () {
                var complement = ops[code].complement;
                data = complement(<SubtypeData>data2);
            }
            else if data2 == () {
                data = data1;
            }
            else {
                var diff = ops[code].diff;
                data = diff(data1, data2);
            }
        }
        else {
            // read-only diff for mutable uniform type
            if data1 == () {
                // data1 was all
                data = true;
            }
            else if data2 == () {
                // data2 was none
                data = data1;
            }
            else {
                var diff = ops[code].diff;
                var isEmpty = ops[code].isEmpty;
                if isEmpty(cx, diff(data1, data2)) {
                    data = false;
                }
                else {
                    data = data1;
                }
            }
        }
        // JBUG `data` is not narrowed properly if you swap the order by doing `if data == true {} else if data != false {}`
        if data !is boolean {
            subtypes.push([code, data]);
        }
        else if data == true {
            int c = code;
            all |= <UniformTypeBitSet>(1 << c);
        }
    }
    if subtypes.length() == 0 {
        return all;
    }
    return createComplexSemType(all, subtypes);        
}

public function complement(SemType t) returns SemType {
    return diff(TOP, t);
}

public function isNever(SemType t) returns boolean {
    return t is UniformTypeBitSet && t == 0;
}

public function isEmpty(Context cx, SemType t) returns boolean {
    if t is UniformTypeBitSet {
        return t == 0;
    }
    else {
        if t.all != 0 {
            // includes all of one or more uniform types
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
    return !isNever(intersect(t1, t2));
}

public function isSubtypeSimple(SemType t1, UniformTypeBitSet t2) returns boolean {
    int bits;
    if t1 is UniformTypeBitSet {
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

public function widenToUniformTypes(SemType t) returns UniformTypeBitSet {
    if t is UniformTypeBitSet {
        return t;
    }
    else {
        return <UniformTypeBitSet>(t.all | t.some);
    }
}

public function uniformTypeCode(UniformTypeBitSet bitSet) returns UniformTypeCode? {
    if lib:bitCount(bitSet) != 1 {
        return ();
    }
    return <UniformTypeCode>lib:numberOfTrailingZeros(bitSet);
}

public function comparable(Context cx, SemType t1, SemType t2) returns boolean {
    SemType semType = diff(union(t1, t2), NIL);
    if isSubtypeSimple(semType, SIMPLE_OR_STRING) {
        int nOrderings = lib:bitCount(widenToUniformTypes(semType));
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
    var [ranges1, memberTypes1] = listAllMemberTypes(cx, t1);
    var [ranges2, memberTypes2] = listAllMemberTypes(cx, t2);
    foreach var [_, i1, i2] in combineRanges(ranges1, ranges2) {
        if i1 != () && i2 != () && !comparable(cx, memberTypes1[i1], memberTypes2[i2]) {
            memo.comparable = false;
            return false;
        }
    }
    memo.comparable = true;
    return true;
}

// If t is a non-empty subtype of a built-in unsigned int subtype (Unsigned8/16/32),
// then return the smallest such subtype. Otherwise, return t.
public function widenUnsigned(SemType t) returns SemType {
    if t is UniformTypeBitSet {
        return t;
    }
    else {
        if !isSubtypeSimple(t, INT) {
            return t;
        }
        SubtypeData data = intSubtypeWidenUnsigned(subtypeData(t, UT_INT));
        if data is boolean {
            return INT;
        }
        else {
            return uniformSubtype(UT_INT, data);
        }
    }
}

public function booleanSubtype(SemType t) returns BooleanSubtype|boolean {
    return <boolean|BooleanSubtype>subtypeData(t, UT_BOOLEAN);
}

// Describes the subtype of int included in the type: true/false mean all or none of string
public function intSubtype(SemType t) returns IntSubtype|boolean {
    return <boolean|IntSubtype>subtypeData(t, UT_INT);
}

public function floatSubtype(SemType t) returns FloatSubtype|boolean {
    return <boolean|FloatSubtype>subtypeData(t, UT_FLOAT);
}

public function decimalSubtype(SemType t) returns DecimalSubtype|boolean {
    return <boolean|DecimalSubtype>subtypeData(t, UT_DECIMAL);
}

// Describes the subtype of string included in the type: true/false mean all or none of string
public function stringSubtype(SemType t) returns StringSubtype|boolean {
    return <boolean|StringSubtype>subtypeData(t, UT_STRING);
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

public function listAtomicSimpleArrayMemberType(ListAtomicType? atomic) returns UniformTypeBitSet? {
    if atomic != () && atomic.members.fixedLength == 0 {
        SemType memberType = atomic.rest;
        if memberType is UniformTypeBitSet {
            return memberType;
        }
    }
    return ();   
}

final ListAtomicType LIST_ATOMIC_TOP = { members: { initial: [], fixedLength: 0 }, rest: TOP };

// placeholder for #924
public function listAllMemberTypes(Context cx, SemType t) returns ListMemberTypes {
    ListAtomicType? atomicType = listAtomicTypeRw(cx, t);
    if atomicType == () {
        panic error("expected atomic list type");
    }
    else {
        return listAtomicTypeAllMemberTypes(atomicType);
    }
}

public function listAtomicTypeRw(Context cx, SemType t) returns ListAtomicType? {
    if t is UniformTypeBitSet {
        return t == LIST || t == LIST_RW ? LIST_ATOMIC_TOP : ();
    }
    else {
        Env env = cx.env;
        if !isSubtypeSimple(t, LIST) {
            return ();
        }
        return bddListAtomicType(env, <Bdd>getComplexSubtypeData(t, UT_LIST_RW), LIST_ATOMIC_TOP);       
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

// This computes the spec operation called "member type of K in T",
// for the case when T is a subtype of list, and K is either `int` or a singleton int.
// This is what Castagna calls projection.
// We will extend this to allow `key` to be a SemType, which will turn into an IntSubtype.
// If `t` is not a list, NEVER is returned
public function listMemberType(Context cx, SemType t, SemType k) returns SemType {
    if t is UniformTypeBitSet {
        return (t & LIST) != 0 ? TOP : NEVER;
    }
    else {
        IntSubtype|boolean keyData = intSubtype(k);
        if keyData == false {
            return NEVER;
        }
        return union(bddListMemberType(cx, <Bdd>getComplexSubtypeData(t, UT_LIST_RO), <IntSubtype|true>keyData, TOP),
                     bddListMemberType(cx, <Bdd>getComplexSubtypeData(t, UT_LIST_RW), <IntSubtype|true>keyData, TOP));
    }
}

public function listAtomicTypeApplicableMemberTypes(Context cx, ListAtomicType atomic, SemType indexType) returns readonly & SemType[] {
    IntSubtype|boolean indexIntType;
    if indexType is UniformTypeBitSet {
        indexIntType = (indexType & INT) != 0;
    }
    else {
        indexIntType = intSubtype(indexType);
    }
    if indexIntType == false {
        return [];
    }
    else {
        return listAtomicApplicableMemberTypes(atomic, <IntSubtype|true>indexIntType).cloneReadOnly();
    }
}

final MappingAtomicType MAPPING_ATOMIC_TOP = { names: [], types: [], rest: TOP };
final MappingAtomicType MAPPING_ATOMIC_READONLY = { names: [], types: [], rest: READONLY };

public function mappingAtomicTypeRw(Context cx, SemType t) returns MappingAtomicType? {
    if t is UniformTypeBitSet {
        return t == MAPPING || t == MAPPING_RW ? MAPPING_ATOMIC_TOP : ();
    }
    else {
        Env env = cx.env;
        if !isSubtypeSimple(t, MAPPING) {
            return ();
        }
        return bddMappingAtomicType(env, <Bdd>getComplexSubtypeData(t, UT_MAPPING_RW), MAPPING_ATOMIC_TOP);
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
public function mappingMemberType(Context cx, SemType t, SemType k) returns SemType {
    if t is UniformTypeBitSet {
        return (t & MAPPING) != 0 ? TOP : NEVER;
    }
    else {
        StringSubtype|boolean keyData = stringSubtype(k);
        if keyData == false {
            return NEVER;
        }
        return union(bddMappingMemberType(cx, <Bdd>getComplexSubtypeData(t, UT_MAPPING_RO), <StringSubtype|true>keyData, TOP),
                     bddMappingMemberType(cx, <Bdd>getComplexSubtypeData(t, UT_MAPPING_RW), <StringSubtype|true>keyData, TOP));
    }
}

public function mappingMemberRequired(Context cx, SemType t, SemType k) returns boolean {
    if t is UniformTypeBitSet || k !is ComplexSemType {
        return false;
    }
    else {
        StringSubtype stringSubType = <StringSubtype>getComplexSubtypeData(k, UT_STRING);
        return bddMappingMemberRequired(cx, <Bdd>getComplexSubtypeData(t, UT_MAPPING_RW), stringSubType, false)
               && bddMappingMemberRequired(cx, <Bdd>getComplexSubtypeData(t, UT_MAPPING_RO), stringSubType, false);
    }
}

public function mappingAtomicTypeApplicableMemberTypes(Context cx, MappingAtomicType atomic, SemType keyType) returns readonly & SemType[] {
    StringSubtype|boolean keyStringType;
    if keyType is UniformTypeBitSet {
        keyStringType = (keyType & STRING) != 0;
    }
    else {
        keyStringType = stringSubtype(keyType);
    }
    if keyStringType == false {
        return [];
    }
    else {
        return mappingAtomicApplicableMemberTypes(atomic, <StringSubtype|true>keyStringType).cloneReadOnly();
    }
}

public type MappingAlternative record {|
    SemType semType;
    MappingAtomicType[] pos;
    MappingAtomicType[] neg;
|};

public function mappingAlternativesRw(Context cx, SemType t) returns MappingAlternative[] {
    if t is UniformTypeBitSet {
        if (t & MAPPING_RW) == 0 {
            return [];
        }
        else {
            return [
                {
                    semType: MAPPING_RW,
                    pos: [],
                    neg: []
                }
            ];
        }
    }
    else {
        BddPath[] paths = [];
        bddPaths(<Bdd>getComplexSubtypeData(t, UT_MAPPING_RW), paths, {});
        /// JBUG (33709) runtime error on construct1-v.bal if done as from/select
        MappingAlternative[] alts = [];
        foreach var { bdd, pos, neg } in paths {
            SemType semType = createUniformSemType(UT_MAPPING_RW, bdd);
            if semType != NEVER {
                alts.push({
                    semType,
                    // JBUG parse error without parentheses (33707)
                    pos: (from var atom in pos select cx.mappingAtomType(atom)),
                    neg: (from var atom in neg select cx.mappingAtomType(atom))
                });
            }          
        }
        return alts;
    }
}

function createUniformSemType(UniformTypeCode typeCode, SubtypeData subtypeData) returns SemType {
    if subtypeData is boolean {
        return subtypeData ? <UniformTypeBitSet>(1 << typeCode) : 0;
    }
    else {
        return createComplexSemType(0, [[typeCode, subtypeData]]);
    }
}

public type SplitSemType record {|
    UniformTypeBitSet all;
    [UniformTypeCode, ComplexSemType][] some;
|};

public function split(SemType t) returns SplitSemType  {
    if t is UniformTypeBitSet {
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
    if t is UniformTypeBitSet {
        return t === NIL ? { value: () } : ();
    }
    UniformSubtype? s = singleUniformSubtype(t);
    if s is () {
        return ();
    }
    var [code, sd] = s;  
    SingleValue value;
    if code == UT_INT {
        value = intSubtypeSingleValue(sd);
    }
    else if code == UT_FLOAT {
        value = floatSubtypeSingleValue(sd);
    }
    else if code == UT_DECIMAL {
        value = decimalSubtypeSingleValue(sd);
    }
    else if code == UT_STRING {
        value = stringSubtypeSingleValue(sd);
    }
    else if code == UT_BOOLEAN {
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

public function isReadOnly(SemType t) returns boolean {
    UniformTypeBitSet bits;
    if t is UniformTypeBitSet {
        bits = t;
    }
    else {
        bits = t.all | t.some;
    }
    return (bits & UT_RW_MASK) == 0;
}

public type SingleValueUniformTypeCode UT_STRING|UT_INT|UT_FLOAT|UT_BOOLEAN|UT_NIL|UT_DECIMAL;

public function constUniformTypeCode(SingleValue v) returns SingleValueUniformTypeCode {
    if v == () {
        return UT_NIL;
    }
    else if v is int {
        return UT_INT;
    }
    else if v is float {
        return UT_FLOAT;
    }
    else if v is string {
        return UT_STRING;
    }
    else if v is decimal {
        return UT_DECIMAL;
    }
    else {
        return UT_BOOLEAN;
    }
}

public function constBasicType(SingleValue v) returns UniformTypeBitSet {
    return  uniformType(constUniformTypeCode(v));
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

public function containsNil(SemType t) returns boolean {
    if t is UniformTypeBitSet {
        return (t & (1 << UT_NIL)) != 0;
    }
    else {
        return <boolean>getComplexSubtypeData(t, UT_NIL);
    }
}


public function containsConstString(SemType t, string s) returns boolean {
    if t is UniformTypeBitSet {
        return (t & (1 << UT_STRING)) != 0;
    }
    else {
        return stringSubtypeContains(getComplexSubtypeData(t, UT_STRING), s);
    }
}

public function containsConstInt(SemType t, int n) returns boolean {
    if t is UniformTypeBitSet {
        return (t & (1 << UT_INT)) != 0;
    }
    else {
        return intSubtypeContains(getComplexSubtypeData(t, UT_INT), n);
    }
}

public function containsConstFloat(SemType t, float n) returns boolean {
    if t is UniformTypeBitSet {
        return (t & (1 << UT_FLOAT)) != 0;
    }
    else {
        return floatSubtypeContains(getComplexSubtypeData(t, UT_FLOAT), n);
    }
}

public function containsConstBoolean(SemType t, boolean b) returns boolean {
    if t is UniformTypeBitSet {
        return (t & (1 << UT_BOOLEAN)) != 0;
    }
    else {
        return booleanSubtypeContains(getComplexSubtypeData(t, UT_BOOLEAN), b);
    }
}

public function containsConstDecimal(SemType t, decimal d) returns boolean {
    if t is UniformTypeBitSet {
        return (t & (1 << UT_DECIMAL)) != 0;
    }
    else {
        return decimalSubtypeContains(getComplexSubtypeData(t, UT_DECIMAL), d);
    }
}

public function singleNumericType(SemType semType) returns UniformTypeBitSet? {
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
    _ = listDef.define(env, rest = j);
    _ = mapDef.define(env, [], j);
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
    SemType tableTy = tableContaining(mapDef.getSemType(env));
    SemType ad = union(union(SIMPLE_OR_STRING, union(XML, tableTy)), union(listDef.getSemType(env), mapDef.getSemType(env)));
    _ = listDef.define(env, rest = ad);
    _ = mapDef.define(env, [], ad);
    context.anydataMemo = ad;
    return ad;
}

final readonly & UniformTypeOps[] ops;

function init() {
    ops = [
        {}, // nil
        booleanOps, // boolean
        listRoOps, // RO list
        mappingRoOps, // RO mapping
        tableRoOps, // RO table
        xmlRoOps, // RO xml
        {}, // RO object
        intOps, // int
        floatOps, // float
        decimalOps, // decimal
        stringOps, // string
        errorOps, // error
        functionOps,  // function
        {}, // typedesc
        {}, // handle
        {}, // unused
        {}, // RW future
        {}, // RW stream
        listRwOps, // RW list
        mappingRwOps, // RW mapping
        tableRwOps, // RW table
        xmlRwOps, // RW xml
        {} // RW object
   ];
}
