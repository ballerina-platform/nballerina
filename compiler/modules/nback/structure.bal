import wso2/nballerina.comm.err;
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

final RuntimeFunction mappingInexactSetFunction = {
    name: "mapping_inexact_set",
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

final RuntimeFunction listConstruct8Function = {
    name: "list_construct_8",
    ty: {
        returnType: heapPointerType(llListType),
        paramTypes: [llvm:pointerType(llStructureDescType), LLVM_INT]
    },
    attrs: []
};

final RuntimeFunction listConstruct1Function = {
    name: "list_construct_1",
    ty: {
        returnType: heapPointerType(llListType),
        paramTypes: [llvm:pointerType(llStructureDescType), LLVM_INT]
    },
    attrs: []
};

final RuntimeFunction listFillingGetFunction = {
    name: "list_filling_get",
    ty: {
        returnType: LLVM_TAGGED_WITH_PANIC_CODE,
        paramTypes: [LLVM_TAGGED_PTR, LLVM_INT]
    },
    attrs: ["readonly"]
};

final RuntimeFunction mappingGetFunction = {
    name: "mapping_get",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction mappingFillingGetFunction = {
    name: "mapping_filling_get",
    ty: {
        returnType: LLVM_TAGGED_WITH_PANIC_CODE,
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

// Describes function pointer offsets for getting/setting values of a given Repr from a list.
// Correct ListAccess can be picked base on the static type of a list, runtime type is not needed.
type ListAccess readonly & record {|
    int descBaseIndex;
    // Repr of set's param and get's return
    Repr repr;
|};

// Index of first function in the list descriptor
// Have tid, nMemberTypes, minLength before function pointers
const LIST_DESC_FIRST_FUNCTION_INDEX = 3;

final ListAccess LIST_ACCESS_TAGGED = { descBaseIndex: LIST_DESC_FIRST_FUNCTION_INDEX, repr: REPR_ANY };
final ListAccess LIST_ACCESS_INT = { descBaseIndex: LIST_DESC_FIRST_FUNCTION_INDEX + 3, repr: REPR_INT };
final ListAccess LIST_ACCESS_FLOAT = { descBaseIndex: LIST_DESC_FIRST_FUNCTION_INDEX + 6, repr: REPR_FLOAT };

// Offset form to ListAccess.descBaseIndex.
const LIST_DESC_GET_OFFSET = 0;
const LIST_DESC_SET_OFFSET = 1;
const LIST_DESC_INEXACT_SET_OFFSET = 2;

// Pick ListAccess based on the expected repr of param/return.
// Caller will convert the value between expectedRepr and ListAccess.repr (ie: when expectedRepr is BooleanRepr)
function listAccess(Repr expectedRepr) returns ListAccess {
    if expectedRepr is IntRepr {
        return LIST_ACCESS_INT;
    }
    else if expectedRepr is FloatRepr {
        return LIST_ACCESS_FLOAT;
    }
    return LIST_ACCESS_TAGGED;
}

// Describes a list implementation.
// Known at compile time during construction, otherwise depends on runtime type.
type ListRepr readonly & record {|
    llvm:Type memberHeapLlvm;
    Repr memberRepr;
    RuntimeFunction construct;
|};

final ListRepr GENERIC_LIST_REPR = { memberHeapLlvm: LLVM_TAGGED_PTR, memberRepr: REPR_ANY, construct: listConstruct8Function };

final readonly & map<ListRepr> SPECIALIZED_LIST_REPRS = {
    int_array: { memberHeapLlvm: LLVM_INT, memberRepr: REPR_INT, construct: listConstruct8Function },
    byte_array: { memberHeapLlvm: LLVM_BYTE, memberRepr: REPR_BYTE, construct: listConstruct1Function },
    float_array: { memberHeapLlvm: LLVM_DOUBLE, memberRepr: REPR_FLOAT, construct: listConstruct8Function }
};

function listTypeToSpecializedListRepr(t:Context tc, t:SemType listType) returns ListRepr? {
    return listAtomicTypeToSpecializedListRepr(t:listAtomicType(tc, listType));
}

function listAtomicTypeToSpecializedListRepr(t:ListAtomicType? atomic) returns ListRepr? {
    return SPECIALIZED_LIST_REPRS[listAtomicTypeToListReprPrefix(atomic)];
}

function buildListConstruct(llvm:Builder builder, Scaffold scaffold, bir:ListConstructInsn insn) returns BuildError? {
    final int length = insn.operands.length();
    t:SemType listType = insn.result.semType;
    var atomic = <t:ListAtomicType>t:listAtomicType(scaffold.typeContext(), listType);
    ListRepr repr = listAtomicTypeToSpecializedListRepr(atomic) ?: GENERIC_LIST_REPR;
    llvm:ConstPointerValue inherentType = scaffold.getInherentType(listType);
    llvm:PointerValue struct = <llvm:PointerValue>buildRuntimeFunctionCall(builder, scaffold, repr.construct,
                                                                           [inherentType, llvm:constInt(LLVM_INT, length)]);

    if length > 0 {
        // de-refer the member array from the list struct
        llvm:PointerValue array = <llvm:PointerValue>builder.load(builder.getElementPtr(struct,
                                                                                        [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 3)],
                                                                                        "inbounds"),
                                                                  ALIGN_HEAP);

        array = builder.bitCast(array, heapPointerType(llvm:arrayType(repr.memberHeapLlvm, 0)));
        foreach int i in 0 ..< length {
            llvm:Value val = check buildWideRepr(builder, scaffold, insn.operands[i], repr.memberRepr, t:listAtomicTypeMemberAt(atomic, i));
            builder.store(listReprConvertToHeapType(builder, repr, val),
                          builder.getElementPtr(array, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INT, i)], "inbounds"));
        }
        builder.store(llvm:constInt(LLVM_INT, length),
                      builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 1)], "inbounds"));
    }
    builder.store(buildTaggedPtr(builder, builder.bitCast(struct, LLVM_TAGGED_PTR), TAG_LIST|FLAG_EXACT), scaffold.address(insn.result));
}

