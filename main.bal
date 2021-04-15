// Semantic subtyping for a (tiny) subset of Ballerina types.
// The subset is (), boolean, int, string and tuples of length 2 (without recursion).
// See https://pnwamk.github.io/sst-tutorial/

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

type PartialBasicTypes record {|
    Bdd listPart;
|};

public readonly class SemType {
    // For a basic type with code b,
    // bits & (1 << b) is non-zero iff this type contains all of the basic type
    // bits & (1 << (b + BT_COUNT)) is non-zero iff this type contains some but not all of the basic type
    int bits;
    // This has an entry for a basic type iff includesNone is false.
    PartialBasicTypes partial;
    function init(int bits, PartialBasicTypes? partial = ()) {
        self.bits = bits;
        if !(partial is ()) {
            self.partial = partial.cloneReadOnly();
        }
        else {
            boolean b = (bits & (1 << BT_LIST)) != 0;
            self.partial = { listPart: b };
        }      
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
        return tupleBddIsEmpty(self.partial.listPart, TOP, TOP, ());
    }
}

public final SemType NEVER = new SemType(0);
public final SemType NIL = new SemType(1 << BT_NIL);
public final SemType BOOLEAN = new SemType(1 << BT_BOOLEAN);
public final SemType INT = new SemType(1 << BT_INT);
public final SemType STRING = new SemType(1 << BT_STRING);
// this is any|error
public final SemType TOP = new SemType(BT_MASK);

public function tuple(SemType t1, SemType t2) returns SemType {
    readonly & BddNode listPart = {
        atom: new ListAtom(t1, t2),
        lo: true,
        mid: false,
        hi: false
    };
    return new SemType(1 << (BT_LIST + BT_COUNT), { listPart });
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
    int bits = all & (some << BT_COUNT);
    Bdd listPart = bddUnion(t1.partial.listPart, t2.partial.listPart);
    return new SemType(bits, { listPart });
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
    int bits = all & (some << BT_COUNT);
    Bdd listPart = bddIntersect(t1.partial.listPart, t2.partial.listPart);
    return new SemType(bits, { listPart });
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
    int bits = all & (some << BT_COUNT); 
    Bdd listPart = bddDiff(t1.partial.listPart, t2.partial.listPart);
    return new SemType(bits, { listPart });
}

public function isSubtype(SemType t1, SemType t2) returns boolean { 
    return diff(t1, t2).isEmpty();
}


type CompareResult -1 | 0 | 1;

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
    return bddCompare(t1.partial.listPart, t2.partial.listPart);
}

// BDDs

// BDD branch nodes are labelled with these

type Atom readonly & object {
    function getBasicType() returns BasicTypeCode;
    // Only allowed for an Atom of the same basic type
    function compare(Atom other) returns CompareResult;
};
type Bdd (readonly & BddNode)|boolean;

// referenced nodes must have atom with same basic type
type BddNode record {|
    Atom atom;
    Bdd lo;
    Bdd mid;
    Bdd hi;
|};

// Atoms need to be ordered, so BDDs need to be ordered.
// Order is arbitrary
// false < BddNode < true
// BddNode ordered lexicographically on fields
function bddCompare(Bdd b1, Bdd b2) returns CompareResult {
    if b1 is boolean {
        if b1 == false {
            return b2 === false ? 0 : -1;
        }
        else {
            // b1 == true
            return b2 === true ? 0 : 1;
        }

    }
    else if b2 is boolean {
        // b1 is a node
        return b2 === true ? -1 : 1;
    }
    else {
        CompareResult tem = b1.atom.compare(b2.atom);
        if tem != 0 {
            return tem;
        }
        tem = bddCompare(b1.lo, b2.lo);
        if tem != 0 {
            return tem;
        }
        tem = bddCompare(b1.mid, b2.mid);
        if tem != 0 {
            return tem;
        }
        return bddCompare(b2.hi, b2.hi);
    }
}

function bddUnion(Bdd b1, Bdd b2) returns Bdd {
    if b1 === b2 {
        return b1;
    }
    else if b1 is boolean {
        return b1 == true ? true : b2;
    }
    else if b2 is boolean {
        return b2 == true ? true : b1;
    }
    else {  
        CompareResult cmp = b1.atom.compare(b2.atom);
        if cmp == -1 {
            // variable needed to workaround an slalpha4 bug
            readonly & BddNode n = {
                atom: b1.atom,
                lo: b1.lo,
                mid: bddUnion(b1.mid, b2),
                hi: b1.hi
            };
            return n;
        }
        else if cmp == 1 {
             readonly & BddNode n = {
                atom: b2.atom,
                lo: b2.lo,
                mid: bddUnion(b1, b2.mid),
                hi: b2.hi
            };
            return n;

        }
        else {
            readonly & BddNode n = {
                atom: b1.atom,
                lo: bddUnion(b1.lo, b2.lo),
                mid: bddUnion(b1.mid, b2.mid),
                hi: bddUnion(b1.hi, b2.hi)
            };
            return n;
        }
    }
}

