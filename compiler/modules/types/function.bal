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

public function signatureFromSemType(Context cx, SemType semType) returns FunctionSignature {
    var [argList, returnType] = <FunctionAtomicType>functionAtomicType(cx, semType);
    ListAtomicType listAtom = <ListAtomicType>listAtomicType(cx, argList);
    SemType[] paramTypes = from int i in 0 ..< listAtom.members.fixedLength select listAtomicTypeMemberAtInnerVal(listAtom, i);
    SemType restInnerVal = cellInnerVal(listAtom.rest);
    SemType? restParamType = restInnerVal == NEVER ? () : listAtom.rest;
    return { returnType, paramTypes: paramTypes.cloneReadOnly(), restParamType };
}

public function semTypeFromSignature(Context cx, FunctionSignature signature) returns SemType {
    Env env = cx.env;
    FunctionDefinition defn = new;
    var { paramTypes, restParamType, returnType } = signature;
    SemType rest = restParamType is () ? NEVER : restParamType;
    return defn.define(env, defineListTypeWrapped(new(), env, paramTypes, rest=rest, mut=CELL_MUT_NONE), returnType);
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
    if !isSubtype(cx, semType, FUNCTION) {
        return ();
    }
    if semType is BasicTypeBitSet {
        // TODO: when supporting function type variance we will need to support t:FUNCTION
        return ();
    }
    BddNode bdd = <BddNode>semType.subtypeDataList[0];
    if bdd.left == true && bdd.middle == false && bdd.right == false {
        return cx.functionAtomType(bdd.atom);
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