function buildListGet(llvm:Builder builder, Scaffold scaffold, bir:ListGetInsn insn) returns BuildError? {
    bir:Register listReg = insn.operands[0];
    bir:IntOperand indexOperand = insn.operands[1];
    ListRepr? reprIfExact = listTypeToSpecializedListRepr(scaffold.typeContext(), listReg.semType);
    llvm:Value taggedStruct = builder.load(scaffold.address(listReg));
    llvm:Value index = buildInt(builder, scaffold, indexOperand);
    llvm:BasicBlock? bbJoin = ();
    llvm:Value member;
    Repr memberTmpRepr;
    if insn.fill {
        if reprIfExact != () {
            panic err:impossible("filling-get with type that has specialization");
        }
        llvm:Value memberWithErr = buildRuntimeFunctionCall(builder, scaffold, listFillingGetFunction, [taggedStruct, index]);
        member = buildCheckPanicCode(builder, scaffold, memberWithErr, insn.pos);
        memberTmpRepr = REPR_ANY;
    }
    else {
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
        if reprIfExact != () {
            bbJoin = buildSpecializedListGet(builder, scaffold, taggedStruct, struct, index, reprIfExact, insn.result);
        }
        ListAccess la = listAccess(scaffold.getRepr(insn.result));
        llvm:PointerValue desc = <llvm:PointerValue>builder.load(builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 0)]), ALIGN_HEAP);
        llvm:PointerValue func = <llvm:PointerValue>builder.load(builder.getElementPtr(desc, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, la.descBaseIndex + LIST_DESC_GET_OFFSET)]), ALIGN_HEAP);
        member = <llvm:Value>builder.call(func, [taggedStruct, index]);
        memberTmpRepr = la.repr;
    }
    t:SemType resultType = insn.result.semType;
    if isPotentiallyExact(resultType) {
        if !isListMemberTypeExact(scaffold.typeContext(), listReg.semType, indexOperand, resultType) {
            // this clears the exact bit of member
            member = buildClearExact(builder, scaffold, member, resultType);
        }
        else {
            member = buildMemberClearExact(builder, scaffold, taggedStruct, member, resultType);
        }
    }
    buildStoreRepr(builder, scaffold, member, insn.result, memberTmpRepr);
    if bbJoin != () {
        builder.br(bbJoin);
        builder.positionAtEnd(bbJoin);
    }
}

