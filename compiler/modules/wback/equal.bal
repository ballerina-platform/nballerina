import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;

type CmpEqOp "ne"|"eq";

function buildEquality(wasm:Module module, Scaffold scaffold, bir:EqualityInsn insn) returns wasm:Expression {
    var [lhsRepr, lhsValue] = buildReprValue(module, scaffold, insn.operands[0]);
    var [rhsRepr, rhsValue] = buildReprValue(module, scaffold, insn.operands[1]);
    CmpEqOp op = insn.op[0] == "!" ?  "ne" : "eq";
    bir:Register result = insn.result;
    match [lhsRepr.base, rhsRepr.base] {
        [BASE_REPR_TAGGED, BASE_REPR_BOOLEAN] => {
            return buildEqualTaggedBoolean(module, scaffold, op, lhsValue, rhsValue, result);
        }
        [BASE_REPR_BOOLEAN, BASE_REPR_TAGGED] => {
            return buildEqualTaggedBoolean(module, scaffold, op, rhsValue, lhsValue, result);
        }
        [BASE_REPR_TAGGED, BASE_REPR_INT] => {
            return buildEqualTaggedInt(module, scaffold, op, lhsValue, rhsValue, result);
        }
        [BASE_REPR_INT, BASE_REPR_TAGGED] => {
            return buildEqualTaggedInt(module, scaffold, op, rhsValue, lhsValue, result);
        }
        [BASE_REPR_BOOLEAN, BASE_REPR_BOOLEAN]
        | [BASE_REPR_INT, BASE_REPR_INT]
        | [BASE_REPR_TAGGED, BASE_REPR_TAGGED] => {
            string operation = lhsRepr.base == BASE_REPR_BOOLEAN ? "i32." + op: "i64." + op;
            return module.localSet(result.number, module.binary(<wasm:Op>operation, lhsValue, rhsValue));
        }
    }
    panic error("equality with two different untagged representations");
}

function buildEqualTaggedBoolean(wasm:Module module, Scaffold scaffold, CmpEqOp op, wasm:Expression tagged, wasm:Expression untagged, bir:Register result) returns wasm:Expression {
    wasm:Op operation =  op == "eq" ? "i64.eq" : "i64.ne";
    return module.localSet(result.number, module.binary(operation, tagged, buildTaggedBoolean(module, untagged)));
}

function buildEqualTaggedInt(wasm:Module module, Scaffold scaffold, CmpEqOp op, wasm:Expression tagged, wasm:Expression untagged, bir:Register result) returns wasm:Expression {
    wasm:Op operation =  op == "eq" ? "i64.eq" : "i64.ne";
    wasm:Expression falseBody = module.localSet(result.number, module.addConst({ i32: op =="ne" ? 1: 0 }));
    wasm:Expression trueBody = module.localSet(result.number, module.binary(operation, buildUntagInt(module, scaffold, tagged), untagged));
    return module.addIf(buildHasTag(module, tagged, TAG_INT), trueBody, falseBody);
}
