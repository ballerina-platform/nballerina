// Code common to implementation of multiple basic types

import semtype.bdd;

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
    int atom;
    Conjunction? next;
};

function and(int atom, Conjunction? next) returns Conjunction {
    return { atom, next };
}


type BddPredicate function(TypeCheckContext tc, Conjunction? pos, Conjunction? neg) returns boolean;

// A Bdd represents a disjunction of conjunctions of atoms, where each atom is either positive or
// negative (negated). Each path from the root to a leaf that is true represents one of the conjunctions
// We walk the tree, accumulating the positive and negative conjunctions for a path as we go.
// When we get to a leaf that is true, we apply the predicate to the accumulated conjunctions.
function bddEvery(TypeCheckContext tc, bdd:Bdd b, Conjunction? pos, Conjunction? neg, BddPredicate predicate) returns boolean {
    if b is boolean {
        return !b || predicate(tc, pos, neg);
    }
    else {
        return bddEvery(tc, b.left, and(b.atom, pos), neg, predicate)
          && bddEvery(tc, b.middle, pos, neg, predicate)
          && bddEvery(tc, b.right, pos, and(b.atom, neg), predicate); 
    }
}

function bddSubtypeUnion(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    return bdd:union(<bdd:Bdd>t1, <bdd:Bdd>t2);
}

function bddSubtypeIntersect(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    return bdd:intersect(<bdd:Bdd>t1, <bdd:Bdd>t2);
}

function bddSubtypeDiff(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    return bdd:diff(<bdd:Bdd>t1, <bdd:Bdd>t2);
}

function bddSubtypeComplement(SubtypeData t) returns SubtypeData {
    return bdd:complement(<bdd:Bdd>t);
}


// Feels like this should be a lang library function.
function shallowCopyTypes(SemType[] v) returns SemType[] {
    return from var x in v select x;
}

function shallowCopyStrings(string[] v) returns string[] {
    return from var x in v select x;
}

function notIsEmpty(TypeCheckContext tc, SubtypeData d) returns boolean {
    return false;
}