import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;
import wso2/nballerina.types as t;

final RuntimeModule listMod = {
    file: "list.wat",
    priority: 4
};

final RuntimeModule mapMod = {
    file: "map.wat",
    priority: 5
};

final RuntimeFunction listCreateFunction = {
    name: "_bal_list_create",
    returnType: { base: LIST_TYPE },
    rtModule: listMod
};

final RuntimeFunction listSetFunction = {
    name: "_bal_list_set",
    returnType: "None",
    rtModule: listMod
};

final RuntimeFunction listGetFunction = {
    name: "_bal_list_get",
    returnType: "eqref",
    rtModule: listMod
};

final RuntimeFunction listFillingGetFunction = {
    name: "_bal_list_filling_get",
    returnType: "eqref",
    rtModule: listMod
};

final RuntimeFunction mappingConstructFunction = {
    name: "_bal_mapping_construct",
    returnType: { base: "Map" },
    rtModule: mapMod
};

final RuntimeFunction mappingInitMemberFunction = {
    name: "_bal_mapping_init_member",
    returnType: "None",
    rtModule: mapMod
};

final RuntimeFunction mappingSetFunction = {
    name: "_bal_mapping_set",
    returnType: "None",
    rtModule: mapMod
};

final RuntimeFunction mappingIndexedSetFunction = {
    name: "_bal_mapping_indexed_set",
    returnType: "None",
    rtModule: mapMod
};

final RuntimeFunction mappingGetFunction = {
    name: "_bal_mapping_get",
    returnType: "eqref",
    rtModule: mapMod
};

final RuntimeFunction mappingFillingGetFunction = {
    name: "_bal_mapping_filling_get",
    returnType: "eqref",
    rtModule: mapMod
};

final RuntimeFunction mappingIndexedGetFunction = {
    name: "_bal_mapping_indexed_get",
    returnType: "eqref",
    rtModule: mapMod
};

type ListRepr record {|
    t:SemType rest;
    wasm:Expression default;
|};

function buildListConstruct(wasm:Module module, Scaffold scaffold, bir:ListConstructInsn insn) returns wasm:Expression {
    final int length = insn.operands.length();
    t:SemType listType = insn.result.semType;
    wasm:Expression inherent = scaffold.getInherentType(listType);
    wasm:Expression list = buildRuntimeFunctionCall(module, scaffold.getComponent(), listCreateFunction, [
                                                                                module.addConst({ i64: length }), 
                                                                                module.refAs("ref.as_non_null", inherent)
                                                                               ]);                      
    wasm:Expression storeList = buildStore(module, insn.result, list);
    wasm:Expression[] children = [storeList];
    wasm:Expression loadList = module.refAs("ref.as_non_null", buildLoad(module, insn.result));
    foreach int i in 0 ..< length {
        wasm:Expression val = buildWideRepr(module, scaffold, insn.operands[i], REPR_ANY, insn.result.semType);
        wasm:Expression index = module.addConst({ i64: i });
        wasm:Expression setVal = buildRuntimeFunctionCall(module, scaffold.getComponent(), listSetFunction, [loadList, val, index]);
        children.push(setVal);
    }
    return module.block(children);
}

function buildListGet(wasm:Module module, Scaffold scaffold, bir:ListGetInsn insn) returns wasm:Expression {
    wasm:Expression listOperand = buildLoad(module, insn.operands[0]);
    wasm:Expression indexOperand = module.unary("i32.wrap_i64", buildRepr(module, scaffold, insn.operands[1], REPR_INT));
    RuntimeFunction rf = insn.fill ? listFillingGetFunction : listGetFunction;
    wasm:Expression call = buildRuntimeFunctionCall(module, scaffold.getComponent(), rf, [listOperand, indexOperand]);
    Repr repr = semTypeRepr(insn.result.semType);
    if repr !is TaggedRepr {
        return buildStore(module, insn.result, buildUntagged(module, scaffold, call, repr));
    }
    return buildStore(module, insn.result, maybeCast(module, scaffold, call, repr));
}

function buildListSet(wasm:Module module, Scaffold scaffold, bir:ListSetInsn insn) returns wasm:Expression {
    wasm:Expression listOperand = buildRepr(module, scaffold, insn.operands[0], REPR_LIST);
    wasm:Expression indexOperand = buildRepr(module, scaffold, insn.operands[1], REPR_INT);
    wasm:Expression newMemberOperand = buildRepr(module, scaffold, insn.operands[2], REPR_ANY);
    return buildRuntimeFunctionCall(module, scaffold.getComponent(), listSetFunction, [listOperand, newMemberOperand, indexOperand]);
}

