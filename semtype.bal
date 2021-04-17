public const BT_NIL = 0;
public const BT_BOOLEAN = 1;
public const BT_INT = 2;
public const BT_STRING = 3;
public const BT_LIST = 4;
public const BT_COUNT = 5;
public const int BT_MASK = 31;
// public const int BT_MASK = (1 << BT_COUNT) - 1;

const int BT_SOME = 33;
//const int BT_SOME = 1 | (1 << BT_COUNT);


public type BasicTypeCode BT_NIL|BT_BOOLEAN|BT_INT|BT_STRING|BT_LIST;

type SubtypeData any & readonly;

type BasicTypeSubtype readonly & [BasicTypeCode, SubtypeData];

type BinOp function(SubtypeData t1, SubtypeData t2) returns SubtypeData;
type UnaryOp function(SubtypeData t) returns SubtypeData;
type CompareOp function(SubtypeData t1, SubtypeData t2) returns CompareResult;
type UnaryBooleanOp function(SubtypeData t) returns boolean;


function binOpPanic(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    panic error("binary operation should not be called");
}

function unaryOpPanic(SubtypeData t) returns SubtypeData {
    panic error("unary operation should not be called");
}
function compareOpPanic(SubtypeData t1, SubtypeData t2) returns CompareResult {
    panic error("comparison should not be called");
}

function unaryBooleanOpPanic(SubtypeData t) returns boolean {
    panic error("unary boolean operation should not be called");
}

type BasicTypeOps record {|
    CompareOp compare = compareOpPanic;
    BinOp union = binOpPanic;
    BinOp intersect = binOpPanic;
    BinOp diff = binOpPanic;
    UnaryOp complement = unaryOpPanic;
    UnaryBooleanOp isEmpty = unaryBooleanOpPanic;
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
    public function isEmpty() returns boolean {
        if self.bits == 0 {
            // neither all nor part of any basic type
            return true;
        }
        if (self.bits & BT_MASK) != 0 {
            // includes all of one or more basic types
            return false;
        }
        foreach var st in self.subtypes {
            var [code, data] = st;
            var isEmpty = ops[code].isEmpty;
            if !isEmpty(data) {
                return false;
            }
        }
        return true;
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
    public function next() returns record {| [BasicTypeCode, SubtypeData, SubtypeData] value; |}?;
};

public class SubtypePairIteratorImpl {
    *object:Iterable;
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

    public function next() returns record {| [BasicTypeCode, SubtypeData, SubtypeData] value; |}? {
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
            data = data2;
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
            data = data2;
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
            data = complement(data2);
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

public function isSubtype(SemType t1, SemType t2) returns boolean { 
    return diff(t1, t2).isEmpty();
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

function atomListCons(Atom first, AtomSet? rest) returns AtomSet {
    return { first, rest };
}

readonly class ListAtom {
    *Atom;
    SemType[2] members;
    function init(SemType t0, SemType t1) {
        self.members = [t0, t1];
    }
    function getBasicType() returns BasicTypeCode => BT_LIST;
  
    function compare(Atom other) returns CompareResult {
        ListAtom otherAtom = <ListAtom>other;
        CompareResult res = compare(self.members[0], otherAtom.members[0]);
        if res != 0 {
            return res;
        }
        return compare(self.members[1], otherAtom.members[1]);
    }
}

function tupleBddIsEmpty(Bdd b, SemType s0, SemType s1, AtomSet? neg) returns boolean {
    if b is boolean {
        if !b {
            return true;
        }
        return s0.isEmpty() || s1.isEmpty() || tupleTheta(s0, s1, neg);
    }
    else {
        ListAtom a = <ListAtom>b.atom;
        var members = a.members;
        return tupleBddIsEmpty(b.lo,
                               intersect(s0, members[0]),
                               intersect(s1, members[1]), neg)
          && tupleBddIsEmpty(b.mid, s0, s1, neg)
          && tupleBddIsEmpty(b.hi, s0, s1, atomListCons(b.atom, neg)); 
    }
}

function tupleTheta(SemType s0, SemType s1, AtomSet? neg) returns boolean {
    if neg is () {
        return false;
    }
    else {
        ListAtom a = <ListAtom>(neg.first);
        SemType t0 = a.members[0];
        SemType t1 = a.members[1];
        return (isSubtype(s0, t0) || tupleTheta(diff(s0, t0), s1, neg.rest))
            && (isSubtype(s1, t1) || tupleTheta(s0, diff(s1, t1), neg.rest));
    }
}

public function tuple(SemType t1, SemType t2) returns SemType {
    readonly & BddNode bdd = {
        atom: new ListAtom(t1, t2),
        lo: true,
        mid: false,
        hi: false
    };
    return new SemType(1 << (BT_LIST + BT_COUNT), [[BT_LIST, bdd]]);
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

function listIsEmpty(SubtypeData t) returns boolean {
    return tupleBddIsEmpty(<Bdd>t, TOP, TOP, ());
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
  
