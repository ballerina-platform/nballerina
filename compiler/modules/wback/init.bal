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

const TYPE_KIND_ARRAY = "_bal_array_subtype_contains";
const TYPE_KIND_MAP = "_bal_map_subtype_contains";
const TYPE_KIND_RECORD = "_bal_record_subtype_contains";
const TYPE_KIND_PRECOMPUTED = "_bal_precomputed_subtype_contains";
const TYPE_KIND_TRUE = "_bal_true_subtype_contains";
const TYPE_KIND_FALSE = "_bal_false_subtype_contains";
const TYPE_KIND_INT = "_bal_int_subtype_contains";
const TYPE_KIND_FLOAT = "_bal_float_subtype_contains";
const TYPE_KIND_STRING = "_bal_string_subtype_contains";

type SubtypeStruct record {|
    wasm:Expression[] values;
|};

type TypeKindArrayOrMap TYPE_KIND_ARRAY|TYPE_KIND_MAP;
type TypeKindSimple TYPE_KIND_TRUE|TYPE_KIND_FALSE|TYPE_KIND_INT|TYPE_KIND_FLOAT;
type TypeKind TypeKindArrayOrMap|TYPE_KIND_RECORD|TYPE_KIND_PRECOMPUTED|TYPE_KIND_STRING|TypeKindSimple;

type UsedSemType record {|
    readonly t:SemType semType;
    string global;
|};

type ModuleContext record {|
    t:Context tc;
    table<UsedSemType> key(semType) usedSemTypes = table [];
    table<InherentTypeDefn> key(semType)[2] inherentTypeDefns = [table [], table[]];
    table<ComplexTypeDefn> key(semType) complexTypeDefns = table [];
    table<SubtypeDefn> key(typeCode, semType) subtypeDefns = table [];
    // subtype definitions cannot be completed before inherent types are complete,
    // because precomputed subtypes need to know all inherent types
    boolean inherentTypesComplete;
|};

function buildTypes(wasm:Module module, Component component, table<UsedSemType> key(semType) usedSemTypes) returns wasm:Expression[] {
    wasm:Expression[] body = [];
    table<InherentTypeDefn> key(semType) defns = component.inherentTypeDefns[STRUCTURE_MAPPING];
    foreach UsedSemType used in usedSemTypes {
        int tid = component.inherentTypeDefns[STRUCTURE_MAPPING].length();
        component.inherentTypeDefns[STRUCTURE_MAPPING].add({ global: used.global, semType: used.semType, tid });
    }
    foreach InherentTypeDefn used in defns {
        t:MappingAtomicType mat = <t:MappingAtomicType>t:mappingAtomicTypeRw(component.getTypeContext(), used.semType);
        body.push(...createMappingDesc(module, component, mat, used.global, used.tid));
    }
    finishSubtypeDefns(component, module);
    return body;
}

