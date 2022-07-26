import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.wasm;

final RuntimeFunction decimalNegFunction = {
    name: "_bal_decimal_neg",
    returnType: "eqref",
    rtModule: numberMod
};

final RuntimeFunction convertToDecimalFunction = {
    name: "_bal_convert_to_decimal",
    returnType: "eqref",
    rtModule: numberMod
};

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

final RuntimeFunction convertToIntFunction = {
    name: "_bal_convert_to_int",
    returnType: "i64",
    rtModule: numberMod
};

final RuntimeFunction convertToFloatFunction = {
    name: "_bal_convert_to_float",
    returnType: "f64",
    rtModule: numberMod
};

final RuntimeFunction floatModulusFunction = {
    name: "_bal_float_rem",
    returnType: "f64",
    rtModule: numberMod
};

final RuntimeFunction checkOverflowAddFunction = {
    name: "_bal_check_overflow_add",
    returnType: "None",
    rtModule: numberMod
};

final RuntimeFunction checkOverflowSubFunction = {
    name: "_bal_check_overflow_sub",
    returnType: "None",
    rtModule: numberMod
};

final RuntimeFunction checkOverflowMulFunction = {
    name: "_bal_check_overflow_mul",
    returnType: "None",
    rtModule: numberMod
};

final RuntimeFunction checkOverflowDivFunction = {
    name: "_bal_check_overflow_div",
    returnType: "None",
    rtModule: numberMod
};

final RuntimeFunction decimalFromFloatFunction = {
    name: "_bal_decimal_from_float",
    returnType: { base: DECIMAL_TYPE },
    rtModule: numberMod
};

final RuntimeFunction decimalFromIntFunction = {
    name: "_bal_decimal_from_int",
    returnType: { base: DECIMAL_TYPE },
    rtModule: numberMod
};

final RuntimeFunction decimalToFloatFunction = {
    name: "_bal_decimal_to_float",
    returnType: "f64",
    rtModule: numberMod
};

final RuntimeFunction decimalToIntFunction = {
    name: "_bal_decimal_to_int",
    returnType: "i64",
    rtModule: numberMod
};

final readonly & map<RuntimeFunction> overflowFunction = {
    "i64.add": checkOverflowAddFunction,
    "i64.sub": checkOverflowSubFunction,
    "i64.mul": checkOverflowMulFunction,
    "i64.div_s": checkOverflowDivFunction
};

final readonly & map<string> decimalArithmeticFuncNames = {
    "+": "add",
    "-": "sub",
    "*": "mul",
    "/": "div",
    "%": "rem"
};

final readonly & map<RuntimeFunction> decimalArithmeticFuncs = createDecimalArithmeticFuncs();

function createDecimalArithmeticFuncs() returns readonly & map<RuntimeFunction> {
    map<RuntimeFunction> m = {};
    foreach var [op, name] in decimalArithmeticFuncNames.entries() {
        m[op] = { name: "_bal_decimal_" + name, returnType: "eqref", rtModule: numberMod };
    }
    return m.cloneReadOnly();
}

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
        wasm:Expression overflowCheck = buildRuntimeFunctionCall(module, scaffold.getComponent(), overflowFunc, [lhs, rhs]);
        return module.block([overflowCheck, operation]);
    }
    return operation;
}

function buildConvertToInt(wasm:Module module, Scaffold scaffold, bir:ConvertToIntInsn insn) returns wasm:Expression {
    var [repr, val] = buildReprValue(module, scaffold, insn.operand);
    wasm:Expression result;
    if repr.base == BASE_REPR_FLOAT {
        result = buildStore(module, insn.result, module.unary("i64.trunc_f64_s", val));
    }
    else if repr is TaggedRepr && repr.subtype == t:DECIMAL {
        result = buildConvertDecimalToInt(module, scaffold, val, insn);
    }
    else {
        result = buildRuntimeFunctionCall(module, scaffold.getComponent(), convertToIntFunction, [val]);    
    }
    return buildStore(module, insn.result, buildConvertRepr(module, REPR_INT, result, scaffold.getRepr(insn.result)));
}

function buildConvertDecimalToInt(wasm:Module module, Scaffold scaffold, wasm:Expression decimalVal, bir:ConvertToIntInsn insn) returns wasm:Expression {
    wasm:Expression result = buildRuntimeFunctionCall(module, scaffold.getComponent(), decimalToIntFunction, [decimalVal]);
    return buildStore(module, insn.result, result);
}

