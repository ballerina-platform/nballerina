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
    llvm:PointerValue tagged = <llvm:PointerValue>val;
    llvm:Value hasType;
    if semType === t:BOOLEAN {
        hasType = buildHasTag(builder, tagged, TAG_BOOLEAN);
    }
    else if semType === t:INT {
        hasType = buildHasTag(builder, tagged, TAG_INT);
    }
    else if semType === t:FLOAT {
        hasType = buildHasTag(builder, tagged, TAG_FLOAT);
    }
    else if semType === t:STRING {
        hasType = buildHasTag(builder, tagged, TAG_STRING);
    }
    else if semType === t:ERROR {
        hasType = buildHasTag(builder, tagged, TAG_ERROR);
    }
    else if t:isSubtypeSimple(semType, t:LIST) {
        hasType = buildHasListType(builder, scaffold, tagged, insn.operand.semType, semType);
    }
    else if t:isSubtypeSimple(semType, t:MAPPING) {
        hasType = buildHasMappingType(builder, scaffold, tagged, insn.operand.semType, semType);
    }
    else if semType is t:UniformTypeBitSet {
        hasType = buildHasTagInSet(builder, tagged, semType);
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

function buildHasListType(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue tagged, t:SemType sourceType, t:SemType targetType) returns llvm:Value {
    if t:intersect(sourceType, t:LIST) == targetType {
        return buildHasBasicTypeTag(builder, tagged, TAG_BASIC_TYPE_LIST);
    }
    else {
        t:UniformTypeBitSet bitSet = <t:UniformTypeBitSet>t:simpleArrayMemberType(scaffold.typeContext(), targetType);
        return <llvm:Value>builder.call(buildRuntimeFunctionDecl(scaffold, listHasTypeFunction),
                                        [tagged, llvm:constInt(LLVM_INT, bitSet)]);      
    }
}

function buildHasMappingType(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue tagged, t:SemType sourceType, t:SemType targetType) returns llvm:Value {
    if t:intersect(sourceType, t:MAPPING) == targetType {
        return buildHasBasicTypeTag(builder, tagged, TAG_BASIC_TYPE_MAPPING);
    }
    else {
        t:UniformTypeBitSet bitSet = <t:UniformTypeBitSet>t:simpleMapMemberType(scaffold.typeContext(), targetType);
        return <llvm:Value>builder.call(buildRuntimeFunctionDecl(scaffold, mappingHasTypeFunction),
                                        [tagged, llvm:constInt(LLVM_INT, bitSet)]);      
    }
}

function buildTypeCast(llvm:Builder builder, Scaffold scaffold, bir:TypeCastInsn insn) returns BuildError? {
    var [repr, val] = check buildReprValue(builder, scaffold, insn.operand);
    if repr.base != BASE_REPR_TAGGED {
        return scaffold.unimplementedErr("cast from untagged value"); // should not happen in subset 2
    }
    llvm:PointerValue tagged = <llvm:PointerValue>val;
    llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
    llvm:BasicBlock castFailBlock = scaffold.addBasicBlock();
    t:SemType semType = insn.semType;
    if semType === t:BOOLEAN {
        builder.condBr(buildHasTag(builder, tagged, TAG_BOOLEAN), continueBlock, castFailBlock);
        builder.positionAtEnd(continueBlock);
        buildStoreBoolean(builder, scaffold, buildUntagBoolean(builder, tagged), insn.result);
    }
    else if semType === t:INT {
        builder.condBr(buildHasTag(builder, tagged, TAG_INT), continueBlock, castFailBlock);
        builder.positionAtEnd(continueBlock);
        buildStoreInt(builder, scaffold, buildUntagInt(builder, scaffold, tagged), insn.result);
    }
    else if semType === t:FLOAT {
        builder.condBr(buildHasTag(builder, tagged, TAG_FLOAT), continueBlock, castFailBlock);
        builder.positionAtEnd(continueBlock);
        buildStoreFloat(builder, scaffold, buildUntagFloat(builder, scaffold, tagged), insn.result);
    }
    else {
        llvm:Value hasTag;
        if semType === t:STRING {
            hasTag = buildHasTag(builder, tagged, TAG_STRING);
        }
        else if semType === t:ERROR {
            hasTag = buildHasTag(builder, tagged, TAG_ERROR);
        }
        else if t:isSubtypeSimple(semType, t:LIST) {
            hasTag = buildHasListType(builder, scaffold, tagged, insn.operand.semType, semType);
        }
        else if t:isSubtypeSimple(semType, t:MAPPING) {
            hasTag = buildHasMappingType(builder, scaffold, tagged, insn.operand.semType, semType);
        }
        else if semType is t:UniformTypeBitSet {
            hasTag = buildHasTagInSet(builder, tagged, semType);
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

function buildHasBasicTypeTag(llvm:Builder builder, llvm:PointerValue tagged, int basicTypeTag) returns llvm:Value {
    return buildTestTag(builder, tagged, basicTypeTag, TAG_BASIC_TYPE_MASK);    
}

function buildHasTagInSet(llvm:Builder builder, llvm:PointerValue tagged, t:UniformTypeBitSet bitSet) returns llvm:Value {
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
