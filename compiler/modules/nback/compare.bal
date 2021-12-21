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

final RuntimeFunction decimalCompareFunction = {
    name: "decimal_cmp",
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

final RuntimeFunction arrayGenericCompareFunction = {
    name: "array_generic_compare",
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
    name: "array_float_compare",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

type TaggedCompareFunction readonly & record {|
    t:UniformTypeCode utCode;
    RuntimeFunction compareFunction;
    RuntimeFunction arrayCompareFunction;
|};

final readonly & table<TaggedCompareFunction> key(utCode) compareFunctions = table [
    { utCode: t:UT_INT, compareFunction: intCompareFunction, arrayCompareFunction: arrayIntCompareFunction },
    { utCode: t:UT_FLOAT, compareFunction: floatCompareFunction, arrayCompareFunction: arrayFloatCompareFunction },
    { utCode: t:UT_BOOLEAN, compareFunction: booleanCompareFunction, arrayCompareFunction: arrayBooleanCompareFunction },
    { utCode: t:UT_STRING, compareFunction: stringCompareFunction, arrayCompareFunction: arrayStringCompareFunction },
    { utCode: t:UT_DECIMAL, compareFunction: decimalCompareFunction, arrayCompareFunction: arrayDecimalCompareFunction }
];

function buildCompare(llvm:Builder builder, Scaffold scaffold, bir:CompareInsn insn) returns BuildError? {
    bir:Operand lhs = insn.operands[0];
    bir:Operand rhs = insn.operands[1];
    var [lhsRepr, lhsValue] = check buildReprValue(builder, scaffold, lhs);
    var [rhsRepr, rhsValue] = check buildReprValue(builder, scaffold, rhs);
    bir:Register result = insn.result;

    if lhsRepr is TaggedRepr && rhsRepr is TaggedRepr {
        if lhsRepr.subtype == t:STRING && rhsRepr.subtype == t:STRING {
            buildCompareString(builder, scaffold, buildIntCompareOp(insn.op), lhsValue, rhsValue, result);
        }
        else {
            t:UniformTypeBitSet OrderTyMinusNil = (lhsRepr.subtype | rhsRepr.subtype) & ~t:NIL;
            t:UniformTypeCode?  OrderTyMinusNilCode = t:uniformTypeCode(OrderTyMinusNil);
            if OrderTyMinusNilCode is t:UT_STRING|t:UT_INT|t:UT_FLOAT|t:UT_BOOLEAN|t:UT_DECIMAL {
                RuntimeFunction comparator = compareFunctions.get(OrderTyMinusNilCode).compareFunction;
                buildCompareStore(builder, scaffold, insn, lhsValue, rhsValue, comparator);
            }
            else if OrderTyMinusNil == t:LIST {
                t:Context tc = scaffold.typeContext();
                if isOperandIntSubtypeArray(tc, lhs) && isOperandIntSubtypeArray(tc, rhs) {
                    buildCompareSpecializedIntList(builder, scaffold, insn, lhsValue, rhsValue);
                }
                else {
                    buildCompareStore(builder, scaffold, insn, lhsValue, rhsValue, arrayGenericCompareFunction);
                }
            }
            else if OrderTyMinusNil == t:NEVER {
                buildStoreBoolean(builder, scaffold,  llvm:constInt(LLVM_BOOLEAN, insn.op is "<="|">=" ? 1 : 0), insn.result);
            }
            else {
                panic error("incomparable operands");
            }
        }
        return;
    }

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
    }
}

function isOperandIntSubtypeArray(t:Context tc, bir:Operand o) returns boolean {
    return o is bir:Register && t:isSubtypeSimple(t:listMemberType(tc, o.semType ,()), t:INT);
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
    buildCompareStore(builder, scaffold, insn, lhs, rhs, arrayGenericCompareFunction);
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
    llvm:Value result = <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(comparator), [lhs, rhs]);
    buildStoreBoolean(builder, scaffold, builder.iCmp(transform.predicate, result, llvm:constInt(LLVM_INT, transform.compareResult)), insn.result);
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
    llvm:Value isNil = builder.iCmp("eq", lhs, llvm:constNull(llvm:pointerType("i8", 1)));
    builder.condBr(isNil, bbNil, bbNotNil);
    builder.positionAtEnd(bbNil);
    buildStoreBoolean(builder, scaffold, llvm:constInt(LLVM_BOOLEAN, 0), result);
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
                      builder.iCmp(op, <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(stringCmpFunction), [lhs, rhs]),
                                   llvm:constInt(LLVM_INT, 0)),
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