function buildSpecializedListGet(llvm:Builder builder, Scaffold scaffold, llvm:Value taggedStruct, llvm:PointerValue struct, llvm:Value index, ListRepr repr, bir:Register result) returns llvm:BasicBlock {
    llvm:BasicBlock bbExact = scaffold.addBasicBlock();
    llvm:BasicBlock bbInexact = scaffold.addBasicBlock();
    llvm:BasicBlock bbJoin = scaffold.addBasicBlock();
    llvm:Value isExact = buildIsExact(builder, scaffold, taggedStruct);
    builder.condBr(isExact, bbExact, bbInexact);
    builder.positionAtEnd(bbExact);
    llvm:PointerValue array = <llvm:PointerValue>builder.load(builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 3)]), ALIGN_HEAP);
    array = builder.bitCast(array, heapPointerType(llvm:arrayType(repr.memberHeapLlvm, 0)));
    llvm:Value value = builder.load(builder.getElementPtr(array, [llvm:constInt(LLVM_INT, 0), index], "inbounds"), ALIGN_HEAP);
    buildStoreRepr(builder, scaffold, listReprConvertFromHeapType(builder, repr, value), result, repr.memberRepr);
    builder.br(bbJoin);
    builder.positionAtEnd(bbInexact);
    return bbJoin;
}

function buildListSet(llvm:Builder builder, Scaffold scaffold, bir:ListSetInsn insn) returns BuildError? {
    bir:Register listOperand = insn.operands[0];
    bir:IntOperand indexOperand = insn.operands[1];
    bir:Operand newMemberOperand = insn.operands[2];
    llvm:Value taggedStruct = builder.load(scaffold.address(listOperand));
    llvm:PointerValue struct = builder.bitCast(<llvm:PointerValue>buildFunctionCall(builder, scaffold, scaffold.getIntrinsicFunction("ptrmask.p1i8.i64"),
                                                                                    [taggedStruct, llvm:constInt(LLVM_INT, POINTER_MASK)]),
                                               heapPointerType(llListType));
    llvm:BasicBlock? bbJoin = ();
    t:SemType listType = listOperand.semType;
    t:Context tc = scaffold.typeContext();
    t:SemType memberType = t:listMemberType(tc, listType, indexOperand.semType);
    llvm:Value index = buildInt(builder, scaffold, indexOperand);
    ListAccess la = listAccess(semTypeRepr(newMemberOperand.semType));
    llvm:Value val = check buildWideRepr(builder, scaffold, newMemberOperand, la.repr, memberType);
    ListRepr? reprIfExact = listTypeToSpecializedListRepr(tc, listType);
    if reprIfExact != () {
        // Value build for calling list access (val) happens to be reuseable for specialized set. May change, eg: specialized boolean[]
        bbJoin = check buildSpecializedListSet(builder, scaffold, taggedStruct, struct, index, reprIfExact, val);
    }
    llvm:PointerValue desc = <llvm:PointerValue>builder.load(builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 0)]), ALIGN_HEAP);
    int offset = isListSetAlwaysInexact(tc, listType, indexOperand.semType, newMemberOperand.semType) ? LIST_DESC_INEXACT_SET_OFFSET : LIST_DESC_SET_OFFSET;
    llvm:PointerValue func = <llvm:PointerValue>builder.load(builder.getElementPtr(desc, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, la.descBaseIndex + offset)]), ALIGN_HEAP);
    llvm:Value err = <llvm:Value>builder.call(func, [taggedStruct, index, val]);
    buildCheckError(builder, scaffold, err, insn.pos);
    if bbJoin != () {
        builder.br(bbJoin);
        builder.positionAtEnd(bbJoin);
    }
}

