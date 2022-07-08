import wso2/nballerina.types as t;
import wso2/nballerina.print.wasm;

type InherentTypeDefn record {|
    readonly t:SemType semType;
    int tid;
    string global;
|};

const STRUCTURE_LIST = 0;
const STRUCTURE_MAPPING = 1;

type StructureBasicType STRUCTURE_LIST|STRUCTURE_MAPPING;

final RuntimeModule typeMod = {
    file: "type.wat",
    priority: 7
};

final RuntimeFunction falseSubtypeContains = {
    name: "_bal_false_subtype_contains",
    returnType: "i32",
    rtModule: typeMod
};

final RuntimeFunction trueSubtypeContains = {
    name: "_bal_true_subtype_contains",
    returnType: "i32",
    rtModule: typeMod
};

final RuntimeFunction floatSubtypeContains = {
    name: "_bal_float_subtype_contains",
    returnType: "i32",
    rtModule: typeMod
};

final RuntimeFunction intSubtypeContains = {
    name: "_bal_int_subtype_contains",
    returnType: "i32",
    rtModule: numberMod
};


final RuntimeFunction stringSubtypeContains = {
    name: "_bal_string_subtype_contains",
    returnType: "i32",
    rtModule: stringMod
};

final RuntimeFunction precomputedSubtypeContains = {
    name: "_bal_precomputed_subtype_contains",
    returnType: "i32",
    rtModule: typeMod
};

final RuntimeFunction mapSubtypeContains = {
    name: "_bal_map_subtype_contains",
    returnType: "i32",
    rtModule: mapMod
};

final RuntimeFunction recordSubtypeContains = {
    name: "_bal_record_subtype_contains",
    returnType: "i32",
    rtModule: mapMod
};

final RuntimeFunction arraySubtypeContains = {
    name: "_bal_array_subtype_contains",
    returnType: "i32",
    rtModule: listMod
};

type SubtypeStruct record {|
    wasm:Expression[] values;
|};

type UsedSemType record {|
    readonly t:SemType semType;
    string global;
|};

function buildTypes(wasm:Module module, Component component, table<UsedSemType> key(semType)[2] usedSemTypes) returns wasm:Expression[] {
    wasm:Expression[] body = [];
    table<UsedSemType> key(semType) inherent = usedSemTypes[INHERENT_TYPE].cloneReadOnly();
    foreach UsedSemType used in inherent {
        body.push(...addInherentTypeDefn(component, module, used.global, used.semType));
    }
    finishSubtypeDefns(component, module);
    component.inherentTypesComplete = true;
    foreach UsedSemType used in usedSemTypes[TYPE_TEST] {
        ComplexTypeDefn? defn  = component.complexTypeDefns[<t:ComplexSemType>used.semType];
        if defn != () {
            module.addGlobal(used.global, { base: COMPLEX_TYPE, initial: "null" }, module.refNull(COMPLEX_TYPE));
            body.push(module.globalSet(used.global, module.globalGet(defn.global)));
        }
        else {
            addComplexTypeDefn(module, component, used.global, <t:ComplexSemType>used.semType);
        }
    }
    return body;
}

function addInherentTypeDefn(Component component, wasm:Module module, string symbol, t:SemType semType) returns wasm:Expression[]  {
    StructureBasicType basic = <StructureBasicType>structureBasicType(semType);
    table<InherentTypeDefn> key(semType) defns = component.inherentTypeDefns[basic];
    int tid = defns.length();
    RuntimeType ty = basic == STRUCTURE_LIST ? LIST_DESC : MAPPING_DESC;
    module.addGlobal(symbol, { base: ty, initial: "null" }, module.refNull(ty));
    defns.add({ global: symbol, semType: semType, tid });
    wasm:Expression[] init;
    if basic == STRUCTURE_LIST {
        init = [createListDesc(module, component, semType, symbol, tid)];        
    }
    else {
        init = createMappingDesc(module, component, semType, symbol, tid);        
    }
    return init;
}

