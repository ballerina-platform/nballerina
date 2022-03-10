import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;

function buildCompare(wasm:Module module, Scaffold scaffold, bir:CompareInsn insn) returns wasm:Expression {
    bir:Operand lhs = insn.operands[0];
    bir:Operand rhs = insn.operands[1];
    var [lhsRepr, lhsValue] = buildReprValue(module, scaffold, lhs);
    var [rhsRepr, rhsValue] = buildReprValue(module, scaffold, rhs);
    bir:Register result = insn.result;
    match [lhsRepr.base, rhsRepr.base] {
        [BASE_REPR_TAGGED, BASE_REPR_INT] => {
            return buildCompareTaggedInt(module, scaffold, buildIntCompareOp(insn.op), lhsValue, rhsValue, result);
        }
        [BASE_REPR_INT, BASE_REPR_TAGGED] => {
            return buildCompareTaggedInt(module, scaffold, buildIntCompareOp(flipped32OrderOps.get(insn.op)), rhsValue, lhsValue, result);
        }
        [BASE_REPR_TAGGED, BASE_REPR_BOOLEAN] => {
            return buildCompareTaggedBoolean(module, scaffold, buildBooleanCompareOp(insn.op), lhsValue, rhsValue, result);
        }
        [BASE_REPR_BOOLEAN, BASE_REPR_TAGGED] => {
            return buildCompareTaggedBoolean(module, scaffold, buildBooleanCompareOp(flipped32OrderOps.get(insn.op)), rhsValue, lhsValue, result);
        }
        [BASE_REPR_INT, BASE_REPR_INT] => {
            return buildCompareInt(module, buildIntCompareOp(insn.op), lhsValue, rhsValue, result);
        }
        [BASE_REPR_BOOLEAN, BASE_REPR_BOOLEAN] => {
            return buildCompareInt(module, buildBooleanCompareOp(insn.op), lhsValue, rhsValue, result);
        }
        _ => {
            panic error("no way to compare");
        }
    }
}

function buildCompareInt(wasm:Module module, wasm:Op op, wasm:Expression lhs, wasm:Expression rhs, bir:Register result) returns wasm:Expression {
    return module.localSet(result.number, module.binary(op, lhs, rhs));
}

function buildIntCompareOp(bir:OrderOp op) returns wasm:Op {
    return <wasm:Op>signedInt64CompareOps[op];
}

function buildBooleanCompareOp(bir:OrderOp op) returns wasm:Op {
    return <wasm:Op>signedInt32CompareOps[op];
}

function buildCompareTaggedBoolean(wasm:Module module, Scaffold scaffold, wasm:Op op, wasm:Expression lhs, wasm:Expression rhs, bir:Register result) returns wasm:Expression {
    wasm:Expression lhsUntagged = buildUntagBoolean(module, lhs);
    return buildCompareInt(module, op, lhsUntagged, rhs, result);
}

function buildCompareTaggedInt(wasm:Module module, Scaffold scaffold, wasm:Op op, wasm:Expression lhs, wasm:Expression rhs, bir:Register result) returns wasm:Expression {
    wasm:Expression lhsUntagged = buildUntagInt(module, scaffold, lhs);
    return buildCompareInt(module, op, lhsUntagged, rhs, result);
}
