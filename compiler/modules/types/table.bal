// Implementation specific to basic type table.

public function tableContaining(Env env, SemType memberType) returns SemType {
    MemberSemType memberSemType = cellContaining(env, memberType);
    Bdd bdd = <Bdd>subtypeData(memberSemType, BT_CELL);
    return createBasicSemType(BT_TABLE, bdd);
}

final BasicTypeOps tableOps = {
    union: cellSubtypeUnion,
    intersect: cellSubtypeIntersect,
    diff: cellSubtypeDiff,
    complement: cellSubtypeComplement,
    isEmpty: cellSubtypeIsEmpty
};
