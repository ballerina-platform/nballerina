// Implementation specific to basic type function.

import ballerina/io;
import nballerina.types.bdd;

// Function subtype is [args, ret]
// Represents args as tuple type
public type FunctionAtomicType readonly & SemType[2];

public class FunctionDefinition {
    *Definition;
    private int index;
    private SemType semType;
   
    public function init(Env env) {
        FunctionAtomicType dummy = [NEVER, NEVER];
        self.index = env.functionDefs.length();
        env.functionDefs.push(dummy);
        self.semType = uniformSubtype(UT_FUNCTION, bdd:atom(self.index));
    }

    public function getSemType(Env env) returns SemType {
        return self.semType;
    }

    public function define(Env env, SemType args, SemType ret) returns SemType {
        FunctionAtomicType t = [args, ret];
        env.functionDefs[self.index] = t;
        return self.semType;
    }    
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
            SemType[2] [t0, t1] = tc.functionDefs[neg.atom];
            return (isSubtype(tc, t0, s) && functionTheta(tc, t0, complement(t1), pos))
                || functionBddIsEmpty(tc, true, s, pos, neg.next);
        }
    }
    else {
        SemType[2] [sd, sr] = tc.functionDefs[b.atom];
        return functionBddIsEmpty(tc, b.left, union(s, sd), and(b.atom, pos), neg)
            && functionBddIsEmpty(tc, b.middle, s, pos, neg)
            && functionBddIsEmpty(tc, b.right, s, pos, and(b.atom, neg));
    }
}

function functionTheta(TypeCheckContext tc, SemType t0, SemType t1, Conjunction? pos) returns boolean {
    if pos is () {
        // XXX can have function with return type of never
        return isEmpty(tc, t0) || isEmpty(tc, t1);
    }
    else {
        SemType[2] [s0, s1] = tc.functionDefs[pos.atom];
        return (isSubtype(tc, t0, s0) || functionTheta(tc, diff(s0, t0), s1, pos.next))
            && (isSubtype(tc, t1, complement(s1)) || functionTheta(tc, s0, intersect(s1, t1), pos.next));
    }
}

 UniformTypeOps functionOps =  {  
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: functionSubtypeIsEmpty
};