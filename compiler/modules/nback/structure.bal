import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

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
        paramTypes: [llvm:pointerType(llStructureDescType), LLVM_INT]
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
        paramTypes: [llvm:pointerType(llStructureDescType), "i64"]
    },
    attrs: []
};

final RuntimeFunction taggedMemberClearExactAnyFunction = {
    name: "tagged_member_clear_exact_any",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readnone"]
};

final RuntimeFunction taggedMemberClearExactPtrFunction = {
    name: "tagged_member_clear_exact_ptr",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readnone"]
};

const LLVM_INDEX = "i32";

type ListRepr readonly & object {
    llvm:Type memberType;
    int listDescGetIndex;
    int listDescSetIndex;
    boolean isSpecialized;
    function buildMember(llvm:Builder builder, Scaffold scaffold, bir:Operand member, t:SemType memberType) returns llvm:Value|BuildError;
    function buildMemberStore(llvm:Builder builder, Scaffold scaffold, llvm:Value value, bir:Register reg);
};

final readonly & map<ListRepr> listReprs = {
    generic: object {
        llvm:Type memberType = LLVM_TAGGED_PTR;
        int listDescGetIndex = 1;
        int listDescSetIndex = 2;
        boolean isSpecialized = false;
        function buildMember(llvm:Builder builder, Scaffold scaffold, bir:Operand member, t:SemType memberType) returns llvm:Value|BuildError {
            return buildWideRepr(builder, scaffold, member, REPR_ANY, memberType);
        }
        function buildMemberStore(llvm:Builder builder, Scaffold scaffold, llvm:Value value, bir:Register reg) {
            return buildStoreTagged(builder, scaffold, value, reg);
        }
    },
    int_array: object {
        llvm:Type memberType = LLVM_INT;
        int listDescGetIndex = 3;
        int listDescSetIndex = 4;
        boolean isSpecialized = true;
        function buildMember(llvm:Builder builder, Scaffold scaffold, bir:Operand member, t:SemType memberType) returns llvm:Value|BuildError {
            return buildInt(builder, scaffold, <bir:IntOperand>member);
        }
        function buildMemberStore(llvm:Builder builder, Scaffold scaffold, llvm:Value value, bir:Register reg) {
            return buildStoreInt(builder, scaffold, value, reg);
        }
    },
    float_array: object {
        llvm:Type memberType = LLVM_DOUBLE;
        int listDescGetIndex = 5;
        int listDescSetIndex = 6;
        boolean isSpecialized = true;
        function buildMember(llvm:Builder builder, Scaffold scaffold, bir:Operand member, t:SemType memberType) returns llvm:Value|BuildError {
            return buildFloat(builder, scaffold, <bir:FloatOperand>member);
        }
        function buildMemberStore(llvm:Builder builder, Scaffold scaffold, llvm:Value value, bir:Register reg) {
            return buildStoreFloat(builder, scaffold, value, reg);
        }
    }
};

function memberTypeToListRepr(t:SemType memberType) returns ListRepr {
    return listReprs.get(memberTypeToListReprPrefix(memberType));
}

function buildListConstruct(llvm:Builder builder, Scaffold scaffold, bir:ListConstructInsn insn) returns BuildError? {
    final int length = insn.operands.length();
    t:SemType listType = insn.result.semType;
    llvm:ConstPointerValue inherentType = scaffold.getInherentType(listType);
    llvm:PointerValue struct = <llvm:PointerValue>builder.call(scaffold.getRuntimeFunctionDecl(listConstructFunction),
                                                               [inherentType, llvm:constInt(LLVM_INT, length)]);

    if length > 0 {
        // de-refer the member array from the list struct
        llvm:PointerValue array = <llvm:PointerValue>builder.load(builder.getElementPtr(struct,
                                                                                        [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 3)],
                                                                                        "inbounds"),
                                                                  ALIGN_HEAP);

        // Cases that are not arrays should have been filtered out before
        t:SemType memberType = <t:SemType>t:arrayMemberType(scaffold.typeContext(), listType);
        ListRepr repr = memberTypeToListRepr(memberType);
        array = builder.bitCast(array, heapPointerType(llvm:arrayType(repr.memberType, 0)));
        foreach int i in 0 ..< length {
            builder.store(check repr.buildMember(builder, scaffold, insn.operands[i], memberType),
                          builder.getElementPtr(array, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INT, i)], "inbounds"));
        }
        builder.store(llvm:constInt(LLVM_INT, length),
                      builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 1)], "inbounds"));
    }
    builder.store(buildTaggedPtr(builder, builder.bitCast(struct, LLVM_TAGGED_PTR), TAG_LIST_RW|FLAG_EXACT), scaffold.address(insn.result));
}

