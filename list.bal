// Implementation specific to basic type list.

import ballerina/io;

// Only 2-tuples for now
public type ListSubtype readonly & [SemType, SemType];

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
    boolean isEmpty = tupleBddIsEmpty(tc, b, (), ());
    m.isEmpty = isEmpty;
    return isEmpty;    
}

// Each path from the root of the Bdd down to a leaf that is true corresponds
// to a possibility whose emptiness needs to be checked.
// We walk the tree, accumulating the combination of positive and negative definitions for a path as we go.
// When we get to a leaf that is true, we check the emptiness of the accumulated combination.
function tupleBddIsEmpty(TypeCheckContext tc, Bdd b, AtomSet? pos, AtomSet? neg) returns boolean {
    if b is boolean {
        return !b || tupleIsEmpty(tc, pos, neg);
    }
    else {
        return tupleBddIsEmpty(tc, b.lo, atomListCons(b.atom, pos), neg)
          && tupleBddIsEmpty(tc, b.mid, pos, neg)
          && tupleBddIsEmpty(tc, b.hi, pos, atomListCons(b.atom, neg)); 
    }
}

function tupleIsEmpty(TypeCheckContext tc, AtomSet? pos, AtomSet? neg) returns boolean {
    SemType s0;
    SemType s1;
    if pos is () {
        s0 = TOP;
        s1 = TOP;
    }
    else {
        // combine all the positive tuples using intersection
        [s0, s1] = tc.listDefs[pos.first];
        AtomSet? p = pos.rest;
        while !(p is ()) {
            SemType[2] [t0, t1] = tc.listDefs[p.first];
            s0 = intersect(s0, t0);
            if s0.bits == 0 {
                // s0 known to be empty
                return true;
            }
            s1 = intersect(s1, t1);
            if s1.bits == 0 {
                // s1 known to be empty
                return true;
            }
            p = p.rest;
        }      
    }
    return isEmpty(tc, s0) || isEmpty(tc, s1) || !tupleInhabited(tc, s0, s1, neg);
}

// `neg` represents a set of negated tuple types
// This function returns true if there is a shape [v0,v1] such that
// [v0,v1] is in type [s0,s1], and
// for each tuple [t0,t1] in neg, [v0,v0] is not in [t0,t1]
// Precondition is that s0 and s1 are non empty.
// This is formula Phi' in section 7.3.1 of Alain Frisch's PhD thesis.
function tupleInhabited(TypeCheckContext tc, SemType s0, SemType s1, AtomSet? neg) returns boolean {
    if neg is () {
        return true;
    }
    else {
        SemType[2] [t0, t1] = tc.listDefs[neg.first];

        // For [v0, v1] not to be in [t0,t1], there are two possibilities
        // (1) v0 is not in t0, or
        // (2) v1 is not in t1
        
        // Case (1)
        // For v0 to be in s0 but not t0, d0 must not be empty.
        // We must then find a [v0,v1] satisfying the remaining negated tuples,
        // such that v0 is in d0.
        SemType d0 = diff(s0, t0);
        if !isEmpty(tc, d0) && tupleInhabited(tc, d0, s1, neg.rest) {
            return true;
        }
        // Case (2)
        // For v1 to be in s1 but not t1, d1 must not be empty.
        // We must then find a [v0,v1] satisfying the remaining negated tuples,
        // such that v1 is in d1.
        SemType d1 = diff(s1, t1);
        return !isEmpty(tc, d1) &&  tupleInhabited(tc, s0, d1, neg.rest);
    }
}

// This is how it is expressed in the AMK tutorial.
// This corresponds to !tupleInhabited.
// I find it easier to understand not negates
// function tupleTheta(TypeCheckContext tc, SemType s0, SemType s1, AtomSet? neg) returns boolean {
//     if neg is () {
//         return false;
//     }
//     else {
//         SemType[2] [t0, t1] = tc.listDefs[neg.first];
//         return (isSubtype(tc, s0, t0) || tupleTheta(tc, diff(s0, t0), s1, neg.rest))
//             && (isSubtype(tc, s1, t1) || tupleTheta(tc, s0, diff(s1, t1), neg.rest));
//     }
// }

