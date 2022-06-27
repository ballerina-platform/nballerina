import wso2/nballerina.types as t;
import wso2/nballerina.print.wasm;

function createMappingDescInit(wasm:Module module, t:MappingAtomicType mat) returns wasm:Expression {  
    wasm:Expression[] llFields = from var ty in mat.types select getMemberType(module, ty);
    return module.structNew(MAPPING_DESC, [
        module.addConst({ i32: llFields.length() }),
        getMemberType(module, mat.rest),
        module.arrayNewDef(MAP_TYPE_ARR, module.addConst({ i32: llFields.length() }))
    ]);
}

function createRecordSubtype(wasm:Module module, Component component, t:MappingAtomicType mat) returns [wasm:Expression[], wasm:Expression] {  
    wasm:Expression[] names = [];
    foreach string name in mat.names {
        names.push(buildConstString(module, component, name));
    }
    wasm:Expression struct = module.structNew(RECORD_SUBTYPE, [
                                              module.addConst({ i32: mat.types.length() }),
                                              module.arrayNewDef(RECORD_SUBTYPE_FIELDS, module.addConst({ i32: mat.types.length() }))
                                            ]);
    return [names, struct];
}

function getMemberType(wasm:Module module, t:SemType memberType) returns wasm:Expression {
    if memberType is t:UniformTypeBitSet {
        return module.addConst({ i32: memberType });
    }
    panic error("complex record member types not handled");
}
