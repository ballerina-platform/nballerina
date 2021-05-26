
import semtype.bdd;

// There is an integer for each uniform type.
// Uniform types are like basic types except that each selectively immutable
// basic type is split into two uniform types, one immutable and on mutable.

// Inherently immutable
public const UT_NIL = 0;
public const UT_BOOLEAN = 1;
public const UT_INT = 2;
public const UT_FLOAT = 3;
public const UT_DECIMAL = 4;
public const UT_STRING = 5;
public const UT_ERROR = 6;
public const UT_FUNCTION = 7;
public const UT_TYPEDESC = 8;
public const UT_HANDLE = 9;

// Selectively immutable; immutable half
public const UT_XML_RO = 10;
public const UT_LIST_RO = 11;
public const UT_MAPPING_RO = 12;
public const UT_TABLE_RO = 13;
public const UT_OBJECT_RO = 14;

// Selectively immutable; mutable half
public const UT_XML_RW = 15;
public const UT_LIST_RW = 16;
public const UT_MAPPING_RW = 17;
public const UT_TABLE_RW = 18;
public const UT_OBJECT_RW = 19;

// Inherently mutable
public const UT_STREAM = 20;
public const UT_FUTURE = 21;

public const UT_COUNT = 22;

public const int UT_MASK = (1 << UT_COUNT) - 1;

public const int UT_COUNT_RO = UT_OBJECT_RO + 1;
public const int UT_READONLY = (1 << UT_COUNT_RO) - 1;

// It would be easier to use ~ here, but slalpha5 doesn't support
public const int UT_RW_MASK = ((1 << (UT_COUNT - UT_COUNT_RO)) - 1) << UT_COUNT_RO;

public const int UT_SOME = 1 | (1 << UT_COUNT);

public type UniformTypeCode
    UT_NIL|UT_BOOLEAN|UT_INT|UT_FLOAT|UT_DECIMAL
    |UT_STRING|UT_ERROR|UT_FUNCTION|UT_TYPEDESC|UT_HANDLE
    |UT_XML_RO|UT_LIST_RO|UT_MAPPING_RO|UT_TABLE_RO|UT_OBJECT_RO
    |UT_XML_RW|UT_LIST_RW|UT_MAPPING_RW|UT_TABLE_RW|UT_OBJECT_RW
    |UT_STREAM|UT_FUTURE;

public class Env {
    final ListAtomicType[] listDefs;
    final MappingAtomicType[] mappingDefs;
    final FunctionAtomicType[] functionDefs = [];
    public function init() {
        self.mappingDefs = [ MAPPING_SUBTYPE_RO ];
        self.listDefs = [ LIST_SUBTYPE_RO ];
    }
}

public type BddMemo record {|
    readonly bdd:Bdd bdd;
    boolean? isEmpty = ();
|};

type BddMemoTable table<BddMemo> key(bdd);

public type TypeCheckContext record {|
    readonly ListAtomicType[] listDefs;
    readonly MappingAtomicType[] mappingDefs;
    readonly FunctionAtomicType[] functionDefs;
    BddMemoTable listMemo = table [];
    BddMemoTable mappingMemo = table [];
    BddMemoTable functionMemo = table [];
|};

type ProperSubtypeData StringSubtype|IntSubtype|BooleanSubtype|bdd:Node;
// true means everything and false means nothing (as with Bdd)
type SubtypeData ProperSubtypeData|boolean;

type UniformSubtype [UniformTypeCode, SubtypeData];

type BinOp function(SubtypeData t1, SubtypeData t2) returns SubtypeData;
type UnaryOp function(SubtypeData t) returns SubtypeData;
type UnaryTypeCheckOp function(TypeCheckContext tc, SubtypeData t) returns boolean;

function binOpPanic(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    panic error("binary operation should not be called");
}

function unaryOpPanic(SubtypeData t) returns SubtypeData {
    panic error("unary operation should not be called");
}

