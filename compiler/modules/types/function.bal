// Implementation specific to basic type function.
import wso2/nballerina.comm.err;

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

public function functionParamListType(Context cx, SemType func) returns SemType? {
    FunctionAtomicType? atomic = functionAtomicType(cx, func);
    if atomic != () {
        return atomic[0];
    }
    SemType functionTy = intersect(func, FUNCTION);
    if isEmpty(cx, functionTy) {
        return ();
    }
    if functionTy is BasicTypeBitSet {
        // intersection of all list types
        return NEVER;
    }
    SemType paramTy = VAL;
    foreach var { pos } in positiveFunctionPaths(cx, functionTy) {
        SemType[] intersectionParamTypes = from var atom in pos select cx.functionAtomType(atom)[0];
        paramTy = intersect(paramTy, intersectionParamTypes.reduce(union, intersectionParamTypes[0]));
    }
    return paramTy;
}

public function functionReturnType(Context cx, SemType func, SemType argList) returns SemType? {
    SemType functionTy = intersect(func, FUNCTION);
    // Since we care only about well type function calls, it is safe to ignore base type
    if isEmpty(cx, functionTy) || functionTy is BasicTypeBitSet {
        return ();
    }
    SemType[] selectedReturnTypes = [];
    foreach var { pos } in positiveFunctionPaths(cx, functionTy) {
        SemType[] returnTypes = [];
        SemType currentlyCoveredParamTy = NEVER;
        // Not sure if the order of intersections matters, reverse starts with the tightest intersection
        foreach var [intersectionParamTy, intersectionReturnTy] in allPossibleFunctionAtomIntersections(cx, pos).reverse() {
            SemType overlappingParamTy = intersect(argList, intersectionParamTy);
            if isEmpty(cx, overlappingParamTy) {
                continue;
            }
            if !isEmpty(cx, diff(overlappingParamTy, currentlyCoveredParamTy)) {
                currentlyCoveredParamTy = union(overlappingParamTy, currentlyCoveredParamTy);
                returnTypes.push(intersectionReturnTy);
            }
        }
        if returnTypes.length() > 0 {
            selectedReturnTypes.push(returnTypes.reduce(intersect, returnTypes[0]));
        }
    }
    if selectedReturnTypes.length() == 0 {
        // This shouldn't happen if the function call is well typed
        return ();
    }
    return selectedReturnTypes.reduce(union, selectedReturnTypes[0]);
}

function positiveFunctionPaths(Context cx, ComplexSemType funcTy) returns BddPath[] {
    BddPath[] paths = [];
    bddPaths(<Bdd>getComplexSubtypeData(funcTy, BT_FUNCTION), paths, {});
    paths = paths.filter((each) => each.pos.length() > 0);
    if paths.length() == 0 {
        panic err:impossible("expect at least a single positive atom");
    }
    return paths;
}

function allPossibleFunctionAtomIntersections(Context cx, Atom[] atoms) returns [SemType, SemType][] {
    return allPossibleFunctionAtomIntersectionsInner(cx, atoms, atoms.length());
}
function allPossibleFunctionAtomIntersectionsInner(Context cx, Atom[] atoms, int n) returns [SemType, SemType][] {
    if n == 1 {
        // cloneWithType to remove the readonly part from functionAtomType
        return from var atom in atoms select checkpanic cx.functionAtomType(atom).cloneWithType([SemType, SemType]);
    }
    [SemType, SemType][] result = allPossibleFunctionAtomIntersectionsInner(cx, atoms, n - 1);
    foreach var [paramTy, returnTy] in result {
        foreach Atom atom in atoms {
            var [atomParamTy, atomReturnTy] = cx.functionAtomType(atom);
            result.push([intersect(paramTy, atomParamTy), intersect(returnTy, atomReturnTy)]);
        }
    }
    return result;
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