function buildSpecializedListSet(llvm:Builder builder, Scaffold scaffold, llvm:Value taggedStruct, llvm:PointerValue struct, llvm:Value index, ListRepr repr, llvm:Value val)
                                returns llvm:BasicBlock|BuildError {
    llvm:BasicBlock bbExact = scaffold.addBasicBlock();
    llvm:BasicBlock bbTaggedSet = scaffold.addBasicBlock();
    llvm:BasicBlock bbJoin = scaffold.addBasicBlock();
    llvm:Value isExact = buildIsExact(builder, scaffold, taggedStruct);
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
    array = builder.bitCast(array, heapPointerType(llvm:arrayType(repr.memberHeapLlvm, 0)));
    llvm:Value heapVal = listReprConvertToHeapType(builder, repr, val);
    builder.store(heapVal, builder.getElementPtr(array, [llvm:constInt(LLVM_INT, 0), index], "inbounds"));
    builder.br(bbJoin);
    builder.positionAtEnd(bbTaggedSet);
    return bbJoin;
}

function listReprConvertToHeapType(llvm:Builder builder, ListRepr repr, llvm:Value value) returns llvm:Value {
    return convertValue(builder, value, repr.memberRepr.llvm, repr.memberHeapLlvm);
}

function listReprConvertFromHeapType(llvm:Builder builder, ListRepr repr, llvm:Value value) returns llvm:Value {
    return convertValue(builder, value, repr.memberHeapLlvm, repr.memberRepr.llvm);
}

function convertValue(llvm:Builder builder, llvm:Value value, llvm:Type fromTy, llvm:Type toTy) returns llvm:Value {
    if fromTy == toTy {
        return value;
    }
    else if fromTy == LLVM_INT && toTy == LLVM_BYTE {
        return builder.trunc(value, toTy);
    }
    else if fromTy == LLVM_BYTE && toTy == LLVM_INT {
        return builder.zExt(value, toTy);
    }
    panic err:impossible("unsupported llvm type conversion");
}

function buildMappingConstruct(llvm:Builder builder, Scaffold scaffold, bir:MappingConstructInsn insn) returns BuildError? {
    t:SemType mappingType = insn.result.semType;
    llvm:ConstPointerValue inherentType = scaffold.getInherentType(mappingType);
    llvm:PointerValue m = <llvm:PointerValue>buildRuntimeFunctionCall(builder, scaffold, mappingConstructFunction,
                                                                      [inherentType, llvm:constInt(LLVM_INT, insn.operands.length())]);
    t:Context tc = scaffold.typeContext();
    t:MappingAtomicType mat = <t:MappingAtomicType>t:mappingAtomicType(tc, mappingType);  
    foreach var [fieldName, operand] in mappingOrderFields(mat, insn.fieldNames, insn.operands) {
        _ = buildVoidRuntimeFunctionCall(builder, scaffold, mappingInitMemberFunction,
                                         [
                                             m,
                                             check buildConstString(builder, scaffold, fieldName),
                                             check buildWideRepr(builder, scaffold, operand, REPR_ANY,
                                                                 t:mappingDerefMemberType(tc, mappingType, t:stringConst(fieldName)))
                                         ]);
    }
    builder.store(m, scaffold.address(insn.result));
}

// When there are required fields, we need to reorder so that 
// required fields are in the same order here as in the type descriptor.
function mappingOrderFields(t:MappingAtomicType mat, string[] fieldNames, bir:Operand[] operands) returns [string, bir:Operand][] {
    int length = fieldNames.length();
    string[] requiredFieldNames = mat.names;
    int nRequiredFields = requiredFieldNames.length();
    if nRequiredFields != 0 {
        map<int> requiredFieldIndex = {};
        foreach int i in 0 ..< nRequiredFields {
            requiredFieldIndex[requiredFieldNames[i]] = i;
        }
        return
            from int i in 0 ..< length
            let string fieldName = fieldNames[i]
            let int sortIndex = requiredFieldIndex[fieldName] ?: nRequiredFields + i
            order by sortIndex
            select [fieldName, operands[i]];
    }
    else {
        return from int i in 0 ..< length select [fieldNames[i], operands[i]];
    }    
}

