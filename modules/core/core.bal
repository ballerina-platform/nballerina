
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
    final ListSubtype[] listDefs;
    final MappingSubtype[] mappingDefs;
    final FunctionSubtype[] functionDefs = [];
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
    readonly ListSubtype[] listDefs;
    readonly MappingSubtype[] mappingDefs;
    readonly FunctionSubtype[] functionDefs;
    BddMemoTable listMemo = table [];
    BddMemoTable mappingMemo = table [];
    BddMemoTable functionMemo = table [];
|};

// true means everything and false means nothing (as with Bdd)
type SubtypeData StringSubtype|IntSubtype|BooleanSubtype|bdd:Bdd;

type UniformSubtype readonly & [UniformTypeCode, SubtypeData];

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

public readonly class SemType {
    // For a uniform type with code c,
    // bits & (1 << c) is non-zero iff this type contains all of the uniform type
    // bits & (1 << (c + UT_COUNT)) is non-zero iff this type contains some but not all of the uniform type
    int bits;
    UniformSubtype[] subtypes;
    function init(int bits,  UniformSubtype[] subtypes = EMPTY_SUBTYPES) {
        self.bits = bits;
        self.subtypes = subtypes.cloneReadOnly();
    }
    public function includesAll(UniformTypeCode code) returns boolean {
        int c = code; // work around bug in slalpha4
        return (self.bits & (1 << c)) != 0;
    }
    public function includesNone(UniformTypeCode code) returns boolean {
        int c = code; // work around bug in slalpha4
        return (self.bits & (UT_SOME << c)) == 0;
    }
}

function subtypeData(SemType s, UniformTypeCode code) returns SubtypeData {
    int c = code;
    if (s.bits & (1 << c)) != 0 {
        return true;
    }
    foreach var cd in s.subtypes {
        if cd[0] == code {
            return cd[1];
        }
    }
    return false;
}

public final SemType NEVER = new SemType(0);
public final SemType NIL = new SemType(1 << UT_NIL);
public final SemType BOOLEAN = new SemType(1 << UT_BOOLEAN);
public final SemType INT = new SemType(1 << UT_INT);
public final SemType FLOAT = new SemType(1 << UT_FLOAT);
public final SemType DECIMAL = new SemType(1 << UT_DECIMAL);
public final SemType STRING = new SemType(1 << UT_STRING);
public final SemType ERROR = new SemType(1 << UT_ERROR);

// matches all functions
public final SemType FUNCTION = new SemType(1 << UT_FUNCTION);
public final SemType TYPEDESC = new SemType(1 << UT_TYPEDESC);
public final SemType HANDLE = new SemType(1 << UT_HANDLE);

public final SemType XML = new SemType((1 << UT_XML_RO) | (1 << UT_XML_RW));
public final SemType STREAM = new SemType(1 << UT_STREAM);
public final SemType FUTURE = new SemType(1 << UT_FUTURE);

// this is SubtypeData|error
public final SemType TOP = new SemType(UT_MASK);
public final SemType ANY = new SemType(UT_MASK & ~(1 << UT_ERROR));
public final SemType READONLY = new SemType(UT_READONLY);
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
    private final int bits;

    function init(UniformSubtype[] t1, UniformSubtype[] t2, int bits) {
        self.i1 = 0;
        self.i2 = 0;
        self.t1 = t1;
        self.t2 = t2;
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
    int bits1 = t1.bits;
    int bits2 = t2.bits;
    int all = (t1.bits | t2.bits) & UT_MASK;
    int some = ((t1.bits | t2.bits) >> UT_COUNT) & UT_MASK;
    some &= ~all;
    if some == 0 {
        return new SemType(all);
    }
    int bits = all | (some << UT_COUNT);
    UniformSubtype[] subtypes = [];
    foreach var [code, data1, data2] in new SubtypePairIteratorImpl(t1.subtypes, t2.subtypes, some) {
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
            bits &= ~(1 << (c + UT_COUNT));
            bits |= 1 << c;
        }
        else {
            subtypes.push([code, data]);
        }
    }
    return new SemType(bits, subtypes.cloneReadOnly());
}

public function intersect(SemType t1, SemType t2) returns SemType {
    int bits1 = t1.bits;
    int bits2 = t2.bits;
    if bits1 == UT_MASK {
        return t2;
    }
    if bits1 == 0 {
        return t1;
    }
    if bits2 == UT_MASK {
        return t1;
    }
    if bits2 == 0 {
        return t2;
    }
    int all = (t1.bits & t2.bits) & UT_MASK;

    // some(t1 & t2) = some(t1) & some(t2)
    int some = ((t1.bits >> UT_COUNT) | t1.bits) & ((t2.bits >> UT_COUNT) | t2.bits) & UT_MASK;
    some &= ~all;
    if some == 0 {
        return new SemType(all);
    }
    int bits = all | (some << UT_COUNT);
    UniformSubtype[] subtypes = [];
    foreach var [code, data1, data2] in new SubtypePairIteratorImpl(t1.subtypes, t2.subtypes, some) {
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
        if data == false {
            int c = code;
            bits &= ~(1 << (c + UT_COUNT));
        }
        else {
            subtypes.push([code, data]);
        }
    }
    return new SemType(bits, subtypes.cloneReadOnly());    
}

public function diff(SemType t1, SemType t2) returns SemType {
    int bits1 = t1.bits;
    int bits2 = t2.bits;

    // all(t1 \ t2) = all(t1) & not(all(t2)|some(t2))
    int all = bits1 & ~(bits2 | (bits2 >> UT_COUNT)) & UT_MASK;
    // some(t1 \ t2) = some(t1) & not(all(t2))
    int some = (((t1.bits >> UT_COUNT) | t1.bits) & ~t2.bits) & UT_MASK;
    some &= ~all;

    if some == 0 {
        return new SemType(all);
    }
    int bits = all | (some << UT_COUNT); 
    UniformSubtype[] subtypes = [];
    foreach var [code, data1, data2] in new SubtypePairIteratorImpl(t1.subtypes, t2.subtypes, some) {
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
         if data == false {
            int c = code;
            bits &= ~(1 << (c + UT_COUNT));
        }
        else {
            subtypes.push([code, data]);
        }
    }
    return new SemType(bits, subtypes.cloneReadOnly());        
}

public function complement(SemType t) returns SemType {
    return diff(TOP, t);
}

public function isNever(SemType t) returns boolean {
    // neither all nor part of any uniform type
    return t.bits == 0;
}

public function isEmpty(TypeCheckContext tc, SemType t) returns boolean {
    if isNever(t) {    
        return true;
    }
    if (t.bits & UT_MASK) != 0 {
        // includes all of one or more uniform types
        return false;
    }
    foreach var st in t.subtypes {
        var [code, data] = st;
        var isEmpty = ops[code].isEmpty;
        if !isEmpty(tc, data) {
            return false;
        }
    }
    return true;
}
    
public function isSubtype(TypeCheckContext tc, SemType t1, SemType t2) returns boolean { 
    return isEmpty(tc, diff(t1, t2));
}

public function isReadOnly(SemType t) returns boolean {
    return (t.bits & (UT_RW_MASK | (UT_RW_MASK << UT_COUNT))) == 0;
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
    SemType simple = new((1 << UT_NIL) | (1 << UT_BOOLEAN) | (1 << UT_INT)| (1 << UT_FLOAT)| (1 << UT_DECIMAL)| (1 << UT_STRING));
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
