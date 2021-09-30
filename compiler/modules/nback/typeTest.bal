import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

final RuntimeFunction listHasTypeFunction = {
    name: "list_has_type",
    ty: {
        returnType: "i1",
        paramTypes: [LLVM_TAGGED_PTR, "i64"]
    },
    attrs: ["readonly"]
};

final RuntimeFunction mappingHasTypeFunction = {
    name: "mapping_has_type",
    ty: {
        returnType: "i1",
        paramTypes: [LLVM_TAGGED_PTR, "i64"]
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
    t:SemType sourceType = insn.operand.semType;
    t:UniformTypeBitSet? bitSet = testTypeAsUniformBitSet(scaffold.typeContext(), sourceType, insn.semType);
    llvm:PointerValue tagged = <llvm:PointerValue>val;
    llvm:Value hasType;
    if !(bitSet is ()) {
        hasType = buildHasTagInSet(builder, tagged, bitSet);
    }
    else if t:isSubtypeSimple(semType, t:LIST) {
        hasType = buildHasListType(builder, scaffold, tagged, insn.operand.semType, semType);
    }
    else if t:isSubtypeSimple(semType, t:MAPPING) {
        hasType = buildHasMappingType(builder, scaffold, tagged, insn.operand.semType, semType);
    }
    else {
        return scaffold.unimplementedErr("unimplemented type test"); // should not happen in subset 6
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
    t:SemType sourceType = insn.operand.semType;
    t:SemType semType = insn.semType;
    t:UniformTypeBitSet? bitSet = testTypeAsUniformBitSet(scaffold.typeContext(), sourceType, insn.semType);
    if !(bitSet is ()) {
        builder.condBr(buildHasTagInSet(builder, tagged, bitSet), continueBlock, castFailBlock);
        builder.positionAtEnd(continueBlock);
        builder.store(check buildNarrowRepr(builder, scaffold, repr, val, scaffold.getRepr(insn.result)), scaffold.address(insn.result));
    }
    else {
        llvm:Value hasTag;
        if t:isSubtypeSimple(semType, t:LIST) {
            hasTag = buildHasListType(builder, scaffold, tagged, insn.operand.semType, semType);
        }
        else if t:isSubtypeSimple(semType, t:MAPPING) {
            hasTag = buildHasMappingType(builder, scaffold, tagged, insn.operand.semType, semType);
        }
        else {
            return scaffold.unimplementedErr("unimplemented type cast"); // should not happen in subset 6
        }
        builder.condBr(hasTag, continueBlock, castFailBlock);
        builder.positionAtEnd(continueBlock);
        builder.store(tagged, scaffold.address(insn.result));
    }
    builder.positionAtEnd(castFailBlock);
    builder.store(buildErrorForConstPanic(builder, scaffold, PANIC_TYPE_CAST, insn.position), scaffold.panicAddress());
    builder.br(scaffold.getOnPanic());
    builder.positionAtEnd(continueBlock);
}

function buildCondNarrow(llvm:Builder builder, Scaffold scaffold, bir:CondNarrowInsn insn) returns BuildError? {
    var [sourceRepr, value] = check buildReprValue(builder, scaffold, insn.operand);
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

function buildHasMappingType(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue tagged, t:SemType sourceType, t:SemType targetType) returns llvm:Value {
    t:UniformTypeBitSet bitSet = <t:UniformTypeBitSet>t:simpleMapMemberType(scaffold.typeContext(), targetType);
    return <llvm:Value>builder.call(buildRuntimeFunctionDecl(scaffold, mappingHasTypeFunction),
                                    [tagged, llvm:constInt(LLVM_INT, bitSet)]);      
}

function buildHasListType(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue tagged, t:SemType sourceType, t:SemType targetType) returns llvm:Value {
    t:UniformTypeBitSet bitSet = <t:UniformTypeBitSet>t:simpleArrayMemberType(scaffold.typeContext(), targetType);
    return <llvm:Value>builder.call(buildRuntimeFunctionDecl(scaffold, listHasTypeFunction),
                                    [tagged, llvm:constInt(LLVM_INT, bitSet)]);     
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
        return buildHasTag(builder, tagged, utCode * TAG_FACTOR);
    }
    t:UniformTypeBitSet roBitSet = <t:UniformTypeBitSet>(bitSet & t:UT_READONLY);
    utCode = t:uniformTypeCode(roBitSet);
    // JBUG crash if 16 is 0xF
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