function createMappingDesc(wasm:Module module, Component component, t:SemType semType, string global, int tid) returns wasm:Expression[] {  
    t:MappingAtomicType mat = <t:MappingAtomicType>t:mappingAtomicTypeRw(component.getTypeContext(), semType);
    wasm:Expression[] fields = from var ty in mat.types select getMemberType(module, component, ty);
    wasm:Expression[] body = [];
    wasm:Expression struct =  module.structNew(MAPPING_DESC, [
                                                              module.addConst({ i32: tid }),
                                                              module.addConst({ i32: fields.length() }),
                                                              getMemberType(module, component, mat.rest),
                                                              module.arrayNewDef(MAP_TYPE_ARR, module.addConst({ i32: fields.length() }))
                                                             ]);
    body.push(module.globalSet(global, struct));
    foreach int i in 0..<mat.types.length() {
        body.push(module.arraySet(MAP_TYPE_ARR, 
                                               module.structGet(MAPPING_DESC, "fieldTypes", module.refAs("ref.as_non_null", module.globalGet(global))), 
                                               module.addConst({ i32: i }),
                                               fields[i]));
    }
    return body;
}

function createListDesc(wasm:Module module, Component component, t:SemType semType, string global, int tid) returns wasm:Expression {  
    t:ListAtomicType lat = <t:ListAtomicType>t:listAtomicTypeRw(component.getTypeContext(), semType);
    wasm:Expression struct =  module.structNew(LIST_DESC, [
                                                            module.addConst({ i32: tid }),
                                                            getMemberType(module, component, lat.rest),
                                                            getFillerDesc(component, module, lat.rest)
                                                          ]);
    return module.globalSet(global, struct);
}

function getMemberType(wasm:Module module, Component component, t:SemType memberType) returns wasm:Expression {
    if memberType is t:UniformTypeBitSet {
        return module.i31New(module.addConst({ i32: memberType }));
    }
    else {
        string global;
        ComplexTypeDefn? existing = component.complexTypeDefns[memberType];
        if existing != () {
            global = existing.global;
        }
        else {
            global = memberTypeSymbol(component.complexTypeDefns.length());
            addComplexTypeDefn(module, component, global, memberType);
        }
        return module.globalGet(global);
    }
}

function addComplexTypeDefn(wasm:Module module, Component component, string global, t:ComplexSemType semType) {
    module.addGlobal(global, { base: COMPLEX_TYPE, initial: "null" }, module.refNull(COMPLEX_TYPE));
    t:SplitSemType { all, some } = t:split(semType);
    int someBits = 0;
    wasm:Expression[] subtypes = [];
    foreach var [code, subtype] in some {
        if code == t:UT_LIST_RO || code == t:UT_MAPPING_RO || code == t:UT_TABLE_RO || code == t:UT_TABLE_RW {
            // these cannot occur for now, so ignore them
            continue;
        }
        someBits |= 1 << code;
        subtypes.push(getUniformSubtype(component, module, code, subtype));
    }
    wasm:Expression struct = module.structNew(COMPLEX_TYPE, [module.addConst({ i32: all }),
                                                              module.addConst({ i32: someBits }), 
                                                              module.arrayNewDef(SUBTYPE_DATA_LIST, module.addConst({ i32: subtypes.length()}))]);
    wasm:Expression[] body = [];
    body.push(module.globalSet(global, struct));
    foreach int i in 0..<subtypes.length() {
        body.push(module.arraySet(SUBTYPE_DATA_LIST,
                                  module.structGet(COMPLEX_TYPE, "subtypes", module.refAs("ref.as_non_null", module.globalGet(global))),
                                  module.addConst({ i32: i }),
                                  subtypes[i] 
                                 ));
    }
    component.complexTypeDefns.add({ global, body, semType });
}

function getUniformSubtype(Component component, wasm:Module module, t:UniformTypeCode typeCode, t:ComplexSemType semType) returns wasm:Expression {
    SubtypeDefn? existingDefn = component.subtypeDefns[typeCode, semType];
    string global;
    if existingDefn != () {
        global = existingDefn.global;
    }
    else {
        global = subtypeDefnSymbol(component.subtypeDefns.length());
        SubtypeDefn newDefn = { typeCode, semType, global };
        component.subtypeDefns.add(newDefn);
        if (component.inherentTypesComplete) {
            component.subtypeStructs.push(createSubtypeStruct(component, module, typeCode, semType, global));
        }
    }
    return module.globalGet(global); 
}

