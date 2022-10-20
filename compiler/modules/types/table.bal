// Implementation specific to basic type table.

public function tableContaining(Env env, SemType mappingType) returns SemType {
    SemType listType = defineListTypeWrapped(new, env, rest = mappingType);
    Bdd bdd = <Bdd>subtypeData(listType, BT_LIST);
    return createBasicSemType(BT_TABLE, bdd);
}

function tableSubtypeComplement(SubtypeData t) returns SubtypeData {
    // `(map<any|error>)[]` is the top subtype of the table type.
    // bddComplement() would give complement w.r.t `(any|error)[]`.
    // Therefore, intersecting bddComplement() result with `(map<any|error>)[]` here.
    return bddIntersect(bddComplement(<Bdd>t), MAPPING_ARRAY_TOP_BDD);
}

function tableSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    Bdd b = <Bdd>t;
    // The goal of this is to ensure that listSubtypeIsEmpty call beneath does
    // not get an empty posList, because it will interpret that
    // as `(any|error)[]` rather than `(map<any|error>)[]`.
    b = bddPosMaybeEmpty(b) ? bddIntersect(b, MAPPING_ARRAY_TOP_BDD) : b;
    return listSubtypeIsEmpty(cx, b);
}

final BasicTypeOps tableOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: tableSubtypeComplement,
    isEmpty: tableSubtypeIsEmpty,
    // TODO: fix this with new table
    isFinite: mappingSubtypeIsFinite
};