function buildMappingGet(llvm:Builder builder, Scaffold scaffold, bir:MappingGetInsn insn) returns BuildError? {
    bir:Register mappingReg = insn.operands[0];
    bir:StringOperand keyOperand = insn.operands[1];
    int? fieldIndex = mappingFieldIndex(scaffold.typeContext(), mappingReg.semType, keyOperand);
    boolean fill;
    RuntimeFunction rf;
    llvm:Value k;
    if fieldIndex == () {
        fill = insn.name == bir:INSN_MAPPING_FILLING_GET;
        rf = fill ? mappingFillingGetFunction : mappingGetFunction;
        k = check buildString(builder, scaffold, keyOperand);
    }
    else {
        fill = false;
        rf = mappingIndexedGetFunction;
        k = llvm:constInt(LLVM_INT, fieldIndex);
    }
    llvm:Value mapping = builder.load(scaffold.address(mappingReg));
    llvm:Value memberWithErr = buildRuntimeFunctionCall(builder, scaffold, rf, [mapping, k]);
    llvm:Value member = fill ? buildCheckPanicCode(builder, scaffold, memberWithErr, insn.pos) : memberWithErr;
    t:SemType resultType = insn.result.semType;
    if isPotentiallyExact(resultType) {
        if !isMappingMemberTypeExact(scaffold.typeContext(), mappingReg.semType, keyOperand, resultType) {
            // this clears the exact bit of member
            member = buildClearExact(builder, scaffold, member, resultType);
        }
        else {
            // this clears the exact bit of `member` only if `mapping` is not exact
            member = buildMemberClearExact(builder, scaffold, mapping, member, resultType);
        }
    }
    buildStoreTagged(builder, scaffold, member, insn.result);
}

// When this returns false, we need clear the exact bit on a member that we get from a mapping value.
// Let M be mapping type and let K be the type of keyOperand.
// If this function returns true, then it must be the case when a mappping value has as M as
// its inherent type, then for any field name k in K, if M has a field k, then the type that M requires for k must be
// equal to t:mappingMemberType(cx, M, K).
function isMappingMemberTypeExact(t:Context tc, t:SemType mappingType, bir:StringOperand keyOperand, t:SemType resultType) returns boolean {
    t:MappingAtomicType? mat = t:mappingAtomicType(tc, mappingType);
    if mat == () {
        return false;
    }
    // don't need to check when the condition is false, because there can be only one applicable member type
    else if t:singleStringShape(keyOperand.semType) == () && mat.names.length() != 0 {
        t:SemType peResult = t:intersect(resultType, POTENTIALLY_EXACT);
        foreach t:SemType ty in t:mappingAtomicTypeApplicableDerefMemberTypes(tc, mat, keyOperand.semType) {
            if !isSameTypeWithin(tc, ty, POTENTIALLY_EXACT, peResult) {
                return false;
            }
        }
    }
    return true;
}

function isListMemberTypeExact(t:Context tc, t:SemType listType, bir:IntOperand indexOperand, t:SemType resultType) returns boolean {
    t:ListAtomicType? lat = t:listAtomicType(tc, listType);
    if lat == () {
        return false;
    }
    // don't need to check when the condition is false, because there can be only one applicable member type
    else if t:singleIntShape(indexOperand.semType) == () && lat.members.fixedLength != 0 {
        t:SemType peResult = t:intersect(resultType, POTENTIALLY_EXACT);
        foreach t:SemType ty in t:listAtomicTypeApplicableMemberTypes(tc, lat, indexOperand.semType) {
            if !isSameTypeWithin(tc, ty, POTENTIALLY_EXACT, peResult) {
                return false;
            }
        }
    }
    return true;
}

function isSameTypeWithin(t:Context tc, t:SemType semType, t:SemType within, t:SemType targetType) returns boolean {
    t:SemType ty = t:intersect(semType, within);
    return t:isNever(ty) || t:isSameType(tc, ty, targetType);
}