function bddIntersect(Bdd b1, Bdd b2) returns Bdd {
    if b1 === b2 {
        return b1;
    }
    else if b1 is boolean {
        return b1 == true ? b2 : false;
    }
    else if b2 is boolean {
        return b2 == true ? false : b1;
    }
    else {  
        CompareResult cmp = b1.atom.compare(b2.atom);
        if cmp == -1 {
            readonly & BddNode n = {
                atom: b1.atom,
                lo: bddDiff(bddUnion(b1.lo, b1.mid), b2),
                mid: false,
                hi: bddDiff(bddUnion(b1.hi, b1.mid), b2)
            };
            return n;
        }
        else if cmp == 1 {
             readonly & BddNode n = {
                atom: b2.atom,
                lo: bddDiff(b1, bddUnion(b2.lo, b2.mid)),
                mid: false,
                hi: bddDiff(b1, bddUnion(b2.hi, b2.mid))
            };
            return n;

        }
        else {
            readonly & BddNode n = {
                atom: b1.atom,
                lo: bddDiff(b1.lo, b2),
                mid: bddDiff(b1.mid, b2),
                hi: bddDiff(b1.hi, b2)
            };
            return n;
        }
    }
}

function bddDiff(Bdd b1, Bdd b2) returns Bdd {
   if b1 === b2 {
        return false;
    }
    else if b2 is boolean {
        return b2 == true ? false : b1;
    }
    else if b1 is boolean {
        return b1 == false ? b1 : false;
    }
    else {  
        CompareResult cmp = b1.atom.compare(b2.atom);
        if cmp == -1 {
            readonly & BddNode n = {
                atom: b1.atom,
                lo: bddIntersect(b1.lo, b2),
                mid: bddIntersect(b1.mid, b2),
                hi: bddIntersect(b1.hi, b2)
            };
            return n;
        }
        else if cmp == 1 {
             readonly & BddNode n = {
                atom: b2.atom,
                lo: bddIntersect(b1, b2.lo),
                mid: bddIntersect(b1, b2.mid),
                hi: bddIntersect(b1, b2.hi)
            };
            return n;

        }
        else {
            readonly & BddNode n = {
                atom: b1.atom,
                lo: bddIntersect(bddUnion(b1.lo, b1.mid), bddUnion(b2.lo, b2.mid)),
                mid: false,
                hi: bddIntersect(bddUnion(b1.hi, b1.mid), bddUnion(b2.hi, b2.mid))
            };
            return n;
        }
    }
}

function bddComplement(Bdd b) returns Bdd {
    if b is boolean {
        return !b;
    }
    else {
        if b.hi === false {
             readonly & BddNode n = {
                atom: b.atom,
                lo: false,
                mid: bddComplement(bddUnion(b.lo, b.mid)),
                hi: bddComplement(b.mid)
            };
            return n;
        }
        else if b.lo === false {
             readonly & BddNode n = {
                atom: b.atom,
                lo: bddComplement(b.mid),
                mid: bddComplement(bddUnion(b.hi, b.mid)),
                hi: false
            };
            return n;
        }
        else if b.mid === false {
             readonly & BddNode n = {
                atom: b.atom,
                lo: bddComplement(b.lo),
                mid: bddComplement(bddUnion(b.lo, b.hi)),
                hi: bddComplement(b.hi)
            };
            return n;
        }
        else {
             readonly & BddNode n = {
                atom: b.atom,
                lo: bddComplement(bddUnion(b.lo, b.mid)),
                mid: false,
                hi:bddComplement(bddUnion(b.hi, b.mid))
            };
            return n;
        }
    }
}

type AtomList record {
    Atom head;
    AtomList? next;
};

function atomListCons(Atom head, AtomList? next) returns AtomList {
    return { head, next };
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

function tupleBddIsEmpty(Bdd b, SemType s0, SemType s1, AtomList? neg) returns boolean {
    if b is boolean {
        if !b {
            return true;
        }
        return s0.isEmpty() || s1.isEmpty() || tupleTheta(s0, s1, neg);
    }
    else {
        ListAtom a = <ListAtom>b.atom;
        var members = a.members;
        return tupleBddIsEmpty(b.lo, intersect(s0, members[0]),
                               intersect(s1, members[1]), neg)
          && tupleBddIsEmpty(b.mid, s0, s1, neg)
          && tupleBddIsEmpty(b.hi, s0, s1, atomListCons(b.atom, neg)); 
    }
}

function tupleTheta(SemType s0, SemType s1, AtomList? neg) returns boolean {
    if neg is () {
        return false;
    }
    else {
        ListAtom a = <ListAtom>(neg.head);
        SemType t0 = a.members[0];
        SemType t1 = a.members[1];
        return (isSubtype(s0, t0) || tupleTheta(diff(s0, t0), s1, neg))
          && (isSubtype(s1, t1) || tupleTheta(s0, diff(s1, t1), neg));
    }
}

