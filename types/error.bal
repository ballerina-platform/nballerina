// Implementation specific to basic type error.
import semtype.bdd;

public function errorDetail(SemType detail) returns SemType {
    SubtypeData sd = subtypeData(detail, UT_MAPPING_RO);
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
        return uniformSubtype(UT_ERROR, sd);
    }
}

// distinctId must be >= 0
public function errorDistinct(int distinctId) returns SemType {
    bdd:Node bdd = bdd:atom(-distinctId - 1);
    return uniformSubtype(UT_ERROR, bdd);
}

// Similar to mappingSubtypeRoIsEmpty,
// except that we use bddEveryPositive to ignore the distinct ids
function errorSubtypeIsEmpty(TypeCheckContext tc, SubtypeData t) returns boolean {
    bdd:Bdd b = bddFixReadOnly(<bdd:Bdd>t);
    BddMemo? mm = tc.mappingMemo[b];
    BddMemo m;
    if mm is () {
        m = { bdd: b };
        tc.mappingMemo.add(m);
    }
    else {
        m = mm;
        boolean? res = m.isEmpty;
        if res is () {
            return true;
        }
        else {
            return res;
        }
    }
    boolean isEmpty = bddEveryPositive(tc, b, (), (), mappingFormulaIsEmpty);
    m.isEmpty = isEmpty;
    return isEmpty;    
}

final UniformTypeOps errorOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: errorSubtypeIsEmpty
};


