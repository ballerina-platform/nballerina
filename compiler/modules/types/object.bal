public type Member record {|
    string name;
    SemType valueTy;
    "field"|"method" kind;
|};

final SemType MEMBER_KIND_FIELD = stringConst("field");
final SemType MEMBER_KIND_METHOD = stringConst("method");

public class ObjectDefinition {
    *Definition;
    private MappingDefinition mappingDefn = new();

    public function getSemType(Env env) returns SemType {
        return objectContaining(self.mappingDefn.getSemType(env));
    }

    public function define(Env env, Member[] members) returns SemType {
        if members.length() == 0 {
            return OBJECT;
        }
        CellField[] memberCells = from Member member in members select 
                                    member.kind == "field" ? fieldMember(env, member):
                                                             methodMember(env, member);
        SemType mappingType = self.mappingDefn.define(env, [...memberCells],
                                                      restMemberType(env));
        return objectContaining(mappingType);
    }

}

public function objectContaining(SemType mappingType) returns SemType {
    Bdd bdd = <Bdd>subtypeData(mappingType, BT_MAPPING);
    return createBasicSemType(BT_OBJECT, bdd);
}

function restMemberType(Env env) returns CellSemType {
    SemType fieldMemberType = defineMappingTypeWrapped(new, env, [{ name: "value", ty: ANY },
                                                                  { name: "kind", ty: MEMBER_KIND_FIELD, ro: true }],
                                                       NEVER);
    SemType methodMemberType = defineMappingTypeWrapped(new, env, [{ name: "value", ty: FUNCTION, ro: true },
                                                                   { name: "kind", ty: MEMBER_KIND_METHOD, ro: true }],
                                                        NEVER);
    return cellContaining(env, union(fieldMemberType, methodMemberType));
}

function fieldMember(Env env, Member member) returns CellField {
    return [member.name,
            cellContaining(env,
                           defineMappingTypeWrapped(new, env, [{ name: "value", ty: member.valueTy },
                                                               { name: "kind", ty: MEMBER_KIND_FIELD, ro: true }],
                                                    NEVER))];
}

function methodMember(Env env, Member member) returns CellField {
    return [member.name,
            cellContaining(env,
                           defineMappingTypeWrapped(new, env, [{ name: "value", ty: member.valueTy, ro: true },
                                                               { name: "kind", ty: MEMBER_KIND_METHOD, ro: true }],
                                                    NEVER))];
}

function objectSubtypeComplement(ProperSubtypeData t) returns SubtypeData {
    return bddSubtypeDiff(MAPPING_SUBTYPE_OBJECT, t);
}

final BasicTypeOps objectOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: objectSubtypeComplement,
    isEmpty: mappingSubtypeIsEmpty
};