function createMappingDesc(wasm:Module module, Component component, t:MappingAtomicType mat, string global, int tid) returns wasm:Expression[] {  
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

function getUniformSubtype(Component cx, wasm:Module module, t:UniformTypeCode typeCode, t:ComplexSemType semType) returns wasm:Expression {
    SubtypeDefn? existingDefn = cx.subtypeDefns[typeCode, semType];
    string global;
    if existingDefn != () {
        global = existingDefn.global;
    }
    else {
        global = subtypeDefnSymbol(cx.subtypeDefns.length());
        SubtypeDefn newDefn = { typeCode, semType, global };
        cx.subtypeDefns.add(newDefn);
    }
    return module.globalGet(global); 
}

function finishSubtypeDefns(Component cx, wasm:Module module) {
    foreach SubtypeDefn defn in cx.subtypeDefns {
        cx.subtypeStructs.push(createSubtypeStruct(cx, module, defn.typeCode, defn.semType, defn.global));
    }
}

function createSubtypeStruct(Component cx, wasm:Module module, t:UniformTypeCode typeCode, t:ComplexSemType semType, string symbol) returns SubtypeStruct {
    match typeCode {
        t:UT_BOOLEAN => {
            return createBooleanSubtypeStruct(module, semType);
        }
        t:UT_INT => {
            return createIntSubtypeStruct(module, semType);
        }
        t:UT_FLOAT => {
            return createFloatSubtypeStruct(cx, semType);
        }
        t:UT_STRING => {
            return createStringSubtypeStruct(cx, semType);
        }
        t:UT_LIST_RW => {
            return createListSubtypeStruct(cx, module, semType, symbol); 
        }
        t:UT_MAPPING_RW => {
            return createMappingSubtypeStruct(cx, module, semType, symbol); 
        }
    }
    panic error("subtypes of uniform type are not implemented");    
}

function createBooleanSubtypeStruct(wasm:Module module, t:ComplexSemType semType) returns SubtypeStruct {
    panic error("unimplemented");
    // t:BooleanSubtype sub = <t:BooleanSubtype>t:booleanSubtype(semType);
    // return module.structNew("SubtypeStructBoolean", [module.refFunc(sub.value ? "true" : "false" + "_subtype_contains")]);
}

function createIntSubtypeStruct(wasm:Module module, t:ComplexSemType semType) returns SubtypeStruct {
    panic error("unimplemented");
//     t:IntSubtype ranges = <t:IntSubtype>t:intSubtype(semType);
//     if ranges.length() == 0 {
//         panic error("empty list of int ranges in complex subtype");
//     }
//     return module.structNew("SubtypeStructInt", [module.refFunc(TYPE_KIND_INT + "_subtype_contains"), module.addConst({ i32: ranges.length() })]);
//     // return {    
//     //     types: [cx.llTypes.subtypeContainsFunctionPtr, "i64", llvm:arrayType(llIntRangeType, ranges.length())],
//     //     values: [
//     //         getSubtypeContainsFunc(cx, TYPE_KIND_INT),
//     //         llvm:constInt("i64", ranges.length()),
//     //         cx.llContext.constArray(llIntRangeType,
//     //                                 from var r in ranges select cx.llContext.constStruct([llvm:constInt(LLVM_INT, r.min),
//     //                                                                                       llvm:constInt(LLVM_INT, r.max)]))
//     //     ]
//     // };
}

function createFloatSubtypeStruct(Component cx, t:ComplexSemType semType) returns SubtypeStruct {
    panic error("unimplemented");
//     t:FloatSubtype sub = <t:FloatSubtype>t:floatSubtype(semType);
//     int len = sub.values.length();
//     if len == 0 {
//         panic err:impossible("empty list of float ranges in complex subtype");
//     }
//     return {
//         types: [cx.llTypes.subtypeContainsFunctionPtr, "i32", "i32", llvm:arrayType(LLVM_DOUBLE, len)],
//         values: [
//             getSubtypeContainsFunc(cx, TYPE_KIND_FLOAT),
//             llvm:constInt("i32", len),
//             llvm:constInt("i32", sub.allowed ? 1 : 0),
//             cx.llContext.constArray(LLVM_DOUBLE, from var d in sub.values select llvm:constFloat(LLVM_DOUBLE, d))
//         ]
//     };
}

function createStringSubtypeStruct(Component cx, t:ComplexSemType semType) returns SubtypeStruct {
    panic error("unimplemented");
//     t:StringSubtype sub = <t:StringSubtype>t:stringSubtype(semType);
//     string[] strs = [];
//     foreach string s in sub.char.values {
//         strs.push(s);
//     }
//     foreach string s in sub.nonChar.values {
//         strs.push(s);
//     }
//     llvm:ConstValue[] strConsts = from var s in strs.sort() select getInitString(cx, s);
//     return {
//         types: [cx.llTypes.subtypeContainsFunctionPtr, "i32", "i16", "i16", llvm:arrayType(LLVM_TAGGED_PTR, strs.length())],
//         values: [
//             getSubtypeContainsFunc(cx, TYPE_KIND_STRING),
//             llvm:constInt("i32", strs.length()),
//             llvm:constInt("i16", sub.char.allowed ? 1 : 0),
//             llvm:constInt("i16", sub.nonChar.allowed ? 1 : 0),
//             cx.llContext.constArray(LLVM_TAGGED_PTR, strConsts)
//         ]
//     };
}

function createListSubtypeStruct(Component cx, wasm:Module module, t:ComplexSemType semType, string symbol) returns SubtypeStruct {
    t:ListAtomicType? lat = t:listAtomicTypeRw(cx.getTypeContext(), semType);
    if lat != () {
        t:SemType rest = lat.rest;
        if rest is t:UniformTypeBitSet && lat.members.fixedLength == 0 {
            return createArrayMapSubtypeStruct(module, rest, TYPE_KIND_ARRAY, symbol);
        }
    }
    return createPrecomputedSubtypeStruct(cx, module, STRUCTURE_LIST, semType, symbol);
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
            return createArrayMapSubtypeStruct(module, rest, TYPE_KIND_MAP, symbol);
        }
    }
    return createPrecomputedSubtypeStruct(component, module, STRUCTURE_MAPPING, semType, symbol);
}

function createArrayMapSubtypeStruct(wasm:Module module, t:UniformTypeBitSet bitSet, TypeKindArrayOrMap arrayOrMap, string symbol) returns SubtypeStruct {
    module.addGlobal(symbol, { base: ARRMAP_SUBTYPE, initial: "null" }, module.refNull(ARRMAP_SUBTYPE));
    wasm:Expression struct = module.structNew(ARRMAP_SUBTYPE, [
        module.refFunc(arrayOrMap),
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
                                              module.refFunc(TYPE_KIND_RECORD),
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

function createPrecomputedSubtypeStruct(Component cx, wasm:Module module, StructureBasicType basic, t:ComplexSemType ty, string symbol) returns SubtypeStruct {
    module.addGlobal(symbol, { base: PRECOMPUTED_SUBTYPE, initial: "null" }, module.refNull(PRECOMPUTED_SUBTYPE));
    wasm:Expression[] tids = from var itd in cx.inherentTypeDefns[basic] where t:isSubtype(cx.getTypeContext(), itd.semType, ty) select module.addConst({ i32: itd.tid });
    wasm:Expression[] values = [];
    wasm:Expression struct = module.structNew(PRECOMPUTED_SUBTYPE, [
                                              module.refFunc(TYPE_KIND_PRECOMPUTED),
                                              module.addConst({ i32: tids.length() }),
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
