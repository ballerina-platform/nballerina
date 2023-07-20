public type Member record {|
    string name;
    SemType valueTy;
|};

SemType MEMBER_KIND_FIELD = stringConst("field");
SemType MEMBER_KIND_METHOD = stringConst("method");

public class ObjectDefinition {
    *Definition;
    private MappingDefinition mappingDefn = new();

    public function getSemType(Env env) returns SemType {
        return self.createSemType(self.mappingDefn.getSemType(env));
    }

    public function define(Env env, Member[] fields, Member[] methods) returns SemType {
        CellField[] fieldCells = from Member f in fields select fieldMember(env, f);
        CellField[] methodCells = from Member m in methods select methodMember(env, m);
        SemType mappingType = self.mappingDefn.define(env, [...fieldCells, ...methodCells],
                                                      restMemberType(env));
        return self.createSemType(mappingType);
    }

    private function createSemType(SemType mappingType) returns SemType {
        Bdd bdd = <Bdd>subtypeData(mappingType, BT_MAPPING);
        return createBasicSemType(BT_OBJECT, bdd);
    }
}

function restMemberType(Env env) returns CellSemType {
    SemType fieldMemberType = defineMappingTypeWrapped(new, env, [{ name: "value", ty: cellContaining(env, ANY) },
                                                                  { name: "kind", ty: MEMBER_KIND_FIELD }],
                                                       NEVER);
    SemType methodMemberType = defineMappingTypeWrapped(new, env, [{ name: "value", ty: cellContaining(env, FUNCTION, CELL_MUT_NONE) },
                                                                   { name: "kind", ty: MEMBER_KIND_METHOD }],
                                                        NEVER);
    return cellContaining(env, union(fieldMemberType, methodMemberType));
}

function fieldMember(Env env, Member member) returns CellField {
    return [member.name,
            cellContaining(env,
                           defineMappingTypeWrapped(new, env, [{ name: "value", ty: cellContaining(env, member.valueTy) },
                                                               { name: "kind", ty: MEMBER_KIND_FIELD }],
                                                    NEVER))];
}

function methodMember(Env env, Member member) returns CellField {
    return [member.name,
            cellContaining(env,
                           defineMappingTypeWrapped(new, env, [{ name: "value", ty: cellContaining(env, member.valueTy, CELL_MUT_NONE) },
                                                               { name: "kind", ty: MEMBER_KIND_METHOD }],
                                                    NEVER))];
}

final BasicTypeOps objectOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: mappingSubtypeIsEmpty
};
