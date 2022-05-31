import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;
import wso2/nballerina.types as t;

final readonly & map<wasm:Op> signedInt32CompareOps = {
    "<": "i32.lt_s",
    "<=": "i32.le_s",
    ">": "i32.gt_s",
    ">=": "i32.ge_s"
};

final readonly & map<bir:OrderOp> flippedOrderOps = {
    ">=": "<=",
    ">" : "<",
    "<=": ">=",
    "<" : ">"
};

final readonly & map<wasm:Op> signedInt64CompareOps = {
    "<": "i64.lt_s",
    "<=": "i64.le_s",
    ">": "i64.gt_s",
    ">=": "i64.ge_s",
    "==": "i64.eq",
    "!=": "i64.ne"
};

final readonly & map<wasm:Op> floatCompareOps = {
    "<": "f64.lt",
    "<=": "f64.le",
    ">": "f64.gt",
    ">=": "f64.ge",
    "==": "f64.eq",
    "!=": "f64.ne"
};

const COMPARE_LT = 0;
const COMPARE_LE = 1;
const COMPARE_GT = 2;
const COMPARE_GE = 3;

final readonly & map<int> stringCompareOp = {
    "<": COMPARE_LT,
    "<=": COMPARE_LE,
    ">": COMPARE_GT,
    ">=": COMPARE_GE
};

function buildCompare(wasm:Module module, Scaffold scaffold, bir:CompareInsn insn) returns wasm:Expression {
    bir:Operand lhs = insn.operands[0];
    bir:Operand rhs = insn.operands[1];
    var [lhsRepr, lhsValue] = buildReprValue(module, scaffold, lhs);
    var [rhsRepr, rhsValue] = buildReprValue(module, scaffold, rhs);
    bir:Register result = insn.result;
    if lhsRepr is TaggedRepr && rhsRepr is TaggedRepr {
        t:UniformTypeBitSet subtype = lhsRepr.subtype | rhsRepr.subtype;
        if subtype == t:STRING {
            return buildCompareString(module, <int>stringCompareOp[insn.op], lhsValue, rhsValue, result);
        }
        else {
            t:UniformTypeBitSet orderTypeMinusNil = subtype & ~t:NIL;
            if t:isSubtypeSimple(orderTypeMinusNil, t:LIST) {
                return module.localSet(insn.result.number, module.call("array_compare", [lhsValue, rhsValue, module.addConst({ i32: <int>stringCompareOp[insn.op] })], "i32"));
            }
            else if orderTypeMinusNil == t:INT {
                return module.localSet(insn.result.number, module.call("opt_int_compare", [lhsValue, rhsValue, module.addConst({ i32: <int>stringCompareOp[insn.op] })], "i32"));
            }
            else if orderTypeMinusNil == t:FLOAT {
                return module.localSet(insn.result.number, module.call("opt_float_compare", [lhsValue, rhsValue, module.addConst({ i32: <int>stringCompareOp[insn.op] })], "i32"));
            }
            else if orderTypeMinusNil == t:STRING {
                return module.localSet(insn.result.number, module.call("opt_string_compare", [lhsValue, rhsValue, module.addConst({ i32: <int>stringCompareOp[insn.op] })], "i32"));
            }
            else if orderTypeMinusNil == t:BOOLEAN {
                return module.localSet(insn.result.number, module.call("opt_boolean_compare", [lhsValue, rhsValue, module.addConst({ i32: <int>stringCompareOp[insn.op] })], "i32"));
            }
        }
        panic error("not in the subset");
    }
    else {
        match [lhsRepr.base, rhsRepr.base] {
            [BASE_REPR_TAGGED, BASE_REPR_INT] => {
                return buildCompareTaggedInt(module, scaffold, buildIntCompareOp(insn.op), lhsValue, rhsValue, result);
            }
            [BASE_REPR_INT, BASE_REPR_TAGGED] => {
                return buildCompareTaggedInt(module, scaffold, buildIntCompareOp(flippedOrderOps.get(insn.op)), rhsValue, lhsValue, result);
            }
            [BASE_REPR_TAGGED, BASE_REPR_BOOLEAN] => {
                return buildCompareTaggedBoolean(module, scaffold, buildBooleanCompareOp(insn.op), lhsValue, rhsValue, result);
            }
            [BASE_REPR_BOOLEAN, BASE_REPR_TAGGED] => {
                return buildCompareTaggedBoolean(module, scaffold, buildBooleanCompareOp(flippedOrderOps.get(insn.op)), rhsValue, lhsValue, result);
            }
            [BASE_REPR_INT, BASE_REPR_INT] => {
                return buildCompareInt(module, buildIntCompareOp(insn.op), lhsValue, rhsValue, result);
            }
            [BASE_REPR_BOOLEAN, BASE_REPR_BOOLEAN] => {
                return buildCompareInt(module, buildBooleanCompareOp(insn.op), lhsValue, rhsValue, result);
            }
            [BASE_REPR_TAGGED, BASE_REPR_FLOAT] => {
                return buildCompareTaggedFloat(module, scaffold, buildFloatCompareOp(insn.op), lhsValue, rhsValue, result);
            }
            [BASE_REPR_FLOAT, BASE_REPR_TAGGED] => {
                return buildCompareTaggedFloat(module, scaffold, buildFloatCompareOp(flippedOrderOps.get(insn.op)), rhsValue, lhsValue, result);
            }
            [BASE_REPR_FLOAT, BASE_REPR_FLOAT] => {
                return buildCompareFloat(module, buildFloatCompareOp(insn.op), lhsValue, rhsValue, result);
            }
            _ => {
                panic error("no way to compare");
            }
        }
    }
}

