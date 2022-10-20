// Implementation specific to basic type table.

public function tableContaining(Env env, SemType mappingType) returns SemType {
    SemType listType = defineListTypeWrapped(new, env, rest = mappingType);
    Bdd bdd = <Bdd>subtypeData(listType, BT_LIST);
    return createBasicSemType(BT_TABLE, bdd);
}

final BasicTypeOps tableOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: listSubtypeIsEmpty
};
