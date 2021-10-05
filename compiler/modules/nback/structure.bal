import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

final RuntimeFunction listSetFunction = {
    name: "list_set",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, "i64", LLVM_TAGGED_PTR]
    },
    attrs: []
};

final RuntimeFunction mappingSetFunction = {
    name: "mapping_set",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: []
};

final RuntimeFunction mappingGetFunction = {
    name: "mapping_get",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction mappingInitMemberFunction = {
    name: "mapping_init_member",
    ty: {
        returnType: REPR_VOID.llvm,
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: []
};

final RuntimeFunction mappingConstructFunction = {
    name: "mapping_construct",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [llvm:pointerType(llInherentType), "i64"]
    },
    attrs: []
};

const LLVM_INDEX = "i32";

function buildListConstruct(llvm:Builder builder, Scaffold scaffold, bir:ListConstructInsn insn) returns BuildError? {
    final llvm:Type unsizedArrayType = llvm:arrayType(LLVM_TAGGED_PTR, 0);
    final llvm:PointerType ptrUnsizedArrayType = heapPointerType(unsizedArrayType);
    final llvm:Type structType = llvm:structType([LLVM_INT, LLVM_INT, LLVM_INT, ptrUnsizedArrayType]);
    // Cases that are not UniformTypeBitSet should have been filtered out before
    t:UniformTypeBitSet memberType = <t:UniformTypeBitSet>t:simpleArrayMemberType(scaffold.typeContext(), insn.result.semType);
    final int length = insn.operands.length();
    llvm:PointerValue array;
    if length > 0 {
        final llvm:Type sizedArrayType = llvm:arrayType(LLVM_TAGGED_PTR, length);
        final llvm:PointerType ptrSizedArrayType = heapPointerType(sizedArrayType);

        array = buildTypedAlloc(builder, scaffold, sizedArrayType);
        foreach int i in 0 ..< length {
            builder.store(check buildWideRepr(builder, scaffold, insn.operands[i], REPR_ANY, memberType),
                          builder.getElementPtr(array, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INT, i)], "inbounds"));
        }
        array = builder.bitCast(array, ptrUnsizedArrayType);
    }
    else {
        array = llvm:constNull(ptrUnsizedArrayType);
    }
    final llvm:PointerValue structMem = buildUntypedAlloc(builder, scaffold, structType);
    final llvm:PointerValue struct = builder.bitCast(structMem, heapPointerType(structType));
    // Store the member bitset as the ListDesc
    builder.store(llvm:constInt(LLVM_INT, memberType),
                  builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 0)], "inbounds"));
    foreach int i in 1 ..< 3 {
        builder.store(llvm:constInt(LLVM_INT, length),
                      builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, i)], "inbounds"));
    }
    builder.store(array,
                  builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 3)], "inbounds"));
    // Don't need to convert here
    builder.store(buildTaggedPtr(builder, structMem, TAG_LIST_RW|FLAG_EXACT), scaffold.address(insn.result));
}

function buildListGet(llvm:Builder builder, Scaffold scaffold, bir:ListGetInsn insn) returns BuildError? {
    final llvm:Type unsizedArrayType = llvm:arrayType(LLVM_TAGGED_PTR, 0);
    final llvm:PointerType ptrUnsizedArrayType = heapPointerType(unsizedArrayType);
    final llvm:Type structType = llvm:structType([LLVM_INT, LLVM_INT, LLVM_INT, ptrUnsizedArrayType]);

    llvm:Value index = buildInt(builder, scaffold, insn.operand);
    // struct is the untagged pointer to the struct
    llvm:PointerValue struct = builder.bitCast(<llvm:PointerValue>builder.call(scaffold.getIntrinsicFunction("ptrmask.p1i8.i64"),
                                                                               [builder.load(scaffold.address(insn.list)), llvm:constInt(LLVM_INT, POINTER_MASK)]),
                                               heapPointerType(structType));
    llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
    llvm:BasicBlock outOfBoundsBlock = scaffold.addBasicBlock();
    builder.condBr(builder.iCmp("ult",
                                index,
                                builder.load(builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 1)]), ALIGN_HEAP)),
                   continueBlock,
                   outOfBoundsBlock);
    builder.positionAtEnd(outOfBoundsBlock);
    builder.store(buildErrorForConstPanic(builder, scaffold, PANIC_INDEX_OUT_OF_BOUNDS, insn.position), scaffold.panicAddress());
    builder.br(scaffold.getOnPanic());
    builder.positionAtEnd(continueBlock);
    // array is a pointer to the array
    llvm:PointerValue array = <llvm:PointerValue>builder.load(builder.getElementPtr(struct,
                                                                                    [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 3)], "inbounds"),
                                                                                    ALIGN_HEAP);
    buildStoreTagged(builder, scaffold,
                     builder.load(builder.getElementPtr(array,
                                                        [llvm:constInt(LLVM_INT, 0), index], "inbounds"),
                                  ALIGN_HEAP),
                     insn.result);
}

