// Implementation specific to basic type function.

import ballerina/io;
import semtype.bdd;

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
    return new SemType(1 << (BT_FUNCTION + BT_COUNT), [[BT_FUNCTION, bdd:atom(i)]]);
}

function functionSubtypeIsEmpty(TypeCheckContext tc, SubtypeData t) returns boolean {
    bdd:Bdd b = <bdd:Bdd>t;
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

function functionBddIsEmpty(TypeCheckContext tc, bdd:Bdd b, SemType s, Conjunction? pos, Conjunction? neg) returns boolean {
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
                || functionBddIsEmpty(tc, true, s, pos, neg.next);
        }
    }
    else {
        SemType[2] [sd, sr] = tc.functionDefs[b.index];
        return functionBddIsEmpty(tc, b.left, union(s, sd), and(b.index, pos), neg)
            && functionBddIsEmpty(tc, b.middle, s, pos, neg)
            && functionBddIsEmpty(tc, b.right, s, pos, and(b.index, neg));
    }
}

function functionTheta(TypeCheckContext tc, SemType t0, SemType t1, Conjunction? pos) returns boolean {
    if pos is () {
        // XXX can have function with return type of never
        return isEmpty(tc, t0) || isEmpty(tc, t1);
    }
    else {
        SemType[2] [s0, s1] = tc.functionDefs[pos.index];
        return (isSubtype(tc, t0, s0) || functionTheta(tc, diff(s0, t0), s1, pos.next))
            && (isSubtype(tc, t1, complement(s1)) || functionTheta(tc, s0, intersect(s1, t1), pos.next));
    }
}
