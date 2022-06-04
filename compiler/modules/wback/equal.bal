import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;
import wso2/nballerina.types as t;

type CmpEqOp "ne"|"eq";

final RuntimeFunction eqFunction = {
    name: "_bal_eq",
    returnType: "i32"
};

final RuntimeFunction exactEqFunction = {
    name: "_bal_exact_eq",
    returnType: "i32"
};

final RuntimeFunction floatEqFunction = {
    name: "_bal_float_eq",
    returnType: "i32"
};

final RuntimeFunction floatExactEqFunction = {
    name: "_bal_float_exact_eq",
    returnType: "i32"
};

final RuntimeFunction stringEqFunction = {
    name: "_bal_string_eq",
    returnType: "i32"
};

final readonly & map<map<wasm:Op>> integerCmpEqOp = {
    "i32": { "eq": "i32.eq", "ne": "i32.ne" },
    "i64": { "eq": "i64.eq", "ne": "i64.ne" }
};

function buildEquality(wasm:Module module, Scaffold scaffold, bir:EqualityInsn insn) returns wasm:Expression {
    var [lhsRepr, lhsValue] = buildReprValue(module, scaffold, insn.operands[0]);
    var [rhsRepr, rhsValue] = buildReprValue(module, scaffold, insn.operands[1]);
    boolean exact = insn.op.length() == 3; // either "===" or "!=="
    CmpEqOp op = insn.op[0] == "!" ?  "ne" : "eq";
    bir:Register result = insn.result;
    match [lhsRepr.base, rhsRepr.base] {
        [BASE_REPR_TAGGED, BASE_REPR_TAGGED] => {
            if reprIsString(lhsRepr) && reprIsString(rhsRepr) {
                return buildEqualStringString(module, op, lhsValue, rhsValue, result);
            }
            else {
                return buildEqualTaggedTagged(module, exact, op, rhsValue, lhsValue, result);
            }
        }
        [BASE_REPR_TAGGED, BASE_REPR_BOOLEAN] => {
            return buildEqualTaggedBoolean(module, op, lhsValue, rhsValue, result);
        }
        [BASE_REPR_BOOLEAN, BASE_REPR_TAGGED] => {
            return buildEqualTaggedBoolean(module, op, rhsValue, lhsValue, result);
        }
        [BASE_REPR_TAGGED, BASE_REPR_INT] => {
            return buildEqualTaggedInt(module, op, lhsValue, rhsValue, result);
        }
        [BASE_REPR_INT, BASE_REPR_TAGGED] => {
            return buildEqualTaggedInt(module, op, rhsValue, lhsValue, result);
        }
        [BASE_REPR_TAGGED, BASE_REPR_FLOAT] => {
            return buildEqualTaggedFloat(module, op, exact, lhsValue, rhsValue, result);
        }
        [BASE_REPR_FLOAT, BASE_REPR_TAGGED] => {
            return buildEqualTaggedFloat(module, op, exact, rhsValue, lhsValue, result);
        }
        [BASE_REPR_FLOAT, BASE_REPR_FLOAT] => {
            return buildEqualFloat(module, op, exact, rhsValue, lhsValue, result);
        }
        [BASE_REPR_BOOLEAN, BASE_REPR_BOOLEAN]
        | [BASE_REPR_INT, BASE_REPR_INT]  => {
            wasm:Op operation = integerCmpEqOp.get(lhsRepr.wasm.toString()).get(op);
            return buildStore(module, result, module.binary(operation, lhsValue, rhsValue));
        }
    }
    panic error("equality with two different untagged representations");
}

function reprIsString(Repr repr) returns boolean {
    return repr is TaggedRepr && repr.subtype == t:STRING;
}

function buildEqualTaggedBoolean(wasm:Module module, CmpEqOp op, wasm:Expression tagged, wasm:Expression untagged, bir:Register result) returns wasm:Expression {
    wasm:Op operation = op == "eq" ? "i32.eq" : "i32.ne";
    wasm:Expression isBoolean = buildIsType(module, tagged, TYPE_BOOLEAN);
    wasm:Expression trueBody = buildStore(module, result, module.binary(operation, untagged, buildUntagBoolean(module, tagged)));
    wasm:Expression falseBody = buildStore(module, result, module.addConst({ i32: op == "eq" ? 0 : 1}));
    return module.addIf(isBoolean, trueBody, falseBody);
}

function buildEqualTaggedInt(wasm:Module module, CmpEqOp op, wasm:Expression tagged, wasm:Expression untagged, bir:Register result) returns wasm:Expression {
    wasm:Op operation = op == "eq" ? "i64.eq" : "i64.ne";
    wasm:Expression isInt = buildIsType(module, tagged, TYPE_INT);
    wasm:Expression trueBody = buildStore(module, result, module.binary(operation, buildUntagInt(module, tagged), untagged));
    wasm:Expression falseBody = buildStore(module, result, module.addConst({ i32: op == "eq" ?  0 : 1 }));
    return module.addIf(isInt, trueBody, falseBody);
}

function buildEqualTaggedFloat(wasm:Module module, CmpEqOp op, boolean exact, wasm:Expression tagged, wasm:Expression untagged, bir:Register result) returns wasm:Expression {
    wasm:Expression isFloat = buildIsType(module, tagged, TYPE_FLOAT);
    wasm:Expression trueBody = buildEqualFloat(module, op, exact, buildUntagFloat(module, tagged), untagged, result);
    wasm:Expression falseBody = buildStore(module, result, module.addConst({ i32: op == "eq" ? 0 : 1 }));
    return module.addIf(isFloat, trueBody, falseBody);
}

function buildEqualFloat(wasm:Module module, CmpEqOp op, boolean exact, wasm:Expression lhs, wasm:Expression rhs, bir:Register result) returns wasm:Expression {
    RuntimeFunction func = exact ? floatExactEqFunction : floatEqFunction;
    wasm:Expression eq =  buildRuntimeFunctionCall(module, func, [lhs, rhs]);
    if op != "eq" {
        eq = module.binary("i32.xor", eq, module.addConst({ i32: 1 }));
    }
    return buildStore(module, result, eq);
}

function buildEqualStringString(wasm:Module module, CmpEqOp op, wasm:Expression lhs, wasm:Expression rhs, bir:Register result) returns wasm:Expression {
    RuntimeFunction func = stringEqFunction;
    wasm:Expression eq =  buildRuntimeFunctionCall(module, func, [lhs, rhs]);
    if op != "eq" {
        eq = module.binary("i32.xor", eq, module.addConst({ i32: 1 }));
    }
    return buildStore(module, result, eq);
}

function buildEqualTaggedTagged(wasm:Module module, boolean exact, CmpEqOp op, wasm:Expression rhs, wasm:Expression lhs, bir:Register result) returns wasm:Expression {
    RuntimeFunction func = exact ? exactEqFunction : eqFunction;
    wasm:Expression eq =  buildRuntimeFunctionCall(module, func, [lhs, rhs]);
    if op != "eq" {
        eq = module.binary("i32.xor", module.addConst({ i32: 1 }), eq);
    }
    return buildStore(module, result, eq);
}
