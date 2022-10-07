import ballerina/io;
// Code common to implementation of multiple basic types

public type Definition object {
    public function getSemType(Env env) returns SemType;
};

type Conjunction record {
    Atom atom;
    Conjunction? next;
};

function and(Atom atom, Conjunction? next) returns Conjunction {
    return { atom, next };
}

type BddIsEmptyPredicate function(Context cx, Bdd b) returns boolean;

// Memoization logic
// Castagna's paper does not deal with this fully.
// Although he calls it memoization, it is not, strictly speaking, just memoization,
// since it is not just an optimization, but required for correct handling of
// recursive types.
// The handling of recursive types depends on our types being defined inductively,
// rather than coinductively. This means that each shape that is a member of the
// set denoted by the type is finite.
// There is a tricky problem here with memoizing results that rely on assumptions
// that subsequently turn out to be false.
// Memoization/caching is discussed in section 7.1.2 of the Frisch thesis.
// This follows Frisch's approach of undoing memoizations that turn out to be wrong.
// (I did not succeed in fully understanding his approach, so I am not
// completely sure if we are doing the same.)
function memoSubtypeIsEmpty(Context cx, BddMemoTable memoTable, BddIsEmptyPredicate isEmptyPredicate, Bdd b) returns boolean {
    BddMemo? mm = memoTable[b];
    BddMemo m;
    if mm != () {
        MemoEmpty res = mm.empty;
        if res is boolean {
            return res;
        }
        else if res != () {
            // We've got a loop.
            return true;
        }
        // nil case is same as not having a memo, so fall through
        m = mm;
    }
    else {
        m = { bdd: b };
        memoTable.add(m);
    }
    m.empty = "provisional";
    int initStackDepth = cx.memoStack.length();
    cx.memoStack.push(m);
    boolean isEmpty = isEmptyPredicate(cx, b);
    if !isEmpty || initStackDepth == 0 {
        foreach int i in initStackDepth + 1 ..< cx.memoStack.length() {
            MemoEmpty memoEmpty = cx.memoStack[i].empty;
            if memoEmpty == "provisional" {
                cx.memoStack[i].empty = isEmpty ? isEmpty : ();
            }
        }
        cx.memoStack.setLength(initStackDepth);
        m.empty = isEmpty;
    }
    return isEmpty;
}

// TODO:
type MemoKind "list"|"mapping"|"cell";

class MemoBddCache {
    *BddCache;
    private final BddMemoTable memo;
    private final Context cx;
    // FIXME: ugly workaround to figure out what the memo type must be.
    // Ideally we should have Extend this to seprate Caches for list, mapping anc cell then only they will to the simpleIntersection
    private final MemoKind? kind; 

    function init(Context cx, BddMemoTable memo, MemoKind? kind) {
        self.memo = memo;
        self.cx = cx;
        self.kind = kind;
    }
    isolated function get(Bdd bdd) returns Bdd {
        if memoAssumeEmpty(self.memo, bdd) {
            return false;
        }
        return bdd;
    }

    isolated function simpleIntersection(Bdd b1, Bdd b2) returns Bdd? {
        if b1 !is BddNode || b2 !is BddNode ||
           b1.left != true || b1.middle != false || b1.right != false ||
           b2.left != true || b2.middle != false || b2.right != false {
            io:println("skipped: ", b1);
            io:println("\t", b2);
            return ();
        }
        Atom a1 = b1.atom;
        Atom a2 = b2.atom;
        // allowing rec atoms causes us to go for an infinite loop
        if self.kind is "list" && a1 !is RecAtom && a2 !is RecAtom {
            ListAtomicType ty1 = self.cx.listAtomType(a1);
            io:println("ty1:", ty1);
            ListAtomicType ty2 = self.cx.listAtomType(a2);
            io:println("ty2:", ty2);
            var { members: m1, rest: r1 } = ty1; 
            var { members: m2, rest: r2 } = ty2; 
            var intersection = listIntersectWith(self.cx, m1, r1, m2, r2);
            if intersection is () {
                return ();
            }
            ListAtomicType intersectionTy = { members: intersection[0].cloneReadOnly(), rest: intersection[1] };
            TypeAtom intersectionAtom = self.cx.env.listAtom(intersectionTy);
            io:println("working");
            return bddCreate(self, intersectionAtom, true, false, false);
        } 
        return ();
    }
}