function buildMappingConstruct(wasm:Module module, Scaffold scaffold, bir:MappingConstructInsn insn) returns wasm:Expression {
    int length = insn.fieldNames.length();
    t:MappingAtomicType mat = <t:MappingAtomicType>t:mappingAtomicTypeRw(scaffold.getTypeContext(), insn.result.semType);  
    wasm:Expression desc = scaffold.getInherentType(insn.result.semType);
    wasm:Expression mapping = buildRuntimeFunctionCall(module, scaffold.getComponent(), mappingConstructFunction, [
                                                                                            module.addConst({ i32: length }), 
                                                                                            module.refAs("ref.as_non_null", desc)
                                                                                         ]);
    wasm:Expression mapSet = buildStore(module, insn.result, mapping);
    wasm:Expression[] children = [mapSet];
    wasm:Expression loadMap = module.refAs("ref.as_non_null", buildLoad(module, insn.result));
    foreach var [fieldName, operand] in mappingOrderFields(mat, insn.fieldNames, insn.operands) {
        wasm:Expression key = buildConstString(module, scaffold.getComponent(), fieldName);
        wasm:Expression val = buildRepr(module, scaffold, operand, REPR_ANY);
        children.push(buildRuntimeFunctionCall(module, scaffold.getComponent(), mappingInitMemberFunction, [loadMap, key, val]));
    }
    return module.block(children);
}

function mappingOrderFields(t:MappingAtomicType mat, string[] fieldNames, bir:Operand[] operands) returns [string, bir:Operand][] {
    int length = fieldNames.length();
    string[] requiredFieldNames = mat.names;
    int nRequiredFields = requiredFieldNames.length();
    if nRequiredFields != 0 {
        map<int> requiredFieldIndex = {};
        foreach int i in 0 ..< nRequiredFields {
            requiredFieldIndex[requiredFieldNames[i]] = i;
        }
        return
            from int i in 0 ..< length
            let string fieldName = fieldNames[i]
            let int sortIndex = requiredFieldIndex[fieldName] ?: nRequiredFields + i
            order by sortIndex
            select [fieldName, operands[i]];
    }
    else {
        return from int i in 0 ..< length select [fieldNames[i], operands[i]];
    }    
}

function buildMappingGet(wasm:Module module, Scaffold scaffold, bir:MappingGetInsn insn) returns wasm:Expression {
    bir:Register mappingReg = insn.operands[0];
    bir:StringOperand keyOperand = insn.operands[1];
    wasm:Expression mapping = module.refAs("ref.as_non_null", buildLoad(module, mappingReg));
    Repr repr = semTypeRepr(insn.result.semType);
    int? fieldIndex = mappingFieldIndex(scaffold.getTypeContext(), mappingReg.semType, keyOperand);
    boolean fill;
    RuntimeFunction rf;
    wasm:Expression k;
    if fieldIndex == () {
        fill = insn.name == bir:INSN_MAPPING_FILLING_GET;
        rf = fill ? mappingFillingGetFunction : mappingGetFunction;
        k = buildString(module, scaffold, keyOperand);
    }
    else {
        fill = false;
        rf = mappingIndexedGetFunction;
        k = module.addConst({ i32: fieldIndex });
    }
    wasm:Expression call = buildRuntimeFunctionCall(module, scaffold.getComponent(), rf, [mapping, k]);
    if repr !is TaggedRepr {
        return buildStore(module, insn.result, buildUntagged(module, scaffold, call, repr));
    }
    return buildStore(module, insn.result, maybeCast(module, scaffold, call, repr));
}

function buildMappingSet(wasm:Module module, Scaffold scaffold, bir:MappingSetInsn insn) returns wasm:Expression {
    bir:Register mappingReg = insn.operands[0];
    bir:StringOperand keyOperand = insn.operands[1];
    wasm:Expression mapping = module.refAs("ref.as_non_null", buildLoad(module, mappingReg));
    wasm:Expression key = buildString(module, scaffold, insn.operands[1]);    
    wasm:Expression val = buildRepr(module, scaffold, insn.operands[2], REPR_ANY);
    int? fieldIndex = mappingFieldIndex(scaffold.getTypeContext(), mappingReg.semType, keyOperand);
    RuntimeFunction rf;
    wasm:Expression[] args = [mapping];
    if fieldIndex != () {
        rf = mappingIndexedSetFunction;
        args.push(val, module.addConst({ i32: fieldIndex }));
    }
    else {
        args.push(key, val);
        rf = mappingSetFunction;
    }
    return buildRuntimeFunctionCall(module, scaffold.getComponent(), rf, args);
}

function mappingFieldIndex(t:Context tc, t:SemType mappingType, bir:StringOperand keyOperand) returns int? {
    string? k = t:singleStringShape(keyOperand.semType);
    if k is string {
        t:MappingAtomicType? mat = t:mappingAtomicTypeRw(tc, mappingType);
        if mat != () && mat.rest == t:NEVER {
            return mat.names.indexOf(k);
        }
    }
    return ();
}
