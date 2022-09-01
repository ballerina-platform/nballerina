// Implementation specific to basic type table.

public function tableContaining(SemType memberType) returns SemType {
    Bdd bdd = <Bdd>subtypeData(memberType, BT_MAPPING);
    return createBasicSemType(BT_TABLE, bdd);
}

final BasicTypeOps tableOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: mappingSubtypeIsEmpty
};
