import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

final RuntimeFunction typeContainsFunction = {
    name: "type_contains",
    ty: {
        returnType: LLVM_BOOLEAN,
        paramTypes: [llvm:pointerType(llTypeTestType), LLVM_TAGGED_PTR]
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

function buildTypeTest(llvm:Builder builder, Scaffold scaffold, bir:TypeTestInsn insn) returns BuildError? {
    var [repr, val] = check buildReprValue(builder, scaffold, insn.operand);
    if repr.base != BASE_REPR_TAGGED {
         // in subset 5 should be const true/false
        return scaffold.unimplementedErr("test of untagged value");
    }
    t:SemType semType = insn.semType;
    t:UniformTypeBitSet? bitSet = testTypeAsUniformBitSet(scaffold.typeContext(), insn.operand.semType, insn.semType);
    llvm:PointerValue tagged = <llvm:PointerValue>val;
    llvm:Value hasType;
    if bitSet != () {
        hasType = buildHasTagInSet(builder, tagged, bitSet);
    }
    else {
        hasType = check buildHasComplexSemType(builder, scaffold, tagged, <t:ComplexSemType>semType);
    }
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
    var [repr, val] = check buildReprValue(builder, scaffold, insn.operand);
    if repr.base != BASE_REPR_TAGGED {
        // SUBSET no singleton types; no subtypes of simple basic types
        return scaffold.unimplementedErr("cast from untagged value");
    }
    llvm:PointerValue tagged = <llvm:PointerValue>val;
    llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
    llvm:BasicBlock castFailBlock = scaffold.addBasicBlock();
    t:SemType semType = insn.semType;
    t:UniformTypeBitSet? bitSet = testTypeAsUniformBitSet(scaffold.typeContext(), insn.operand.semType, semType);
    if bitSet != () {
        builder.condBr(buildHasTagInSet(builder, tagged, bitSet), continueBlock, castFailBlock);
        builder.positionAtEnd(continueBlock);
        builder.store(check buildNarrowRepr(builder, scaffold, repr, val, scaffold.getRepr(insn.result)), scaffold.address(insn.result));
    }
    else {
        builder.condBr(check buildHasComplexSemType(builder, scaffold, tagged, <t:ComplexSemType>semType), continueBlock, castFailBlock);
        builder.positionAtEnd(continueBlock);
        builder.store(buildExactify(builder, scaffold, tagged, insn.result.semType), scaffold.address(insn.result));
    }
    builder.positionAtEnd(castFailBlock);
    builder.store(buildErrorForConstPanic(builder, scaffold, PANIC_TYPE_CAST, insn.pos), scaffold.panicAddress());
    builder.br(scaffold.getOnPanic());
    builder.positionAtEnd(continueBlock);
}

function buildCondNarrow(llvm:Builder builder, Scaffold scaffold, bir:CondNarrowInsn insn) returns BuildError? {
    var [sourceRepr, value] = check buildReprValue(builder, scaffold, insn.operand);
    t:SemType semType = insn.result.semType;
    if sourceRepr.base == BASE_REPR_TAGGED && testTypeAsUniformBitSet(scaffold.typeContext(), insn.operand.semType, semType) == () {
        value = buildExactify(builder, scaffold, <llvm:PointerValue>value, semType);
    }
    llvm:Value narrowed = check buildNarrowRepr(builder, scaffold, sourceRepr, value, scaffold.getRepr(insn.result));
    builder.store(narrowed, scaffold.address(insn.result));
}

function buildNarrowRepr(llvm:Builder builder, Scaffold scaffold, Repr sourceRepr, llvm:Value value, Repr targetRepr) returns llvm:Value|BuildError {
    BaseRepr sourceBaseRepr = sourceRepr.base;
    BaseRepr targetBaseRepr = targetRepr.base;
    llvm:Value narrowed;
    if sourceBaseRepr == targetBaseRepr {
        return value;
    }
    if sourceBaseRepr == BASE_REPR_TAGGED {
        return buildUntagged(builder, scaffold, <llvm:PointerValue>value, targetRepr);
    }
    return scaffold.unimplementedErr("unimplemented narrowing conversion required");
}

function buildHasComplexSemType(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue tagged, t:ComplexSemType targetType) returns llvm:Value|BuildError {
    return <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(typeContainsFunction), [scaffold.getTypeTest(targetType), tagged]);
}

function buildExactify(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue tagged, t:SemType targetType) returns llvm:PointerValue {
    t:Context tc = scaffold.typeContext();
    if t:mappingAtomicTypeRw(tc, targetType) == () && t:listAtomicTypeRw(tc, targetType) == () {
        return tagged;
    }
    return <llvm:PointerValue>builder.call(scaffold.getRuntimeFunctionDecl(structureExactifyFunction),
                                           [tagged, scaffold.getExactify(t:diff(targetType, t:READONLY))]);
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
    // JBUG #33399 crash if 16 is 0xF
    if utCode != () && bitSet == (roBitSet | 16) {
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
