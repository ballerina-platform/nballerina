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
// Frisch's approach is to undo memoizations that turn out to be wrong.
// I did not succeed in fully understanding his approach.
// Here we adopt a different approach to the problem:
// we avoid memoizing when the memoization might turn out to be wrong.
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
            // If we didn't use "memoization" here, then we would get an infinite recursion.
            // If we can only find shapes in the type by going this loop,
            // then the type contains no finite shapes; this would imply the type is empty,
            // since our types are defined inductively.
            // So we provisionally assume this type is empty.
            // If on this assumption, we do not find anything that shows the type is non-empty,
            // then our type contains no finite shapes and so is in fact empty,
            // We need to keep track of when we are relying on this assumption
            // in order to avoid incorrect memoization.
            if res == "active" {
                mm.empty = "provisional";
                // maintain invariant
                cx.provisionalEmptyCount += 1;
            }
      
            return true;
        }
        // nil case is same as not having a memo, so fall through
        m = mm;
    }
    else {
        m = { bdd: b };
        memoTable.add(m);
    }
    m.empty = "active";
    boolean isEmpty = isEmptyPredicate(cx, b);
    if cx.provisionalEmptyCount > 0 {
        if m.empty == "provisional" {
            // m.empty will below be set to boolean or ()
            // so this maintains the invariant
            cx.provisionalEmptyCount -= 1;
        }
        if isEmpty && cx.provisionalEmptyCount > 0 {
            // Not safe to memoize here,
            // because the emptiness computation relied on an assumption
            // that may turn out to be false.
            // Note that it is only unsafe to memoize in the isEmpty case
            // because we are assuming that something is empty.
            m.empty = ();
            return isEmpty;
        }
    }
    m.empty = isEmpty;
    return isEmpty;
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

function shallowCopyStrings(string[] v) returns string[] {
    return from var x in v select x;
}

function notIsEmpty(Context cx, SubtypeData d) returns boolean {
    return false;
}
