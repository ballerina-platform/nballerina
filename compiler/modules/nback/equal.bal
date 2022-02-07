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
    var [lhsRepr, lhsValue] = check buildReprValue(builder, scaffold, insn.operands[0]);
    var [rhsRepr, rhsValue] = check buildReprValue(builder, scaffold, insn.operands[1]);
    CmpEqOp op = insn.op[0] == "!" ?  "ne" : "eq"; 
    boolean exact = insn.op.length() == 3; // either "===" or "!=="
    bir:Register result = insn.result;
    match [lhsRepr.base, rhsRepr.base] {
        [BASE_REPR_TAGGED, BASE_REPR_TAGGED] => {
            if isTypeImmediate(t:intersect(insn.operands[0].semType, insn.operands[1].semType)) {
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
            return buildEqualTaggedInt(builder, scaffold, op, <llvm:PointerValue>lhsValue, rhsValue, result);
        }
        [BASE_REPR_INT, BASE_REPR_TAGGED] => {
            return buildEqualTaggedInt(builder, scaffold, op, <llvm:PointerValue>rhsValue, lhsValue, result);
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
    return scaffold.unimplementedErr("equality with two different untagged representations", insn.pos);
}

function buildEqualTaggedFloat(llvm:Builder builder, Scaffold scaffold, boolean exact, CmpEqOp op, llvm:PointerValue tagged, llvm:Value untagged, bir:Register result) {
    llvm:BasicBlock floatTagBlock = scaffold.addBasicBlock();
    llvm:BasicBlock otherTagBlock = scaffold.addBasicBlock();
    llvm:BasicBlock joinBlock = scaffold.addBasicBlock();
    builder.condBr(buildHasTag(builder, tagged, TAG_FLOAT), floatTagBlock, otherTagBlock);
    builder.positionAtEnd(otherTagBlock);
    buildStoreBoolean(builder, scaffold,
                      // result is false if op is "eq", true if op is "ne"
                      buildConstBoolean(op == "ne"),
                      result);
    builder.br(joinBlock);
    builder.positionAtEnd(floatTagBlock);
    buildEqualFloat(builder, scaffold, exact, op, buildUntagFloat(builder, scaffold, tagged), untagged, result);
    builder.br(joinBlock);
    builder.positionAtEnd(joinBlock);
}

function buildEqualFloat(llvm:Builder builder, Scaffold scaffold, boolean exact, CmpEqOp op, llvm:Value lhsValue, llvm:Value rhsValue, bir:Register reg) {
    RuntimeFunction eqFunc = exact ? floatExactEqFunction : floatEqFunction;
    llvm:Value b = <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(eqFunc), [lhsValue, rhsValue]);
    if op == "ne" {
        b = builder.iBitwise("xor", b, llvm:constInt(LLVM_BOOLEAN, 1));
    }
    return buildStoreBoolean(builder, scaffold, b, reg);
}

function isTypeImmediate(t:SemType ty) returns boolean {
    if t:isSubtypeSimple(ty, t:NIL|t:BOOLEAN) {
        return true;
    }

    // SUBSET extend when singleton subtypes of float and decimal are supported
    if ty is t:UniformTypeBitSet || !t:isSubtypeSimple(ty, t:NIL|t:BOOLEAN|t:INT|t:STRING) {
        return false;
    }
    return isIntSubtypeImmediate(ty) && isStringSubtypeImmediate(ty);
}

function isIntSubtypeImmediate(t:ComplexSemType ty) returns boolean {
    t:IntSubtype|boolean intSubtype = t:intSubtype(ty);
    if intSubtype is t:IntSubtype {
        foreach var r in intSubtype {
            if r.min < IMMEDIATE_INT_MIN || IMMEDIATE_INT_MAX < r.max {
                return false;
            }
        }
        return true;
    }
    else {
        return !intSubtype;
    }
}

function isStringSubtypeImmediate(t:ComplexSemType ty) returns boolean {
    t:StringSubtype|boolean strSubtype = t:stringSubtype(ty);
    if strSubtype is t:StringSubtype {
        if strSubtype.nonChar.allowed == false {
            return false;
        }
        else {
            foreach var s in strSubtype.nonChar.values {
                byte[] bytes = s.toBytes();
                int nBytes = bytes.length();
                if !isSmallString(s.length(), bytes, nBytes) {
                    return false;
                }
            }
            return true;
        }
    }
    else {
        return !strSubtype;
    }
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

function buildEqualTaggedBoolean(llvm:Builder builder, Scaffold scaffold, CmpEqOp op, llvm:PointerValue tagged, llvm:Value untagged, bir:Register result)  {
    buildStoreBoolean(builder, scaffold,
                      builder.iCmp(op, tagged, buildTaggedBoolean(builder, untagged)),
                      result);
}

function buildEqualTaggedInt(llvm:Builder builder, Scaffold scaffold, CmpEqOp op, llvm:PointerValue tagged, llvm:Value untagged, bir:Register result) {
    llvm:BasicBlock intTagBlock = scaffold.addBasicBlock();
    llvm:BasicBlock otherTagBlock = scaffold.addBasicBlock();
    llvm:BasicBlock joinBlock = scaffold.addBasicBlock();
    builder.condBr(buildHasTag(builder, tagged, TAG_INT), intTagBlock, otherTagBlock);
    builder.positionAtEnd(otherTagBlock);
    buildStoreBoolean(builder, scaffold,
                      // result is false if op is "eq", true if op is "ne"
                      buildConstBoolean(op == "ne"),
                      result);
    builder.br(joinBlock);
    builder.positionAtEnd(intTagBlock);
    buildStoreBoolean(builder, scaffold, builder.iCmp(op, buildUntagInt(builder, scaffold, tagged), untagged), result);
    builder.br(joinBlock);
    builder.positionAtEnd(joinBlock);
}

function buildEqualTaggedTagged(llvm:Builder builder, Scaffold scaffold, boolean exact, CmpEqOp op, llvm:PointerValue tagged1, llvm:PointerValue tagged2, bir:Register result) {
    RuntimeFunction func = exact ? exactEqFunction : eqFunction;
    llvm:Value b = <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(func), [tagged1, tagged2]);
    if op == "ne" {
        b = builder.iBitwise("xor", b, llvm:constInt(LLVM_BOOLEAN, 1));
    }
    buildStoreBoolean(builder, scaffold, b, result);
}

function buildEqualStringString(llvm:Builder builder, Scaffold scaffold, CmpEqOp op, llvm:PointerValue tagged1, llvm:PointerValue tagged2, bir:Register result) {
    llvm:Value b = <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(stringEqFunction), [tagged1, tagged2]);
    if op == "ne" {
        b = builder.iBitwise("xor", b, llvm:constInt(LLVM_BOOLEAN, 1));
    }
    buildStoreBoolean(builder, scaffold, b, result);
}

function buildEqualDecimalDecimal(llvm:Builder builder, Scaffold scaffold, boolean exact, CmpEqOp op, llvm:PointerValue tagged1, llvm:PointerValue tagged2, bir:Register result) {
    llvm:Value b;
    if exact {
        b = <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(decimalExactEqFunction), [tagged1, tagged2]);
        if op == "ne" {
            b = builder.iBitwise("xor", b, llvm:constInt(LLVM_BOOLEAN, 1));
        }
    }
    else {
        b = builder.iCmp(op, <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(decimalCmpFunction), [tagged1, tagged2]), llvm:constInt(LLVM_INT, 0));
    }
    buildStoreBoolean(builder, scaffold, b, result);
}
