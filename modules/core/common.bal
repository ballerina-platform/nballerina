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


type BddIsEmptyFunction function(TypeCheckContext tc, Conjunction? pos, Conjunction? neg) returns boolean;

// Each path from the root of the Bdd down to a leaf that is true corresponds
// to a possibility whose emptiness needs to be checked.
// We walk the tree, accumulating the combination of positive and negative definitions for a path as we go.
// When we get to a leaf that is true, we check the emptiness of the accumulated combination.
function bddIsEmpty(TypeCheckContext tc, bdd:Bdd b, Conjunction? pos, Conjunction? neg, BddIsEmptyFunction isEmpty) returns boolean {
    if b is boolean {
        return !b || isEmpty(tc, pos, neg);
    }
    else {
        return bddIsEmpty(tc, b.left, and(b.atom, pos), neg, isEmpty)
          && bddIsEmpty(tc, b.middle, pos, neg, isEmpty)
          && bddIsEmpty(tc, b.right, pos, and(b.atom, neg), isEmpty); 
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