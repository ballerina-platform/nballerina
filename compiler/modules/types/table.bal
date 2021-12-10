// Implementation specific to basic type table.

public type RwTableSubtype record {|
    Bdd ro;
    Bdd rw;
|};

public function tableContaining(SemType memberType) returns SemType {
    Bdd ro = <Bdd> subtypeData(memberType, UT_MAPPING_RO);
    Bdd rw = <Bdd> subtypeData(memberType, UT_MAPPING_RW);
    SubtypeData rwt = createRwTableSubtype(ro, rw);
    return createComplexSemType(0, [[UT_TABLE_RO, ro], [UT_TABLE_RW, rwt]]);
}

function rwTableSubtypeUnion(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    RwTableSubtype rwt1 = <RwTableSubtype> t1;
    RwTableSubtype rwt2 = <RwTableSubtype> t2;
    Bdd ro = bddUnion(rwt1.ro, rwt2.ro);
    Bdd rw = bddUnion(rwt1.rw, rwt2.rw);
    return createRwTableSubtype(ro, rw);
}

function rwTableSubtypeIntersect(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    RwTableSubtype rwt1 = <RwTableSubtype> t1;
    RwTableSubtype rwt2 = <RwTableSubtype> t2;
    Bdd ro = bddIntersect(rwt1.ro, rwt2.ro);
    Bdd rw = bddIntersect(rwt1.rw, rwt2.rw);
    return createRwTableSubtype(ro, rw);
}

function rwTableSubtypeDiff(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    RwTableSubtype rwt1 = <RwTableSubtype> t1;
    RwTableSubtype rwt2 = <RwTableSubtype> t2;
    Bdd ro = bddDiff(rwt1.ro, rwt2.ro);
    Bdd rw = bddDiff(rwt1.rw, rwt2.rw);
    return createRwTableSubtype(ro, rw);
}

function rwTableSubtypeComplement(SubtypeData t) returns SubtypeData {
    RwTableSubtype rwt = <RwTableSubtype> t;
    Bdd ro = bddComplement(rwt.ro);
    Bdd rw = bddComplement(rwt.rw);
    return createRwTableSubtype(ro, rw);
}

function rwTableSubtypeEmpty(Context cx, SubtypeData t) returns boolean {
    RwTableSubtype rwt = <RwTableSubtype> t;
    boolean ro = mappingRoSubtypeIsEmpty(cx, rwt.ro);
    boolean rw = mappingSubtypeIsEmpty(cx, rwt.rw);
    return ro && rw;
}

function createRwTableSubtype(Bdd ro, Bdd rw) returns SubtypeData {
    return {ro, rw};
}

final UniformTypeOps tableRoOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: mappingRoSubtypeIsEmpty
};

final UniformTypeOps tableRwOps = {
    union: rwTableSubtypeUnion,
    intersect: rwTableSubtypeIntersect,
    diff: rwTableSubtypeDiff,
    complement: rwTableSubtypeComplement,
    isEmpty: rwTableSubtypeEmpty
};
