// Implementation specific to basic type error.

public function errorDetail(SemType detail) returns SemType {
    SubtypeData sd = subtypeData(detail, BT_MAPPING); // FIX_RO: type should be MAPPING_RO
    if sd is boolean {
        if sd {
            return ERROR;
         }
        else {
            // XXX This should be reported as an error
            return NEVER;
        }
    }
    else {
        return basicSubtype(BT_ERROR, sd);
    }
}

// distinctId must be >= 0
public function errorDistinct(int distinctId) returns SemType {
    BddNode bdd = bddAtom(-distinctId - 1);
    return basicSubtype(BT_ERROR, bdd);
}

function errorSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    return errorSubtypeIsFiniteAndEmpty(cx, t).empty;
}

function errorSubtypeIsFinite(Context cx, SubtypeData t) returns boolean {
    return errorSubtypeIsFiniteAndEmpty(cx, t).finite;
}

function errorSubtypeIsFiniteAndEmpty(Context cx, SubtypeData t) returns MemoizedEmptinessCheckResult {
    return memoSubtypeIsFiniteAndEmpty(cx, cx.mappingMemo, errorBddIsEmpty, <Bdd>t);
}

function errorBddIsEmpty(Context cx, Bdd b) returns boolean {
    return bddEveryPositive(cx, b, (), (), mappingFormulaIsEmpty);
}

final BasicTypeOps errorOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: errorSubtypeIsEmpty,
    isFinite: errorSubtypeIsFinite
};
