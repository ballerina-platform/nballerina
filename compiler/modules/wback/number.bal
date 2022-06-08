import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;

final readonly & map<wasm:Op> intArithmeticOps = {
    "+": "i64.add",
    "-": "i64.sub",
    "*": "i64.mul",
    "/": "i64.div_s",
    "%": "i64.rem_s"
};

final readonly & map<wasm:Op> binaryBitwiseOp = {
    "|": "i64.or",
    "^": "i64.xor",
    "&": "i64.and",
    ">>>": "i64.shr_s",
    ">>": "i64.shr_u",
    "<<": "i64.shl"
};

final readonly & map<wasm:Op> floatArithmeticOps = {
    "+": "f64.add",
    "-": "f64.sub",
    "*": "f64.mul",
    "/": "f64.div"
};

final RuntimeModule numberMod = "number.wat";

final RuntimeFunction convertToIntFunction = {
    name: "_bal_convert_to_int",
    returnType: "i64"
};

final RuntimeFunction convertToFloatFunction = {
    name: "_bal_convert_to_float",
    returnType: "f64"
};

final RuntimeFunction floatModulusFunction = {
    name: "_bal_float_rem",
    returnType: "f64"
};

final RuntimeFunction checkOverflowAddFunction = {
    name: "_bal_check_overflow_add",
    returnType: "None"
};

final RuntimeFunction checkOverflowSubFunction = {
    name: "_bal_check_overflow_sub",
    returnType: "None"
};

final RuntimeFunction checkOverflowMulFunction = {
    name: "_bal_check_overflow_mul",
    returnType: "None"
};

final RuntimeFunction checkOverflowDivFunction = {
    name: "_bal_check_overflow_div",
    returnType: "None"
};

final readonly & map<RuntimeFunction> overflowFunction = {
    "i64.add": checkOverflowAddFunction,
    "i64.sub": checkOverflowSubFunction,
    "i64.mul": checkOverflowMulFunction,
    "i64.div_s": checkOverflowDivFunction
};

function buildBitwiseBinary(wasm:Module module, bir:IntBitwiseBinaryInsn insn) returns wasm:Expression {
    wasm:Op op = binaryBitwiseOp.get(insn.op);
    wasm:Expression lhs = buildInt(module, insn.operands[0]);
    wasm:Expression rhs = buildInt(module, insn.operands[1]);
    return buildStore(module, insn.result, module.binary(op, lhs, rhs));
}

function buildArithmeticBinary(wasm:Module module, Scaffold scaffold, bir:IntArithmeticBinaryInsn insn) returns wasm:Expression {
    wasm:Op op = intArithmeticOps.get(insn.op);
    wasm:Expression lhs = buildInt(module, insn.operands[0]);
    wasm:Expression rhs = buildInt(module, insn.operands[1]);
    wasm:Expression operation = buildStore(module, insn.result, module.binary(op, lhs, rhs));
    RuntimeFunction? overflowFunc = overflowFunction[op];
    if overflowFunc != () {
        wasm:Expression overflowCheck = buildRuntimeFunctionCall(module, overflowFunc, [lhs, rhs]);
        return module.block([overflowCheck, operation]);
    }
    return operation;
}

function buildConvertToInt(wasm:Module module, Scaffold scaffold, bir:ConvertToIntInsn insn) returns wasm:Expression {
    var [repr, val] = buildReprValue(module, scaffold, insn.operand);
    if repr.base == BASE_REPR_FLOAT {
        return buildStore(module, insn.result, module.unary("i64.trunc_f64_s", val));
    }
    return buildStore(module, insn.result, buildRuntimeFunctionCall(module, convertToIntFunction, [val]));
}

function buildNoPanicArithmeticBinary(wasm:Module module, bir:IntNoPanicArithmeticBinaryInsn insn) returns wasm:Expression {
    wasm:Expression lhs = buildInt(module, insn.operands[0]);
    wasm:Expression rhs = buildInt(module, insn.operands[1]);
    wasm:Op op = intArithmeticOps.get(insn.op);
    return buildStore(module, insn.result, module.binary(op, lhs, rhs));
}

function buildConvertToFloat(wasm:Module module, Scaffold scaffold, bir:ConvertToFloatInsn insn) returns wasm:Expression { 
    var [repr, val] = buildReprValue(module, scaffold, insn.operand);
    if repr.base == BASE_REPR_INT {
        return buildStore(module, insn.result, module.unary("f64.convert_i64_s", val));
    }
    return buildStore(module, insn.result, buildRuntimeFunctionCall(module, convertToFloatFunction, [val]));
}

function buildFloatArithmeticBinary(wasm:Module module, bir:FloatArithmeticBinaryInsn insn) returns wasm:Expression {
    wasm:Expression lhs = buildFloat(module, insn.operands[0]);
    wasm:Expression rhs = buildFloat(module, insn.operands[1]);
    wasm:Expression result;
    if insn.op == "%" {
        result = buildRuntimeFunctionCall(module, floatModulusFunction, [lhs, rhs]);
    }
    else {
        wasm:Op op = floatArithmeticOps.get(insn.op);
        result = module.binary(op, lhs, rhs);
    }
    return buildStore(module, insn.result, result);                                  
}

function buildFloatNegate(wasm:Module module, bir:FloatNegateInsn insn) returns wasm:Expression {
    wasm:Expression operand = buildFloat(module, insn.operand);
    return buildStore(module, insn.result, module.unary("f64.neg", operand));
}