function finishSubtypeDefns(Component component, wasm:Module module) {
    foreach SubtypeDefn defn in component.subtypeDefns {
        component.subtypeStructs.push(createSubtypeStruct(component, module, defn.typeCode, defn.semType, defn.global));
    }
}

function createSubtypeStruct(Component component, wasm:Module module, t:UniformTypeCode typeCode, t:ComplexSemType semType, string symbol) returns SubtypeStruct {
    match typeCode {
        t:UT_BOOLEAN => {
            return createBooleanSubtypeStruct(component, module, semType, symbol);
        }
        t:UT_INT => {
            return createIntSubtypeStruct(component, module, semType, symbol);
        }
        t:UT_FLOAT => {
            return createFloatSubtypeStruct(component, module, semType, symbol);
        }
        t:UT_STRING => {
            return createStringSubtypeStruct(component, module, semType, symbol);
        }
        t:UT_LIST_RW => {
            return createListSubtypeStruct(component, module, semType, symbol); 
        }
        t:UT_MAPPING_RW => {
            return createMappingSubtypeStruct(component, module, semType, symbol); 
        }
    }
    panic error("subtypes of uniform type are not implemented");    
}

function createBooleanSubtypeStruct(Component component, wasm:Module module, t:ComplexSemType semType, string symbol) returns SubtypeStruct {
    module.addGlobal(symbol, { base: BASE_SUBTYPE, initial: "null" }, module.refNull(BASE_SUBTYPE));
    t:BooleanSubtype sub = <t:BooleanSubtype>t:booleanSubtype(semType);
    wasm:Expression refFunc = buildRefFunc(module, component, sub.value ? trueSubtypeContains : falseSubtypeContains);
    wasm:Expression struct =  module.structNew(BASE_SUBTYPE, [refFunc]);
    return { values: [module.globalSet(symbol, struct)] };
}

function createIntSubtypeStruct(Component component, wasm:Module module, t:ComplexSemType semType, string symbol) returns SubtypeStruct {
    module.addGlobal(symbol, { base: INT_SUBTYPE, initial: "null" }, module.refNull(INT_SUBTYPE));
    t:IntSubtype ranges = <t:IntSubtype>t:intSubtype(semType);
    if ranges.length() == 0 {
        panic error("empty list of int ranges in complex subtype");
    }
    wasm:Expression[] values = [];
    wasm:Expression struct = module.structNew(INT_SUBTYPE, [buildRefFunc(module, component, intSubtypeContains), 
                                                            module.arrayNewDef(INT_SUBTYPE_RANGES, module.addConst({ i32: ranges.length() }))
                                                           ]);
    values.push(module.globalSet(symbol, struct));
    foreach int i in 0..<ranges.length() {
        values.push(module.arraySet(INT_SUBTYPE_RANGES,
                                    module.structGet(INT_SUBTYPE, "ranges", module.refAs("ref.as_non_null", module.globalGet(symbol))),
                                    module.addConst({ i32: i }), 
                                    module.structNew(INT_RANGE, [module.addConst({ i64: ranges[i].min }), module.addConst({ i64: ranges[i].max })])
                                   ));
    }
    return { values };
}

function createFloatSubtypeStruct(Component component, wasm:Module module, t:ComplexSemType semType, string symbol) returns SubtypeStruct {
    module.addGlobal(symbol, { base: FLOAT_SUBTYPE, initial: "null" }, module.refNull(FLOAT_SUBTYPE));
    t:FloatSubtype sub = <t:FloatSubtype>t:floatSubtype(semType);
    int len = sub.values.length();
    if len == 0 {
        panic error("empty list of float ranges in complex subtype");
    }
    wasm:Expression[] values = [];
    wasm:Expression struct = module.structNew(FLOAT_SUBTYPE, [buildRefFunc(module, component, floatSubtypeContains), 
                                                              module.addConst({ i32: sub.allowed ? 1 : 0 }),
                                                              module.arrayNewDef(FLOAT_VALUES, module.addConst({ i32: len }))
                                                             ]);
    values.push(module.globalSet(symbol, struct));
    foreach int i in 0..<len {
        values.push(module.arraySet(FLOAT_VALUES,
                                    module.structGet(FLOAT_SUBTYPE, "values", module.refAs("ref.as_non_null", module.globalGet(symbol))),
                                    module.addConst({ i32: i }), 
                                    module.addConst({ f64: sub.values[i] })
                                   ));
    }
    return { values };
}

