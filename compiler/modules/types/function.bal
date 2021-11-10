// Implementation specific to basic type function.

import ballerina/io;

// Function subtype is [args, ret]
// Represents args as tuple type
public type FunctionAtomicType readonly & SemType[2];

public class FunctionDefinition {
    *Definition;
    private RecAtom atom;
    private SemType semType;
   
    public function init(Env env) {
        self.atom = env.recFunctionAtom();
        self.semType = uniformSubtype(UT_FUNCTION, bddAtom(self.atom));
    }

    public function getSemType(Env env) returns SemType {
        return self.semType;
    }

    public function define(Env env, SemType args, SemType ret) returns SemType {
        FunctionAtomicType t = [args, ret];
        env.setRecFunctionAtomType(self.atom, t);
        return self.semType;
    }    
}

function functionSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    Bdd b = <Bdd>t;
    BddMemo? mm = cx.functionMemo[b];
    BddMemo m;
    if mm == () {
        m = { bdd: b };
        cx.functionMemo.add(m);
    }
    else {
        m = mm;
        boolean? res = m.isEmpty;
        if res == () {
            // we've got a loop
            io:println("got a function loop");
            // XXX is this right???
            return true;
        }
        else {
            return res;
        }
    }
    boolean isEmpty = functionBddIsEmpty(cx, b, NEVER, (), ());
    m.isEmpty = isEmpty;
    return isEmpty;    
}

function functionBddIsEmpty(Context cx, Bdd b, SemType s, Conjunction? pos, Conjunction? neg) returns boolean {
    if b is boolean {
        if b == false {
            return true;
        }
        if neg == () {
            return false;
        }
        else {
            SemType[2] [t0, t1] = cx.functionAtomType(neg.atom);
            return (isSubtype(cx, t0, s) && functionTheta(cx, t0, complement(t1), pos))
                || functionBddIsEmpty(cx, true, s, pos, neg.next);
        }
    }
    else {
        SemType[2] [sd, _] = cx.functionAtomType(b.atom);
        return functionBddIsEmpty(cx, b.left, union(s, sd), and(b.atom, pos), neg)
            && functionBddIsEmpty(cx, b.middle, s, pos, neg)
            && functionBddIsEmpty(cx, b.right, s, pos, and(b.atom, neg));
    }
}

function functionTheta(Context cx, SemType t0, SemType t1, Conjunction? pos) returns boolean {
    if pos == () {
        // XXX can have function with return type of never
        return isEmpty(cx, t0) || isEmpty(cx, t1);
    }
    else {
        SemType[2] [s0, s1] = cx.functionAtomType(pos.atom);
        return (isSubtype(cx, t0, s0) || functionTheta(cx, diff(s0, t0), s1, pos.next))
            && (isSubtype(cx, t1, complement(s1)) || functionTheta(cx, s0, intersect(s1, t1), pos.next));
    }
}

 UniformTypeOps functionOps =  {  
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: functionSubtypeIsEmpty
};