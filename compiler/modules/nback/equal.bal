import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

final RuntimeFunction floatEqFunction = {
    name: "float_eq",
    ty: {
        returnType: "i1",
        paramTypes:  ["double", "double"]
    },
    attrs: [["return", "zeroext"], "readonly"]
};

final RuntimeFunction floatExactEqFunction = {
    name: "float_exact_eq",
    ty: {
        returnType: "i1",
        paramTypes:  ["double", "double"]
    },
    attrs: [["return", "zeroext"], "readonly"]
};

final RuntimeFunction stringEqFunction = {
    name: "string_eq",
    ty: {
        returnType: "i1",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: [["return", "zeroext"], "readonly"]
};

final RuntimeFunction eqFunction = {
    name: "eq",
    ty: {
        returnType: "i1",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: [["return", "zeroext"], "readonly"]
};

final RuntimeFunction exactEqFunction = {
    name: "exact_eq",
    ty: {
        returnType: "i1",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: [["return", "zeroext"], "readonly"]
};

final RuntimeFunction decimalExactEqFunction = {
    name: "decimal_exact_eq",
    ty: {
        returnType: "i1",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: [["return", "zeroext"], "readonly"]
};

type CmpEqOp "ne"|"eq";

function buildEquality(llvm:Builder builder, Scaffold scaffold, bir:EqualityInsn insn) returns BuildError? {
    var [lhs, rhs] = insn.operands;
    var [lhsRepr, lhsValue] = check buildReprValue(builder, scaffold, lhs);
    var [rhsRepr, rhsValue] = check buildReprValue(builder, scaffold, rhs);
    CmpEqOp op = insn.op[0] == "!" ?  "ne" : "eq"; 
    boolean exact = insn.op.length() == 3; // either "===" or "!=="
    bir:Register result = insn.result;
    match [lhsRepr.base, rhsRepr.base] {
        [BASE_REPR_TAGGED, BASE_REPR_TAGGED] => {
            if reprIsImmediate(lhsRepr) || reprIsImmediate(rhsRepr) || reprIsImmediate(semTypeRepr(t:intersect(lhs.semType, rhs.semType))) {
                return buildStoreBoolean(builder, scaffold, builder.iCmp(op, lhsValue, rhsValue), result);
            }
            else if reprIsString(lhsRepr) && reprIsString(rhsRepr) {
                return buildEqualStringString(builder, scaffold, op, <llvm:PointerValue>lhsValue, <llvm:PointerValue>rhsValue, result);
            }
            else if reprIsDecimal(lhsRepr) && reprIsDecimal(rhsRepr) {
                return buildEqualDecimalDecimal(builder, scaffold, exact, op, <llvm:PointerValue>lhsValue, <llvm:PointerValue>rhsValue, result);
            }
            else {
                return buildEqualTaggedTagged(builder, scaffold, exact, op, <llvm:PointerValue>lhsValue, <llvm:PointerValue>rhsValue, result);
            }
        }
        [BASE_REPR_TAGGED, BASE_REPR_BOOLEAN] => {
            return buildEqualTaggedBoolean(builder, scaffold, op, <llvm:PointerValue>lhsValue, rhsValue, result);
        }
        [BASE_REPR_BOOLEAN, BASE_REPR_TAGGED] => {
            return buildEqualTaggedBoolean(builder, scaffold, op, <llvm:PointerValue>rhsValue, lhsValue, result);
        }
        [BASE_REPR_TAGGED, BASE_REPR_INT] => {
            return buildEqualTaggedInt(builder, scaffold, op, <llvm:PointerValue>lhsValue, rhsValue, <IntRepr>rhsRepr, result);
        }
        [BASE_REPR_INT, BASE_REPR_TAGGED] => {
            return buildEqualTaggedInt(builder, scaffold, op, <llvm:PointerValue>rhsValue, lhsValue, <IntRepr>lhsRepr, result);
        }
        [BASE_REPR_BOOLEAN, BASE_REPR_BOOLEAN]
        | [BASE_REPR_INT, BASE_REPR_INT] => {
             // no tags involved, same representation, boolean/int
            return buildStoreBoolean(builder, scaffold, builder.iCmp(op, lhsValue, rhsValue), result);
        }
        [BASE_REPR_TAGGED, BASE_REPR_FLOAT] => {
            return buildEqualTaggedFloat(builder, scaffold, exact, op, <llvm:PointerValue>lhsValue, rhsValue, result);
        }
        [BASE_REPR_FLOAT, BASE_REPR_TAGGED] => {
            return buildEqualTaggedFloat(builder, scaffold, exact, op, <llvm:PointerValue>rhsValue, lhsValue, result);
        }
        [BASE_REPR_FLOAT, BASE_REPR_FLOAT] => {
            return buildEqualFloat(builder, scaffold, exact, op, lhsValue, rhsValue, result);
        }
    }
    return scaffold.unimplementedErr("equality with two different untagged representations");
}

function buildEqualTaggedFloat(llvm:Builder builder, Scaffold scaffold, boolean exact, CmpEqOp op, llvm:PointerValue tagged, llvm:Value untagged, bir:Register result) {
    llvm:BasicBlock floatTagBlock = scaffold.addBasicBlock();
    llvm:BasicBlock otherTagBlock = scaffold.addBasicBlock();
    llvm:BasicBlock joinBlock = scaffold.addBasicBlock();
    builder.condBr(buildHasTag(builder, scaffold, tagged, TAG_FLOAT), floatTagBlock, otherTagBlock);
    builder.positionAtEnd(otherTagBlock);
    buildStoreBoolean(builder, scaffold,
                      // result is false if op is "eq", true if op is "ne"
                      constBoolean(scaffold, op == "ne"),
                      result);
    builder.br(joinBlock);
    builder.positionAtEnd(floatTagBlock);
    buildEqualFloat(builder, scaffold, exact, op, buildUntagFloat(builder, scaffold, tagged), untagged, result);
    builder.br(joinBlock);
    builder.positionAtEnd(joinBlock);
}

function buildEqualFloat(llvm:Builder builder, Scaffold scaffold, boolean exact, CmpEqOp op, llvm:Value lhsValue, llvm:Value rhsValue, bir:Register reg) {
    RuntimeFunction eqFunc = exact ? floatExactEqFunction : floatEqFunction;
    llvm:Value b = buildRuntimeFunctionCall(builder, scaffold, eqFunc, [lhsValue, rhsValue]);
    if op == "ne" {
        b = builder.iBitwise("xor", b, constBoolean(scaffold, true));
    }
    return buildStoreBoolean(builder, scaffold, b, reg);
}

function isAnyOperandSmallString(bir:Operand[] operands) returns boolean {
    foreach var operand in operands {
        if operand is bir:StringConstOperand {
            string str = operand.value;
            byte[] bytes = str.toBytes();
            int nBytes = bytes.length();
            if isSmallString(str.length(), bytes, nBytes) {
                return true;
            }
        }
    }
    return false;
}

function reprIsNil(Repr repr) returns boolean {
    return repr is TaggedRepr && repr.subtype == t:NIL;
}

function reprIsString(Repr repr) returns boolean {
    return repr is TaggedRepr && repr.subtype == t:STRING;
}

function reprIsDecimal(Repr repr) returns boolean {
    return repr is TaggedRepr && repr.subtype == t:DECIMAL;
}

// JBUG can't inline this function
function reprIsImmediate(Repr repr) returns boolean {
    return repr.alwaysImmediate;
}

function buildEqualTaggedBoolean(llvm:Builder builder, Scaffold scaffold, CmpEqOp op, llvm:PointerValue tagged, llvm:Value untagged, bir:Register result)  {
    buildStoreBoolean(builder, scaffold,
                      builder.iCmp(op, tagged, buildTaggedBoolean(builder, scaffold, untagged)),
                      result);
}

function buildEqualTaggedInt(llvm:Builder builder, Scaffold scaffold, CmpEqOp op, llvm:PointerValue tagged, llvm:Value untagged, IntRepr untaggedRepr, bir:Register result) {
    if untaggedRepr.alwaysInImmediateRange {
        return buildStoreBoolean(builder, scaffold, builder.iCmp(op, tagged, buildImmediateTaggedInt(builder, scaffold, untagged)), result);
    }
    llvm:BasicBlock intTagBlock = scaffold.addBasicBlock();
    llvm:BasicBlock otherTagBlock = scaffold.addBasicBlock();
    llvm:BasicBlock joinBlock = scaffold.addBasicBlock();
    builder.condBr(buildHasTag(builder, scaffold, tagged, TAG_INT), intTagBlock, otherTagBlock);
    builder.positionAtEnd(otherTagBlock);
    buildStoreBoolean(builder, scaffold,
                      // result is false if op is "eq", true if op is "ne"
                      constBoolean(scaffold, op == "ne"),
                      result);
    builder.br(joinBlock);
    builder.positionAtEnd(intTagBlock);
    buildStoreBoolean(builder, scaffold, builder.iCmp(op, buildUntagInt(builder, scaffold, tagged), untagged), result);
    builder.br(joinBlock);
    builder.positionAtEnd(joinBlock);
}

function buildEqualTaggedTagged(llvm:Builder builder, Scaffold scaffold, boolean exact, CmpEqOp op, llvm:PointerValue tagged1, llvm:PointerValue tagged2, bir:Register result) {
    RuntimeFunction func = exact ? exactEqFunction : eqFunction;
    llvm:Value b = buildRuntimeFunctionCall(builder, scaffold, func, [tagged1, tagged2]);
    if op == "ne" {
        b = builder.iBitwise("xor", b, constBoolean(scaffold, true));
    }
    buildStoreBoolean(builder, scaffold, b, result);
}

function buildEqualStringString(llvm:Builder builder, Scaffold scaffold, CmpEqOp op, llvm:PointerValue tagged1, llvm:PointerValue tagged2, bir:Register result) {
    llvm:Value b = buildRuntimeFunctionCall(builder, scaffold, stringEqFunction, [tagged1, tagged2]);
    if op == "ne" {
        b = builder.iBitwise("xor", b, constBoolean(scaffold, true));
    }
    buildStoreBoolean(builder, scaffold, b, result);
}

function buildEqualDecimalDecimal(llvm:Builder builder, Scaffold scaffold, boolean exact, CmpEqOp op, llvm:PointerValue tagged1, llvm:PointerValue tagged2, bir:Register result) {
    llvm:Value b;
    if exact {
        b = buildRuntimeFunctionCall(builder, scaffold, decimalExactEqFunction, [tagged1, tagged2]);
        if op == "ne" {
            b = builder.iBitwise("xor", b, constBoolean(scaffold, true));
        }
    }
    else {
        b = builder.iCmp(op, buildRuntimeFunctionCall(builder, scaffold, decimalCmpFunction, [tagged1, tagged2]), constInt(scaffold, 0));
    }
    buildStoreBoolean(builder, scaffold, b, result);
}
