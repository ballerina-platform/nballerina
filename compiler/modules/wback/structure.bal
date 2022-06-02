import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;
import wso2/nballerina.types as t;

final RuntimeFunction mappingSetFunction = {
    name: "_bal_mapping_set",
    returnType: "None"
};

final RuntimeFunction mappingGetFunction = {
    name: "_bal_mapping_get",
    returnType: "eqref"
};

final RuntimeFunction mappingConstructFunction = {
    name: "_bal_mapping_construct",
    returnType: { base: "Map" }
};

final RuntimeFunction mappingInitMemberFunction = {
    name: "_bal_mapping_init_member",
    returnType: "None"
};

type RuntimeModule string;

final RuntimeModule mapMod = "map";
final RuntimeModule listMod = "list";

type ListReprPrefix "generic"|"int_array"|"boolean_array"|"float_array"|"string_array";

type ListRepr record {|
    ListReprPrefix prefixRepr;
    t:SemType rest;
|};
function listAtomicTypeToListReprPrefix(t:ListAtomicType? atomic) returns ListRepr {
    t:SemType rest = t:ANY;
    ListReprPrefix prefixRepr = "generic";
    if atomic != () && atomic.members.fixedLength == 0 {
        rest = atomic.rest;
        if rest == t:INT {
            prefixRepr = "int_array";
        }
        else if rest == t:FLOAT {
            prefixRepr = "float_array";
        }
        else if rest == t:BOOLEAN {
            prefixRepr = "boolean_array";
        }
        else if rest == t:STRING {
            prefixRepr = "string_array";
        }
    }
    return { prefixRepr, rest };
}

function listDefaultValue(wasm:Module module, Scaffold scaffold, ListReprPrefix prefix) returns wasm:Expression {
    if prefix == "int_array" {
        return module.structNew(BOXED_INT_TYPE, [module.addConst({ i32: TYPE_INT }), module.addConst({ i64: 0 })]);
    }
    else if prefix == "float_array" {
        return module.structNew(FLOAT_TYPE, [module.addConst({ i32: TYPE_FLOAT }), module.addConst({ f64: 0.0 })]);
    }
    else if prefix == "string_array" {
        return buildConstString(module, scaffold, "");
    }
    else if prefix == "boolean_array" {
        return module.i31New(module.addConst({ i32: 0 }));
    }
    return module.refNull("data");
}

function buildListConstruct(wasm:Module module, Scaffold scaffold, bir:ListConstructInsn insn) returns wasm:Expression {
    final int length = insn.operands.length();
    t:SemType listType = insn.result.semType;
    var atomic = <t:ListAtomicType>t:listAtomicTypeRw(scaffold.getTypeContext(), listType);
    var { prefixRepr, rest } = listAtomicTypeToListReprPrefix(atomic);
    wasm:Expression default = listDefaultValue(module, scaffold, prefixRepr);
    wasm:Expression list = module.call(arrCreateFunction.name, [module.addConst({ i64: length }), default, module.addConst({ i32: <int>rest })], arrCreateFunction.returnType);
    wasm:Expression setList = module.localSet(insn.result.number, list);
    wasm:Expression[] children = [setList];
    _ = semTypeRepr(insn.result.semType);
    foreach int i in 0 ..< length {
        wasm:Expression arr = module.refAs("ref.as_non_null", module.localGet(insn.result.number));
        wasm:Expression val = buildWideRepr(module, scaffold, insn.operands[i], REPR_ANY, insn.result.semType);
        wasm:Expression index = module.addConst({ i64 : i });
        wasm:Expression setVal = module.call(arrSetFunction.name, [arr, val, index], arrSetFunction.returnType);
        children.push(setVal);
    }
    return module.block(children);
}

function buildListGet(wasm:Module module, Scaffold scaffold, bir:ListGetInsn insn) returns wasm:Expression {
    wasm:Expression list = module.localGet(insn.operands[0].number);
    wasm:Expression index = module.unary("i32.wrap_i64", buildRepr(module, scaffold, insn.operands[1], REPR_INT));
    wasm:Expression call = module.call(arrGetFunction.name, [list, index], arrGetFunction.returnType);
    Repr repr = semTypeRepr(insn.result.semType);
    if repr !is TaggedRepr {
        return module.localSet(insn.result.number, buildUntagged(module, scaffold, call, repr));
    }
    return module.localSet(insn.result.number, call);
}

function buildListSet(wasm:Module module, Scaffold scaffold, bir:ListSetInsn insn) returns wasm:Expression {
    wasm:Expression list = buildRepr(module, scaffold, insn.operands[0], REPR_LIST);
    wasm:Expression index = buildRepr(module, scaffold, insn.operands[1], REPR_INT);
    wasm:Expression newMember = buildRepr(module, scaffold, insn.operands[2], REPR_ANY);
    return module.call(arrSetFunction.name, [list, newMember, index], arrSetFunction.returnType);
}

function buildMappingConstruct(wasm:Module module, Scaffold scaffold, bir:MappingConstructInsn insn) returns wasm:Expression {
    scaffold.addRuntimeModule(stringMod);
    scaffold.addRuntimeModule(mapMod);
    t:MappingAtomicType mat = <t:MappingAtomicType>t:mappingAtomicTypeRw(scaffold.getTypeContext(), insn.result.semType);  
    wasm:Expression mapping = module.call(mappingConstructFunction.name, [module.addConst({ i32: insn.fieldNames.length() }), module.addConst({ i32: <int>mat.rest })], mappingConstructFunction.returnType);
    wasm:Expression mapSet = module.localSet(insn.result.number, mapping);
    wasm:Expression[] children = [mapSet];
    foreach int i in 0..<insn.fieldNames.length() {
        children.push(module.call(mappingInitMemberFunction.name, [module.refAs("ref.as_non_null", module.localGet(insn.result.number)), buildConstString(module, scaffold, insn.fieldNames[i]), buildRepr(module, scaffold, insn.operands[i], REPR_ANY)], mappingInitMemberFunction.returnType));
    }
    return module.block(children);
}

function buildMappingGet(wasm:Module module, Scaffold scaffold, bir:MappingGetInsn insn) returns wasm:Expression {
    wasm:Expression mapping = module.refAs("ref.as_non_null", module.localGet(insn.operands[0].number));
    wasm:Expression key = buildString(module, scaffold, insn.operands[1]);
    return module.localSet(insn.result.number, module.call(mappingGetFunction.name, [mapping, key], mappingGetFunction.returnType));
}

function buildMappingSet(wasm:Module module, Scaffold scaffold, bir:MappingSetInsn insn) returns wasm:Expression {
    wasm:Expression mapping = module.refAs("ref.as_non_null", module.localGet(insn.operands[0].number));
    wasm:Expression key = buildString(module, scaffold, insn.operands[1]);    
    wasm:Expression val = buildRepr(module, scaffold, insn.operands[2], REPR_ANY);
    return module.call(mappingSetFunction.name, [mapping, key, val], mappingSetFunction.returnType);
}