function memoSubtypeIntersect(Context cx, BddMemoTable memoTable, Bdd b1, Bdd b2, MemoKind? kind) returns Bdd {
    MemoBddCache cache = new(cx, memoTable, kind);
    return bddIntersect(cache, cache.get(b1), cache.get(b2));
}

function memoSubtypeDiff(Context cx, BddMemoTable memoTable, Bdd b1, Bdd b2, MemoKind? kind) returns Bdd {
    MemoBddCache cache = new(cx, memoTable, kind);
    return bddDiff(cache, cache.get(b1), cache.get(b2));
}

isolated function memoAssumeEmpty(BddMemoTable memoTable, Bdd b) returns boolean {
    BddMemo? m = memoTable[b];
    if m != () {
        MemoEmpty res = m.empty;
        return res == true || res == "provisional";
    }
    return false;
}

type BddPredicate function(Context cx, Conjunction? pos, Conjunction? neg) returns boolean;

// A Bdd represents a disjunction of conjunctions of atoms, where each atom is either positive or
// negative (negated). Each path from the root to a leaf that is true represents one of the conjunctions
// We walk the tree, accumulating the positive and negative conjunctions for a path as we go.
// When we get to a leaf that is true, we apply the predicate to the accumulated conjunctions.
function bddEvery(Context cx, Bdd b, Conjunction? pos, Conjunction? neg, BddPredicate predicate) returns boolean {
    if b is boolean {
        return !b || predicate(cx, pos, neg);
    }
    else {
        return bddEvery(cx, b.left, and(b.atom, pos), neg, predicate)
          && bddEvery(cx, b.middle, pos, neg, predicate)
          && bddEvery(cx, b.right, pos, and(b.atom, neg), predicate); 
    }
}

function bddEveryPositive(Context cx, Bdd b, Conjunction? pos, Conjunction? neg, BddPredicate predicate) returns boolean {
    if b is boolean {
        return !b || predicate(cx, pos, neg);
    }
    else {
        return bddEveryPositive(cx, b.left, andIfPositive(b.atom, pos), neg, predicate)
          && bddEveryPositive(cx, b.middle, pos, neg, predicate)
          && bddEveryPositive(cx, b.right, pos, andIfPositive(b.atom, neg), predicate); 
    }
}

function andIfPositive(Atom atom, Conjunction? next) returns Conjunction? {
    if atom is int && atom < 0 {
        return next;
    }
    return { atom, next };
}

function bddSubtypeUnion(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    return bddUnion(noBddCache, <Bdd>t1, <Bdd>t2);
}

function bddSubtypeIntersect(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    return bddIntersect(noBddCache, <Bdd>t1, <Bdd>t2);
}

function bddSubtypeDiff(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    return bddDiff(noBddCache, <Bdd>t1, <Bdd>t2);
}

function bddSubtypeComplement(SubtypeData t) returns SubtypeData {
    return bddComplement(noBddCache, <Bdd>t);
}

// Represents path from root to leaf (ending with true)
// bdd gets the Bdd for this path
type BddPath record {|
    Bdd bdd = true;
    Atom[] pos = [];
    Atom[] neg = [];
|};

function bddPaths(Bdd b, BddPath[] paths, BddPath accum) {
    if b is boolean {
        if b {
            paths.push(accum);
        }
    }
    else {
        BddPath left = accum.clone();
        BddPath right = accum.clone();
        left.pos.push(b.atom);
        left.bdd = bddIntersect(noBddCache, left.bdd, bddAtom(b.atom));
        bddPaths(b.left, paths, left);
        bddPaths(b.middle, paths, accum);
        right.neg.push(b.atom);
        right.bdd = bddDiff(noBddCache, right.bdd, bddAtom(b.atom));
        bddPaths(b.right, paths, right);
    }
}

// Feels like this should be a lang library function.
function shallowCopyTypes(SemType[] v) returns SemType[] {
    return from var x in v select x;
}

function shallowCopyStrings(string[] v) returns string[] {
    return from var x in v select x;
}

function notIsEmpty(Context cx, SubtypeData d) returns boolean {
    return false;
}
