// Implementation specific to basic type error.
import semtype.bdd;

public function errorDetail(SemType detail) returns SemType {
    SubtypeData sd = subtypeData(detail, BT_MAPPING_RO);
    if sd == true {
        return ERROR;
    }
    if sd == false {
        // XXX This should be reported as an error
        return NEVER;
    }
    return new SemType(1 << (BT_ERROR + BT_COUNT), [[BT_ERROR, sd]]);
}

// distinctId must be >= 0
public function errorDistinct(int distinctId) returns SemType {
    bdd:Bdd bdd = bdd:atom(-distinctId - 1);
    return new SemType(1 << (BT_ERROR + BT_COUNT), [[BT_ERROR, bdd]]);
}

// Similar to mappingSubtypeRoIsEmpty,
// except that we use bddEveryPositive to ignore the distinct ids
function errorSubtypeIsEmpty(TypeCheckContext tc, SubtypeData t) returns boolean {
    bdd:Bdd b = <bdd:Bdd>t;
    // See comment in `mappingRoSubtypeIsEmpty`.
    // This is needed to ensure we recognize something like `error - error<map<readonly>>` as empty.
    b = bdd:expandMiddle(bdd:intersect(b, bdd:atom(0)));
    
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

final BasicTypeOps errorOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: errorSubtypeIsEmpty
};


