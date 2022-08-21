// Implementation specific to basic type table.

public type RwTableSubtype record {|
    Bdd ro;
    Bdd rw;
|};

public function tableContaining(SemType memberType) returns SemType {
    Bdd ro = <Bdd>subtypeData(memberType, UT_MAPPING_RO);
    Bdd rw = <Bdd>subtypeData(memberType, BT_MAPPING);
    SemType roSemtype = createBasicSemType(UT_TABLE_RO, ro);
    SemType rwSemtype = createBasicSemType(BT_TABLE, createRwTableSubtype(ro, rw));
    return union(roSemtype, rwSemtype);
}

function rwTableSubtypeUnion(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    RwTableSubtype rwt1 = <RwTableSubtype>t1;
    RwTableSubtype rwt2 = <RwTableSubtype>t2;
    return createRwTableSubtype(bddUnion(rwt1.ro, rwt2.ro), bddUnion(rwt1.rw, rwt2.rw));
}

function rwTableSubtypeIntersect(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    RwTableSubtype rwt1 = <RwTableSubtype>t1;
    RwTableSubtype rwt2 = <RwTableSubtype>t2;
    return createRwTableSubtype(bddIntersect(rwt1.ro, rwt2.ro), bddIntersect(rwt1.rw, rwt2.rw));
}

function rwTableSubtypeDiff(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    RwTableSubtype rwt1 = <RwTableSubtype>t1;
    RwTableSubtype rwt2 = <RwTableSubtype>t2;
    return createRwTableSubtype(bddDiff(rwt1.ro, rwt2.ro), bddDiff(rwt1.rw, rwt2.rw));
}

function rwTableSubtypeComplement(SubtypeData t) returns SubtypeData {
    RwTableSubtype rwt = <RwTableSubtype>t;
    return createRwTableSubtype(bddComplement(rwt.ro), bddComplement(rwt.rw));
}

function rwTableSubtypeEmpty(Context cx, SubtypeData t) returns boolean {
    RwTableSubtype rwt = <RwTableSubtype>t;
    return mappingRoSubtypeIsEmpty(cx, rwt.ro) && mappingSubtypeIsEmpty(cx, rwt.rw);
}

function createRwTableSubtype(Bdd ro, Bdd rw) returns SubtypeData {
    if ro is boolean && ro == rw {
        return ro;
    }
    return { ro, rw };
}

final BasicTypeOps tableRoOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: mappingRoSubtypeIsEmpty
};

final BasicTypeOps tableRwOps = {
    union: rwTableSubtypeUnion,
    intersect: rwTableSubtypeIntersect,
    diff: rwTableSubtypeDiff,
    complement: rwTableSubtypeComplement,
    isEmpty: rwTableSubtypeEmpty
};
