import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;
import wso2/nballerina.types as t;
import ballerina/io;

type CmpEqOp "ne"|"eq";

final RuntimeFunction equalTaggedTaggedFunction = {
    name: "tagged_equality",
    returnType: "i32"
};

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
        [BASE_REPR_TAGGED, BASE_REPR_FLOAT] => {
            return buildEqualTaggedFloat(module, scaffold, op, lhsValue, rhsValue, result);
        }
        [BASE_REPR_FLOAT, BASE_REPR_TAGGED] => {
            return buildEqualTaggedFloat(module, scaffold, op, rhsValue, lhsValue, result);
        }
        [BASE_REPR_BOOLEAN, BASE_REPR_BOOLEAN]
        | [BASE_REPR_INT, BASE_REPR_INT] 
        | [BASE_REPR_FLOAT, BASE_REPR_FLOAT] => {
            string operation = lhsRepr.wasm.toString() + "." +  op;
            io:println(operation);
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
    wasm:Expression trueBody = module.localSet(result.number, module.binary(operation, buildUntagInt(module, tagged), untagged));
    wasm:Expression falseBody = module.localSet(result.number, module.addConst({ i32: op == "ne" ? 1: 0 }));
    return module.addIf(isTypeInt, trueBody, falseBody);
}

function buildEqualTaggedFloat(wasm:Module module, Scaffold scaffold, CmpEqOp op, wasm:Expression tagged, wasm:Expression untagged, bir:Register result) returns wasm:Expression {
    wasm:Op operation =  op == "eq" ? "f64.eq" : "f64.ne";
    wasm:Expression isTypeFloat = buildIsType(module, tagged, TYPE_FLOAT);
    wasm:Expression trueBody = module.localSet(result.number, module.binary(operation, buildUntagFloat(module, tagged), untagged));
    wasm:Expression falseBody = module.localSet(result.number, module.addConst({ i32: op == "ne" ? 1: 0 }));
    return module.addIf(isTypeFloat, trueBody, falseBody);
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
        var { name, returnType } = equalTaggedTaggedFunction;
        wasm:Expression eq = module.call(name, [lhs, rhs], returnType);
        if op != "eq" {
            eq = module.binary("i32.xor", module.addConst({ i32: 1 }), eq);
        }
        return module.localSet(result.number, eq);
    }
}