function createStringSubtypeStruct(Component component, wasm:Module module, t:ComplexSemType semType, string symbol) returns SubtypeStruct {
    module.addGlobal(symbol, { base: STRING_SUBTYPE, initial: "null" }, module.refNull(STRING_SUBTYPE));
    t:StringSubtype sub = <t:StringSubtype>t:stringSubtype(semType);
    string[] strs = [];
    foreach string s in sub.char.values {
        strs.push(s);
    }
    foreach string s in sub.nonChar.values {
        strs.push(s);
    }
    wasm:Expression[] strConsts = from var s in strs.sort() select buildConstString(module, component, s);
    wasm:Expression[] values = [];
    wasm:Expression struct = module.structNew(STRING_SUBTYPE, [buildRefFunc(module, component, stringSubtypeContains), 
                                                               module.addConst({ i32: sub.char.allowed ? 1 : 0 }),
                                                               module.addConst({ i32: sub.nonChar.allowed ? 1 : 0 }),
                                                               module.arrayNewDef(ANY_ARR_TYPE, module.addConst({ i32: strs.length() }))
                                                              ]);
    values.push(module.globalSet(symbol, struct));
    foreach int i in 0..<strConsts.length() {
        values.push(module.arraySet(ANY_ARR_TYPE,
                                    module.structGet(STRING_SUBTYPE, "values", module.refAs("ref.as_non_null", module.globalGet(symbol))),
                                    module.addConst({ i32: i }), 
                                    strConsts[i]
                                   ));
    }
    return { values };
}

function createListSubtypeStruct(Component component, wasm:Module module, t:ComplexSemType semType, string symbol) returns SubtypeStruct {
    t:ListAtomicType? lat = t:listAtomicTypeRw(component.getTypeContext(), semType);
    if lat != () {
        t:SemType rest = lat.rest;
        if rest is t:UniformTypeBitSet && lat.members.fixedLength == 0 {
            return createArrayMapSubtypeStruct(component, module, rest, arraySubtypeContains, symbol);
        }
    }
    return createPrecomputedSubtypeStruct(component, module, STRUCTURE_LIST, semType, symbol);
}

function createMappingSubtypeStruct(Component component, wasm:Module module, t:ComplexSemType semType, string symbol) returns SubtypeStruct {
    t:MappingAtomicType? mat = t:mappingAtomicTypeRw(component.getTypeContext(), semType);
    if mat != () {
        t:SemType rest = mat.rest;
        if rest == t:NEVER {
            t:UniformTypeBitSet[] fieldTypes = [];
            foreach var ty in mat.types {
                if ty is t:UniformTypeBitSet {
                    fieldTypes.push(ty);
                }
                else {
                    break;
                }
            }
            if fieldTypes.length() == mat.types.length() {
                return createRecordSubtypeStruct(component, module, mat, symbol);     
            }
        }
        else if rest is t:UniformTypeBitSet && mat.names.length() == 0 {
            return createArrayMapSubtypeStruct(component, module, rest, mapSubtypeContains, symbol);
        }
    }
    return createPrecomputedSubtypeStruct(component, module, STRUCTURE_MAPPING, semType, symbol);
}

function createArrayMapSubtypeStruct(Component component, wasm:Module module, t:UniformTypeBitSet bitSet, RuntimeFunction rf, string symbol) returns SubtypeStruct {
    module.addGlobal(symbol, { base: ARRMAP_SUBTYPE, initial: "null" }, module.refNull(ARRMAP_SUBTYPE));
    wasm:Expression struct = module.structNew(ARRMAP_SUBTYPE, [
        buildRefFunc(module, component, rf),
        module.addConst({ i32: bitSet })
    ]);
    return { values: [module.globalSet(symbol, struct)] };
}