function buildMappingSet(llvm:Builder builder, Scaffold scaffold, bir:MappingSetInsn insn) returns BuildError? {
    bir:Register mappingReg = insn.operands[0];
    bir:SemType mappingType = mappingReg.semType;
    bir:StringOperand keyOperand = insn.operands[1];
    int? fieldIndex = mappingFieldIndex(scaffold.typeContext(), mappingReg.semType, keyOperand);
    t:Context tc = scaffold.typeContext();
    bir:Operand newMemberOperand = insn.operands[2];
    RuntimeFunction rf;
    llvm:Value k;
    if fieldIndex == () {
        if isMappingSetAlwaysInexact(tc, mappingType, keyOperand.semType, newMemberOperand.semType) {
            rf = mappingInexactSetFunction;
        }
        else {
            rf = mappingSetFunction;
        }
        k = check buildString(builder, scaffold, keyOperand);
    }
    else {
        rf = mappingIndexedSetFunction;
        k = llvm:constInt(LLVM_INT, fieldIndex);
    }
    t:SemType memberType = t:mappingDerefMemberType(scaffold.typeContext(), mappingType, keyOperand.semType);
    // Note that we do not need to check the exactness of the mapping value, nor do we need
    // to check the exactness of the member type: buildWideRepr does all that is necessary.
    // See exact.md for more details.
    llvm:Value err = buildRuntimeFunctionCall(builder, scaffold, rf,
                                              [
                                                  builder.load(scaffold.address(mappingReg)),
                                                  k,
                                                  check buildWideRepr(builder, scaffold, newMemberOperand, REPR_ANY, memberType)
                                              ]);
    buildCheckError(builder, scaffold, <llvm:Value>err, insn.pos);
}

// Returns true if it is possible for both the mapping type to be equal to the inherent type
// (i.e. for the mapping value reference to be exact)
// and for the mapping_set to panic at runtime.
// In this case, we cannot optimize based on the exactness of the mapping value, and so
// we have to do the same was what we would do if the mapping value was inexact.
function isMappingSetAlwaysInexact(t:Context tc, t:SemType mappingType, t:SemType keyType, t:SemType newMemberType) returns boolean {
    t:MappingAtomicType? mat = t:mappingAtomicType(tc, mappingType);
    // JBUG == doesn't work
    if mat is () {
        // inherent type is atomic, so if mapping type isn't, they cannot be equal
        return false;
    }
    foreach t:SemType ty in t:mappingAtomicTypeApplicableDerefMemberTypes(tc, mat, keyType) {
        if !t:isSubtype(tc, newMemberType, ty) {
            return true;
        }
    }
    return false;
}

function isListSetAlwaysInexact(t:Context tc, t:SemType listType, t:SemType indexType, t:SemType newMemberType) returns boolean {
    t:ListAtomicType? lat = t:listAtomicType(tc, listType);
    // JBUG == doesn't work
    if lat is () || t:singleIntShape(indexType) != () {
        // inherent type is atomic, so if list type isn't, they cannot be equal
        // If indexing with a constant value, then we have the precise type
        return false;
    }
    foreach t:SemType ty in t:listAtomicTypeApplicableMemberTypes(tc, lat, indexType) {
        if !t:isSubtype(tc, newMemberType, ty) {
            return true;
        }
    }
    return false;
}

function mappingFieldIndex(t:Context tc, t:SemType mappingType, bir:StringOperand keyOperand) returns int? {
    string? k = t:singleStringShape(keyOperand.semType);
    if k is string {
        t:MappingAtomicType? mat = t:mappingAtomicType(tc, mappingType);
        if mat != () && mat.rest == t:NEVER {
            return mat.names.indexOf(k);
        }
    }
    return ();
}

// This clears the exact bit of the member if the structure is not exact.
function buildMemberClearExact(llvm:Builder builder, Scaffold scaffold, llvm:Value structure, llvm:Value member, t:SemType sourceType) returns llvm:Value {
    RuntimeFunction rf = overloadsExactBit(sourceType) ? taggedMemberClearExactAnyFunction : taggedMemberClearExactPtrFunction;
    return buildRuntimeFunctionCall(builder, scaffold, rf, [structure, member]);
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
