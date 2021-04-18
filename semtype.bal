import ballerina/io;

public const BT_NIL = 0;
public const BT_BOOLEAN = 1;
public const BT_INT = 2;
public const BT_STRING = 3;
public const BT_LIST = 4;
public const BT_COUNT = 5;
public const int BT_MASK = 31;
// slalpha4 gets a bad, sad on this
// public const int BT_MASK = (1 << BT_COUNT) - 1;

const int BT_SOME = 33;
// slalpha4 gets a bad, sad on this
// public const int BT_SOME = 1 | (1 << BT_COUNT);

public type BasicTypeCode BT_NIL|BT_BOOLEAN|BT_INT|BT_STRING|BT_LIST;

// Only 2-tuples for now
public type ListSubtype readonly & [SemType, SemType];

public type Env record {|
    ListSubtype[] listDefs = [];
|};

public type BddMemo record {|
    readonly Bdd bdd;
    boolean? isEmpty = ();
|};

public type BddMemoTable table<BddMemo> key(bdd);

public type TypeCheckContext record {|
    readonly ListSubtype[] listDefs;
    BddMemoTable memo = table [];
|};

type SubtypeData int|Bdd;

type BasicTypeSubtype readonly & [BasicTypeCode, SubtypeData];

type BinOp function(SubtypeData t1, SubtypeData t2) returns SubtypeData;
type UnaryOp function(SubtypeData t) returns SubtypeData;
type CompareOp function(SubtypeData t1, SubtypeData t2) returns CompareResult;
type UnaryTypeCheckOp function(TypeCheckContext tc, SubtypeData t) returns boolean;

function binOpPanic(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    panic error("binary operation should not be called");
}

function unaryOpPanic(SubtypeData t) returns SubtypeData {
    panic error("unary operation should not be called");
}

function compareOpPanic(SubtypeData t1, SubtypeData t2) returns CompareResult {
    panic error("comparison should not be called");
}

function unaryTypeCheckOpPanic(TypeCheckContext tc, SubtypeData t) returns boolean {
    panic error("unary boolean operation should not be called");
}

type BasicTypeOps record {|
    CompareOp compare = compareOpPanic;
    BinOp union = binOpPanic;
    BinOp intersect = binOpPanic;
    BinOp diff = binOpPanic;
    UnaryOp complement = unaryOpPanic;
    UnaryTypeCheckOp isEmpty = unaryTypeCheckOpPanic;
|};

final readonly & (BasicTypeSubtype[]) EMPTY_SUBTYPES = [];

public readonly class SemType {
    // For a basic type with code b,
    // bits & (1 << b) is non-zero iff this type contains all of the basic type
    // bits & (1 << (b + BT_COUNT)) is non-zero iff this type contains some but not all of the basic type
    int bits;
    BasicTypeSubtype[] subtypes;
    function init(int bits,  BasicTypeSubtype[] subtypes = EMPTY_SUBTYPES) {
        self.bits = bits;
        self.subtypes = subtypes.cloneReadOnly();
    }
    public function includesAll(BasicTypeCode code) returns boolean {
        int c = code; // work around bug in slalpha4
        return (self.bits & (1 << c)) != 0;
    }
    public function includesNone(BasicTypeCode code) returns boolean {
        int c = code; // work around bug in slalpha4
        return (self.bits & (BT_SOME << c)) == 0;
    }
}

public final SemType NEVER = new SemType(0);
public final SemType NIL = new SemType(1 << BT_NIL);
public final SemType BOOLEAN = new SemType(1 << BT_BOOLEAN);
public final SemType INT = new SemType(1 << BT_INT);
public final SemType STRING = new SemType(1 << BT_STRING);
// this is SubtypeData|error
public final SemType TOP = new SemType(BT_MASK);


// Need this type to workaround slalpha4 bug
public type SubtypePairIterator object {
    public function next() returns record {| [BasicTypeCode, SubtypeData?, SubtypeData?] value; |}?;
};

public class SubtypePairIteratorImpl {
    *object:Iterable;
    *SubtypePairIterator;
    private int i1;
    private int i2;
    private final BasicTypeSubtype[] t1;
    private final BasicTypeSubtype[] t2;
    private final int bits;