function buildCompareInt(wasm:Module module, wasm:Op op, wasm:Expression lhs, wasm:Expression rhs, bir:Register result) returns wasm:Expression {
    return module.localSet(result.number, module.binary(op, lhs, rhs));
}

function buildCompareFloat(wasm:Module module, wasm:Op op, wasm:Expression lhs, wasm:Expression rhs, bir:Register result) returns wasm:Expression {
    return module.localSet(result.number, module.binary(op, lhs, rhs));
}

function buildCompareString(wasm:Module module, int op, wasm:Expression lhs, wasm:Expression rhs, bir:Register result) returns wasm:Expression {
    return module.localSet(result.number, module.call(stringCompFunction.name, [module.addConst({ i32: op }), buildStringRef(module, lhs), buildStringRef(module, rhs)], stringCompFunction.returnType));
}

function buildIntCompareOp(bir:OrderOp op) returns wasm:Op {
    return <wasm:Op>signedInt64CompareOps[op];
}

function buildFloatCompareOp(bir:OrderOp op) returns wasm:Op {
    return <wasm:Op>floatCompareOps[op];
}

function buildBooleanCompareOp(bir:OrderOp op) returns wasm:Op {
    return <wasm:Op>signedInt32CompareOps[op];
}

function buildCompareTaggedBoolean(wasm:Module module, Scaffold scaffold, wasm:Op op, wasm:Expression lhs, wasm:Expression rhs, bir:Register result) returns wasm:Expression {
    wasm:Expression lhsUntagged = buildUntagBoolean(module, lhs);
    return buildCompareInt(module, op, lhsUntagged, rhs, result);
}

function buildCompareTaggedInt(wasm:Module module, Scaffold scaffold, wasm:Op op, wasm:Expression lhs, wasm:Expression rhs, bir:Register result) returns wasm:Expression {
    wasm:Expression isType = buildIsType(module, lhs, TYPE_INT);
    wasm:Expression trueBody = buildCompareInt(module, op, buildUntagInt(module, lhs), rhs, result);
    wasm:Expression falseBody = module.localSet(result.number, module.addConst({ i32: 0 }));
    return module.addIf(isType, trueBody, falseBody);
}

function buildCompareTaggedFloat(wasm:Module module, Scaffold scaffold, wasm:Op op, wasm:Expression lhs, wasm:Expression rhs, bir:Register result) returns wasm:Expression {
    wasm:Expression lhsUntagged = buildUntagFloat(module, lhs);
    return buildCompareFloat(module, op, lhsUntagged, rhs, result);
}
