// Implementation specific to basic type table.

public type RWTableSubtype record {|
    Bdd ro;
    Bdd rw;
|};

public function roTableContaining(SemType memberType) returns SemType {
    SubtypeData ro = subtypeData(memberType, UT_MAPPING_RO);
    return createComplexSemType(0, [[UT_TABLE_RO, ro]]);
}

public function rwTableContaining(SemType memberType) returns SemType {
    Bdd ro = <Bdd> subtypeData(memberType, UT_MAPPING_RO);
    Bdd rw = <Bdd> subtypeData(memberType, UT_MAPPING_RW);
    RWTableSubtype rwt = {ro, rw};
    return createComplexSemType(0, [[UT_TABLE_RW, rwt]]);
}

function rwTableSubtypeUnion(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    RWTableSubtype rwt1 = <RWTableSubtype> t1;
    RWTableSubtype rwt2 = <RWTableSubtype> t2;
    Bdd ro = bddUnion(rwt1.ro, rwt2.ro);
    Bdd rw = bddUnion(rwt1.rw, rwt2.rw);
    return {ro, rw};
}

function rwTableSubtypeIntersect(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    RWTableSubtype rwt1 = <RWTableSubtype> t1;
    RWTableSubtype rwt2 = <RWTableSubtype> t2;
    Bdd ro = bddIntersect(rwt1.ro, rwt2.ro);
    Bdd rw = bddIntersect(rwt1.rw, rwt2.rw);
    return {ro, rw};
}

function rwTableSubtypeDiff(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    RWTableSubtype rwt1 = <RWTableSubtype> t1;
    RWTableSubtype rwt2 = <RWTableSubtype> t2;
    Bdd ro = bddDiff(rwt1.ro, rwt2.ro);
    Bdd rw = bddDiff(rwt1.rw, rwt2.rw);
    return {ro, rw};
}

function rwTableSubtypeComplement(SubtypeData t) returns SubtypeData {
    RWTableSubtype rwt = <RWTableSubtype> t;
    Bdd ro = bddComplement(rwt.ro);
    Bdd rw = bddComplement(rwt.rw);
    return {ro, rw};
}

function rwTableSubtypeEmpty(Context cx, SubtypeData t) returns boolean {
    RWTableSubtype rwt = <RWTableSubtype> t;
    boolean ro = mappingRoSubtypeIsEmpty(cx, rwt.ro);
    boolean rw = mappingSubtypeIsEmpty(cx, rwt.rw);
    return ro && rw;
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
