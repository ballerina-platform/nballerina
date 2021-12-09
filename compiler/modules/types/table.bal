// Implementation specific to basic type table.

public function roTableContaining(SemType memberType) returns SemType {
    SubtypeData ro = subtypeData(memberType, UT_MAPPING_RO);
    return createComplexSemType(0, [[UT_TABLE_RO, ro]]);
}

public function rwTableContaining(SemType memberType) returns SemType {
    SubtypeData ro = subtypeData(memberType, UT_MAPPING_RO);
    SubtypeData rw = subtypeData(memberType, UT_MAPPING_RW);
    return createComplexSemType(0, [[UT_TABLE_RO, ro], [UT_TABLE_RW, rw]]);
}


final UniformTypeOps tableRoOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: mappingRoSubtypeIsEmpty
};

final UniformTypeOps tableRwOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: mappingSubtypeIsEmpty
};