    function init(BasicTypeSubtype[] t1, BasicTypeSubtype[] t2, int bits) {
        self.i1 = 0;
        self.i2 = 0;
        self.t1 = t1;
        self.t2 = t2;
        self.bits = bits;
    }

    public function iterator() returns SubtypePairIterator {
        return self;
    }

    public function next() returns record {| [BasicTypeCode, SubtypeData?, SubtypeData?] value; |}? {
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

    private function get1() returns BasicTypeSubtype {
        return self.t1[self.i1];
    }

    private function get2() returns BasicTypeSubtype {
        return self.t2[self.i2];
    }
}


public function union(SemType t1, SemType t2) returns SemType {
    int bits1 = t1.bits;
    int bits2 = t2.bits;
    int all = (t1.bits | t2.bits) & BT_MASK;
    int some = ((t1.bits | t2.bits) >> BT_COUNT) & BT_MASK;
    some &= ~all;
    if some == 0 {
        return new SemType(all);
    }
    int bits = all | (some << BT_COUNT);
    BasicTypeSubtype[] subtypes = [];
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
        subtypes.push([code, data]);
    }
    return new SemType(bits, subtypes.cloneReadOnly());
}

public function intersect(SemType t1, SemType t2) returns SemType {
    int bits1 = t1.bits;
    int bits2 = t2.bits;
    if bits1 == BT_MASK {
        return t2;
    }
    if bits1 == 0 {
        return t1;
    }
    if bits2 == BT_MASK {
        return t1;
    }
    if bits2 == 0 {
        return t2;
    }
    int all = (t1.bits & t2.bits) & BT_MASK;

    // some(t1 & t2) = some(t1) & some(t2)
    int some = ((t1.bits >> BT_COUNT) | t1.bits) & ((t2.bits >> BT_COUNT) | t2.bits) & BT_MASK;
    some &= ~all;
    if some == 0 {
        return new SemType(all);
    }
    int bits = all | (some << BT_COUNT);
    BasicTypeSubtype[] subtypes = [];
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
        subtypes.push([code, data]);
    }
    return new SemType(bits, subtypes.cloneReadOnly());    
}

public function diff(SemType t1, SemType t2) returns SemType {
    int bits1 = t1.bits;
    int bits2 = t2.bits;

    // all(t1 \ t2) = all(t1) & not(all(t2)|some(t2))
    int all = bits1 & ~(bits2 | (bits2 >> BT_COUNT)) & BT_MASK;
    // some(t1 \ t2) = some(t1) & not(all(t2))
    int some = (((t1.bits >> BT_COUNT) | t1.bits) & ~t2.bits) & BT_MASK;
    some &= ~all;

    if some == 0 {
        return new SemType(all);
    }
    int bits = all | (some << BT_COUNT); 
    BasicTypeSubtype[] subtypes = [];
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
        subtypes.push([code, data]);
    }
    return new SemType(bits, subtypes.cloneReadOnly());        
}

