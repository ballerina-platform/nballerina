import wso2/nballerina.comm.err;
import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

final RuntimeFunction stringCmpFunction = {
    name: "string_cmp",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction decimalCmpFunction = {
    name: "decimal_cmp",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction optIntCompareFunction = {
    name: "opt_int_compare",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction optFloatCompareFunction = {
    name: "opt_float_compare",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction optStringCompareFunction = {
    name: "opt_string_compare",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction optBooleanCompareFunction = {
    name: "opt_boolean_compare",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction optDecimalCompareFunction = {
    name: "opt_decimal_compare",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction optListCompareFunction = {
    name: "opt_list_compare",
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

final RuntimeFunction arrayListCompareFunction = {
    name: "array_list_compare",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction arrayExactIntCompareFunction = {
    name: "array_exact_int_compare",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction arrayDecimalCompareFunction = {
    name: "array_decimal_compare",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

type TaggedCompareFunction readonly & record {|
    t:BasicTypeBitSet btCode;
    RuntimeFunction optCompareFunction;
    RuntimeFunction arrayCompareFunction;
|};

final readonly & table<TaggedCompareFunction> key(btCode) compareFunctions = table [
    { btCode: t:BT_INT, optCompareFunction: optIntCompareFunction, arrayCompareFunction: arrayIntCompareFunction },
    { btCode: t:BT_FLOAT, optCompareFunction: optFloatCompareFunction, arrayCompareFunction: arrayFloatCompareFunction },
    { btCode: t:BT_BOOLEAN, optCompareFunction: optBooleanCompareFunction, arrayCompareFunction: arrayBooleanCompareFunction },
    { btCode: t:BT_STRING, optCompareFunction: optStringCompareFunction, arrayCompareFunction: arrayStringCompareFunction },
    { btCode: t:BT_DECIMAL, optCompareFunction: optDecimalCompareFunction, arrayCompareFunction: arrayDecimalCompareFunction }
];

function buildCompare(llvm:Builder builder, Scaffold scaffold, bir:CompareInsn insn) returns BuildError? {
    bir:Operand lhs = insn.operands[0];
    bir:Operand rhs = insn.operands[1];
    var [lhsRepr, lhsValue] = check buildReprValue(builder, scaffold, lhs);
    var [rhsRepr, rhsValue] = check buildReprValue(builder, scaffold, rhs);
    bir:Register result = insn.result;

    if lhsRepr is TaggedRepr && rhsRepr is TaggedRepr {
        t:BasicTypeBitSet subtype = lhsRepr.subtype | rhsRepr.subtype;
        if subtype == t:STRING {
            buildCompareString(builder, scaffold, buildIntCompareOp(insn.op), lhsValue, rhsValue, result);
        }
        else if subtype == t:DECIMAL {
            buildCompareDecimal(builder, scaffold, buildIntCompareOp(insn.op), lhsValue, rhsValue, result);
        }
        else if subtype == t:NIL {
            buildStoreBoolean(builder, scaffold, constBoolean(scaffold, insn.op is "<="|">="), insn.result);
        }
        else {
            t:BasicTypeBitSet orderTypeMinusNil = subtype & ~t:NIL;
            if t:isSubtypeSimple(orderTypeMinusNil, t:LIST) {
                t:Context tc = scaffold.typeContext();
                t:SemType lhsType = lhs.semType;
                t:SemType rhsType = rhs.semType; 
                if isPotentiallyExactIntArray(tc, lhsType) && isPotentiallyExactIntArray(tc, rhsType) {
                    buildCompareSpecializedIntList(builder, scaffold, insn, lhsValue, rhsValue);
                }
                else {
                    buildCompareStore(builder, scaffold, insn, lhsValue, rhsValue,
                                      getArrayCompareFunction(tc, [lhsType, rhsType]));
                }
            }
            else {
                // Single basic type code here should be guaranteed by comparability of operands
                var orderTypeMinusNilCode = <t:BasicTypeCode>t:basicTypeCode(orderTypeMinusNil);
                RuntimeFunction compareFunc = compareFunctions.get(orderTypeMinusNilCode).optCompareFunction;
                buildCompareStore(builder, scaffold, insn, lhsValue, rhsValue, compareFunc);
            }    
        }
    }
    else {
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
            [BASE_REPR_INT, BASE_REPR_INT] => {
                buildCompareInt(builder, scaffold, buildIntCompareOp(insn.op), lhsValue, rhsValue, result);
            }
            [BASE_REPR_BOOLEAN, BASE_REPR_BOOLEAN] => {
                buildCompareInt(builder, scaffold, buildBooleanCompareOp(insn.op), lhsValue, rhsValue, result);
            }
            [BASE_REPR_FLOAT, BASE_REPR_FLOAT] => {
                buildCompareFloat(builder, scaffold, buildFloatCompareOp(insn.op), lhsValue, rhsValue, result);
            }
            _ => {
                panic err:impossible(`no way to compare ${lhsRepr.base}/${rhsRepr.base}`);
            }
        }
    }
}

function getArrayCompareFunction(t:Context tc, t:SemType[2] semTypes) returns RuntimeFunction {
    t:BasicTypeBitSet memberType = 0;
    foreach int i in 0 ..< 2 {
        memberType |= t:widenToBasicTypes(t:listMemberTypeInner(tc, semTypes[i], t:INT));
    }
    if memberType != t:NIL {
        memberType &= ~t:NIL;
        t:BasicTypeCode? memberTypeCode = t:basicTypeCode(memberType);
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
    // This happens mostly with tuples.
    // For arrays, this can only happen with arrays of ()
    return optListCompareFunction;
}

function isPotentiallyExactIntArray(t:Context tc, t:SemType semType) returns boolean {
    t:ListAtomicType? atomic = t:listAtomicType(tc, semType);
    return atomic == () ? false : t:listAtomicSimpleArrayMemberTypeInner(atomic) == t:INT;
}

final readonly & map<bir:OrderOp> flippedOrderOps = {
    ">=": "<=",
    ">" : "<",
    "<=": ">=",
    "<" : ">"
};

const COMPARE_UN = -1;
const COMPARE_LT = 0;
const COMPARE_EQ = 1;
const COMPARE_GT = 2;

function buildCompareSpecializedIntList(llvm:Builder builder, Scaffold scaffold, bir:CompareInsn insn, llvm:Value lhs, llvm:Value rhs) {
    llvm:BasicBlock bbExact = scaffold.addBasicBlock();
    llvm:BasicBlock bbInexact = scaffold.addBasicBlock();
    llvm:BasicBlock bbJoin = scaffold.addBasicBlock();
    // SUBSET lhs and rhs must have static type `int[]`
    llvm:Value isExact = builder.iBitwise("and", buildIsExact(builder, scaffold, lhs), buildIsExact(builder, scaffold, rhs));
    builder.condBr(isExact, bbExact, bbInexact);
    builder.positionAtEnd(bbExact);
    buildCompareStore(builder, scaffold, insn, lhs, rhs, arrayExactIntCompareFunction);
    builder.br(bbJoin);
    builder.positionAtEnd(bbInexact);
    buildCompareStore(builder, scaffold, insn, lhs, rhs, arrayIntCompareFunction);
    builder.br(bbJoin);
    builder.positionAtEnd(bbJoin);
}

type TaggedCompareResultTransform readonly & record {|
    bir:OrderOp op;
    llvm:IntPredicate predicate;
    int compareResult;
|};

final readonly & table<TaggedCompareResultTransform> key(op) taggedCompareResultTransforms = table [
    { op: ">=", predicate: "sge", compareResult: COMPARE_EQ },
    { op: ">", predicate: "eq", compareResult: COMPARE_GT },
    { op: "<=", predicate: "ule", compareResult: COMPARE_EQ },
    { op: "<", predicate: "eq", compareResult: COMPARE_LT }
];

function buildCompareStore(llvm:Builder builder, Scaffold scaffold, bir:CompareInsn insn, llvm:Value lhs, llvm:Value rhs, RuntimeFunction comparator) {
    TaggedCompareResultTransform transform = taggedCompareResultTransforms.get(insn.op);
    llvm:Value result = buildRuntimeFunctionCall(builder, scaffold, comparator, [lhs, rhs]);
    buildStoreBoolean(builder, scaffold, builder.iCmp(transform.predicate, result, constInt(scaffold, transform.compareResult)), insn.result);
}

function buildCompareTaggedInt(llvm:Builder builder, Scaffold scaffold, llvm:IntPredicate op, llvm:Value lhs, llvm:Value rhs, bir:Register result) {
    llvm:BasicBlock bbJoin = buildCompareTaggedBasic(builder, scaffold, lhs, rhs, result);
    llvm:Value lhsUntagged = buildUntagInt(builder, scaffold, <llvm:PointerValue>lhs);
    buildCompareInt(builder, scaffold, op, lhsUntagged, rhs, result);
    builder.br(bbJoin);
    builder.positionAtEnd(bbJoin);
}

function buildCompareTaggedFloat(llvm:Builder builder, Scaffold scaffold, llvm:FloatPredicate op, llvm:Value lhs, llvm:Value rhs, bir:Register result) {
    llvm:BasicBlock bbJoin = buildCompareTaggedBasic(builder, scaffold, lhs, rhs, result);
    llvm:Value lhsUntagged = buildUntagFloat(builder, scaffold, <llvm:PointerValue>lhs);
    buildCompareFloat(builder, scaffold, op, lhsUntagged, rhs, result);
    builder.br(bbJoin);
    builder.positionAtEnd(bbJoin);
}

function buildCompareTaggedBoolean(llvm:Builder builder, Scaffold scaffold, llvm:IntPredicate op, llvm:Value lhs, llvm:Value rhs, bir:Register result) {
    llvm:BasicBlock bbJoin = buildCompareTaggedBasic(builder, scaffold, lhs, rhs, result);
    llvm:Value lhsUntagged = buildUntagBoolean(builder, <llvm:PointerValue>lhs);
    buildCompareInt(builder, scaffold, op, lhsUntagged, rhs, result);
    builder.br(bbJoin);
    builder.positionAtEnd(bbJoin);
}

function buildCompareTaggedBasic(llvm:Builder builder, Scaffold scaffold, llvm:Value lhs, llvm:Value rhs, bir:Register result) returns llvm:BasicBlock {
    llvm:BasicBlock bbNil = scaffold.addBasicBlock();
    llvm:BasicBlock bbNotNil = scaffold.addBasicBlock();
    llvm:BasicBlock bbJoin = scaffold.addBasicBlock();
    llvm:Value isNil = builder.iCmp("eq", lhs, scaffold.llContext().constNull(llvm:pointerType("i8", 1)));
    builder.condBr(isNil, bbNil, bbNotNil);
    builder.positionAtEnd(bbNil);
    buildStoreBoolean(builder, scaffold, constBoolean(scaffold, false), result);
    builder.br(bbJoin);
    builder.positionAtEnd(bbNotNil);
    return bbJoin;
}

function buildCompareInt(llvm:Builder builder, Scaffold scaffold, llvm:IntPredicate op, llvm:Value lhs, llvm:Value rhs, bir:Register result) {
    buildStoreBoolean(builder, scaffold, builder.iCmp(op, lhs, rhs), result);
}

function buildCompareFloat(llvm:Builder builder, Scaffold scaffold, llvm:FloatPredicate op, llvm:Value lhs, llvm:Value rhs, bir:Register result) {
    buildStoreBoolean(builder, scaffold, builder.fCmp(op, lhs, rhs), result);
}

function buildCompareString(llvm:Builder builder, Scaffold scaffold, llvm:IntPredicate op, llvm:Value lhs, llvm:Value rhs, bir:Register result) {
    buildStoreBoolean(builder, scaffold,
                      builder.iCmp(op, buildRuntimeFunctionCall(builder, scaffold, stringCmpFunction, [lhs, rhs]),
                                   constInt(scaffold, 0)),
                      result);
}

function buildCompareDecimal(llvm:Builder builder, Scaffold scaffold, llvm:IntPredicate op, llvm:Value lhs, llvm:Value rhs, bir:Register result) {
    buildStoreBoolean(builder, scaffold,
                      builder.iCmp(op, buildRuntimeFunctionCall(builder, scaffold, decimalCmpFunction, [lhs, rhs]),
                                   constInt(scaffold, 0)),
                      result);
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
