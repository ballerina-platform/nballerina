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
        else if res is "computing" {
            // this is a type we are computing(ie. type is in N). So we assume it is empty
            return true;
        }
        panic error("unexpected");
    }
    boolean isEmpty = bddEvery(cx, b, (), (), mappingFormulaIsEmpty);
    if !isEmpty || initialStackSize == 0 {
        // if initialStackSize == 0 we should not have any pending types
        // is isEmpty is false (i.e type is non-empty) it safe to move it to P (only something that is empty can change to non-empty)
        // in both cases type is no longer pending so we move it from N to P and clear the stack (up to level when we pushed t)
        m.isEmpty = isEmpty;
        reduceStackLength(cx, initialStackSize);
    }
    return isEmpty;    

}

final BasicTypeOps errorOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: errorSubtypeIsEmpty
};


