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
    boolean isEmpty = bddEvery(cx, b, (), (), functionFormulaIsEmpty, ());
    m.isEmpty = isEmpty;
    return isEmpty;    
}

function functionSubtypeIsEmptyWitness(Context cx, SubtypeData t, Witness? witness) returns boolean {
    Bdd b = <Bdd>t;
    BddMemo? mm = cx.functionMemo[b];
    BddMemo m;
    if mm == () {
        m = { bdd: b };
        cx.functionMemo.add(m);
        // todo: memoize witness
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
    boolean isEmpty = bddEvery(cx, b, (), (), functionFormulaIsEmpty, witness);
    m.isEmpty = isEmpty;
    return isEmpty;    
}

function functionFormulaIsEmpty(Context cx, Conjunction? pos, Conjunction? neg, Witness? witness) returns boolean {
    return functionPathIsEmpty(cx, functionUnionParams(cx, pos), pos, neg);
}

function functionPathIsEmpty(Context cx, SemType params, Conjunction? pos, Conjunction? neg) returns boolean {
    if neg == () {
        return false;
    }
    else {
        SemType[2] [t0, t1] = cx.functionAtomType(neg.atom);
        return (isSubtype(cx, t0, params) && functionPhi(cx, t0, complement(t1), pos))
               || functionPathIsEmpty(cx, params, pos, neg.next);
    }
}

// This corresponds to phi' in the Castagna paper.
function functionPhi(Context cx, SemType t0, SemType t1, Conjunction? pos) returns boolean {
    if pos == () {
        return isEmpty(cx, t0) || isEmpty(cx, t1);
    }
    else {
        SemType[2] [s0, s1] = cx.functionAtomType(pos.atom);
        return (isSubtype(cx, t0, s0) || isSubtype(cx, functionIntersectRet(cx, pos.next), complement(t1)))
            && functionPhi(cx, t0, intersect(t1, s1), pos.next)
            && functionPhi(cx, diff(t0, s0), t1, pos.next);
    }
}

function functionUnionParams(Context cx, Conjunction? pos) returns SemType {
    if pos == () {
        return NEVER;
    }
    return union(cx.functionAtomType(pos.atom)[0], functionUnionParams(cx, pos.next));
}

function functionIntersectRet(Context cx, Conjunction? pos) returns SemType {
    if pos == () {
        return TOP;
    }
    return intersect(cx.functionAtomType(pos.atom)[1], functionIntersectRet(cx, pos.next));
}

// pnwamk tutorial
function functionTheta(Context cx, SemType t0, SemType t1, Conjunction? pos) returns boolean {
    if pos == () {
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
    isEmpty: functionSubtypeIsEmpty,
    isEmptyWitness:  functionSubtypeIsEmptyWitness
};