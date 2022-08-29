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
    Bdd b = <Bdd>t;
    BddMemo? mm = cx.mappingMemo[b];
    BddMemo m;
    if mm == () {
        m = { bdd: b };
        cx.mappingMemo.add(m);
    }
    else {
        m = mm;
        boolean? res = m.isEmpty;
        if res == () {
            return true;
        }
        else {
            return res;
        }
    }
    boolean isEmpty = bddEveryPositive(cx, b, (), (), mappingFormulaIsEmpty);
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


