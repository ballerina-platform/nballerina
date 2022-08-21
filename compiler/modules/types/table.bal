// Implementation specific to basic type table.

public function tableContaining(Env env, SemType memberType) returns SemType {
    SemType cellMemberType = cellContaining(env, memberType, CELL_MUT_LIMITED);
    Bdd bdd = <Bdd>subtypeData(cellMemberType, BT_CELL);
    return createBasicSemType(BT_TABLE, bdd);
}

final BasicTypeOps tableOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: cellSubtypeIsEmpty
};
