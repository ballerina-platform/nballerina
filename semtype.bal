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
    int bits = all | (some << BT_COUNT);
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
    int bits = all | (some << BT_COUNT);
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
    int bits = all | (some << BT_COUNT); 
    Bdd listPart = bddDiff(t1.partial.listPart, t2.partial.listPart);
    return new SemType(bits, { listPart });
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
    return bddCompare(t1.partial.listPart, t2.partial.listPart);
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
        return tupleBddIsEmpty(b.lo, intersect(s0, members[0]),
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
        return (isSubtype(s0, t0) || tupleTheta(diff(s0, t0), s1, neg))
          && (isSubtype(s1, t1) || tupleTheta(s0, diff(s1, t1), neg));
    }
}

