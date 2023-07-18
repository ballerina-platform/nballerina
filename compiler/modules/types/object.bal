public type Member [string, SemType];

SemType MEMBER_KIND_FIELD = stringConst("field");
SemType MEMBER_KIND_METHOD = stringConst("method");
public class ObjectDefinition {
    *Definition;
    private MappingDefinition mappingDefn = new();

    public function getSemType(Env env) returns SemType {
        return self.createSemType(self.mappingDefn.getSemType(env));
    }

    public function define(Env env, Member[] fields, Member[] methods) returns SemType {
        CellField[] cellFields = from Member f in fields select fieldMember(env, f);
        CellField[] cellMethods = from Member m in methods select methodMember(env, m);
        // TODO: make the rest type more precise
        SemType mappingType = self.mappingDefn.define(env, [...cellFields, ...cellMethods],
                                                      cellContaining(env, MAPPING));
        return self.createSemType(mappingType);
    }

    private function createSemType(SemType mappingType) returns SemType {
        Bdd bdd = <Bdd>subtypeData(mappingType, BT_MAPPING);
        return createBasicSemType(BT_OBJECT, bdd);
    }
}

function fieldMember(Env env, Member member) returns CellField {
    return [member[0], cellContaining(env,
                                      defineMappingTypeWrapped(new, env, [{ name: "value", ty: cellContaining(env, member[1])},
                                                                          { name: "kind", ty: MEMBER_KIND_FIELD }],
                                                               NEVER))];
}

function methodMember(Env env, Member member) returns CellField {
    return [member[0], cellContaining(env,
                                      defineMappingTypeWrapped(new, env, [{ name: "value", ty: cellContaining(env, member[1], CELL_MUT_NONE) },
                                                                          { name: "kind", ty: MEMBER_KIND_METHOD }],
                                                               NEVER))];
}

final BasicTypeOps objectOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    // FIXME: do we need a special case similar to table
    complement: bddSubtypeComplement,
    isEmpty: mappingSubtypeIsEmpty
};
