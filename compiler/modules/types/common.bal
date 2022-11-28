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
        if res == "cyclic" {
            // Since we define types inductively we consider these to be empty
            return true;
        }
        if res is boolean {
            // We know whether b is empty or not for certain
            return res;
        }
        else if res != () {
            // We've got a loop.
            mm.empty = "loop";
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
    boolean isLoop = m.empty == "loop";
    if !isEmpty || initStackDepth == 0 {
        foreach int i in initStackDepth + 1 ..< cx.memoStack.length() {
            MemoEmpty memoEmpty = cx.memoStack[i].empty;
            if memoEmpty is "provisional"|"loop"|"cyclic" {
                cx.memoStack[i].empty = isEmpty ? isEmpty : ();
            }
        }
        cx.memoStack.setLength(initStackDepth);
        // The only way that we have found that this can be empty is by going through a loop.
        // This means that the shapes in the type would all be infinite.
        // But we define types inductively, which means we only consider finite shapes.
        m.empty = isLoop && isEmpty ? "cyclic" : isEmpty;
    }
    return isEmpty;
}

function memoSubtypeIsCyclic(Context cx, BddMemoTable memoTable, BddIsEmptyPredicate isEmptyPredicate, Bdd b) returns boolean {
    // This assume that we have tested (and so memoized) whether the type is empty. 
    BddMemo mm = memoTable.get(b);
    return mm.empty == "cyclic";
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

function bddPosMaybeEmpty(Bdd b) returns boolean {
    if b is boolean {
        return b;
    }
    else {
        return bddPosMaybeEmpty(b.middle) || bddPosMaybeEmpty(b.right);
    }
}

function andIfPositive(Atom atom, Conjunction? next) returns Conjunction? {
    if atom is int && atom < 0 {
        return next;
    }
    return { atom, next };
}

function bddSubtypeUnion(ProperSubtypeData t1, ProperSubtypeData t2) returns SubtypeData {
    return bddUnion(<BddNode>t1, <BddNode>t2);
}

function bddSubtypeIntersect(ProperSubtypeData t1, ProperSubtypeData t2) returns SubtypeData {
    return bddIntersect(<BddNode>t1, <BddNode>t2);
}

function bddSubtypeDiff(ProperSubtypeData t1, ProperSubtypeData t2) returns SubtypeData {
    return bddDiff(<BddNode>t1, <BddNode>t2);
}

function bddSubtypeComplement(ProperSubtypeData t) returns SubtypeData {
    return bddNodeComplement(<BddNode>t);
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
        left.bdd = bddIntersect(left.bdd, bddAtom(b.atom));
        bddPaths(b.left, paths, left);
        bddPaths(b.middle, paths, accum);
        right.neg.push(b.atom);
        right.bdd = bddDiff(right.bdd, bddAtom(b.atom));
        bddPaths(b.right, paths, right);
    }
}

// Feels like this should be a lang library function.
function shallowCopyTypes(SemType[] v) returns SemType[] {
    return from var x in v select x;
}

function shallowCopyCellTypes(CellSemType[] v) returns CellSemType[] {
    return from var x in v select x;
}

function shallowCopyStrings(string[] v) returns string[] {
    return from var x in v select x;
}

function notIsEmpty(Context cx, SubtypeData d) returns boolean {
    return false;
}
