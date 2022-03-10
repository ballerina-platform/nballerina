import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;

function buildBitwiseBinary(wasm:Module module, Scaffold scaffold, bir:IntBitwiseBinaryInsn insn) returns wasm:Expression {
    wasm:Op? op = signedInt64BitwiseOps[insn.op];
    wasm:Expression operand1 = buildInt(module, insn.operands[0]);
    wasm:Expression operand2 = buildInt(module, insn.operands[1]);
    if op != () {
        return module.localSet(insn.result.number, module.binary(op, operand1, operand2));
    }
    panic error("invalid bitwise operation");
}


function buildArithmeticBinary(wasm:Module module, Scaffold scaffold, bir:IntArithmeticBinaryInsn insn) returns wasm:Expression {
    wasm:Op? op = signedInt64ArithmeticOps[insn.op];
    if op != () {
        wasm:Expression operand1 = buildInt(module, insn.operands[0]);
        wasm:Expression operand2 = buildInt(module, insn.operands[1]);
        wasm:Expression operation = module.localSet(insn.result.number, module.binary(op, operand1, operand2));
        if ["i64.add", "i64.sub", "i64.mul", "i64.div_s"].indexOf(op) != () {
            scaffold.setOverflowOps();
            wasm:Expression? overflowCheck = checkOverflow(module, op, operand1, operand2);
            if overflowCheck != () {
                return module.block("", [overflowCheck, operation], 2, "None");
            }
            return operation;
        }
        return operation;
    }
    panic error("unimplemented");
}

// function buildConvertToInt(wasm:Module module, Scaffold scaffold, bir:ConvertToIntInsn insn) returns wasm:Expression {
//     var [repr, val] = buildReprValue(module, scaffold, insn.operand);
//     if repr.base == BASE_REPR_FLOAT {
//         buildConvertFloatToInt(builder, scaffold, val, insn);
//         return;
//     }
//     else if repr.base == BASE_REPR_TAGGED && repr.subtype == t:DECIMAL {
//         buildConvertDecimalToInt(builder, scaffold, val, insn);
//         return;
//     }
//     // convert to int form tagged pointer
//     llvm:Value resultWithErr = <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(convertToIntFunction), [val]);
//     buildStoreTagged(builder, scaffold, buildCheckOverflow(builder, scaffold, resultWithErr, insn), insn.result);
// }


function checkOverflow(wasm:Module module, wasm:Op op, wasm:Expression op1, wasm:Expression op2) returns wasm:Expression? {
    wasm:Expression MAX_INT = module.addConst({ i64: 9223372036854775807 });
    wasm:Expression MIN_INT = module.addConst({ i64: -9223372036854775808 });
    wasm:Expression op1GZ = module.binary("i64.gt_s", op1, module.addConst({ i64: 0 }));
    wasm:Expression op2GZ = module.binary("i64.gt_s", op2, module.addConst({ i64: 0 }));
    wasm:Expression op1LZ = module.binary("i64.lt_s", op1, module.addConst({ i64: 0 }));
    wasm:Expression op2LZ = module.binary("i64.lt_s", op2, module.addConst({ i64: 0 }));
    wasm:Expression throw = module.throw("overflow", [], 0);
    if op == "i64.add" {
        wasm:Expression maxSOp2 = module.binary("i64.sub", MAX_INT, op2);
        wasm:Expression minSOp2 = module.binary("i64.sub", MIN_INT, op2);
        wasm:Expression cond1 = module.binary("i32.and", op1GZ, op2GZ);
        wasm:Expression cond1Inner = module.binary("i64.gt_s", op1, maxSOp2);
        wasm:Expression cond2 = module.binary("i32.and", op1LZ, op2LZ);
        wasm:Expression cond2Inner = module.binary("i64.lt_s", op1, minSOp2);
        wasm:Expression elseIfInner = module.addIf(cond2Inner, throw);
        wasm:Expression elseIf = module.addIf(cond2, elseIfInner);
        wasm:Expression ifInner = module.addIf(cond1Inner, throw);
        return module.addIf(cond1, ifInner, elseIf);
    }
    else if op == "i64.sub" {
        wasm:Expression maxAOp2 = module.binary("i64.add", MAX_INT, op2);
        wasm:Expression minAOp2 = module.binary("i64.add", MIN_INT, op2);
        wasm:Expression cond1 = module.binary("i32.and", op1GZ, op2LZ);
        wasm:Expression cond1Inner = module.binary("i64.gt_s", op1, maxAOp2);
        wasm:Expression cond2 = module.binary("i32.and", op1LZ, op2GZ);
        wasm:Expression cond2Inner = module.binary("i64.lt_s", op1, minAOp2);
        wasm:Expression elseIfInner = module.addIf(cond2Inner, throw);
        wasm:Expression elseIf = module.addIf(cond2, elseIfInner);
        wasm:Expression ifInner = module.addIf(cond1Inner, throw);
        return module.addIf(cond1, ifInner, elseIf);
    }
    else if op == "i64.mul" {
        wasm:Expression maxDOp1 = module.binary("i64.div_s", MAX_INT, op1);
        wasm:Expression minDOp1 = module.binary("i64.div_s", MIN_INT, op1);
        wasm:Expression cond1 = module.binary("i32.and", op1GZ, op2GZ);
        wasm:Expression cond2 = module.binary("i32.and", op1LZ, op2LZ);
        wasm:Expression cond3 = module.binary("i32.and", module.binary("i64.lt_s", op1, module.addConst({ i64: -1 })), op2GZ);
        wasm:Expression cond4 = module.binary("i32.and", op1GZ, op2LZ);
        wasm:Expression cond1Inner = module.binary("i64.gt_s", op2, maxDOp1);
        wasm:Expression cond2Inner = module.binary("i64.lt_s", op2, maxDOp1);
        wasm:Expression cond3Inner = module.binary("i64.gt_s", op2, minDOp1);
        wasm:Expression cond4Inner = module.binary("i64.lt_s", op2, minDOp1);
        wasm:Expression elseIf3Inner = module.addIf(cond4Inner, throw);
        wasm:Expression elseIf3 = module.addIf(cond4, elseIf3Inner);
        wasm:Expression elseIf2Inner = module.addIf(cond3Inner, throw);
        wasm:Expression elseIf2 = module.addIf(cond3, elseIf2Inner, elseIf3);
        wasm:Expression elseIf1Inner = module.addIf(cond2Inner, throw);
        wasm:Expression elseIf1 = module.addIf(cond2, elseIf1Inner, elseIf2);
        wasm:Expression ifInner = module.addIf(cond1Inner, throw);
        return module.addIf(cond1, ifInner, elseIf1);
    }
    else if op == "i64.div_s" {
        wasm:Expression minEOp2 = module.binary("i64.eq", MIN_INT, op1);
        wasm:Expression nEOp2 = module.binary("i64.eq", module.addConst({ i64: -1 }), op2);
        wasm:Expression cond1 = module.binary("i32.and", nEOp2, minEOp2);
        return module.addIf(cond1, throw);
    }
    return ();
}
