import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

final RuntimeFunction typeContainsFunction = {
    name: "type_contains",
    ty: {
        returnType: LLVM_BOOLEAN,
        paramTypes: [llvm:pointerType(llComplexType), LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction typeContainsIntFunction = {
    name: "type_contains_int",
    ty: {
        returnType: LLVM_BOOLEAN,
        paramTypes: [llvm:pointerType(llComplexType), LLVM_INT]
    },
    attrs: ["readonly"]
};

final RuntimeFunction typeContainsFloatFunction = {
    name: "type_contains_float",
    ty: {
        returnType: LLVM_BOOLEAN,
        paramTypes: [llvm:pointerType(llComplexType), LLVM_DOUBLE]
    },
    attrs: ["readonly"]
};

final RuntimeFunction structureExactifyFunction = {
    name: "structure_exactify",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [LLVM_TAGGED_PTR, llvm:pointerType(LLVM_TID)]
    },
    attrs: ["readonly"]
};

type TypeTestedValue record {|
    llvm:Value hasType;
    llvm:Value value;
    Repr repr;
    llvm:PointerValue? valueToExactify;
|};

function buildTypeTest(llvm:Builder builder, Scaffold scaffold, bir:TypeTestInsn insn) returns BuildError? {
    TypeTestedValue { hasType } = check buildTypeTestedValue(builder, scaffold, insn.operand, insn.pos, insn.semType);
    if insn.negated {
        buildStoreBoolean(builder, scaffold, 
                          builder.iBitwise("xor", llvm:constInt(LLVM_BOOLEAN, 1), hasType), 
                          insn.result);
    }
    else {
        buildStoreBoolean(builder, scaffold, hasType, insn.result);
    }
}

function buildTypeCast(llvm:Builder builder, Scaffold scaffold, bir:TypeCastInsn insn) returns BuildError? {
    TypeTestedValue { hasType, value, repr, valueToExactify } = check buildTypeTestedValue(builder, scaffold, insn.operand, insn.pos, insn.semType);
    llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
    llvm:BasicBlock castFailBlock = scaffold.addBasicBlock();
    builder.condBr(hasType, continueBlock, castFailBlock);
    builder.positionAtEnd(continueBlock);
    llvm:Value valueToStore;
    if valueToExactify == () {
        valueToStore = check buildNarrowRepr(builder, scaffold, repr, value, scaffold.getRepr(insn.result), insn.pos);
    }
    else {
        valueToStore = buildExactify(builder, scaffold, valueToExactify, insn.result.semType);
    }
    builder.store(valueToStore, scaffold.address(insn.result));
    builder.positionAtEnd(castFailBlock);
    builder.store(buildErrorForConstPanic(builder, scaffold, PANIC_TYPE_CAST, insn.pos), scaffold.panicAddress());
    builder.br(scaffold.getOnPanic());
    builder.positionAtEnd(continueBlock);
}

function buildTypeTestedValue(llvm:Builder builder, Scaffold scaffold, bir:Register operand, bir:Position pos, t:SemType semType) returns BuildError|TypeTestedValue {
    var [repr, value] = check buildReprValue(builder, scaffold, operand);
    llvm:PointerValue? valueToExactify = ();
    llvm:Value hasType;
    BaseRepr baseRepr = repr.base;
    if baseRepr == BASE_REPR_TAGGED { 
        llvm:PointerValue tagged = <llvm:PointerValue>value;
        t:UniformTypeBitSet? bitSet = testTypeAsUniformBitSet(scaffold.typeContext(), operand.semType, semType);
        if bitSet != () {
            hasType = buildHasTagInSet(builder, tagged, bitSet);
        }
        else {
            hasType = <llvm:Value>scaffold.buildRuntimeFunctionCall(builder, typeContainsFunction, [scaffold.getTypeTest(<t:ComplexSemType>semType), tagged]);
            valueToExactify = tagged;
        }
    }
    else if baseRepr == BASE_REPR_INT {
        t:IntSubtypeConstraints? intConstraints = t:intSubtypeConstraints(semType);
        if intConstraints != () && intConstraints.all {
            hasType = builder.iBitwise("and", builder.iCmp("sle", llvm:constInt(LLVM_INT, intConstraints.min), value),
                builder.iCmp("sge", llvm:constInt(LLVM_INT, intConstraints.max), value));
        }
        else {
            hasType = <llvm:Value>scaffold.buildRuntimeFunctionCall(builder, typeContainsIntFunction, [scaffold.getTypeTest(<t:ComplexSemType>semType), value]);
        }
    }
    else if baseRepr == BASE_REPR_FLOAT {
        hasType = <llvm:Value>scaffold.buildRuntimeFunctionCall(builder, typeContainsFloatFunction, [scaffold.getTypeTest(<t:ComplexSemType>semType), value]);
    }
    else {
        BASE_REPR_BOOLEAN _ = baseRepr;
        t:BooleanSubtype sub = <t:BooleanSubtype>t:booleanSubtype(<t:ComplexSemType>semType);
        hasType = builder.iCmp("eq", value, llvm:constInt(LLVM_BOOLEAN, sub.value ? 1 : 0));
    }
    return { hasType, valueToExactify, value, repr };
}

function buildCondNarrow(llvm:Builder builder, Scaffold scaffold, bir:CondNarrowInsn insn) returns BuildError? {
    var [sourceRepr, value] = check buildReprValue(builder, scaffold, insn.operand);
    t:SemType semType = insn.result.semType;
    if sourceRepr.base == BASE_REPR_TAGGED && testTypeAsUniformBitSet(scaffold.typeContext(), insn.operand.semType, semType) == () {
        value = buildExactify(builder, scaffold, <llvm:PointerValue>value, semType);
    }
    llvm:Value narrowed = check buildNarrowRepr(builder, scaffold, sourceRepr, value, scaffold.getRepr(insn.result), insn.pos);
    builder.store(narrowed, scaffold.address(insn.result));
}

function buildNarrowRepr(llvm:Builder builder, Scaffold scaffold, Repr sourceRepr, llvm:Value value, Repr targetRepr, bir:Position pos) returns llvm:Value|BuildError {
    BaseRepr sourceBaseRepr = sourceRepr.base;
    BaseRepr targetBaseRepr = targetRepr.base;
    if sourceBaseRepr == targetBaseRepr {
        return value;
    }
    if sourceBaseRepr == BASE_REPR_TAGGED {
        return buildUntagged(builder, scaffold, <llvm:PointerValue>value, targetRepr);
    }
    return scaffold.unimplementedErr("unimplemented narrowing conversion required", pos);
}

function buildExactify(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue tagged, t:SemType targetType) returns llvm:PointerValue {
    t:Context tc = scaffold.typeContext();
    if t:mappingAtomicTypeRw(tc, targetType) == () && t:listAtomicTypeRw(tc, targetType) == () {
        return tagged;
    }
    return <llvm:PointerValue>scaffold.buildRuntimeFunctionCall(builder, structureExactifyFunction, [tagged, scaffold.getExactify(t:diff(targetType, t:READONLY))]);
}

// If we can perform the type test by testing whether the value belongs to a UniformTypeBitSet, then return that bit set.
// Otherwise return nil.
function testTypeAsUniformBitSet(t:Context tc, t:SemType sourceType, t:SemType targetType) returns t:UniformTypeBitSet? {
    t:UniformTypeBitSet bitSet = t:widenToUniformTypes(targetType);
    // For example, let L be a subtype of list, and support sourceType is L? and targetType is L
    // Then bitSet is t:LIST and (sourceType & bitSet) is L which is (non-proper) subtype of the targetType.
    // If a value was in bitSet and in sourceType but not in target
    // Here we test that it is impossible to have a value that is both in sourceType and in bitSet, but not in targetType.
    // So if it's in sourceType (which we know it must be), then if it's in bitSet, it must be in targetType.
    // Also we know that if it's in targetType, it must be in bitSet.
    if t:isEmpty(tc, t:diff(t:intersect(sourceType, bitSet), targetType)) {
        return bitSet;
    }
    return ();
}

function buildHasTagInSet(llvm:Builder builder, llvm:PointerValue tagged, t:UniformTypeBitSet bitSet) returns llvm:Value {
    t:UniformTypeCode? utCode = t:uniformTypeCode(bitSet);
    if utCode != () {
        return buildHasTag(builder, tagged, utCode << TAG_SHIFT);
    }
    t:UniformTypeBitSet roBitSet = <t:UniformTypeBitSet>(bitSet & t:UT_READONLY);
    utCode = t:uniformTypeCode(roBitSet);
    if utCode != () && bitSet == (roBitSet | 0xF) {
        return buildTestTag(builder, tagged, utCode, TAG_BASIC_TYPE_MASK);
    }
    return builder.iCmp("ne",
                        builder.iBitwise("and",
                                         builder.iBitwise("shl",
                                                          llvm:constInt(LLVM_INT, 1),
                                                          builder.iBitwise("lshr",
                                                                           // need to mask out the 0x20 bit
                                                                           builder.iBitwise("and",
                                                                                            buildTaggedPtrToInt(builder, tagged),
                                                                                            llvm:constInt(LLVM_INT, TAG_MASK)),
                                                                           llvm:constInt(LLVM_INT, TAG_SHIFT))),
                                         llvm:constInt(LLVM_INT, bitSet)),
                        llvm:constInt(LLVM_INT, 0));
}
