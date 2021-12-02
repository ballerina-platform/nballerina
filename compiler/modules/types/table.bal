public function tableDef(SemType constituentType) returns SemType {
    SubtypeData ro = subtypeData(constituentType, UT_MAPPING_RO);
    SubtypeData rw = subtypeData(constituentType, UT_MAPPING_RW);
    return createTableSemtype(ro, rw);
    
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

function tableRoSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    return tableSubtypeIsEmpty(cx, bddFixReadOnly(<Bdd>t));
}

function tableSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
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
    boolean isEmpty = bddEvery(cx, b, (), (), mappingFormulaIsEmpty);
    m.isEmpty = isEmpty;
    return isEmpty;    
}

final UniformTypeOps tableRoOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: tableRoSubtypeIsEmpty
};

final UniformTypeOps tableRwOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: tableSubtypeIsEmpty
};
