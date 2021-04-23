// Implementation specific to basic type list.

import ballerina/io;

public type ListSubtype readonly & SemType[];

public function tuple(Env env, SemType... t) returns SemType {
    ListSubtype lt = t.cloneReadOnly();
    int i = env.listDefs.length();
    env.listDefs.push(lt);
    return tupleRef(i);
}

function tupleRef(int i) returns SemType {
    readonly & BddNode bdd = {
        index: i,
        lo: true,
        mid: false,
        hi: false
    };
    return new SemType(1 << (BT_LIST + BT_COUNT), [[BT_LIST, bdd]]);
}

public function recursiveTuple(Env env, function(Env, SemType) returns ListSubtype f) returns SemType {
    int i = env.listDefs.length();
    ListSubtype dummy = [];
    env.listDefs.push(dummy);
    SemType r = tupleRef(i);
    env.listDefs[i] = f(env, r);
    return r;
}

public function recursiveTupleParse(Env env, function(Env, SemType) returns ListSubtype|error f) returns SemType|error {
    int i = env.listDefs.length();
    ListSubtype dummy = [];
    env.listDefs.push(dummy);
    SemType r = tupleRef(i);
    env.listDefs[i] = check f(env, r);
    return r;
}

function listSubtypeIsEmpty(TypeCheckContext tc, SubtypeData t) returns boolean {
    Bdd b = <Bdd>t;
    BddMemo? mm = tc.listMemo[b];
    BddMemo m;
    if mm is () {
        m = { bdd: b };
        tc.listMemo.add(m);
    }
    else {
        m = mm;
        boolean? res = m.isEmpty;
        if res is () {
            // we've got a loop
            io:println("got a list loop");
            // XXX is this right???
            return true;
        }
        else {
            return res;
        }
    }
    boolean isEmpty = bddIsEmpty(tc, b, (), (), listFormulaIsEmpty);
    m.isEmpty = isEmpty;
    return isEmpty;    
}

// Each path from the root of the Bdd down to a leaf that is true corresponds
// to a possibility whose emptiness needs to be checked.
// We walk the tree, accumulating the combination of positive and negative definitions for a path as we go.
// When we get to a leaf that is true, we check the emptiness of the accumulated combination.
function tupleBddIsEmpty(TypeCheckContext tc, Bdd b, DefList? pos, DefList? neg) returns boolean {
    if b is boolean {
        return !b || listFormulaIsEmpty(tc, pos, neg);
    }
    else {
        return tupleBddIsEmpty(tc, b.lo, defListCons(b.index, pos), neg)
          && tupleBddIsEmpty(tc, b.mid, pos, neg)
          && tupleBddIsEmpty(tc, b.hi, pos, defListCons(b.index, neg)); 
    }
}

function listFormulaIsEmpty(TypeCheckContext tc, DefList? pos, DefList? neg) returns boolean {
    if pos is () {
        // do not have variable length tuples yet,
        // so no way for intersection of negated tuples to include everything
        return false;
    }
    else {
        // combine all the positive tuples using intersection
        SemType[] s = tc.listDefs[pos.index];
        int slen = s.length();
        DefList? p = pos.rest;
        if !(p is ()) {
            s = shallowCopy(s);
        }
        while true {
            if p is () {
                break;
            }
            else {
                int d = p.index;
                p = p.rest; 
                SemType[] t = tc.listDefs[d];
                if t.length() != slen {
                    return false;
                }
                foreach int i in 0 ..< slen {
                    s[i] = intersect(s[i], t[i]);
                }
            }
        }
        foreach var m in s {
            if isEmpty(tc, m) {
                return true;
            }
        }
        return !tupleInhabited(tc, s, neg);
    }
}

// `neg` represents a set of negated tuple types
// This function returns true if there is a tuple shape v such that
// v is in type s, and
// for each tuple t in neg, v is not in t.
// Precondition is that all members of s are not empty.
// This is formula Phi' in section 7.3.1 of Alain Frisch's PhD thesis,
// generalized to tuples of arbitrary length.
function tupleInhabited(TypeCheckContext tc, SemType[] s, DefList? neg) returns boolean {
    if neg is () {
        return true;
    }
    else {
        int slen = s.length();

        SemType[] t = tc.listDefs[neg.index];
        if t.length() != slen {
            return tupleInhabited(tc, s, neg.rest);
        }

        // For [v0, v1] not to be in [t0,t1], there are two possibilities
        // (1) v0 is not in t0, or
        // (2) v1 is not in t1
        
        // Case (1)
        // For v0 to be in s0 but not t0, d0 must not be empty.
        // We must then find a [v0,v1] satisfying the remaining negated tuples,
        // such that v0 is in d0.
        // SemType d0 = diff(s[0], t[0]);
        // if !isEmpty(tc, d0) && tupleInhabited(tc, [d0, s[1]], neg.rest) {
        //     return true;
        // }
        // Case (2)
        // For v1 to be in s1 but not t1, d1 must not be empty.
        // We must then find a [v0,v1] satisfying the remaining negated tuples,
        // such that v1 is in d1.
        // SemType d1 = diff(s[1], t[1]);
        // return !isEmpty(tc, d1) &&  tupleInhabited(tc, [s[0], d1], neg.rest);
        // We can generalize this to tuples of arbitrary length.
        foreach int i in 0 ..< slen {
            SemType d = diff(s[i], t[i]);
            if !isEmpty(tc, d) {
                SemType[] sd = shallowCopy(s);
                sd[i] = d;
                if tupleInhabited(tc, sd, neg.rest) {
                    return true;
                }
            }          
        }
        return false;
       
        
    }
}

// Feels like this should be a library function.
function shallowCopy(SemType[] v) returns SemType[] {
    return v.slice(0);
}

// This is how it is expressed in the AMK tutorial.
// This corresponds to !tupleInhabited.
// I find it easier to understand not negates
// function tupleTheta(TypeCheckContext tc, SemType s0, SemType s1, DefList? neg) returns boolean {
//     if neg is () {
//         return false;
//     }
//     else {
//         SemType[2] [t0, t1] = tc.listDefs[neg.first];
//         return (isSubtype(tc, s0, t0) || tupleTheta(tc, diff(s0, t0), s1, neg.rest))
//             && (isSubtype(tc, s1, t1) || tupleTheta(tc, s0, diff(s1, t1), neg.rest));
//     }
// }