function createRecordSubtypeStruct(Component component, wasm:Module module, t:MappingAtomicType mat, string symbol) returns SubtypeStruct {
    module.addGlobal(symbol, { base: RECORD_SUBTYPE, initial: "null" }, module.refNull(RECORD_SUBTYPE));
    wasm:Expression[] names = [];
    foreach string name in mat.names {
        names.push(buildConstString(module, component, name));
    }
    wasm:Expression[] values = [];
    wasm:Expression struct = module.structNew(RECORD_SUBTYPE, [
                                              buildRefFunc(module, component, recordSubtypeContains),
                                              module.addConst({ i32: mat.types.length() }),
                                              module.arrayNewDef(RECORD_SUBTYPE_FIELDS, module.addConst({ i32: mat.types.length() }))
                                            ]);
    values.push(module.globalSet(symbol, struct));
    foreach int i in 0..<mat.types.length() {
        values.push(module.arraySet(RECORD_SUBTYPE_FIELDS,
                                  module.structGet(RECORD_SUBTYPE, "fields", module.refAs("ref.as_non_null", module.globalGet(symbol))),
                                  module.addConst({ i32: i }), 
                                  module.structNew(RECORD_SUBTYPE_FIELD, [names[i], module.addConst({ i32: t:widenToUniformTypes(mat.types[i]) })])
                                 ));
    }
    return { values };
}

function createPrecomputedSubtypeStruct(Component component, wasm:Module module, StructureBasicType basic, t:ComplexSemType ty, string symbol) returns SubtypeStruct {
    module.addGlobal(symbol, { base: PRECOMPUTED_SUBTYPE, initial: "null" }, module.refNull(PRECOMPUTED_SUBTYPE));
    wasm:Expression[] tids = from var itd in component.inherentTypeDefns[basic] where t:isSubtype(component.getTypeContext(), itd.semType, ty) select module.addConst({ i32: itd.tid });
    wasm:Expression[] values = [];
    wasm:Expression struct = module.structNew(PRECOMPUTED_SUBTYPE, [
                                              buildRefFunc(module, component, precomputedSubtypeContains),
                                              module.arrayNewDef(PRECOMPUTED_TIDS, module.addConst({ i32: tids.length() }))
                                            ]);
    values.push(module.globalSet(symbol, struct));
    foreach int i in 0..<tids.length() {
        values.push(module.arraySet(PRECOMPUTED_TIDS,
                                    module.structGet(PRECOMPUTED_SUBTYPE, "tids", module.refAs("ref.as_non_null", module.globalGet(symbol))),
                                    module.addConst({ i32: i }), 
                                    tids[i]
                                   ));
    }
    return { values };
}

function structureBasicType(t:SemType semType) returns StructureBasicType? {
    if t:isSubtypeSimple(semType, t:LIST) {
        return STRUCTURE_LIST;
    }
    if t:isSubtypeSimple(semType, t:MAPPING) {
        return STRUCTURE_MAPPING;
    }
    return ();
}

function getFillerDesc(Component component, wasm:Module module, t:SemType memberType) returns wasm:Expression {
    StructureBasicType? basic = fillableStructureBasicType(component.getTypeContext(), memberType);
    // JBUG narrowing does not work if you say `== ()`
    if basic is () {
        return module.refNull();
    }
    table<InherentTypeDefn> key(semType) defns = component.inherentTypeDefns[basic];
    InherentTypeDefn? existingDefn = defns[memberType];
    wasm:Expression desc;
    if existingDefn != () {
        desc = module.globalGet(existingDefn.global);
    }
    else {
        UsedSemType used = component.getUsedSemType(memberType, INHERENT_TYPE);
        component.types.push(...addInherentTypeDefn(component, module, used.global, memberType));
        desc = module.globalGet(used.global);
    }
    return desc;
}

function fillableStructureBasicType(t:Context tc, t:SemType semType) returns StructureBasicType? {
    StructureBasicType? basic = structureBasicType(semType);
    if basic == STRUCTURE_LIST {
        if t:listAtomicTypeRw(tc, semType) != () {
            return basic;
        }
    }
    if basic == STRUCTURE_MAPPING {
        t:MappingAtomicType? mat = t:mappingAtomicTypeRw(tc, semType);
        if  mat != () && mat.names.length() == 0 {
            return basic;
        }
    }
    return ();
}