function buildListSet(llvm:Builder builder, Scaffold scaffold, bir:ListSetInsn insn) returns BuildError? {
    t:UniformTypeBitSet memberType = <t:UniformTypeBitSet>t:simpleArrayMemberType(scaffold.typeContext(), insn.list.semType);
    // XXX listSetFunction must also clear the exact bit if the list is not exact?
    llvm:Value? err = builder.call(buildRuntimeFunctionDecl(scaffold, listSetFunction),
                                   [builder.load(scaffold.address(insn.list)),
                                    buildInt(builder, scaffold, insn.index),
                                    check buildWideRepr(builder, scaffold, insn.operand, REPR_ANY, memberType)]);
    buildCheckError(builder, scaffold, <llvm:Value>err, insn.position);                                
   
}


function buildMappingConstruct(llvm:Builder builder, Scaffold scaffold, bir:MappingConstructInsn insn) returns BuildError? {
    int length = insn.operands.length();
    t:UniformTypeBitSet memberType = <t:UniformTypeBitSet>t:simpleMapMemberType(scaffold.typeContext(), insn.result.semType);
    llvm:ConstPointerValue inherentType = scaffold.getInherentType(insn.result.semType);
    llvm:PointerValue m = <llvm:PointerValue>builder.call(buildRuntimeFunctionDecl(scaffold, mappingConstructFunction),
                                                          [inherentType, llvm:constInt(LLVM_INT, length)]);
    foreach int i in 0 ..< length {
        _ = builder.call(buildRuntimeFunctionDecl(scaffold, mappingInitMemberFunction),
                         [
                             m,
                             check buildConstString(builder, scaffold, insn.fieldNames[i]),
                             check buildWideRepr(builder, scaffold, insn.operands[i], REPR_ANY, memberType)
                         ]);
    }
    builder.store(m, scaffold.address(insn.result));
}

function buildMappingGet(llvm:Builder builder, Scaffold scaffold, bir:MappingGetInsn insn) returns BuildError? {
    llvm:Value value = <llvm:Value>builder.call(buildRuntimeFunctionDecl(scaffold, mappingGetFunction),
                                                [
                                                    builder.load(scaffold.address(insn.operands[0])),
                                                    check buildString(builder, scaffold, insn.operands[1])
                                                ]);
    buildStoreTagged(builder, scaffold, value, insn.result);
}

function buildMappingSet(llvm:Builder builder, Scaffold scaffold, bir:MappingSetInsn insn) returns BuildError? {
    t:UniformTypeBitSet memberType = <t:UniformTypeBitSet>t:simpleMapMemberType(scaffold.typeContext(), insn.operands[0].semType);
    llvm:Value? err = builder.call(buildRuntimeFunctionDecl(scaffold, mappingSetFunction),
                                   [
                                       builder.load(scaffold.address(insn.operands[0])),
                                       check buildString(builder, scaffold, insn.operands[1]),
                                       check buildWideRepr(builder, scaffold, insn.operands[2], REPR_ANY, memberType)
                                   ]);
    buildCheckError(builder, scaffold, <llvm:Value>err, insn.position);                                
}

function buildCheckError(llvm:Builder builder, Scaffold scaffold, llvm:Value err, bir:Position pos) {
    llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
    llvm:BasicBlock errorBlock = scaffold.addBasicBlock();
    builder.condBr(builder.iCmp("eq", err, llvm:constInt("i64", 0)),
                   continueBlock,
                   errorBlock);
    builder.positionAtEnd(errorBlock);
    builder.store(buildErrorForPanic(builder, scaffold, err, pos), scaffold.panicAddress());
    builder.br(scaffold.getOnPanic());
    builder.positionAtEnd(continueBlock);
}
