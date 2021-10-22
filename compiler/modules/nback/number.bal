
import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

final RuntimeFunction floatToIntFunction = {
    name: "float_to_int",
    ty: {
        returnType: llvm:structType(["i64", "i1"]),
        paramTypes: ["double"]
    },
    attrs: ["nounwind", "readnone", "speculatable", "willreturn"]
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
        builder.store(buildErrorForConstPanic(builder, scaffold, PANIC_ARITHMETIC_OVERFLOW, insn.opPos), scaffold.panicAddress());
        builder.br(scaffold.getOnPanic());
        builder.positionAtEnd(continueBlock);
        result = builder.extractValue(resultWithOverflow, 0);
    }
    else {
        llvm:BasicBlock zeroDivisorBlock = scaffold.addBasicBlock();
        llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
        builder.condBr(builder.iCmp("eq", rhs, llvm:constInt(LLVM_INT, 0)), zeroDivisorBlock, continueBlock);
        builder.positionAtEnd(zeroDivisorBlock);
        builder.store(buildErrorForConstPanic(builder, scaffold, PANIC_DIVIDE_BY_ZERO, insn.opPos), scaffold.panicAddress());
        builder.br(scaffold.getOnPanic());
        builder.positionAtEnd(continueBlock);
        continueBlock = scaffold.addBasicBlock();
        llvm:BasicBlock overflowBlock = scaffold.addBasicBlock();
        builder.condBr(builder.iBitwise("and",
                                        builder.iCmp("eq", lhs, llvm:constInt(LLVM_INT, int:MIN_VALUE)),
                                        builder.iCmp("eq", rhs, llvm:constInt(LLVM_INT, -1))),
                       overflowBlock,
                       continueBlock);
        builder.positionAtEnd(overflowBlock);
        llvm:IntArithmeticSignedOp op;
        if insn.op == "/" {
            op = "sdiv";
            builder.store(buildErrorForConstPanic(builder, scaffold, PANIC_ARITHMETIC_OVERFLOW, insn.opPos), scaffold.panicAddress());
            builder.br(scaffold.getOnPanic());
        }
        else {
            builder.store(llvm:constInt(LLVM_INT, 0), scaffold.address(insn.result));
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
        rhs = builder.iBitwise("and", llvm:constInt(LLVM_INT, 0x3F), rhs);
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
    else if repr.base != BASE_REPR_TAGGED {
        return scaffold.unimplementedErr("convert form decimal to int");
    }
    // convert to int form tagged pointer

    t:SemType semType = insn.operand.semType;
    llvm:PointerValue tagged = <llvm:PointerValue>val;
    llvm:BasicBlock joinBlock = scaffold.addBasicBlock();

    // semType must contain float or decimal. Since we don't have decimal yet in subset 6,
    // it must contain float. In the future, below section is only needed conditionally.
    llvm:Value hasType = buildHasTag(builder, tagged, TAG_FLOAT);
    llvm:BasicBlock hasFloatBlock = scaffold.addBasicBlock();
    llvm:BasicBlock noFloatBlock = scaffold.addBasicBlock();
    builder.condBr(hasType, hasFloatBlock, noFloatBlock);
    builder.positionAtEnd(hasFloatBlock);
    buildConvertFloatToInt(builder, scaffold, buildUntagFloat(builder, scaffold, tagged), insn);
    builder.br(joinBlock);

    builder.positionAtEnd(<llvm:BasicBlock>noFloatBlock);
    if !t:isSubtypeSimple(semType, t:FLOAT) {
        builder.store(tagged, scaffold.address(insn.result));
    }
    builder.br(joinBlock);
    builder.positionAtEnd(joinBlock);
}

function buildConvertFloatToInt(llvm:Builder builder, Scaffold scaffold, llvm:Value floatVal, bir:ConvertToIntInsn insn) {
    llvm:Value resultWithErr = <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(floatToIntFunction), [floatVal]);
    llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
    llvm:BasicBlock errBlock = scaffold.addBasicBlock();
    builder.condBr(builder.extractValue(resultWithErr, 1), errBlock, continueBlock);
    builder.positionAtEnd(errBlock);
    builder.store(buildErrorForConstPanic(builder, scaffold, PANIC_TYPE_CAST, insn.position), scaffold.panicAddress());
    builder.br(scaffold.getOnPanic());
    builder.positionAtEnd(continueBlock);
    llvm:Value result = builder.extractValue(resultWithErr, 0);
    buildStoreInt(builder, scaffold, result, insn.result);
}

function buildConvertToFloat(llvm:Builder builder, Scaffold scaffold, bir:ConvertToFloatInsn insn) returns BuildError? {
    var [repr, val] = check buildReprValue(builder, scaffold, insn.operand);
    if repr.base == BASE_REPR_INT {
        buildConvertIntToFloat(builder, scaffold, val, insn);
        return;
    }
    else if repr.base != BASE_REPR_TAGGED {
        return scaffold.unimplementedErr("convert form decimal to float");
    }
    // convert to float form tagged pointer

    // number part of semType must be some *non-empty* combination of
    // (some or all of) int, float and decimal
    t:SemType semType = insn.operand.semType;
    llvm:PointerValue tagged = <llvm:PointerValue>val;
    llvm:BasicBlock joinBlock = scaffold.addBasicBlock();

    // semType must contain int or decimal. Since we don't have decimal yet in subset 6,
    // it must contain int. In the future, below section is only needed conditionally.
    llvm:Value hasType = buildHasTag(builder, tagged, TAG_INT);
    llvm:BasicBlock hasIntBlock = scaffold.addBasicBlock();
    llvm:BasicBlock noIntBlock = scaffold.addBasicBlock();
    builder.condBr(hasType, hasIntBlock, noIntBlock);
    builder.positionAtEnd(hasIntBlock);
    buildConvertIntToFloat(builder, scaffold, buildUntagInt(builder, scaffold, tagged), insn);
    builder.br(joinBlock);

    builder.positionAtEnd(<llvm:BasicBlock>noIntBlock);
    if !t:isSubtypeSimple(semType, t:INT) {
        builder.store(tagged, scaffold.address(insn.result));
    }
    builder.br(joinBlock);
    builder.positionAtEnd(joinBlock);
}

function buildConvertIntToFloat(llvm:Builder builder, Scaffold scaffold, llvm:Value intVal, bir:ConvertToFloatInsn insn) {
    buildStoreFloat(builder, scaffold, builder.sIToFP(intVal, LLVM_DOUBLE), insn.result);
}

final readonly & map<llvm:IntrinsicFunctionName> binaryIntIntrinsics = {
    "+": "sadd.with.overflow.i64",
    "-": "ssub.with.overflow.i64",
    "*": "smul.with.overflow.i64"
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
    if operand is float {
        return llvm:constFloat(LLVM_DOUBLE, operand);
    }
    else {
        return builder.load(scaffold.address(operand));
    }
}
