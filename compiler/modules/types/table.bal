// Implementation specific to basic type table.

public function tableContaining(Env env, SemType mappingType) returns SemType {
    SemType listType = defineListTypeWrapped(new, env, rest = mappingType);
    Bdd bdd = <Bdd>subtypeData(listType, BT_LIST);
    return createBasicSemType(BT_TABLE, bdd);
}

function tableSubtypeComplement(SubtypeData t) returns SubtypeData {
    return bddIntersect(bddComplement(<Bdd>t), MAPPING_ARRAY_TOP_BDD);
}

function tableSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    return listSubtypeIsEmpty(cx, bddIntersect(<Bdd>t, MAPPING_ARRAY_TOP_BDD));
}

final BasicTypeOps tableOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: tableSubtypeComplement,
    isEmpty: tableSubtypeIsEmpty
};