public function isEmpty(TypeCheckContext tc, SemType t) returns boolean {
    if t.bits == 0 {
        // neither all nor part of any basic type
        return true;
    }
    if (t.bits & BT_MASK) != 0 {
        // includes all of one or more basic types
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

// Need to have an ordering defined on SemType values
function compare(SemType t1, SemType t2) returns CompareResult {
    int bits1 = t1.bits;
    int bits2 = t2.bits;
    if bits1 != bits2 {
        return bits1 < bits2 ? -1 : 1;
    }
    if ((bits1 >> BT_COUNT) & BT_MASK) == 0 {
        // no parts, so they are the same
        return 0;
    }
    var sub1 = t1.subtypes;
    int len1 = sub1.length();
    var sub2 = t2.subtypes;
    int len2 = sub2.length();
    int i = 0;
    while true {
        if i >= len1 {
            if i >= len2 {
                break;
            }
            // sub1 shorter than sub2
            return -1;
        }
        else if i >= len2 {
            // sub1 longer than sub2
            return 1;
        }
        else {
            var [code1, data1] = sub1[i];
            var [code2, data2] = sub2[i];
            if code1 < code2 {
                return -1;
            }
            if code1 > code2 {
                return 1;
            }
            var compare = ops[code1].compare;
            CompareResult cmp = compare(data1, data2);
            if cmp != 0 {
                return cmp;
            }
        }
        i += 1;
    }
    return 0;
}

type AtomSet record {
    Atom first;
    AtomSet? rest;
};

public function tuple(Env env, SemType t1, SemType t2) returns SemType {
    ListSubtype lt = [t1, t2];
    int i = env.listDefs.length();
    env.listDefs.push(lt);
    return tupleRef(i);
}

function tupleRef(int i) returns SemType {
    readonly & BddNode bdd = {
        atom: i,
        lo: true,
        mid: false,
        hi: false
    };
    return new SemType(1 << (BT_LIST + BT_COUNT), [[BT_LIST, bdd]]);
}

public function recursiveTuple(Env env, function(Env, SemType) returns ListSubtype f) returns SemType {
    int i = env.listDefs.length();
    ListSubtype dummy = [NEVER,NEVER];
    env.listDefs.push(dummy);
    SemType r = tupleRef(i);
    env.listDefs[i] = f(env, r);
    return r;
}

function atomListCons(Atom first, AtomSet? rest) returns AtomSet {
    return { first, rest };
}

function typeCheckContext(Env env) returns TypeCheckContext {
    return { listDefs: env.listDefs.cloneReadOnly() };
}

function tupleBddIsEmpty(TypeCheckContext tc, Bdd b, SemType s0, SemType s1, AtomSet? neg) returns boolean {
    if b is boolean {
        if !b {
            return true;
        }
        return isEmpty(tc, s0) || isEmpty(tc, s1) || tupleTheta(tc, s0, s1, neg);
    }
    else {
        SemType[2] [t0, t1] = tc.listDefs[b.atom];
        return tupleBddIsEmpty(tc, b.lo,
                               intersect(s0, t0),
                               intersect(s1, t1), neg)
          && tupleBddIsEmpty(tc, b.mid, s0, s1, neg)
          && tupleBddIsEmpty(tc, b.hi, s0, s1, atomListCons(b.atom, neg)); 
    }
}

function tupleTheta(TypeCheckContext tc, SemType s0, SemType s1, AtomSet? neg) returns boolean {
    if neg is () {
        return false;
    }
    else {
        SemType[2] [t0, t1] = tc.listDefs[neg.first];
        return (isSubtype(tc, s0, t0) || tupleTheta(tc, diff(s0, t0), s1, neg.rest))
            && (isSubtype(tc, s1, t1) || tupleTheta(tc, s0, diff(s1, t1), neg.rest));
    }
}

function bddSubtypeCompare(SubtypeData t1, SubtypeData t2) returns CompareResult {
    return bddCompare(<Bdd>t1, <Bdd>t2);
}

function bddSubtypeUnion(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    return bddUnion(<Bdd>t1, <Bdd>t2);
}

function bddSubtypeIntersect(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    return bddIntersect(<Bdd>t1, <Bdd>t2);
}

function bddSubtypeDiff(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    return bddDiff(<Bdd>t1, <Bdd>t2);
}

function bddSubtypeComplement(SubtypeData t) returns SubtypeData {
    return bddComplement(<Bdd>t);
}

function listIsEmpty(TypeCheckContext tc, SubtypeData t) returns boolean {
    Bdd b = <Bdd>t;
    BddMemo? mm = tc.memo[b];
    BddMemo m;
    if mm is () {
        m = { bdd: b };
        tc.memo.add(m);
    }
    else {
        m = mm;
        boolean? res = m.isEmpty;
        if res is () {
            // we've got a loop
            io:println("got a loop");
            // XXX is this right???
            return true;
        }
        else {
            return res;
        }
    }
    boolean isEmpty = tupleBddIsEmpty(tc, <Bdd>t, TOP, TOP, ());
    m.isEmpty = isEmpty;
    return isEmpty;    
}

// slalpha4 gets bad, sad if this is readonly
final BasicTypeOps[] ops;

function init() {
    ops = [
        {},  // nil
        {},  // boolean
        {},  // int
        {},  // string
        { // list
            compare: bddSubtypeCompare,
            union: bddSubtypeUnion,
            intersect: bddSubtypeIntersect,
            diff: bddSubtypeDiff,
            complement: bddSubtypeComplement,
            isEmpty: listIsEmpty
        }
   ];
}
  
