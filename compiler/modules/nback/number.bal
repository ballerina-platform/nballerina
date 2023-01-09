
import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

final llvm:StructType LLVM_INT_WITH_OVERFLOW = llvm:structType(["i64", "i1"]);

final RuntimeFunction floatToIntFunction = {
    name: "float_to_int",
    ty: {
        returnType: LLVM_INT_WITH_OVERFLOW,
        paramTypes: ["double"]
    },
    attrs: ["nounwind", "readnone", "speculatable", "willreturn"]
};

final RuntimeFunction decimalNegFunction = {
    name: "decimal_neg",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction convertToFloatFunction = {
    name: "convert_to_float",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction decimalToIntFunction = {
    name: "decimal_to_int",
    ty: {
        returnType: LLVM_INT_WITH_OVERFLOW,
        paramTypes: [LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction convertToIntFunction = {
    name: "convert_to_int",
    ty: {
        returnType: llvm:structType([LLVM_TAGGED_PTR, "i1"]),
        paramTypes: [LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction decimalFromIntFunction = {
    name: "decimal_from_int",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [LLVM_INT]
    },
    attrs: ["readonly"]
};

final RuntimeFunction decimalFromFloatFunction = {
    name: "decimal_from_float",
    ty: {
        returnType: LLVM_TAGGED_WITH_PANIC_CODE,
        paramTypes: [LLVM_FLOAT]
    },
    attrs: ["readonly"]
};

final RuntimeFunction convertToDecimalFunction = {
    name: "convert_to_decimal",
    ty: {
        returnType: LLVM_TAGGED_WITH_PANIC_CODE,
        paramTypes: [LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final readonly & map<RuntimeFunction> decimalArithmeticFuncs = createDecimalArithmeticFuncs();

function createDecimalArithmeticFuncs() returns readonly & map<RuntimeFunction> {
    map<RuntimeFunction> m = {};
    readonly & llvm:FunctionType ty = {
        returnType: llvm:structType([LLVM_TAGGED_PTR, "i64"]),
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    };
    foreach var [op, name] in decimalArithmeticFuncNames.entries() {
        m[op] = { name: "decimal_" + name, ty, attrs: ["readonly"] };
    }
    return m.cloneReadOnly();
}

final RuntimeFunction decimalToFloatFunction = {
    name: "decimal_to_float",
    ty: {
        returnType: "double",
        paramTypes: [LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

function buildArithmeticBinary(llvm:Builder builder, Scaffold scaffold, bir:IntArithmeticBinaryInsn insn) {
    llvm:IntrinsicFunctionName? intrinsicName = buildBinaryIntIntrinsic(insn.op);
    llvm:Value lhs = buildInt(builder, scaffold, insn.operands[0]);
    llvm:Value rhs = buildInt(builder, scaffold, insn.operands[1]);
    llvm:Value result;
    llvm:BasicBlock? joinBlock = ();
    if intrinsicName != () {
        llvm:FunctionDecl intrinsicFunction = scaffold.getIntrinsicFunction(intrinsicName);
        // XXX better to distinguish builder.call and builder.callVoid
        llvm:Value resultWithOverflow = <llvm:Value>builder.call(intrinsicFunction, [lhs, rhs]);
        llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
        llvm:BasicBlock overflowBlock = scaffold.addBasicBlock();
        builder.condBr(builder.extractValue(resultWithOverflow, 1), overflowBlock, continueBlock);
        builder.positionAtEnd(overflowBlock);
        builder.store(buildErrorForConstPanic(builder, scaffold, PANIC_ARITHMETIC_OVERFLOW, insn.pos), scaffold.panicAddress());
        builder.br(scaffold.getOnPanic());
        builder.positionAtEnd(continueBlock);
        result = builder.extractValue(resultWithOverflow, 0);
    }
    else {
        llvm:BasicBlock zeroDivisorBlock = scaffold.addBasicBlock();
        llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
        builder.condBr(builder.iCmp("eq", rhs, constInt(scaffold, 0)), zeroDivisorBlock, continueBlock);
        builder.positionAtEnd(zeroDivisorBlock);
        builder.store(buildErrorForConstPanic(builder, scaffold, PANIC_DIVIDE_BY_ZERO, insn.pos), scaffold.panicAddress());
        builder.br(scaffold.getOnPanic());
        builder.positionAtEnd(continueBlock);
        continueBlock = scaffold.addBasicBlock();
        llvm:BasicBlock overflowBlock = scaffold.addBasicBlock();
        builder.condBr(builder.iBitwise("and",
                                        builder.iCmp("eq", lhs, constInt(scaffold, int:MIN_VALUE)),
                                        builder.iCmp("eq", rhs, constInt(scaffold, -1))),
                       overflowBlock,
                       continueBlock);
        builder.positionAtEnd(overflowBlock);
        llvm:IntArithmeticSignedOp op;
        if insn.op == "/" {
            op = "sdiv";
            builder.store(buildErrorForConstPanic(builder, scaffold, PANIC_ARITHMETIC_OVERFLOW, insn.pos), scaffold.panicAddress());
            builder.br(scaffold.getOnPanic());
        }
        else {
            builder.store(constInt(scaffold, 0), scaffold.address(insn.result));
            llvm:BasicBlock b = scaffold.addBasicBlock();
            builder.br(b);
            joinBlock = b;
            op = "srem";
        }
        builder.positionAtEnd(continueBlock);
        result = builder.iArithmeticSigned(op, lhs, rhs);
    }
    buildStoreInt(builder, scaffold, result, insn.result);                                  
    if joinBlock != () {
        builder.br(joinBlock);
        builder.positionAtEnd(joinBlock);
    }                         
}

function buildNoPanicArithmeticBinary(llvm:Builder builder, Scaffold scaffold, bir:IntNoPanicArithmeticBinaryInsn insn) {
    llvm:Value lhs = buildInt(builder, scaffold, insn.operands[0]);
    llvm:Value rhs = buildInt(builder, scaffold, insn.operands[1]);
    llvm:IntArithmeticOp op = intArithmeticOps.get(insn.op);
    llvm:Value result = builder.iArithmeticNoWrap(op, lhs, rhs);
    buildStoreInt(builder, scaffold, result, insn.result);                                  
}

function buildFloatArithmeticBinary(llvm:Builder builder, Scaffold scaffold, bir:FloatArithmeticBinaryInsn insn) {
    llvm:Value lhs = buildFloat(builder, scaffold, insn.operands[0]);
    llvm:Value rhs = buildFloat(builder, scaffold, insn.operands[1]);
    llvm:FloatArithmeticOp op = floatArithmeticOps.get(insn.op);
    llvm:Value result = builder.fArithmetic(op, lhs, rhs);
    buildStoreFloat(builder, scaffold, result, insn.result);                                  
}

function buildDecimalArithmeticBinary(llvm:Builder builder, Scaffold scaffold, bir:DecimalArithmeticBinaryInsn insn) {
    llvm:Value lhs = buildDecimal(builder, scaffold, insn.operands[0]);
    llvm:Value rhs = buildDecimal(builder, scaffold, insn.operands[1]);
    llvm:Value resultWithErr = buildRuntimeFunctionCall(builder, scaffold, decimalArithmeticFuncs.get(insn.op), [lhs, rhs]);
    buildStoreDecimal(builder, scaffold, buildCheckPanicCode(builder, scaffold, resultWithErr, insn.pos), insn.result);                                  
}

function buildFloatNegate(llvm:Builder builder, Scaffold scaffold, bir:FloatNegateInsn insn) {
    llvm:Value operand = buildFloat(builder, scaffold, insn.operand);
    llvm:Value result = builder.fNeg(operand);
    buildStoreFloat(builder, scaffold, result, insn.result);
}

final readonly & map<llvm:IntBitwiseOp> binaryBitwiseOp = {
    "&": "and",
    "^": "xor",
    "|": "or",
    "<<": "shl",
    ">>": "ashr",
    ">>>" : "lshr"
};

function buildBitwiseBinary(llvm:Builder builder, Scaffold scaffold, bir:IntBitwiseBinaryInsn insn) {
    llvm:Value lhs = buildInt(builder, scaffold, insn.operands[0]);
    llvm:Value rhs = buildInt(builder, scaffold, insn.operands[1]);
    if insn.op is bir:BitwiseShiftOp {
        rhs = builder.iBitwise("and", constInt(scaffold, 0x3F), rhs);
    }
    llvm:IntBitwiseOp op = binaryBitwiseOp.get(insn.op);
    llvm:Value result = builder.iBitwise(op, lhs, rhs);
    buildStoreInt(builder, scaffold, result, insn.result);                                  
}


function buildConvertToInt(llvm:Builder builder, Scaffold scaffold, bir:ConvertToIntInsn insn) returns BuildError? {
    var [repr, val] = check buildReprValue(builder, scaffold, insn.operand);
    if repr.base == BASE_REPR_FLOAT {
        buildConvertFloatToInt(builder, scaffold, val, insn);
        return;
    }
    else if repr is TaggedRepr && repr.subtype == t:DECIMAL {
        buildConvertDecimalToInt(builder, scaffold, val, insn);
        return;
    }
    // convert to int form tagged pointer
    llvm:Value resultWithErr = buildRuntimeFunctionCall(builder, scaffold, convertToIntFunction, [val]);
    buildStoreTagged(builder, scaffold, buildCheckOverflow(builder, scaffold, resultWithErr, insn), insn.result);
}

function buildConvertFloatToInt(llvm:Builder builder, Scaffold scaffold, llvm:Value floatVal, bir:ConvertToIntInsn insn) {
    llvm:Value resultWithErr = buildRuntimeFunctionCall(builder, scaffold, floatToIntFunction, [floatVal]);
    buildStoreInt(builder, scaffold, buildCheckOverflow(builder, scaffold, resultWithErr, insn), insn.result);
}

function buildConvertDecimalToInt(llvm:Builder builder, Scaffold scaffold, llvm:Value decimalVal, bir:ConvertToIntInsn insn) {
    llvm:Value resultWithErr = buildRuntimeFunctionCall(builder, scaffold, decimalToIntFunction, [decimalVal]);
    buildStoreInt(builder, scaffold, buildCheckOverflow(builder, scaffold, resultWithErr, insn), insn.result);
}

function buildCheckOverflow(llvm:Builder builder, Scaffold scaffold, llvm:Value valWithErr, bir:ConvertToIntInsn insn) returns llvm:Value {
    llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
    llvm:BasicBlock errBlock = scaffold.addBasicBlock();
    builder.condBr(builder.extractValue(valWithErr, 1), errBlock, continueBlock);
    builder.positionAtEnd(errBlock);
    builder.store(buildErrorForConstPanic(builder, scaffold, PANIC_ARITHMETIC_OVERFLOW, insn.pos), scaffold.panicAddress());
    builder.br(scaffold.getOnPanic());
    builder.positionAtEnd(continueBlock);
    return builder.extractValue(valWithErr, 0);
}

function buildConvertToFloat(llvm:Builder builder, Scaffold scaffold, bir:ConvertToFloatInsn insn) returns BuildError? {
    var [repr, val] = check buildReprValue(builder, scaffold, insn.operand);
    if repr.base == BASE_REPR_INT {
        buildConvertIntToFloat(builder, scaffold, val, insn);
        return;
    }
    else if repr is TaggedRepr && repr.subtype == t:DECIMAL {
        buildConvertDecimalToFloat(builder, scaffold, val, insn);
        return;
    }
    // convert to float form tagged pointer
    llvm:Value result = buildRuntimeFunctionCall(builder, scaffold, convertToFloatFunction, [val]);
    buildStoreTagged(builder, scaffold, result, insn.result);
}

function buildConvertIntToFloat(llvm:Builder builder, Scaffold scaffold, llvm:Value intVal, bir:ConvertToFloatInsn insn) {
    buildStoreFloat(builder, scaffold, builder.sIToFP(intVal, LLVM_FLOAT), insn.result);
}

function buildConvertDecimalToFloat(llvm:Builder builder, Scaffold scaffold, llvm:Value decimalVal, bir:ConvertToFloatInsn insn) {
    llvm:Value result = buildRuntimeFunctionCall(builder, scaffold, decimalToFloatFunction, [decimalVal]);
    buildStoreFloat(builder, scaffold, result, insn.result);
}

function buildConvertToDecimal(llvm:Builder builder, Scaffold scaffold, bir:ConvertToDecimalInsn insn) returns BuildError? {
    var [repr, val] = check buildReprValue(builder, scaffold, insn.operand);
    if repr.base == BASE_REPR_INT {
        buildConvertIntToDecimal(builder, scaffold, val, insn);
        return;
    }
    else if repr.base == BASE_REPR_FLOAT {
        buildConvertFloatToDecimal(builder, scaffold, val, insn);
        return;
    }
    // convert to decimal from tagged pointer
    llvm:Value resultWithErr = buildRuntimeFunctionCall(builder, scaffold, convertToDecimalFunction, [val]);
    buildStoreDecimal(builder, scaffold, buildCheckPanicCode(builder, scaffold, resultWithErr, insn.pos), insn.result);   
}

function buildConvertIntToDecimal(llvm:Builder builder, Scaffold scaffold, llvm:Value intVal, bir:ConvertToDecimalInsn insn) {
    llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
    llvm:BasicBlock errBlock = scaffold.addBasicBlock();
    builder.condBr(constBoolean(scaffold, false), errBlock, continueBlock);
    builder.positionAtEnd(errBlock);
    builder.br(scaffold.getOnPanic());
    builder.positionAtEnd(continueBlock);
    buildStoreDecimal(builder, scaffold, buildRuntimeFunctionCall(builder, scaffold, decimalFromIntFunction, [intVal]), insn.result);
}

function buildConvertFloatToDecimal(llvm:Builder builder, Scaffold scaffold, llvm:Value floatVal, bir:ConvertToDecimalInsn insn) {
    llvm:Value resultWithErr = buildRuntimeFunctionCall(builder, scaffold, decimalFromFloatFunction, [floatVal]);
    buildStoreDecimal(builder, scaffold, buildCheckPanicCode(builder, scaffold, resultWithErr, insn.pos), insn.result);   
}

function buildDecimalNegate(llvm:Builder builder, Scaffold scaffold, bir:DecimalNegateInsn insn) {
    llvm:Value operand = buildDecimal(builder, scaffold, insn.operand);
    llvm:Value result = buildRuntimeFunctionCall(builder, scaffold, decimalNegFunction, [operand]);
    buildStoreDecimal(builder, scaffold, result, insn.result);
}

final readonly & map<llvm:IntrinsicFunctionName> binaryIntIntrinsics = {
    "+": "sadd.with.overflow.i64.i64",
    "-": "ssub.with.overflow.i64.i64",
    "*": "smul.with.overflow.i64.i64"
};

final readonly & map<llvm:IntArithmeticOp> intArithmeticOps = {
    "+": "add",
    "-": "sub",
    "*": "mul"
};

final readonly & map<llvm:FloatArithmeticOp> floatArithmeticOps = {
    "+": "fadd",
    "-": "fsub",
    "*": "fmul",
    "/": "fdiv",
    "%": "frem"
};

final readonly & map<string> decimalArithmeticFuncNames = {
    "+": "add",
    "-": "sub",
    "*": "mul",
    "/": "div",
    "%": "rem"
};

// final readonly & map<llvm:BinaryIntOp> binaryIntOps = {
//     "+": "add",
//     "-": "sub",
//     "*": "mul",
//     "/": "sdiv",
//     "%": "srem"
// };

// function buildBinaryIntOp(bir:ArithmeticBinaryOp op) returns llvm:BinaryIntOp {
//     return <llvm:BinaryIntOp>binaryIntOps[op];
// }

function buildBinaryIntIntrinsic(bir:ArithmeticBinaryOp op) returns llvm:IntrinsicFunctionName? {
    return binaryIntIntrinsics[op];
}

// Build a value as REPR_FLOAT
function buildFloat(llvm:Builder builder, Scaffold scaffold, bir:FloatOperand operand) returns llvm:Value {
    if operand is bir:FloatConstOperand {
        return constFloat(scaffold, operand.value);
    }
    else {
        return builder.load(scaffold.address(operand));
    }
}

function buildDecimal(llvm:Builder builder, Scaffold scaffold, bir:DecimalOperand operand) returns llvm:Value {
    if operand is bir:DecimalConstOperand {
        return buildConstDecimal(builder, scaffold, operand.value);
    }
    else {
        return builder.load(scaffold.address(operand));
    }
}
