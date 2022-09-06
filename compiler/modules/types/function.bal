// Implementation specific to basic type function.


// Function subtype is [args, ret]
// Represents args as tuple type
public type FunctionAtomicType readonly & SemType[2];

public class FunctionDefinition {
    *Definition;
    private RecAtom atom;
    private SemType semType;
   
    public function init(Env env) {
        self.atom = env.recFunctionAtom();
        self.semType = basicSubtype(BT_FUNCTION, bddAtom(self.atom));
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
    BddMemo? mm = cx.listMemo[b];
    BddMemo m;
    int initialStackSize = cx.memoStack.length();
    if mm == () || mm.isEmpty == () {
        // this is new to us so put it in the computing stack and continue
        if mm == () {
            m = { bdd: b, isEmpty: "computing" };
            cx.listMemo.add(m);
        }
        else {
            m = cx.listMemo.get(b);
            m.isEmpty = "computing";
        }
        cx.memoStack.push(m);


    }
    else {
        m = mm;
        var res = m.isEmpty;
        if res is boolean {
            // This is a type is know for sure
            return res;
        }
        // this is a type we are computing(ie. type is in N). So we assume it is empty
        return true;
    }
    boolean isEmpty = bddEvery(cx, b, (), (), functionFormulaIsEmpty);
    if !isEmpty || initialStackSize == 0 {
        // if initialStackSize == 0 we should not have any pending types
        // is isEmpty is false (i.e type is non-empty) it safe to move it to P (only something that is empty can change to non-empty)
        // in both cases type is no longer pending so we move it from N to P and clear the stack (up to level when we pushed t)
        m.isEmpty = isEmpty;
        reduceStackLength(cx, initialStackSize);
    }
    return isEmpty;    

}

function functionFormulaIsEmpty(Context cx, Conjunction? pos, Conjunction? neg) returns boolean {
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

BasicTypeOps functionOps =  {  
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: functionSubtypeIsEmpty
};
