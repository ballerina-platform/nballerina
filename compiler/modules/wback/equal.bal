import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;
import wso2/nballerina.types as t;

type CmpEqOp "ne"|"eq";

function buildEquality(wasm:Module module, Scaffold scaffold, bir:EqualityInsn insn) returns wasm:Expression {
    var [lhsRepr, lhsValue] = buildReprValue(module, scaffold, insn.operands[0]);
    var [rhsRepr, rhsValue] = buildReprValue(module, scaffold, insn.operands[1]);
    boolean exact = insn.op.length() == 3; // either "===" or "!=="
    if lhsRepr is TaggedRepr && lhsRepr.subtype == t:STRING {
        exact = false;
    }
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
        [BASE_REPR_TAGGED, BASE_REPR_TAGGED] => {
            return buildEqualTaggedTagged(module, scaffold, exact, op, rhsValue, lhsValue, result);
        }
        [BASE_REPR_BOOLEAN, BASE_REPR_BOOLEAN]
        | [BASE_REPR_INT, BASE_REPR_INT] => {
            string operation = lhsRepr.base == BASE_REPR_BOOLEAN ? "i32." + op: "i64." + op;
            return module.localSet(result.number, module.binary(<wasm:Op>operation, lhsValue, rhsValue));
        }
    }
    panic error("equality with two different untagged representations");
}

function buildEqualTaggedBoolean(wasm:Module module, Scaffold scaffold, CmpEqOp op, wasm:Expression tagged, wasm:Expression untagged, bir:Register result) returns wasm:Expression {
    wasm:Op operation =  op == "eq" ? "i32.eq" : "i32.ne";
    wasm:Expression isTypeBoolean = buildIsType(module, tagged, TYPE_BOOLEAN);
    wasm:Expression trueBody = module.localSet(result.number, module.binary(operation, untagged, buildUntagBoolean(module, tagged)));
    wasm:Expression falseBody = module.localSet(result.number, module.addConst({ i32: op == "eq" ? 0 : 1}));
    return module.addIf(isTypeBoolean, trueBody, falseBody);
}

function buildEqualTaggedInt(wasm:Module module, Scaffold scaffold, CmpEqOp op, wasm:Expression tagged, wasm:Expression untagged, bir:Register result) returns wasm:Expression {
    wasm:Op operation =  op == "eq" ? "i64.eq" : "i64.ne";
    wasm:Expression isTypeInt = buildIsType(module, tagged, TYPE_INT);
    wasm:Expression trueBody = module.localSet(result.number, module.binary(operation, buildUntagInt(module, scaffold, tagged), untagged));
    wasm:Expression falseBody = module.localSet(result.number, module.addConst({ i32: op == "ne" ? 1: 0 }));
    return module.addIf(isTypeInt, trueBody, falseBody);
}

function buildEqualTaggedTagged(wasm:Module module, Scaffold scaffold, boolean exact, CmpEqOp op, wasm:Expression rhs, wasm:Expression lhs, bir:Register result) returns wasm:Expression {
    if exact {
        wasm:Expression refEq = module.refEq(lhs, rhs);
        if op != "eq" {
            refEq = module.binary("i32.xor", module.addConst({ i32: 1 }), refEq);
        }
        return module.localSet(result.number, refEq);
    }
    else {
        wasm:Op operation32 =  op == "eq" ? "i32.eq" : "i32.ne";
        wasm:Op operation64 =  op == "eq" ? "i64.eq" : "i64.ne";
        wasm:Expression isTypeBoolean = buildIsType(module, lhs, TYPE_BOOLEAN);
        wasm:Expression isTypeInt = buildIsType(module, lhs, TYPE_INT);
        wasm:Expression isTypeStr = buildIsType(module, lhs, TYPE_STRING);
        wasm:Expression typeCheck = module.binary("i32.eq", module.call("get_type", [rhs], "i32"), module.call("get_type", [lhs], "i32"));
        wasm:Expression intBody = module.localSet(result.number, module.binary(operation64, buildUntagInt(module, scaffold, rhs), buildUntagInt(module, scaffold, lhs)));
        wasm:Expression strBody = module.localSet(result.number, buildEqualString(module, op, lhs, rhs));
        wasm:Expression booleanBody = module.localSet(result.number, module.binary(operation32, buildUntagBoolean(module, rhs), buildUntagBoolean(module, lhs)));
        wasm:Expression nullBody = module.localSet(result.number, module.addConst({ i32: op == "eq" ? 1 : 0 }));
        wasm:Expression falseBody = module.localSet(result.number, module.addConst({ i32: op == "ne" ? 1 : 0 }));
        return module.addIf(typeCheck, module.addIf(isTypeInt, intBody, module.addIf(isTypeBoolean, booleanBody, module.addIf(isTypeStr, strBody, nullBody))), falseBody);
    }
}

function buildEqualString(wasm:Module module, CmpEqOp op, wasm:Expression lhs, wasm:Expression rhs) returns wasm:Expression {
    wasm:Expression lhsRef = buildStringRef(module, lhs);
    wasm:Expression rhsRef = buildStringRef(module, rhs);
    wasm:Expression call = module.call("str_eq", [lhsRef, rhsRef], "i32");
    if op == "ne" {
        return module.binary("i32.xor", module.addConst({ i32: 1 }), call);
    }
    return call;
}
