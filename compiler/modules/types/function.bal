// Implementation specific to basic type function.

// Function subtype is [args, ret]
// Represents args as tuple type
public type FunctionAtomicType readonly & SemType[2];

public class FunctionDefinition {
    *Definition;
    private RecAtom? rec = ();
    private SemType? semType = ();
   
    public function getSemType(Env env) returns SemType {
        SemType? s = self.semType;
        if s == () {
            RecAtom rec = env.recFunctionAtom();
            self.rec = rec;
            return self.createSemType(env, rec);
        }
        return s;
    }

    public function define(Env env, SemType args, SemType ret) returns SemType {
        FunctionAtomicType atomicType = [args, ret];
        Atom atom;
        RecAtom? rec = self.rec;
        if rec != () {
            atom = rec;
            env.setRecFunctionAtomType(rec, atomicType);
        }
        else {
            atom = env.functionAtom(atomicType);
        }
        return self.createSemType(env, atom);
    }

    private function createSemType(Env env, Atom atom) returns ComplexSemType {
        BddNode bdd = bddAtom(atom);
        ComplexSemType s = basicSubtype(BT_FUNCTION, bdd);
        self.semType = s;
        return s;
    }
}

# This represents the signature of a function definition.
# We don't need to convert this to a `SemType` unless
# the definition is converted to a function value,
# by referencing the name of the function as a variable
# reference.
public type FunctionSignature readonly & record {|
    SemType returnType;
    SemType[] paramTypes;
    # if non-nil, last member of paramTypes will be an array type whose member type is restParamType
    SemType? restParamType = ();
|};

public function functionSignature(Context cx, FunctionAtomicType atomic) returns FunctionSignature {
    FunctionSignatureMemo? memo = cx.functionSignatureMemo[atomic];
    if memo != () {
        return memo.signature;
    }
    var [argList, returnType] = atomic;
    ListAtomicType listAtom = <ListAtomicType>listAtomicType(cx, argList);
    SemType[] paramTypes = from int i in 0 ..< listAtom.members.fixedLength select listAtomicTypeMemberAtInnerVal(listAtom, i);
    SemType restInnerVal = cellInnerVal(listAtom.rest);
    SemType? restParamType = restInnerVal == NEVER ? () : restInnerVal;
    if restParamType != () {
        ListDefinition listDefn = new;
        paramTypes.push(defineListTypeWrapped(listDefn, cx.env, rest=restInnerVal));
    }
    FunctionSignature signature = { returnType, paramTypes: paramTypes.cloneReadOnly(), restParamType };
    cx.functionSignatureMemo.add({ atomic, signature });
    return signature;
}

public function functionSemType(Context cx, FunctionSignature signature) returns SemType {
    FunctionTypeMemo? memo = cx.functionAtomicTypeMemo[signature];
    if memo != () {
        return memo.semType;
    }
    Env env = cx.env;
    FunctionDefinition defn = new;
    var { paramTypes, restParamType, returnType } = signature;
    SemType[] requiredParams;
    if restParamType != () {
        requiredParams = paramTypes.slice(0, paramTypes.length() - 1);
    }
    else {
        requiredParams = paramTypes;
    }
    SemType rest = restParamType is () ? NEVER : restParamType;
    SemType semType = defn.define(env, defineListTypeWrapped(new(), env, requiredParams, rest=rest, mut=CELL_MUT_NONE), returnType);
    FunctionAtomicType atomic = <FunctionAtomicType>functionAtomicType(cx, semType);
    // XXX: This is an optimization/workaround util we have proper function typing. If we turn signature to semType that means we have
    // a function value and when we build a call using this value (currently) we need to go from FunctionAtomicType to signature.
    // Caching it here avoids creating list atomic types unnecessarily in `functionSignature` function when we have a restParamType
    if signature.restParamType != () && cx.functionSignatureMemo[atomic] == () {
        cx.functionSignatureMemo.add({ atomic, signature });
    }
    cx.functionAtomicTypeMemo.add({ signature, semType });
    return semType;
}

function functionSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    return memoSubtypeIsEmpty(cx, cx.functionMemo, functionBddIsEmpty, <Bdd>t);
}

function functionBddIsEmpty(Context cx, Bdd b) returns boolean {
    return bddEvery(cx, b, (), (), functionFormulaIsEmpty);
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
        return VAL;
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

public function functionAtomicType(Context cx, SemType semType) returns FunctionAtomicType? {
    if !isSubtypeSimple(semType, FUNCTION) || semType is BasicTypeBitSet {
        return ();
    }
    return bddFunctionAtomicType(cx.env, <Bdd>getComplexSubtypeData(semType, BT_FUNCTION));
}

function bddFunctionAtomicType(Env env, Bdd bdd) returns FunctionAtomicType? {
    if bdd is boolean {
        return ();
    }
    if bdd.left == true && bdd.middle == false && bdd.right == false {
        return env.functionAtomType(bdd.atom);
    }
    return ();
}

BasicTypeOps functionOps =  {  
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: functionSubtypeIsEmpty
};