function buildListGet(llvm:Builder builder, Scaffold scaffold, bir:ListGetInsn insn) returns BuildError? {
    llvm:Value taggedStruct = builder.load(scaffold.address(insn.operands[0]));
    llvm:Value index = buildInt(builder, scaffold, insn.operands[1]);
    // struct is the untagged pointer to the struct
    llvm:PointerValue struct = builder.bitCast(<llvm:PointerValue>builder.call(scaffold.getIntrinsicFunction("ptrmask.p1i8.i64"),
                                                                               [taggedStruct, llvm:constInt(LLVM_INT, POINTER_MASK)]),
                                               heapPointerType(llListType));
    llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
    llvm:BasicBlock outOfBoundsBlock = scaffold.addBasicBlock();
    builder.condBr(builder.iCmp("ult",
                                index,
                                builder.load(builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 1)]), ALIGN_HEAP)),
                   continueBlock,
                   outOfBoundsBlock);
    builder.positionAtEnd(outOfBoundsBlock);
    builder.store(buildErrorForConstPanic(builder, scaffold, PANIC_INDEX_OUT_OF_BOUNDS, insn.pos), scaffold.panicAddress());
    builder.br(scaffold.getOnPanic());
    builder.positionAtEnd(continueBlock);

    llvm:BasicBlock? bbJoin = ();
    t:SemType memberType = t:listMemberType(scaffold.typeContext(), insn.operands[0].semType);
    ListRepr repr = memberTypeToListRepr(memberType);
    if repr.isSpecialized {
        bbJoin = buildSpecializedListGet(builder, scaffold, taggedStruct, struct, index, repr, insn.result);
    }
    llvm:PointerValue desc = <llvm:PointerValue>builder.load(builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 0)]), ALIGN_HEAP);
    llvm:PointerValue func = <llvm:PointerValue>builder.load(builder.getElementPtr(desc, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, repr.listDescGetIndex)]), ALIGN_HEAP);
    llvm:Value member = <llvm:Value>builder.call(func, [taggedStruct, index]);
    t:SemType resultType = insn.result.semType;
    if isPotentiallyExact(resultType) {
        // SUBSET tuples will need to do something analogous to`isMappingMemberTypeExact``
        member = buildMemberClearExact(builder, scaffold, taggedStruct, member, resultType);
    }
    repr.buildMemberStore(builder, scaffold, member, insn.result);
    if bbJoin != () {
        builder.br(bbJoin);
        builder.positionAtEnd(bbJoin);
    }
}

function buildSpecializedListGet(llvm:Builder builder, Scaffold scaffold, llvm:Value taggedStruct, llvm:PointerValue struct, llvm:Value index, ListRepr repr, bir:Register result) returns llvm:BasicBlock {
    llvm:BasicBlock bbExact = scaffold.addBasicBlock();
    llvm:BasicBlock bbInexact = scaffold.addBasicBlock();
    llvm:BasicBlock bbJoin = scaffold.addBasicBlock();
    llvm:Value isExact = builder.iCmp("ne",
                                      <llvm:Value>builder.call(scaffold.getIntrinsicFunction("ptrmask.p1i8.i64"), [taggedStruct, llvm:constInt(LLVM_INT, FLAG_EXACT)]),
                                      llvm:constNull(llvm:pointerType("i8", 1)));
    builder.condBr(isExact, bbExact, bbInexact);
    builder.positionAtEnd(bbExact);
    llvm:PointerValue array = <llvm:PointerValue>builder.load(builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 3)]), ALIGN_HEAP);
    array = builder.bitCast(array, heapPointerType(llvm:arrayType(repr.memberType, 0)));
    repr.buildMemberStore(builder, scaffold, builder.load(builder.getElementPtr(array, [llvm:constInt(LLVM_INT, 0), index], "inbounds"), ALIGN_HEAP), result);
    builder.br(bbJoin);
    builder.positionAtEnd(bbInexact);
    return bbJoin;
}

function buildListSet(llvm:Builder builder, Scaffold scaffold, bir:ListSetInsn insn) returns BuildError? {
    llvm:Value taggedStruct = builder.load(scaffold.address(insn.operands[0]));
    llvm:PointerValue struct = builder.bitCast(<llvm:PointerValue>builder.call(scaffold.getIntrinsicFunction("ptrmask.p1i8.i64"),
                                                                               [taggedStruct, llvm:constInt(LLVM_INT, POINTER_MASK)]),
                                               heapPointerType(llListType));
    llvm:BasicBlock? bbJoin = ();
    t:SemType memberType = t:listMemberType(scaffold.typeContext(), insn.operands[0].semType);
    llvm:Value index = buildInt(builder, scaffold, insn.operands[1]);
    ListRepr repr = memberTypeToListRepr(memberType);
    if repr.isSpecialized {
        llvm:Value val = check repr.buildMember(builder, scaffold, insn.operands[2], memberType);
        bbJoin = check buildSpecializedListSet(builder, scaffold, taggedStruct, struct, index, repr.memberType, val);
    }

    llvm:PointerValue desc = <llvm:PointerValue>builder.load(builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 0)]), ALIGN_HEAP);
    llvm:PointerValue func = <llvm:PointerValue>builder.load(builder.getElementPtr(desc, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, repr.listDescSetIndex)]), ALIGN_HEAP);
    // XXX listSetFunction must also clear the exact bit if the list is not exact?
    llvm:Value? err = builder.call(func, [taggedStruct, index, check repr.buildMember(builder, scaffold, insn.operands[2], memberType)]);
    buildCheckError(builder, scaffold, <llvm:Value>err, insn.pos);
    if bbJoin != () {
        builder.br(bbJoin);
        builder.positionAtEnd(bbJoin);
    }
}

