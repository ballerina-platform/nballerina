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

final RuntimeFunction mappingIndexedSetFunction = {
    name: "mapping_indexed_set",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_INT, LLVM_TAGGED_PTR]
    },
    attrs: []
};

final RuntimeFunction listConstructFunction = {
    name: "list_construct",
    ty: {
        returnType: heapPointerType(llListType),
        paramTypes: [llvm:pointerType(llInherentType), LLVM_INT]
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

final RuntimeFunction mappingIndexedGetFunction = {
    name: "mapping_indexed_get",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [LLVM_TAGGED_PTR, LLVM_INT]
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
    final int length = insn.operands.length();
    t:SemType listType = insn.result.semType;
    llvm:ConstPointerValue inherentType = scaffold.getInherentType(listType);
    llvm:PointerValue struct = <llvm:PointerValue>builder.call(scaffold.getRuntimeFunctionDecl(listConstructFunction),
                                                               [inherentType, llvm:constInt(LLVM_INT, length)]);

    if length > 0 {
        // de-refer the member array from the list struct
        final llvm:Type sizedArrayType = llvm:arrayType(LLVM_TAGGED_PTR, length);
        final llvm:PointerType ptrSizedArrayType = heapPointerType(sizedArrayType);
        llvm:PointerValue array = <llvm:PointerValue>builder.load(builder.getElementPtr(struct,
                                                                                        [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 3)],
                                                                                        "inbounds"),
                                                                  ALIGN_HEAP);

        // Cases that are not UniformTypeBitSet should have been filtered out before
        t:UniformTypeBitSet memberType = <t:UniformTypeBitSet>t:simpleArrayMemberType(scaffold.typeContext(), listType);
        foreach int i in 0 ..< length {
            builder.store(check buildWideRepr(builder, scaffold, insn.operands[i], REPR_ANY, memberType),
                          builder.getElementPtr(array, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INT, i)], "inbounds"));
        }
        builder.store(llvm:constInt(LLVM_INT, length),
                      builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 1)], "inbounds"));
    }
    builder.store(buildTaggedPtr(builder, builder.bitCast(struct, LLVM_TAGGED_PTR), TAG_LIST_RW|FLAG_EXACT), scaffold.address(insn.result));
}

function buildListGet(llvm:Builder builder, Scaffold scaffold, bir:ListGetInsn insn) returns BuildError? {
    llvm:Value index = buildInt(builder, scaffold, insn.operands[1]);
    // struct is the untagged pointer to the struct
    llvm:PointerValue struct = builder.bitCast(<llvm:PointerValue>builder.call(scaffold.getIntrinsicFunction("ptrmask.p1i8.i64"),
                                                                               [builder.load(scaffold.address(insn.operands[0])), llvm:constInt(LLVM_INT, POINTER_MASK)]),
                                               heapPointerType(llListType));
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
    t:SemType memberType = t:listMemberType(scaffold.typeContext(), insn.operands[0].semType);
    // XXX listSetFunction must also clear the exact bit if the list is not exact?
    llvm:Value? err = builder.call(scaffold.getRuntimeFunctionDecl(listSetFunction),
                                   [builder.load(scaffold.address(insn.operands[0])),
                                    buildInt(builder, scaffold, insn.operands[1]),
                                    check buildWideRepr(builder, scaffold, insn.operands[2], REPR_ANY, memberType)]);
    buildCheckError(builder, scaffold, <llvm:Value>err, insn.position);                                
   
}

function buildMappingConstruct(llvm:Builder builder, Scaffold scaffold, bir:MappingConstructInsn insn) returns BuildError? {
    int length = insn.operands.length();
    t:Context tc = scaffold.typeContext();
    t:SemType mappingType = insn.result.semType;
    llvm:ConstPointerValue inherentType = scaffold.getInherentType(mappingType);
    llvm:PointerValue m = <llvm:PointerValue>builder.call(scaffold.getRuntimeFunctionDecl(mappingConstructFunction),
                                                          [inherentType, llvm:constInt(LLVM_INT, length)]);
    // JBUG #31681 if I combine these statements into a single from/do, then it gives an assignment required error
    // which is removed by a check; but it's only check failures in the query pipeline that should show up in the
    // result of the from/do, not check failures in the do clause. (Code now changed a lot.)

    // The sorting here is to ensure that required fields are in the same order here as in the type descriptor.
    [string, bir:Operand][] members =
        from int i in 0 ..< length select [insn.fieldNames[i], insn.operands[i]];    
    t:MappingAtomicType? mat = t:mappingAtomicTypeRw(tc, mappingType);
    if mat != () && mat.names.length() != 0 {
        // JBUG #33300 This doesn't work with array:sort (complains about unordered type)
        members = from var [k, v] in members order by k select [k, v];
    } 
    foreach var [fieldName, operand] in members {
        _ = builder.call(scaffold.getRuntimeFunctionDecl(mappingInitMemberFunction),
                         [
                             m,
                             check buildConstString(builder, scaffold, fieldName),
                             check buildWideRepr(builder, scaffold, operand, REPR_ANY,
                                                 t:mappingMemberType(tc, mappingType, fieldName))
                         ]);
    }
    builder.store(m, scaffold.address(insn.result));
}

function buildMappingGet(llvm:Builder builder, Scaffold scaffold, bir:MappingGetInsn insn) returns BuildError? {
    bir:Register mappingReg = insn.operands[0];
    bir:StringOperand keyOperand = insn.operands[1];
    int? fieldIndex = mappingFieldIndex(scaffold.typeContext(), mappingReg.semType, keyOperand);
    RuntimeFunction rf;
    llvm:Value k;
    if fieldIndex == () {
        rf = mappingGetFunction;
        k = check buildString(builder, scaffold, keyOperand);
    }
    else {
        rf = mappingIndexedGetFunction;
        k = llvm:constInt(LLVM_INT, fieldIndex);
    }
    // SUBSET this can widen leading to inexactness when mapping member types are not bitsets
    llvm:Value value = <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(rf),
                                                [builder.load(scaffold.address(mappingReg)), k]);
    buildStoreTagged(builder, scaffold, value, insn.result);
}

function buildMappingSet(llvm:Builder builder, Scaffold scaffold, bir:MappingSetInsn insn) returns BuildError? {
    bir:Register mappingReg = insn.operands[0];
    bir:StringOperand keyOperand = insn.operands[1];
    int? fieldIndex = mappingFieldIndex(scaffold.typeContext(), mappingReg.semType, keyOperand);
    RuntimeFunction rf;
    llvm:Value k;
    if fieldIndex == () {
        rf = mappingSetFunction;
        k = check buildString(builder, scaffold, keyOperand);
    }
    else {
        rf = mappingIndexedSetFunction;
        k = llvm:constInt(LLVM_INT, fieldIndex);
    }
    t:SemType memberType = t:mappingMemberType(scaffold.typeContext(), mappingReg.semType);
    // SUBSET different field types can lead to inexact projection
    llvm:Value? err = builder.call(scaffold.getRuntimeFunctionDecl(rf),
                                   [
                                       builder.load(scaffold.address(mappingReg)),
                                       k,
                                       check buildWideRepr(builder, scaffold, insn.operands[2], REPR_ANY, memberType)
                                   ]);
    buildCheckError(builder, scaffold, <llvm:Value>err, insn.position);                                
}

function mappingFieldIndex(t:Context tc, t:SemType mappingType, bir:StringOperand k) returns int? {
    if k is string {
        t:MappingAtomicType? mat = t:mappingAtomicTypeRw(tc, mappingType);
        if mat != () {
            return mat.names.indexOf(k);
        }
    }
    return ();
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
