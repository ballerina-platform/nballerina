import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.wasm;

function buildTypeCast(wasm:Module module, Scaffold scaffold, bir:TypeCastInsn insn) returns wasm:Expression {
    var [_, val] = buildReprValue(module, scaffold, insn.operand);
    t:SemType semType = insn.semType;
    Repr repr = semTypeRepr(semType);
    if repr === REPR_BOOLEAN {
        return buildTypeTestedValue(module, scaffold, val, module.localSet(insn.result.number, buildUntagBoolean(module, val)), TYPE_BOOLEAN);
    }
    else if repr === REPR_INT {
        return buildTypeTestedValue(module, scaffold, val, module.localSet(insn.result.number, buildUntagInt(module, scaffold, val)), TYPE_INT);
    }
    else if repr === REPR_MAPPING  {
        return buildTypeTestedValue(module, scaffold, val, module.localSet(insn.result.number, buildCast(module, scaffold, val, MAP_TYPE)), TYPE_MAP);
    }
    else if repr === REPR_LIST  {
        return buildTypeTestedValue(module, scaffold, val, module.localSet(insn.result.number, buildCast(module, scaffold, val, LIST_TYPE)), TYPE_LIST);
    }
    else {
        return module.localSet(insn.result.number, val);
    }
}

function buildTypeTestedValue(wasm:Module module, Scaffold scaffold, wasm:Expression tagged, wasm:Expression converted, int ty) returns wasm:Expression {
    scaffold.addExceptionTag(BAD_CONVERSION_TAG);
    return module.addIf(buildIsType(module, tagged, ty), converted, module.throw(BAD_CONVERSION_TAG));
}

