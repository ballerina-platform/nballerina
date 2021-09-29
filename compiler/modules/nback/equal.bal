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


final RuntimeFunction stringCmpFunction = {
    name: "string_cmp",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction intCompareFunction = {
    name: "int_compare",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction floatCompareFunction = {
    name: "float_compare",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction stringCompareFunction = {
    name: "string_compare",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction booleanCompareFunction = {
    name: "boolean_compare",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction arrayIntCompareFunction = {
    name: "array_int_compare",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction arrayFloatCompareFunction = {
    name: "array_float_compare",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction arrayStringCompareFunction = {
    name: "array_string_compare",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction arrayBooleanCompareFunction = {
    name: "array_boolean_compare",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
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

function buildCompare(llvm:Builder builder, Scaffold scaffold, bir:CompareInsn insn) returns BuildError? {
    var [lhsRepr, lhsValue] = check buildReprValue(builder, scaffold, insn.operands[0]);
    var [rhsRepr, rhsValue] = check buildReprValue(builder, scaffold, insn.operands[1]);
    bir:Register result = insn.result;

    match [lhsRepr.base, rhsRepr.base] {
        [BASE_REPR_TAGGED, BASE_REPR_INT] => {
            buildCompareTaggedInt(builder, scaffold, buildIntCompareOp(insn.op), lhsValue, rhsValue, result);
        }
        [BASE_REPR_INT, BASE_REPR_TAGGED] => {
            buildCompareTaggedInt(builder, scaffold, buildIntCompareOp(flippedOrderOps.get(insn.op)), rhsValue, lhsValue, result);
        }
        [BASE_REPR_TAGGED, BASE_REPR_FLOAT] => {
            buildCompareTaggedFloat(builder, scaffold, buildFloatCompareOp(insn.op), lhsValue, rhsValue, result);
        }
        [BASE_REPR_FLOAT, BASE_REPR_TAGGED] => {
            buildCompareTaggedFloat(builder, scaffold, buildFloatCompareOp(flippedOrderOps.get(insn.op)), rhsValue, lhsValue, result);
        }
        [BASE_REPR_TAGGED, BASE_REPR_BOOLEAN] => {
            buildCompareTaggedBoolean(builder, scaffold, buildBooleanCompareOp(insn.op), lhsValue, rhsValue, result);
        }
        [BASE_REPR_BOOLEAN, BASE_REPR_TAGGED] => {
            buildCompareTaggedBoolean(builder, scaffold, buildBooleanCompareOp(flippedOrderOps.get(insn.op)), rhsValue, lhsValue, result);
        }
        [BASE_REPR_TAGGED, BASE_REPR_TAGGED] => {
            if insn.orderType is t:UT_STRING {
                buildCompareString(builder, scaffold, buildIntCompareOp(insn.op), lhsValue, rhsValue, result);
            }
            else {
                buildCompareTagged(builder, scaffold, insn, lhsValue, rhsValue, result);
            }
        }
        [BASE_REPR_INT, BASE_REPR_INT] => {
            buildCompareInt(builder, scaffold, buildIntCompareOp(insn.op), lhsValue, rhsValue, result);
        }
        [BASE_REPR_BOOLEAN, BASE_REPR_BOOLEAN] => {
            buildCompareInt(builder, scaffold, buildBooleanCompareOp(insn.op), lhsValue, rhsValue, result);
        }
        [BASE_REPR_FLOAT, BASE_REPR_FLOAT] => {
            buildCompareFloat(builder, scaffold, buildFloatCompareOp(insn.op), lhsValue, rhsValue, result);
        }
    }
}

final readonly & map<bir:OrderOp> flippedOrderOps = {
    ">=": "<=",
    ">" : "<",
    "<=": ">=",
    "<" : ">"
};

type TaggedCompareResultTransform readonly & record {|
    bir:OrderOp op;
    llvm:IntPredicate predicate;
    int compareResult;
|};

const COMPARE_UN = -1;
const COMPARE_LT = 0;
const COMPARE_EQ = 1;
const COMPARE_GT = 2;

final readonly & table<TaggedCompareResultTransform> key(op) taggedCompareResultTransforms = table [
    { op: ">=", predicate: "sge", compareResult: COMPARE_EQ },
    { op: ">", predicate: "eq", compareResult: COMPARE_GT },
    { op: "<=", predicate: "ule", compareResult: COMPARE_EQ },
    { op: "<", predicate: "eq", compareResult: COMPARE_LT }
];

type TaggedCompareFunction readonly & record {|
    bir:UniformOrderType op;
    RuntimeFunction compareFunction;
    RuntimeFunction arrayCompareFunction;
|};

final readonly & table<TaggedCompareFunction> key(op) compareFunctions = table [
    { op: t:UT_INT, compareFunction: intCompareFunction, arrayCompareFunction: arrayIntCompareFunction },
    { op: t:UT_FLOAT, compareFunction: floatCompareFunction, arrayCompareFunction: arrayFloatCompareFunction },
    { op: t:UT_BOOLEAN, compareFunction: booleanCompareFunction, arrayCompareFunction: arrayBooleanCompareFunction },
    { op: t:UT_STRING, compareFunction: stringCompareFunction, arrayCompareFunction: arrayStringCompareFunction }
];

function buildCompareTagged(llvm:Builder builder, Scaffold scaffold, bir:CompareInsn insn, llvm:Value lhs, llvm:Value rhs, bir:Register result) {
    bir:OrderType orderTy = insn.orderType;
    llvm:Value? compareResult = ();
    if orderTy is bir:OptOrderType {
        compareResult = builder.call(buildRuntimeFunctionDecl(scaffold, compareFunctions.get(orderTy.opt).compareFunction), [lhs, rhs]);
    }
    else if orderTy is bir:ArrayOrderType {
        compareResult = builder.call(buildRuntimeFunctionDecl(scaffold, compareFunctions.get(orderTy[0].opt).arrayCompareFunction), [lhs, rhs]);
    }
    if compareResult is () {
        panic error("failed to find runtime compare function");
    }
    else {
        TaggedCompareResultTransform transform = taggedCompareResultTransforms.get(insn.op);
        buildStoreBoolean(builder, scaffold, builder.iCmp(transform.predicate, compareResult, llvm:constInt(LLVM_INT, transform.compareResult)), insn.result);
    }
}

function buildCompareTaggedBasic(llvm:Builder builder, Scaffold scaffold, llvm:Value lhs, llvm:Value rhs, bir:Register result)
    returns [llvm:BasicBlock, llvm:BasicBlock] {
    llvm:BasicBlock bbNil = scaffold.addBasicBlock();
    llvm:BasicBlock bbNotNil = scaffold.addBasicBlock();
    llvm:BasicBlock bbJoin = scaffold.addBasicBlock();
    llvm:Value isNil = builder.iCmp("eq", lhs, llvm:constNull(llvm:pointerType("i8", 1)));
    builder.condBr(isNil, bbNil, bbNotNil);
    builder.positionAtEnd(bbNil);
    buildStoreBoolean(builder, scaffold, llvm:constInt(LLVM_BOOLEAN, 0), result);
    builder.br(bbJoin);
    builder.positionAtEnd(bbNotNil);
    return [bbNotNil, bbJoin];
}

function buildCompareTaggedInt(llvm:Builder builder, Scaffold scaffold, llvm:IntPredicate op, llvm:Value lhs, llvm:Value rhs, bir:Register result) {
    var [bbNotNil, bbJoin] = buildCompareTaggedBasic(builder, scaffold, lhs, rhs, result);
    llvm:Value lhsUntagged = buildUntagInt(builder, scaffold, <llvm:PointerValue>lhs);
    buildCompareInt(builder, scaffold, op, lhsUntagged, rhs, result);
    builder.br(bbJoin);
    builder.positionAtEnd(bbJoin);
}

function buildCompareTaggedFloat(llvm:Builder builder, Scaffold scaffold, llvm:FloatPredicate op, llvm:Value lhs, llvm:Value rhs, bir:Register result) {
    var [bbNotNil, bbJoin] = buildCompareTaggedBasic(builder, scaffold, lhs, rhs, result);
    llvm:Value lhsUntagged = buildUntagFloat(builder, scaffold, <llvm:PointerValue>lhs);
    buildCompareFloat(builder, scaffold, op, lhsUntagged, rhs, result);
    builder.br(bbJoin);
    builder.positionAtEnd(bbJoin);
}

function buildCompareTaggedBoolean(llvm:Builder builder, Scaffold scaffold, llvm:IntPredicate op, llvm:Value lhs, llvm:Value rhs, bir:Register result) {
    var [bbNotNil, bbJoin] = buildCompareTaggedBasic(builder, scaffold, lhs, rhs, result);
    llvm:Value lhsUntagged = buildUntagBoolean(builder, <llvm:PointerValue>lhs);
    buildCompareInt(builder, scaffold, op, lhsUntagged, rhs, result);
    builder.br(bbJoin);
    builder.positionAtEnd(bbJoin);
}

function buildCompareInt(llvm:Builder builder, Scaffold scaffold, llvm:IntPredicate op, llvm:Value lhs, llvm:Value rhs, bir:Register result) {
    buildStoreBoolean(builder, scaffold, builder.iCmp(op, lhs, rhs), result);
}

function buildCompareFloat(llvm:Builder builder, Scaffold scaffold, llvm:FloatPredicate op, llvm:Value lhs, llvm:Value rhs, bir:Register result) {
    buildStoreBoolean(builder, scaffold, builder.fCmp(op, lhs, rhs), result);
}

function buildCompareString(llvm:Builder builder, Scaffold scaffold, llvm:IntPredicate op, llvm:Value lhs, llvm:Value rhs, bir:Register result) {
    buildStoreBoolean(builder, scaffold,
                      builder.iCmp(op, <llvm:Value>builder.call(buildRuntimeFunctionDecl(scaffold, stringCmpFunction), [lhs, rhs]),
                                   llvm:constInt(LLVM_INT, 0)),
                      result);
}

type CmpEqOp "ne"|"eq";

function buildEquality(llvm:Builder builder, Scaffold scaffold, bir:EqualityInsn insn) returns BuildError? {
    var [lhsRepr, lhsValue] = check buildReprValue(builder, scaffold, insn.operands[0]);
    var [rhsRepr, rhsValue] = check buildReprValue(builder, scaffold, insn.operands[1]);
    CmpEqOp op = insn.op[0] == "!" ?  "ne" : "eq"; 
    // JBUG cast
    boolean exact = (<string>insn.op).length() == 3; // either "===" or "!=="
    bir:Register result = insn.result;
    match [lhsRepr.base, rhsRepr.base] {
        [BASE_REPR_TAGGED, BASE_REPR_TAGGED] => {
            if reprIsImmediate(lhsRepr) || reprIsImmediate(rhsRepr) {
                return buildStoreBoolean(builder, scaffold, builder.iCmp(op, lhsValue, rhsValue), result);
            }
            else if reprIsString(lhsRepr) && reprIsString(rhsRepr) {
                if isAnyOperandSmallString(insn.operands) {
                    return buildStoreBoolean(builder, scaffold, builder.iCmp(op, lhsValue, rhsValue), result);
                }
                return buildEqualStringString(builder, scaffold, op, <llvm:PointerValue>lhsValue, <llvm:PointerValue>rhsValue, result);
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
    return scaffold.unimplementedErr("equality with two different untagged representations");
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
    llvm:Value b = <llvm:Value>builder.call(buildRuntimeFunctionDecl(scaffold, eqFunc), [lhsValue, rhsValue]);
    if op == "ne" {
        b = builder.iBitwise("xor", b, llvm:constInt(LLVM_BOOLEAN, 1));
    }
    return buildStoreBoolean(builder, scaffold, b, reg);
}

function isAnyOperandSmallString(bir:Operand[] operands) returns boolean {
    foreach var operand in operands {
        if operand is string {
            byte[] bytes = operand.toBytes();
            int nBytes = operand.length();
            if isSmallString(operand.length(), bytes, nBytes) {
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

function reprIsImmediate(Repr repr) returns boolean {
    return !(repr is TaggedRepr) || (repr.subtype & ~(t:NIL|t:BOOLEAN)) == 0;
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
    llvm:Value b = <llvm:Value>builder.call(buildRuntimeFunctionDecl(scaffold, func), [tagged1, tagged2]);
    if op == "ne" {
        b = builder.iBitwise("xor", b, llvm:constInt(LLVM_BOOLEAN, 1));
    }
    buildStoreBoolean(builder, scaffold, b, result);
}

function buildEqualStringString(llvm:Builder builder, Scaffold scaffold, CmpEqOp op, llvm:PointerValue tagged1, llvm:PointerValue tagged2, bir:Register result) {
    llvm:Value b = <llvm:Value>builder.call(buildRuntimeFunctionDecl(scaffold, stringEqFunction), [tagged1, tagged2]);
    if op == "ne" {
        b = builder.iBitwise("xor", b, llvm:constInt(LLVM_BOOLEAN, 1));
    }
    buildStoreBoolean(builder, scaffold, b, result);
}

final readonly & map<llvm:IntPredicate> signedIntPredicateOps = {
    "<": "slt",
    "<=": "sle",
    ">": "sgt",
    ">=": "sge"
};

final readonly & map<llvm:IntPredicate> unsignedIntPredicateOps = {
    "<": "ult",
    "<=": "ule",
    ">": "ugt",
    ">=": "uge"
};

final readonly & map<llvm:FloatPredicate> floatPredicateOps = {
    "<": "olt",
    "<=": "ole",
    ">": "ogt",
    ">=": "oge"
};

function buildIntCompareOp(bir:OrderOp op) returns llvm:IntPredicate {
    return <llvm:IntPredicate>signedIntPredicateOps[op];
}

function buildFloatCompareOp(bir:OrderOp op) returns llvm:FloatPredicate {
    return <llvm:FloatPredicate>floatPredicateOps[op];
}

function buildBooleanCompareOp(bir:OrderOp op) returns llvm:IntPredicate {
    return <llvm:IntPredicate>unsignedIntPredicateOps[op];
}
