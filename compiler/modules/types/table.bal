// Implementation specific to basic type table.

public function tableContaining(Env env, SemType mappingType) returns SemType {
    SemType listType = defineListTypeWrapped(new, env, rest = mappingType);
    CellSemType cellType = cellContaining(env, listType);
    Bdd bdd = <Bdd>subtypeData(cellType, BT_CELL);
    return createBasicSemType(BT_TABLE, bdd);
}

final BasicTypeOps tableOps = {
    union: cellSubtypeUnion,
    intersect: cellSubtypeIntersect,
    diff: cellSubtypeDiff,
    complement: cellSubtypeComplement,
    isEmpty: cellSubtypeIsEmpty
};