function unaryTypeCheckOpPanic(TypeCheckContext tc, SubtypeData t) returns boolean {
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
public readonly class ComplexSemType {
    // For a uniform type with code c,
    // all & (1 << c) is non-zero iff this type contains all of the uniform type
    // some & (1 << c) is non-zero iff this type contains some but not all of the uniform type
    UniformTypeBitSet all;
    UniformTypeBitSet some;
    // There is one member of subtypes for each bit set in some.
    // Ordered in increasing order of UniformTypeCode
    private SubtypeData[] subtypeDataList;
    // subtypeList must be ordered
    function init(UniformTypeBitSet all, UniformSubtype[] subtypeList = []) {
        self.all = all;
        int some = 0;
        SubtypeData[] dataList = [];
        foreach var [code, data] in subtypeList {
            dataList.push(data);
            int c = code;
            some |= 1 << c;
        }
        self.subtypeDataList = dataList.cloneReadOnly();
        self.some = <UniformTypeBitSet>some;
    }
    
    function unpack() returns UniformSubtype[] {
        int some = self.some;
        UniformSubtype[] subtypeList = [];
        foreach var data in self.subtypeDataList {
            var code = <UniformTypeCode>numberOfTrailingZeros(some);
            subtypeList.push([code, data]);
            int c = code;
            some ^= (1 << c);
        }
        return subtypeList;
    }

    function getSubtypeData(UniformTypeCode code) returns SubtypeData {
        int c = code;
        c = 1 << c;
        if (self.all & c) != 0 {
            return true;
        }
        if (self.some & c) == 0 {
            return false;
        }
        int loBits = self.some & (c - 1);
        return self.subtypeDataList[loBits == 0 ? 0 : bitCount(loBits)];
    }
}

// Count number of bits set in bits.
// This is the Brian Kernighan algorithm.
// There's usually a hardware instruction for this
// typically called PopCpount
// This is __builtin_popcount in GCC and clang
function bitCount(int bits) returns int {
    int n = 0;
    int v = bits;
    while v != 0 {
        v &= v - 1;
        n += 1;
    }
    return n;
}


// This should be a function in lang.int
// Modern CPUs have a hardware instruction for this
// This is __builtin_ctz in GCC and clang
function numberOfTrailingZeros(int bits) returns int {
    if bits == 0 {
        return 64;
    }
    int flag = 1;
    int n = 0;
    while (bits & flag) == 0 {
        n += 1;
        flag <<= 1;
    }
    return n;
}

function uniformTypeSingleton(UniformTypeCode code) returns UniformTypeBitSet {
    int c = code;
    return <UniformTypeBitSet>(1 << c);
}

function uniformType(UniformTypeCode code) returns SemType {
    return uniformTypeSingleton(code);
}

// Union of complete uniform types
// bits is bit vecor indexed by UniformTypeCode
// I would like to make the arg int:Unsigned32
// but are language/impl bugs that make this not work well
function uniformTypeUnion(int bits) returns SemType {
    return <UniformTypeBitSet>bits;
}

function uniformSubtype(UniformTypeCode code, ProperSubtypeData data) returns SemType {
    return new SemType(0, [[code,data]]);
}

function subtypeData(SemType s, UniformTypeCode code) returns SubtypeData {
    if s is UniformTypeBitSet {
        return (s & (1 << <int>code)) != 0;
    }
    else {
        return s.getSubtypeData(code);
    }
}

public final SemType NEVER = uniformTypeUnion(0);
public final SemType NIL = uniformType(UT_NIL);
public final SemType BOOLEAN = uniformType(UT_BOOLEAN);
public final SemType INT = uniformType(UT_INT);
public final SemType FLOAT = uniformType(UT_FLOAT);
public final SemType DECIMAL = uniformType(UT_DECIMAL);
public final SemType STRING = uniformType(UT_STRING);
public final SemType ERROR = uniformType(UT_ERROR);

// matches all functions
public final SemType FUNCTION = uniformType(UT_FUNCTION);
public final SemType TYPEDESC = uniformType(UT_TYPEDESC);
public final SemType HANDLE = uniformType(UT_HANDLE);

public final SemType XML = uniformTypeUnion((1 << UT_XML_RO) | (1 << UT_XML_RW));
public final SemType STREAM = uniformType(UT_STREAM);
public final SemType FUTURE = uniformType(UT_FUTURE);

// this is SubtypeData|error
public final SemType TOP = uniformTypeUnion(UT_MASK);
public final SemType ANY = uniformTypeUnion(UT_MASK & ~(1 << UT_ERROR));
public final SemType READONLY = uniformTypeUnion(UT_READONLY);
public final SemType BYTE = intWidthUnsigned(8);

// Need this type to workaround slalpha4 bug.
// It has to be public to workaround another bug.
public type SubtypePairIterator object {
    public function next() returns record {| [UniformTypeCode, SubtypeData?, SubtypeData?] value; |}?;
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
        self.t1 = (t1 is UniformTypeBitSet) ? [] : t1.unpack();
        self.t2 = (t2 is UniformTypeBitSet) ? [] : t2.unpack();
        self.bits = bits;
    }

    public function iterator() returns SubtypePairIterator {
        return self;
    }

    public function next() returns record {| [UniformTypeCode, SubtypeData?, SubtypeData?] value; |}? {
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
        if data1 is () {
            data = <SubtypeData>data2; // if they are both null, something's gone wrong
        }
        else if data2 is () {
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
            subtypes.push([code, data]);
        }
    }
    if subtypes.length() == 0 {
        return all;
    }
    return new SemType(all, subtypes);
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
        if data1 is () {
            data = <SubtypeData>data2;
        }
        else if data2 is () {
            data = data1;
        }
        else {
            var intersect = ops[code].intersect;
            data = intersect(data1, data2);
        }
        if data != false {
            subtypes.push([code, data]);
        }
    }
    if subtypes.length() == 0 {
        return all;
    }
    return new SemType(all, subtypes);    
}

