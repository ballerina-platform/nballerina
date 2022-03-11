import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.wasm;

function buildTypeCast(wasm:Module module, Scaffold scaffold, bir:TypeCastInsn insn) returns wasm:Expression {
    var [repr, val] = buildReprValue(module, scaffold, insn.operand);
    if repr.base != BASE_REPR_TAGGED {
        panic error("cast from untagged value"); // should not happen in subset 2
    }
    if insn.semType === t:BOOLEAN {
        return buildTypeTestedValue(module, scaffold, val, buildTruncateBoolean(module, buildUntagBoolean(module, val), insn.result), TAG_BOOLEAN);
    }
    else if insn.semType === t:INT {
        return buildTypeTestedValue(module, scaffold, val, module.localSet(insn.result.number, buildUntagInt(module, scaffold, val)), TAG_INT);
    }
    else {
        panic error("type cast other than to int or boolean"); // should not happen in subset 2
    }
}

function buildTypeTestedValue(wasm:Module module, Scaffold scaffold, wasm:Expression tagged, wasm:Expression converted, int tag) returns wasm:Expression {
    scaffold.addExceptionTag("bad-conversion");
    return module.addIf(buildHasTag(module, tagged, tag), converted, module.throw("bad-conversion", [], 0));
}

