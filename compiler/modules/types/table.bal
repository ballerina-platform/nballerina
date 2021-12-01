public function tableDef(SemType constituentType) returns SemType {
    SubtypeData sd = subtypeData(constituentType, UT_MAPPING_RO);
    if sd is boolean {
        if sd {
            return ERROR;
        }
        else {
            return NEVER;
        }
    }
    else {
        return uniformSubtype(UT_TABLE_RW, sd);
    }
}

function createTableSemtype(SubtypeData ro, SubtypeData rw) returns ComplexSemType {
    if ro == false {
        return createComplexSemType(0, [[UT_TABLE_RW, rw]]);
    }
    else if rw == false {
        return createComplexSemType(0, [[UT_TABLE_RO, ro]]); 
    }
    else {
        return createComplexSemType(0, [[UT_TABLE_RO, ro], [UT_TABLE_RW, rw]]);
    }
}

function tableSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    Bdd b = bddFixReadOnly(<Bdd>t);
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

final UniformTypeOps tableRoOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: tableSubtypeIsEmpty
};

final UniformTypeOps tableRwOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: tableSubtypeIsEmpty
};