public function diff(SemType t1, SemType t2) returns SemType {
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
        if data1 is () {
            var complement = ops[code].complement;
            data = complement(<SubtypeData>data2);
        }
        else if data2 is () {
            data = data1;
        }
        else {
            var diff = ops[code].diff;
            data = diff(data1, data2);
        }
         if data != false {
            subtypes.push([code, data]);
        }
    }
    if subtypes.length() == 0 {
        return all;
    }
    return new SemType(all, subtypes);        
}

public function complement(SemType t) returns SemType {
    return diff(TOP, t);
}

public function isNever(SemType t) returns boolean {
    return t is UniformTypeBitSet && t == 0;
}

public function isEmpty(TypeCheckContext tc, SemType t) returns boolean {
    if t is UniformTypeBitSet {
        return t == 0;
    }
    else {
        if t.all != 0 {
            // includes all of one or more uniform types
            return false;
        }
        foreach var st in t.unpack() {
            var [code, data] = st;
            var isEmpty = ops[code].isEmpty;
            if !isEmpty(tc, data) {
                return false;
            }
        }
        return true;
    }
}
    
public function isSubtype(TypeCheckContext tc, SemType t1, SemType t2) returns boolean { 
    return isEmpty(tc, diff(t1, t2));
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

public function typeCheckContext(Env env) returns TypeCheckContext {
    return {
        listDefs: env.listDefs.cloneReadOnly(),
        mappingDefs: env.mappingDefs.cloneReadOnly(),
        functionDefs: env.functionDefs.cloneReadOnly()
    };
}

public function createJson(Env env) returns SemType {
    ListDefinition listDef = new;
    MappingDefinition mapDef = new;
    SemType simple = uniformTypeUnion((1 << UT_NIL) | (1 << UT_BOOLEAN) | (1 << UT_INT)| (1 << UT_FLOAT)| (1 << UT_DECIMAL)| (1 << UT_STRING));
    SemType j = union(simple, union(listDef.getSemType(env), mapDef.getSemType(env)));
    _ = listDef.define(env, [], j);
    _ = mapDef.define(env, [], j);
    return j;
}

final readonly & UniformTypeOps[] ops;

function init() {
    ops = [
        {}, // nil
        booleanOps, // boolean
        intOps, // int
        {}, // float
        {}, // decimal
        stringOps, // string
        errorOps, // error
        functionOps,  // function
        {}, // typedesc
        {}, // handle
        {}, // RO xml
        listRoOps, // RO list
        mappingRoOps, // RO mapping
        {}, // RO table
        {}, // RO object
        {}, // RW xml
        listRwOps, // RW list
        mappingRwOps, // RW mapping
        {}, // RW table
        {}, // RW object
        {}, // RW stream
        {} // RW future
   ];
}
