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

final RuntimeModule mapMod = "map.wat";
final RuntimeModule listMod = "list.wat";

type ListRepr record {|
    t:SemType rest;
    wasm:Expression default;
|};

function listAtomicTypeToListRepr(wasm:Module module, Scaffold scaffold, t:ListAtomicType? atomic) returns ListRepr {
    t:SemType rest = t:ANY;
    wasm:Expression default = module.refNull("data");
    if atomic != () && atomic.members.fixedLength == 0 {
        rest = atomic.rest;
        if rest == t:INT {
            default = module.structNew(BOXED_INT_TYPE, [module.addConst({ i32: TYPE_INT }), module.addConst({ i64: 0 })]);
        }
        else if rest == t:FLOAT {
            default = module.structNew(FLOAT_TYPE, [module.addConst({ i32: TYPE_FLOAT }), module.addConst({ f64: 0.0 })]);
        }
        else if rest == t:BOOLEAN {
            default = module.i31New(module.addConst({ i32: 0 }));
        }
        else if rest == t:STRING {
            default = buildConstString(module, scaffold, "");
        }
    }
    return { rest, default };
}

function buildListConstruct(wasm:Module module, Scaffold scaffold, bir:ListConstructInsn insn) returns wasm:Expression {
    final int length = insn.operands.length();
    t:SemType listType = insn.result.semType;
    var atomic = <t:ListAtomicType>t:listAtomicTypeRw(scaffold.getTypeContext(), listType);
    var { rest, default } = listAtomicTypeToListRepr(module, scaffold, atomic);
    wasm:Expression list = buildRuntimeFunctionCall(module, arrCreateFunction, [
                                                                                module.addConst({ i64: length }), 
                                                                                default, 
                                                                                module.addConst({ i32: <int>rest })
                                                                               ]);                      
    wasm:Expression storeList = buildStore(module, insn.result, list);
    wasm:Expression[] children = [storeList];
    wasm:Expression loadList = module.refAs("ref.as_non_null", buildLoad(module, insn.result));
    foreach int i in 0 ..< length {
        wasm:Expression val = buildWideRepr(module, scaffold, insn.operands[i], REPR_ANY, insn.result.semType);
        wasm:Expression index = module.addConst({ i64: i });
        wasm:Expression setVal = buildRuntimeFunctionCall(module, arrSetFunction, [loadList, val, index]);
        children.push(setVal);
    }
    return module.block(children);
}

function buildListGet(wasm:Module module, Scaffold scaffold, bir:ListGetInsn insn) returns wasm:Expression {
    wasm:Expression listOperand = buildLoad(module, insn.operands[0]);
    wasm:Expression indexOperand = module.unary("i32.wrap_i64", buildRepr(module, scaffold, insn.operands[1], REPR_INT));
    wasm:Expression call = buildRuntimeFunctionCall(module, arrGetFunction, [listOperand, indexOperand]);
    Repr repr = semTypeRepr(insn.result.semType);
    if repr !is TaggedRepr {
        return buildStore(module, insn.result, buildUntagged(module, scaffold, call, repr));
    }
    return buildStore(module, insn.result, call);
}

function buildListSet(wasm:Module module, Scaffold scaffold, bir:ListSetInsn insn) returns wasm:Expression {
    wasm:Expression listOperand = buildRepr(module, scaffold, insn.operands[0], REPR_LIST);
    wasm:Expression indexOperand = buildRepr(module, scaffold, insn.operands[1], REPR_INT);
    wasm:Expression newMemberOperand = buildRepr(module, scaffold, insn.operands[2], REPR_ANY);
    return buildRuntimeFunctionCall(module, arrSetFunction, [listOperand, newMemberOperand, indexOperand]);
}

function buildMappingConstruct(wasm:Module module, Scaffold scaffold, bir:MappingConstructInsn insn) returns wasm:Expression {
    scaffold.addRuntimeModule(stringMod);
    scaffold.addRuntimeModule(mapMod);
    int length = insn.fieldNames.length();
    t:MappingAtomicType mat = <t:MappingAtomicType>t:mappingAtomicTypeRw(scaffold.getTypeContext(), insn.result.semType);  
    wasm:Expression mapping = buildRuntimeFunctionCall(module, mappingConstructFunction, [
                                                                                            module.addConst({ i32: length }), 
                                                                                            module.addConst({ i32: <int>mat.rest })
                                                                                         ]);
    wasm:Expression mapSet = buildStore(module, insn.result, mapping);
    wasm:Expression[] children = [mapSet];
    wasm:Expression loadMap = module.refAs("ref.as_non_null", buildLoad(module, insn.result));
    foreach int i in 0..< length {
        wasm:Expression key = buildConstString(module, scaffold, insn.fieldNames[i]);
        wasm:Expression val = buildRepr(module, scaffold, insn.operands[i], REPR_ANY);
        children.push(buildRuntimeFunctionCall(module, mappingInitMemberFunction, [loadMap, key, val]));
    }
    return module.block(children);
}

function buildMappingGet(wasm:Module module, Scaffold scaffold, bir:MappingGetInsn insn) returns wasm:Expression {
    wasm:Expression mapping = module.refAs("ref.as_non_null", buildLoad(module, insn.operands[0]));
    wasm:Expression key = buildString(module, scaffold, insn.operands[1]);
    return buildStore(module, insn.result, buildRuntimeFunctionCall(module, mappingGetFunction, [mapping, key]));
}

function buildMappingSet(wasm:Module module, Scaffold scaffold, bir:MappingSetInsn insn) returns wasm:Expression {
    wasm:Expression mapping = module.refAs("ref.as_non_null", buildLoad(module, insn.operands[0]));
    wasm:Expression key = buildString(module, scaffold, insn.operands[1]);    
    wasm:Expression val = buildRepr(module, scaffold, insn.operands[2], REPR_ANY);
    return buildRuntimeFunctionCall(module, mappingSetFunction, [mapping, key, val]);
}
