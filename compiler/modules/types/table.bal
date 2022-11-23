// Implementation specific to basic type table.

public function tableContaining(Env env, SemType mappingType, CellMutability mut = CELL_MUT_LIMITED) returns SemType {
    SemType listType = defineListTypeWrapped(new, env, rest = mappingType, mut = mut);
    Bdd bdd = <Bdd>subtypeData(listType, BT_LIST);
    return createBasicSemType(BT_TABLE, bdd);
}

function tableSubtypeComplement(ProperSubtypeData t) returns SubtypeData {
    return bddSubtypeDiff(MAPPING_SUBTYPE_ARRAY_TOP, t);
}

function tableSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    Bdd b = <Bdd>t;
    // The goal of this is to ensure that listSubtypeIsEmpty call beneath does
    // not get an empty posList, because it will interpret that
    // as `(any|error)[]` rather than `(map<any|error>)[]`.
    b = bddPosMaybeEmpty(b) ? bddIntersect(b, MAPPING_SUBTYPE_ARRAY_TOP) : b;
    return listSubtypeIsEmpty(cx, b);
}

final BasicTypeOps tableOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: tableSubtypeComplement,
    isEmpty: tableSubtypeIsEmpty
};