function buildSpecializedListSet(llvm:Builder builder, Scaffold scaffold, llvm:Value taggedStruct, llvm:PointerValue struct, llvm:Value index, llvm:Type memberTy, llvm:Value val)
                                returns llvm:BasicBlock|BuildError {
    llvm:BasicBlock bbExact = scaffold.addBasicBlock();
    llvm:BasicBlock bbTaggedSet = scaffold.addBasicBlock();
    llvm:BasicBlock bbJoin = scaffold.addBasicBlock();
    llvm:Value isExact = builder.iCmp("ne",
                                      <llvm:Value>builder.call(scaffold.getIntrinsicFunction("ptrmask.p1i8.i64"), [taggedStruct, llvm:constInt(LLVM_INT, FLAG_EXACT)]),
                                      llvm:constNull(llvm:pointerType("i8", 1)));
    builder.condBr(isExact, bbExact, bbTaggedSet);
    builder.positionAtEnd(bbExact);

    llvm:BasicBlock bbSpecializedSet = scaffold.addBasicBlock();
    builder.condBr(builder.iCmp("ult",
                                index,
                                builder.load(builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 1)]), ALIGN_HEAP)),
                   bbSpecializedSet,
                   bbTaggedSet);
    builder.positionAtEnd(bbSpecializedSet);
    llvm:PointerValue array = <llvm:PointerValue>builder.load(builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 3)]), ALIGN_HEAP);
    array = builder.bitCast(array, heapPointerType(llvm:arrayType(memberTy, 0)));

    builder.store(val, builder.getElementPtr(array, [llvm:constInt(LLVM_INT, 0), index], "inbounds"));
    builder.br(bbJoin);
    builder.positionAtEnd(bbTaggedSet);
    return bbJoin;
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
    llvm:Value mapping = builder.load(scaffold.address(mappingReg));
    llvm:Value member = <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(rf), [mapping, k]);
    t:SemType resultType = insn.result.semType;
    if isPotentiallyExact(resultType) {
        if !isMappingMemberTypeExact(scaffold.typeContext(), mappingReg.semType, keyOperand, resultType) {
            member = buildClearExact(builder, scaffold, member, resultType);
        }
        else {
            member = buildMemberClearExact(builder, scaffold, mapping, member, resultType);
        }
    }
    buildStoreTagged(builder, scaffold, member, insn.result);
}

function isMappingMemberTypeExact(t:Context tc, t:SemType mappingType, bir:StringOperand keyOperand, t:SemType resultType) returns boolean {
    t:MappingAtomicType? mat = t:mappingAtomicTypeRw(tc, mappingType);
    if mat == () {
        return false;
    }
    else {
        if keyOperand is string || mat.names.length() == 0 {
            return true;
        }
        // SUBSET singleton types
        t:SemType peResult = t:intersect(resultType, POTENTIALLY_EXACT);
        foreach t:SemType ty in mat.types {
            t:SemType peMember = t:intersect(ty, POTENTIALLY_EXACT);
            if !t:isNever(peMember) && !t:isSameType(tc, peMember, peResult) {
                return false;
            }
        }
        return true;
    }
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
    // Note that we do not need to check the exactness of the mapping value, nor do we need
    // to check the exactness of the member type: buildWideRepr does all that is necessary.
    // See exact.md for more details.
    llvm:Value? err = builder.call(scaffold.getRuntimeFunctionDecl(rf),
                                   [
                                       builder.load(scaffold.address(mappingReg)),
                                       k,
                                       check buildWideRepr(builder, scaffold, insn.operands[2], REPR_ANY, memberType)
                                   ]);
    buildCheckError(builder, scaffold, <llvm:Value>err, insn.pos);
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

function buildMemberClearExact(llvm:Builder builder, Scaffold scaffold, llvm:Value structure, llvm:Value member, t:SemType sourceType) returns llvm:Value {
    RuntimeFunction rf = overloadsExactBit(sourceType) ? taggedMemberClearExactAnyFunction : taggedMemberClearExactPtrFunction;
    return <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(rf), [structure, member]);
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
