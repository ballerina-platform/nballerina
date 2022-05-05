import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;

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

function buildListConstruct(wasm:Module module, Scaffold scaffold, bir:ListConstructInsn insn) returns wasm:Expression {
    final int length = insn.operands.length();
    wasm:Expression list = module.call(arrCreateFunction.name, [module.addConst({ i64: length })], arrCreateFunction.returnType);
    wasm:Expression setList = module.localSet(insn.result.number, list);
    wasm:Expression[] children = [setList];
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
    wasm:Expression mapping = module.call(mappingConstructFunction.name, [module.addConst({ i32: insn.fieldNames.length() })], mappingConstructFunction.returnType);
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
