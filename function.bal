
// Implementation specific to basic type function.

import ballerina/io;
// Function subtype is [args, ret]
// Represents args as tuple type
public type FunctionSubtype readonly & SemType[2];

public function func(Env env, SemType t1, SemType t2) returns SemType {
    FunctionSubtype ft = [t1, t2];
    int i = env.functionDefs.length();
    env.functionDefs.push(ft);
    return functionRef(i);
}

function functionRef(int i) returns SemType {
    readonly & BddNode bdd = {
        index: i,
        lo: true,
        mid: false,
        hi: false
    };
    return new SemType(1 << (BT_FUNCTION + BT_COUNT), [[BT_FUNCTION, bdd]]);
}

function functionIsEmpty(TypeCheckContext tc, SubtypeData t) returns boolean {
    Bdd b = <Bdd>t;
    BddMemo? mm = tc.functionMemo[b];
    BddMemo m;
    if mm is () {
        m = { bdd: b };
        tc.functionMemo.add(m);
    }
    else {
        m = mm;
        boolean? res = m.isEmpty;
        if res is () {
            // we've got a loop
            io:println("got a function loop");
            // XXX is this right???
            return true;
        }
        else {
            return res;
        }
    }
    boolean isEmpty = functionBddIsEmpty(tc, b, NEVER, (), ());
    m.isEmpty = isEmpty;
    return isEmpty;    
}

function functionBddIsEmpty(TypeCheckContext tc, Bdd b, SemType s, DefList? pos, DefList? neg) returns boolean {
    if b is boolean {
        if b == false {
            return true;
        }
        if neg is () {
            return false;
        }
        else {
            SemType[2] [t0, t1] = tc.functionDefs[neg.index];
            return (isSubtype(tc, t0, s) && functionTheta(tc, t0, complement(t1), pos))
                || functionBddIsEmpty(tc, true, s, pos, neg.rest);
        }
    }
    else {
        SemType[2] [sd, sr] = tc.functionDefs[b.index];
        return functionBddIsEmpty(tc, b.lo, union(s, sd), defListCons(b.index, pos), neg)
            && functionBddIsEmpty(tc, b.mid, s, pos, neg)
            && functionBddIsEmpty(tc, b.hi, s, pos, defListCons(b.index, neg));
    }
}

function functionTheta(TypeCheckContext tc, SemType t0, SemType t1, DefList? pos) returns boolean {
    if pos is () {
        // XXX can have function with return type of never
        return isEmpty(tc, t0) || isEmpty(tc, t1);
    }
    else {
        SemType[2] [s0, s1] = tc.functionDefs[pos.index];
        return (isSubtype(tc, t0, s0) || functionTheta(tc, diff(s0, t0), s1, pos.rest))
            && (isSubtype(tc, t1, complement(s1)) || functionTheta(tc, s0, intersect(s1, t1), pos.rest));
    }
}
