// Code common to implementation of multiple basic types

public type Definition object {
    public function getSemType(Env env) returns SemType;
};

function typeListIsReadOnly(SemType[] list) returns boolean {
    foreach var t in list {
        if !isReadOnly(t) {
            return false;
        }
    }
    return true;
}

function readOnlyTypeList(SemType[] mt) returns readonly & SemType[] {
    // TODO: fix
    SemType[] types = [];
    foreach var s in mt {
        SemType t;
        if isReadOnly(s) {
            t = s;
        }
        else {
            t = intersect(s, READONLY);
        }
        types.push(t);
    }
    return types.cloneReadOnly(); 
}

type Conjunction record {
    Atom atom;
    Conjunction? next;
};

function and(Atom atom, Conjunction? next) returns Conjunction {
    return { atom, next };
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

// The goal of this is to ensure that mappingFormulaIsEmpty does
// not get an empty posList, because it will interpret that
// as `map<any|error>` rather than `map<readonly>`.
// Similarly for listFormulaIsEmpty.
// We want to share BDDs between the RW and RO case so we cannot change how the BDD is interpreted.
// Instead we transform the BDD to avoid cases that would give the wrong answer.
// Atom index 0 is LIST_SUBTYPE_RO and MAPPING_SUBTYPE_RO
function bddFixReadOnly(Bdd b) returns Bdd {
    return bddPosMaybeEmpty(b) ? bddIntersect(b, bddAtom(0)) : b;
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
