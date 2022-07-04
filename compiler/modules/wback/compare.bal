import wso2/nballerina.comm.err;
import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;
import wso2/nballerina.types as t;

final readonly & map<wasm:Op> booleanPredicateOps = {
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

final readonly & map<wasm:Op> signedIntPredicateOps = {
    "<": "i64.lt_s",
    "<=": "i64.le_s",
    ">": "i64.gt_s",
    ">=": "i64.ge_s",
    "==": "i64.eq",
    "!=": "i64.ne"
};

final readonly & map<wasm:Op> floatPredicateOps = {
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

final readonly & map<int> predicateOpCode = {
    "<": COMPARE_LT,
    "<=": COMPARE_LE,
    ">": COMPARE_GT,
    ">=": COMPARE_GE
};

final RuntimeModule compareMod = {
    file: "compare.wat",
    priority: 1
};

final RuntimeFunction optIntCompareFunction = {
    name: "_bal_opt_int_compare",
    returnType: "i32",
    rtModule: compareMod
};

final RuntimeFunction optFloatCompareFunction = {
    name: "_bal_opt_float_compare",
    returnType: "i32",
    rtModule: compareMod
};

final RuntimeFunction optBooleanCompareFunction = {
    name: "_bal_opt_boolean_compare",
    returnType: "i32",
    rtModule: compareMod
};

final RuntimeFunction optStringCompareFunction = {
    name: "_bal_opt_string_compare",
    returnType: "i32",
    rtModule: compareMod
};

final RuntimeFunction arrayIntCompareFunction = {
    name: "_bal_array_int_compare",
    returnType: "i32",
    rtModule: compareMod
};

final RuntimeFunction arrayFloatCompareFunction = {
    name: "_bal_array_float_compare",
    returnType: "i32",
    rtModule: compareMod
};

final RuntimeFunction arrayBooleanCompareFunction = {
    name: "_bal_array_boolean_compare",
    returnType: "i32",
    rtModule: compareMod
};

final RuntimeFunction arrayStringCompareFunction = {
    name: "_bal_array_string_compare",
    returnType: "i32",
    rtModule: compareMod
};

final RuntimeFunction arrayListCompareFunction = {
    name: "_bal_array_list_compare",
    returnType: "i32",
    rtModule: compareMod
};

final RuntimeFunction optListCompareFunction = {
    name: "_bal_opt_list_compare",
    returnType: "i32",
    rtModule: compareMod
};

final RuntimeFunction transformCompareResultFunction = {
    name: "_bal_transform_compare_result",
    returnType: "i32",
    rtModule: compareMod
};

type TaggedCompareFunction readonly & record {|
    t:UniformTypeBitSet utCode;
    RuntimeFunction optCompareFunction;
    RuntimeFunction arrayCompareFunction;
|};

final readonly & table<TaggedCompareFunction> key(utCode) compareFunctions = table [
    { utCode: t:UT_INT, optCompareFunction: optIntCompareFunction, arrayCompareFunction: arrayIntCompareFunction },
    { utCode: t:UT_FLOAT, optCompareFunction: optFloatCompareFunction, arrayCompareFunction: arrayFloatCompareFunction },
    { utCode: t:UT_BOOLEAN, optCompareFunction: optBooleanCompareFunction, arrayCompareFunction: arrayBooleanCompareFunction },
    { utCode: t:UT_STRING, optCompareFunction: optStringCompareFunction, arrayCompareFunction: arrayStringCompareFunction }
];

function buildCompare(wasm:Module module, Scaffold scaffold, bir:CompareInsn insn) returns wasm:Expression {
    bir:Operand lhs = insn.operands[0];
    bir:Operand rhs = insn.operands[1];
    var [lhsRepr, lhsValue] = buildReprValue(module, scaffold, lhs);
    var [rhsRepr, rhsValue] = buildReprValue(module, scaffold, rhs);
    bir:Register result = insn.result;
    if lhsRepr is TaggedRepr && rhsRepr is TaggedRepr {
        t:UniformTypeBitSet subtype = lhsRepr.subtype | rhsRepr.subtype;
        int opCode = predicateOpCode.get(insn.op);
        if subtype == t:STRING {
            return buildCompareString(module, scaffold, predicateOpCode.get(insn.op), lhsValue, rhsValue, result);
        }
        else {
            t:UniformTypeBitSet orderTypeMinusNil = subtype & ~t:NIL;
            if t:isSubtypeSimple(orderTypeMinusNil, t:LIST) {
                t:Context tc = scaffold.getTypeContext();
                t:SemType lhsType = lhs.semType;
                t:SemType rhsType = rhs.semType; 
                RuntimeFunction compareFunc = getArrayCompareFunction(tc, [lhsType, rhsType]);
                return buildCompareStore(module, scaffold, opCode, 
                                         buildRuntimeFunctionCall(module, scaffold.getComponent(), compareFunc, [lhsValue, rhsValue]), 
                                         insn.result);
            }
            else {
                var orderTypeMinusNilCode = <t:UniformTypeCode>t:uniformTypeCode(orderTypeMinusNil);
                RuntimeFunction compareFunc = compareFunctions.get(orderTypeMinusNilCode).optCompareFunction;
                return buildCompareStore(module, scaffold, opCode,
                                         buildRuntimeFunctionCall(module, scaffold.getComponent(), compareFunc, [lhsValue, rhsValue]),
                                         insn.result);
            }
        }
    }
    else {
        match [lhsRepr.base, rhsRepr.base] {
            [BASE_REPR_TAGGED, BASE_REPR_INT] => {
                return buildCompareTaggedInt(module, scaffold, buildIntCompareOp(insn.op), lhsValue, rhsValue, result);
            }
            [BASE_REPR_INT, BASE_REPR_TAGGED] => {
                return buildCompareTaggedInt(module, scaffold, buildIntCompareOp(flippedOrderOps.get(insn.op)), rhsValue, lhsValue, result);
            }
            [BASE_REPR_TAGGED, BASE_REPR_FLOAT] => {
                return buildCompareTaggedFloat(module, scaffold, buildFloatCompareOp(insn.op), lhsValue, rhsValue, result);
            }
            [BASE_REPR_FLOAT, BASE_REPR_TAGGED] => {
                return buildCompareTaggedFloat(module, scaffold, buildFloatCompareOp(flippedOrderOps.get(insn.op)), rhsValue, lhsValue, result);
            }
            [BASE_REPR_TAGGED, BASE_REPR_BOOLEAN] => {
                return buildCompareTaggedBoolean(module, scaffold, buildBooleanCompareOp(insn.op), lhsValue, rhsValue, result);
            }
            [BASE_REPR_BOOLEAN, BASE_REPR_TAGGED] => {
                return buildCompareTaggedBoolean(module, scaffold, buildBooleanCompareOp(flippedOrderOps.get(insn.op)), rhsValue, lhsValue, result);
            }
            [BASE_REPR_INT, BASE_REPR_INT] => {
                return buildCompareNumeric(module, buildIntCompareOp(insn.op), lhsValue, rhsValue, result);
            }
            [BASE_REPR_BOOLEAN, BASE_REPR_BOOLEAN] => {
                return buildCompareNumeric(module, buildBooleanCompareOp(insn.op), lhsValue, rhsValue, result);
            }
            
            [BASE_REPR_FLOAT, BASE_REPR_FLOAT] => {
                return buildCompareNumeric(module, buildFloatCompareOp(insn.op), lhsValue, rhsValue, result);
            }
            _ => {
                panic err:impossible(`no way to compare ${lhsRepr.base}/${rhsRepr.base}`);
            }
        }
    }
}

function getArrayCompareFunction(t:Context tc, t:SemType[2] semTypes) returns RuntimeFunction {
    t:UniformTypeBitSet memberType = 0;
    foreach int i in 0 ..< 2 {
        memberType |= t:widenToUniformTypes(t:listMemberType(tc, semTypes[i], t:INT));
    }
    if memberType != t:NIL {
        memberType &= ~t:NIL;
        t:UniformTypeCode? memberTypeCode = t:uniformTypeCode(memberType);
        if memberTypeCode != () {
            TaggedCompareFunction? tcf = compareFunctions[memberTypeCode];
            if tcf != () {
                return tcf.arrayCompareFunction;
            }
        }
        if t:isSubtypeSimple(memberType, t:LIST) {
            return arrayListCompareFunction;
        }
    }
    return optListCompareFunction;
}

function buildCompareStore(wasm:Module module, Scaffold scaffold, int expected, wasm:Expression compareResult, bir:Register reg) returns wasm:Expression {
    wasm:Expression transformResult = buildRuntimeFunctionCall(module, scaffold.getComponent(), transformCompareResultFunction, 
                                                               [
                                                                    module.addConst({ i32: expected}), 
                                                                    compareResult
                                                               ]);
    return buildStore(module, reg, transformResult);
}

function buildCompareNumeric(wasm:Module module, wasm:Op op, wasm:Expression lhs, wasm:Expression rhs, bir:Register result) returns wasm:Expression {
    return buildStore(module, result, module.binary(op, lhs, rhs));
}

function buildCompareString(wasm:Module module, Scaffold scaffold, int op, wasm:Expression lhs, wasm:Expression rhs, bir:Register result) returns wasm:Expression {
    wasm:Expression value = buildRuntimeFunctionCall(module, scaffold.getComponent(), stringCompFunction, [lhs, rhs]);
    return buildCompareStore(module, scaffold, op, value, result);
}

function buildIntCompareOp(bir:OrderOp op) returns wasm:Op {
    return signedIntPredicateOps.get(op);
}

function buildFloatCompareOp(bir:OrderOp op) returns wasm:Op {
    return floatPredicateOps.get(op);
}

function buildBooleanCompareOp(bir:OrderOp op) returns wasm:Op {
    return booleanPredicateOps.get(op);
}

function buildCompareTaggedBoolean(wasm:Module module, Scaffold scaffold, wasm:Op op, wasm:Expression lhs, wasm:Expression rhs, bir:Register result) returns wasm:Expression {
    wasm:Expression isBoolean = buildIsExactType(module, scaffold, lhs, TYPE_BOOLEAN);
    wasm:Expression lhsUntagged = buildUntagBoolean(module, scaffold, lhs);
    wasm:Expression trueBody = buildCompareNumeric(module, op, lhsUntagged, rhs, result);
    wasm:Expression falseBody = buildStore(module, result, module.addConst({ i32: 0 }));
    return module.addIf(isBoolean, trueBody, falseBody);
}

function buildCompareTaggedInt(wasm:Module module, Scaffold scaffold, wasm:Op op, wasm:Expression lhs, wasm:Expression rhs, bir:Register result) returns wasm:Expression {
    wasm:Expression isInt = buildIsExactType(module, scaffold, lhs, TYPE_INT);
    wasm:Expression lhsUntagged = buildUntagInt(module, scaffold, lhs);
    wasm:Expression trueBody = buildCompareNumeric(module, op, lhsUntagged, rhs, result);
    wasm:Expression falseBody = buildStore(module, result, module.addConst({ i32: 0 }));
    return module.addIf(isInt, trueBody, falseBody);
}

function buildCompareTaggedFloat(wasm:Module module, Scaffold scaffold, wasm:Op op, wasm:Expression lhs, wasm:Expression rhs, bir:Register result) returns wasm:Expression {
    wasm:Expression isFloat = buildIsExactType(module, scaffold, lhs, TYPE_FLOAT);
    wasm:Expression lhsUntagged = buildUntagFloat(module, scaffold, lhs);
    wasm:Expression trueBody = buildCompareNumeric(module, op, lhsUntagged, rhs, result);
    wasm:Expression falseBody = buildStore(module, result, module.addConst({ i32: 0 }));
    return module.addIf(isFloat, trueBody, falseBody);
}