function buildNoPanicArithmeticBinary(wasm:Module module, bir:IntNoPanicArithmeticBinaryInsn insn) returns wasm:Expression {
    wasm:Expression lhs = buildInt(module, insn.operands[0]);
    wasm:Expression rhs = buildInt(module, insn.operands[1]);
    wasm:Op op = intArithmeticOps.get(insn.op);
    return buildStore(module, insn.result, module.binary(op, lhs, rhs));
}

function buildConvertToFloat(wasm:Module module, Scaffold scaffold, bir:ConvertToFloatInsn insn) returns wasm:Expression { 
    var [repr, val] = buildReprValue(module, scaffold, insn.operand);
    wasm:Expression result;
    if repr.base == BASE_REPR_INT {
        result = buildStore(module, insn.result, module.unary("f64.convert_i64_s", val));
    }
    else if repr is TaggedRepr && repr.subtype == t:DECIMAL {
        result = buildConvertDecimalToFloat(module, scaffold, val, insn);
    }
    else {
        result = buildRuntimeFunctionCall(module, scaffold.getComponent(), convertToFloatFunction, [val]);
    }
    return buildStore(module, insn.result, buildConvertRepr(module, REPR_FLOAT, result, scaffold.getRepr(insn.result)));

}

function buildConvertDecimalToFloat(wasm:Module module, Scaffold scaffold, wasm:Expression decimalVal, bir:ConvertToFloatInsn insn) returns wasm:Expression {
    wasm:Expression result = buildRuntimeFunctionCall(module, scaffold.getComponent(), decimalToFloatFunction, [decimalVal]);
    return buildStore(module, insn.result, result);
}

function buildFloatArithmeticBinary(wasm:Module module, Scaffold scaffold, bir:FloatArithmeticBinaryInsn insn) returns wasm:Expression {
    wasm:Expression lhs = buildFloat(module, insn.operands[0]);
    wasm:Expression rhs = buildFloat(module, insn.operands[1]);
    wasm:Expression result;
    if insn.op == "%" {
        result = buildRuntimeFunctionCall(module, scaffold.getComponent(), floatModulusFunction, [lhs, rhs]);
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

function buildDecimalArithmeticBinary(wasm:Module module, Scaffold scaffold, bir:DecimalArithmeticBinaryInsn insn) returns wasm:Expression {
    wasm:Expression lhs = buildDecimal(module, scaffold, insn.operands[0]);
    wasm:Expression rhs = buildDecimal(module, scaffold, insn.operands[1]);
    wasm:Expression result = buildRuntimeFunctionCall(module, scaffold.getComponent(), decimalArithmeticFuncs.get(insn.op), [lhs, rhs]);
    return buildStore(module, insn.result, result);                                  
}

function buildDecimalNegate(wasm:Module module, Scaffold scaffold, bir:DecimalNegateInsn insn) returns wasm:Expression {
    wasm:Expression operand = buildDecimal(module, scaffold, insn.operand);
    wasm:Expression result = buildRuntimeFunctionCall(module, scaffold.getComponent(), decimalNegFunction, [operand]);
    return buildStore(module, insn.result, result);
}

function buildConvertToDecimal(wasm:Module module, Scaffold scaffold, bir:ConvertToDecimalInsn insn) returns wasm:Expression {
    var [repr, val] = buildReprValue(module, scaffold, insn.operand);
    if repr.base == BASE_REPR_INT {
        return buildConvertIntToDecimal(module, scaffold, val, insn);
    }
    else if repr.base == BASE_REPR_FLOAT {
        return buildConvertFloatToDecimal(module, scaffold, val, insn);
    }
    // convert to decimal from reference
    wasm:Expression result = buildRuntimeFunctionCall(module, scaffold.getComponent(), convertToDecimalFunction, [val]);
    return buildStore(module, insn.result, result);   
}


function buildConvertIntToDecimal(wasm:Module module, Scaffold scaffold, wasm:Expression intVal, bir:ConvertToDecimalInsn insn) returns wasm:Expression {
    wasm:Expression call = buildRuntimeFunctionCall(module, scaffold.getComponent(), decimalFromIntFunction, [intVal]);
    return buildStore(module, insn.result, call);
}

function buildConvertFloatToDecimal(wasm:Module module, Scaffold scaffold, wasm:Expression floatVal, bir:ConvertToDecimalInsn insn) returns wasm:Expression {
    wasm:Expression call = buildRuntimeFunctionCall(module, scaffold.getComponent(), decimalFromFloatFunction, [floatVal]);
    return buildStore(module, insn.result, call);
}

