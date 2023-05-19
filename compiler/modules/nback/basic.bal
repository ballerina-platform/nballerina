import wso2/nballerina.bir;
import wso2/nballerina.comm.err;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

final RuntimeFunction panicFunction = {
    name: "panic",
    ty: {
        returnType: "void",
        paramTypes: [LLVM_TAGGED_PTR]
    },
    attrs: ["noreturn", "cold"]
};


final RuntimeFunction errorConstructFunction = {
    name: "error_construct",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [LLVM_TAGGED_PTR, "i64"]
    },
    attrs: []
};

final RuntimeFunction stringConcatFunction = {
    name: "string_concat",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: []
};

function buildPrologue(llvm:Builder builder, Scaffold scaffold, bir:Position pos) {
    scaffold.setCurrentPosition(builder, pos);
    llvm:BasicBlock overflowBlock = scaffold.addBasicBlock();
    llvm:BasicBlock firstBlock = scaffold.basicBlock(0);
    builder.condBr(builder.iCmp("ult", builder.alloca("i8"), builder.load(scaffold.stackGuard())),
                   overflowBlock, firstBlock);
    builder.positionAtEnd(overflowBlock);
    buildCallPanic(builder, scaffold, buildErrorForConstPanic(builder, scaffold, PANIC_STACK_OVERFLOW, pos));
    builder.positionAtEnd(firstBlock);
    scaffold.saveParams(builder);
}

function buildBasicBlock(llvm:Builder builder, Scaffold scaffold, bir:BasicBlock block) returns BuildError? {
    scaffold.setBasicBlock(block);
    builder.positionAtEnd(scaffold.basicBlock(block.label));
    bir:Insn[] insns = block.insns;
    int typeMergeCount = check buildTypeMerges(builder, scaffold, block);
    foreach int j in typeMergeCount ..< insns.length() {
        bir:Insn insn = insns[j];
        scaffold.setCurrentPosition(builder, insn.pos);
        if insn is bir:IntArithmeticBinaryInsn {
            buildArithmeticBinary(builder, scaffold, insn);
        }
        else if insn is bir:IntNoPanicArithmeticBinaryInsn {
            buildNoPanicArithmeticBinary(builder, scaffold, insn);
        }
        else if insn is bir:IntBitwiseBinaryInsn {
            buildBitwiseBinary(builder, scaffold, insn);
        }
        else if insn is bir:CompareInsn {
            check buildCompare(builder, scaffold, insn);
        }
        else if insn is bir:EqualityInsn {
            check buildEquality(builder, scaffold, insn);
        }
        else if insn is bir:BooleanNotInsn {
            buildBooleanNot(builder, scaffold, insn);
        }
        else if insn is bir:RetInsn {
            check buildRet(builder, scaffold, insn);
        }
        else if insn is bir:AssignInsn {
            check buildAssign(builder, scaffold, insn);
        }
        else if insn is bir:TypeCastInsn {
            check buildTypeCast(builder, scaffold, insn);
        }
        else if insn is bir:ConvertToIntInsn {
            check buildConvertToInt(builder, scaffold, insn);
        }
        else if insn is bir:ConvertToFloatInsn {
            check buildConvertToFloat(builder, scaffold, insn);
        }
        else if insn is bir:TypeTestInsn {
            check buildTypeTest(builder, scaffold, insn);
        }
        else if insn is bir:CallInsn {
            check buildCall(builder, scaffold, insn);
        }
        else if insn is bir:CallIndirectInsn {
            check buildCallIndirect(builder, scaffold, insn);
        }
        else if insn is bir:ListConstructInsn {
            check buildListConstruct(builder, scaffold, insn);
        }
        else if insn is bir:ListGetInsn {
            check buildListGet(builder, scaffold, insn);
        }
        else if insn is bir:ListSetInsn {
            check buildListSet(builder, scaffold, insn);
        }
        else if insn is bir:BranchInsn {
            check buildBranch(builder, scaffold, insn);
        }
        else if insn is bir:MappingConstructInsn {
            check buildMappingConstruct(builder, scaffold, insn);
        }
        else if insn is bir:MappingGetInsn {
            check buildMappingGet(builder, scaffold, insn);
        }
        else if insn is bir:MappingSetInsn {
            check buildMappingSet(builder, scaffold, insn);
        }
        else if insn is bir:StringConcatInsn {
            check buildStringConcat(builder, scaffold, insn);
        }
        else if insn is bir:CondBranchInsn {
            check buildCondBranch(builder, scaffold, insn);
        }
        else if insn is bir:TypeCondBranchInsn {
            check buildTypeCondBranch(builder, scaffold, insn);
        }
        else if insn is bir:AbnormalRetInsn {
            buildAbnormalRet(builder, scaffold, insn);
        }
        else if insn is bir:PanicInsn {
            buildPanic(builder, scaffold, insn);
        }
        else if insn is bir:ErrorConstructInsn {
            check buildErrorConstruct(builder, scaffold, insn);
        }
        else if insn is bir:FloatArithmeticBinaryInsn {
            buildFloatArithmeticBinary(builder, scaffold, insn);
        }
        else if insn is bir:FloatNegateInsn {
            buildFloatNegate(builder, scaffold, insn);
        }
        else if insn is bir:DecimalArithmeticBinaryInsn {
            buildDecimalArithmeticBinary(builder, scaffold, insn);
        }        
        else if insn is bir:DecimalNegateInsn {
            buildDecimalNegate(builder, scaffold, insn);
        }
        else if insn is bir:ConvertToDecimalInsn {
            check buildConvertToDecimal(builder, scaffold, insn);
        }
        else if insn is bir:TypeMergeInsn {
            panic err:impossible("type merge not at the head of basic block");
        }
        else {
            bir:CatchInsn _ = insn;
            // nothing to do
            // scaffold.panicAddress uses this to figure out where to store the panic info
        }
    }
}

function buildTypeMerges(llvm:Builder builder, Scaffold scaffold, bir:BasicBlock block) returns int|BuildError {
    int typeMergeCount = 0;
    BlockNarrowRegBuilder narrowRegBuilder = scaffold.narrowRegBuilder(block.label);
    foreach var insn in block.insns {
        if insn is bir:TypeMergeInsn {
            scaffold.setCurrentPosition(builder, insn.pos);
            check buildTypeMerge(builder, scaffold, insn);
            narrowRegBuilder.markMerged(insn.operands);
            typeMergeCount += 1;
        }
        else {
            break;
        }
    }
    check narrowRegBuilder.finish(builder, scaffold);
    return typeMergeCount;
}

function buildBranch(llvm:Builder builder, Scaffold scaffold, bir:BranchInsn insn) returns BuildError? {
    builder.br(scaffold.basicBlock(insn.dest));
}

function buildCondBranch(llvm:Builder builder, Scaffold scaffold, bir:CondBranchInsn insn) returns BuildError? {
    builder.condBr(builder.load(scaffold.address(insn.operand)),
                   scaffold.basicBlock(insn.ifTrue),
                   scaffold.basicBlock(insn.ifFalse));
}

function buildRet(llvm:Builder builder, Scaffold scaffold, bir:RetInsn insn) returns BuildError? {
    RetRepr repr = scaffold.getRetRepr();
    builder.ret(repr is Repr ? check buildWideRepr(builder, scaffold, insn.operand, repr, scaffold.returnType) : ());
}

function buildAbnormalRet(llvm:Builder builder, Scaffold scaffold, bir:AbnormalRetInsn insn) {
    buildCallPanic(builder, scaffold, <llvm:PointerValue>builder.load(scaffold.address(insn.operand)));
}

function buildPanic(llvm:Builder builder, Scaffold scaffold, bir:PanicInsn insn) {
    builder.store(builder.load(scaffold.address(insn.operand)), scaffold.panicAddress());
    builder.br(scaffold.getOnPanic());
}

function buildCallPanic(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue err) {
    buildVoidRuntimeFunctionCall(builder, scaffold, panicFunction, [err]);
    builder.unreachable();
}

function buildAssign(llvm:Builder builder, Scaffold scaffold, bir:AssignInsn insn) returns BuildError? {
    builder.store(check buildWideRepr(builder, scaffold, insn.operand, scaffold.getRepr(insn.result), insn.result.semType),
                  scaffold.address(insn.result));
}

function buildCall(llvm:Builder builder, Scaffold scaffold, bir:CallInsn insn) returns BuildError? {
    bir:FunctionRef funcRef = insn.func;
    t:SemType[] paramTypes = funcRef.erasedSignature.paramTypes;
    t:SemType[] instantiatedParamTypes = funcRef.signature.paramTypes;
    t:FunctionSignature signature = funcRef.erasedSignature;
    bir:Symbol funcSymbol = funcRef.symbol;
    llvm:Value[] args = check buildFunctionCallArgs(builder, scaffold, paramTypes, instantiatedParamTypes, insn.args);
    llvm:Function func;
    if funcSymbol is bir:InternalSymbol {
        func = scaffold.getFunctionDefn(funcSymbol.identifier);
    }
    else {
        func = check buildFunctionDecl(scaffold, funcSymbol, signature);
    }  
    llvm:Value? retValue = buildFunctionCall(builder, scaffold, func, args);
    RetRepr retRepr = semTypeRetRepr(signature.returnType);
    buildStoreRet(builder, scaffold, retRepr, retValue, insn.result);
}

function buildCallIndirect(llvm:Builder builder, Scaffold scaffold, bir:CallIndirectInsn insn) returns BuildError? {
    // XXX: Once we properly support function types (ability to call unions), semType will no longer guaranteed to be a function atom
    t:FunctionAtomicType atomic = <t:FunctionAtomicType>t:functionAtomicType(scaffold.typeContext(), insn.operands[0].semType);
    t:FunctionSignature signature = t:functionSignature(scaffold.typeContext(), atomic);
    llvm:PointerType fnStructPtrTy = llvm:pointerType(functionValueType(signature));
    llvm:PointerValue unTaggedPtr = <llvm:PointerValue>builder.call(scaffold.getIntrinsicFunction("ptrmask.p1.i64"),
                                                                    [<llvm:PointerValue>builder.load(scaffold.address(insn.operands[0])),
                                                                     constInt(scaffold, POINTER_MASK)]);
    llvm:ConstPointerValue llSignature = scaffold.getFunctionSignatureValue(signature);
    llvm:Value isExact = buildRuntimeFunctionCall(builder, scaffold, functionIsExactFunction,
                                                  [llSignature, builder.bitCast(unTaggedPtr, LLVM_FUNCTION_PTR)]);
    llvm:PointerValue funcStructPtr = builder.bitCast(builder.addrSpaceCast(unTaggedPtr,
                                                                            LLVM_TAGGED_PTR_WITHOUT_ADDR_SPACE),
                                                      fnStructPtrTy);
    llvm:BasicBlock ifExact = scaffold.addBasicBlock();
    llvm:BasicBlock ifNotExact = scaffold.addBasicBlock();
    llvm:BasicBlock afterCall = scaffold.addBasicBlock();
    builder.condBr(isExact, ifExact, ifNotExact);
    builder.positionAtEnd(ifExact);
    check buildExactCall(builder, scaffold, insn, afterCall, funcStructPtr, signature);
    builder.positionAtEnd(ifNotExact);
    check buildNotExactCall(builder, scaffold, insn, afterCall, funcStructPtr, signature);
    builder.positionAtEnd(afterCall);
}

function buildExactCall(llvm:Builder builder, Scaffold scaffold, bir:CallIndirectInsn insn,
                        llvm:BasicBlock afterCall, llvm:PointerValue funcStructPtr, t:FunctionSignature signature) returns BuildError? {
    var { returnType, paramTypes } = signature;
    llvm:Value[] args = check buildFunctionCallArgs(builder, scaffold, paramTypes, paramTypes,
                                                    from int i in 1 ..< insn.operands.length() select insn.operands[i]);
    llvm:PointerValue fnGlobalPtr = builder.getElementPtr(funcStructPtr, [constIndex(scaffold, 0),
                                                                          constIndex(scaffold, 2)],
                                                          "inbounds");
    llvm:PointerValue funcPtr = <llvm:PointerValue>builder.load(fnGlobalPtr);
    llvm:Value? retValue = buildFunctionCall(builder, scaffold, funcPtr, args);
    buildStoreRet(builder, scaffold, semTypeRetRepr(returnType), retValue, insn.result);
    builder.br(afterCall);
}

function buildNotExactCall(llvm:Builder builder, Scaffold scaffold, bir:CallIndirectInsn insn,
                           llvm:BasicBlock afterCall, llvm:PointerValue funcStructPtr, t:FunctionSignature signature) returns BuildError? {
    var { returnType, paramTypes, restParamType } = signature;
    int requiredArgCount = restParamType == () ? paramTypes.length() : paramTypes.length() - 1;
    // converting to TaggedRepr always return a pointer value
    llvm:PointerValue[] uniformArgs = from int i in 1 ..< requiredArgCount + 1
                                        select <llvm:PointerValue>(check buildRepr(builder, scaffold, insn.operands[i],
                                                                                   uniformRepr(insn.operands[i].semType)));
    llvm:Value nArgs;
    llvm:PointerValue uniformArgArray;
    if restParamType !is () {
        // rest is represented as a temporary array
        bir:TmpRegister restOperands = <bir:TmpRegister>insn.operands[requiredArgCount + 1];
        llvm:PointerValue restArray = builder.bitCast(<llvm:PointerValue>builder.call(scaffold.getIntrinsicFunction("ptrmask.p1.i64"),
                                                                                      [<llvm:PointerValue>builder.load(scaffold.address(restOperands)),
                                                                                       constInt(scaffold, POINTER_MASK)]),
                                                      heapPointerType(llListType));
        llvm:Value restArgCount = builder.load(builder.getElementPtr(restArray, [constIndex(scaffold, 0),
                                                                                 constIndex(scaffold, 1)],
                                                                     "inbounds"));
        // since both requiredArgCount and restArgCount are singed64 this addition will not overflow as long as
        // runtime treats nArgs as unsigned64 (note llvm don't distinguish signed and unsigned integer types)
        nArgs = builder.iArithmeticWrap("add", constInt(scaffold, requiredArgCount), restArgCount);
        uniformArgArray = <llvm:PointerValue>buildRuntimeFunctionCall(builder, scaffold, createUniformArgArrayFunction, [nArgs]);
        foreach int i in 0 ..< uniformArgs.length() {
            builder.store(uniformArgs[i], builder.getElementPtr(uniformArgArray, [constInt(scaffold, i)], "inbounds"));
        }
        buildVoidRuntimeFunctionCall(builder, scaffold, addRestArgsToUniformArgsFunction, [uniformArgArray,
                                                                                           constInt(scaffold, uniformArgs.length()),
                                                                                           builder.bitCast(restArray, LLVM_TAGGED_PTR)]);
    }
    else {
        nArgs = constInt(scaffold, requiredArgCount);
        uniformArgArray = <llvm:PointerValue>buildRuntimeFunctionCall(builder, scaffold, createUniformArgArrayFunction, [nArgs]);
        foreach int i in 0 ..< uniformArgs.length() {
            builder.store(uniformArgs[i], builder.getElementPtr(uniformArgArray, [constInt(scaffold, i)], "inbounds"));
        }
    }
    llvm:PointerValue funcPtr = <llvm:PointerValue>builder.load(builder.getElementPtr(funcStructPtr,
                                                                                      [constIndex(scaffold, 0),
                                                                                       constIndex(scaffold, 2)],
                                                                                      "inbounds"));
    llvm:PointerValue fnSignaturePtr = <llvm:PointerValue>builder.load(builder.getElementPtr(funcStructPtr,
                                                                                             [constIndex(scaffold, 0),
                                                                                              constIndex(scaffold, 1)],
                                                                                             "inbounds"));
    llvm:PointerValue callUniformFuncPtr = <llvm:PointerValue>builder.load(builder.getElementPtr(fnSignaturePtr,
                                                                                                 [constIndex(scaffold, 0),
                                                                                                  constIndex(scaffold, 0)],
                                                                                                 "inbounds"));
    llvm:PointerValue returnVal = <llvm:PointerValue>builder.call(callUniformFuncPtr,
                                                                  [uniformArgArray, nArgs, funcPtr]);
    builder.store(exactReturnValue(builder, scaffold, semTypeRetRepr(returnType), returnVal),
                                   scaffold.address(insn.result));
    builder.br(afterCall);
}

function exactReturnValue(llvm:Builder builder, Scaffold scaffold, RetRepr retRepr, llvm:PointerValue returnVal) returns llvm:Value {
    if retRepr is BooleanRepr {
        return buildUntagBoolean(builder, returnVal);
    }
    else if retRepr is IntRepr {
        return buildUntagInt(builder, scaffold, returnVal);
    }
    else if retRepr is FloatRepr {
        return buildUntagFloat(builder, scaffold, returnVal);
    }
    return returnVal;
}

function uniformRepr(t:SemType ty) returns TaggedRepr {
    t:BasicTypeBitSet w = t:widenToBasicTypes(ty);
    return { subtype: w, alwaysImmediate: isSemTypeAlwaysImmediate(ty, w) };
}

function buildFunctionCallArgs(llvm:Builder builder, Scaffold scaffold, t:SemType[] paramTypes, t:SemType[] instantiatedParamTypes, bir:Operand[] args) returns llvm:Value[]|BuildError {
    return from int i in 0 ..< args.length()
           select check buildWideRepr(builder, scaffold, args[i], semTypeRepr(paramTypes[i]), instantiatedParamTypes[i]);
}

function buildFunctionCall(llvm:Builder builder, Scaffold scaffold, llvm:Function|llvm:PointerValue fn, llvm:Value[] args) returns llvm:Value? {
    scaffold.useDebugLocation(builder, DEBUG_USAGE_CALL);
    llvm:Value? result = builder.call(fn, args);
    scaffold.clearDebugLocation(builder);
    return result;
}

function buildStoreRet(llvm:Builder builder, Scaffold scaffold, RetRepr retRepr, llvm:Value? retValue, bir:Register reg) {
    if retRepr is Repr {
        builder.store(buildConvertRepr(builder, scaffold, retRepr, <llvm:Value>retValue, scaffold.getRepr(reg)),
                      scaffold.address(reg));
    }
    else {
         builder.store(constNil(scaffold), scaffold.address(reg));
    }
}

function buildFunctionDecl(Scaffold scaffold, bir:ExternalSymbol symbol, t:FunctionSignature sig) returns llvm:FunctionDecl|BuildError {
    llvm:FunctionDecl? decl = scaffold.getImportedFunction(symbol);
    if decl != () {
        return decl;
    }
    else {
        llvm:FunctionType ty = buildFunctionSignature(sig);
        llvm:Module mod = scaffold.getModule();
        llvm:FunctionDecl d = mod.addFunctionDecl(mangleExternalSymbol(symbol), ty);
        scaffold.addImportedFunction(symbol, d);
        return d;
    }
}

function buildErrorConstruct(llvm:Builder builder, Scaffold scaffold, bir:ErrorConstructInsn insn) returns BuildError? {
    scaffold.useDebugLocation(builder, DEBUG_USAGE_ERROR_CONSTRUCT);
    llvm:Value value = <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(errorConstructFunction),
                                                [
                                                    check buildString(builder, scaffold, insn.operand),
                                                    constInt(scaffold, scaffold.lineNumber(insn.pos))
                                                ]);
    scaffold.clearDebugLocation(builder);
    builder.store(value, scaffold.address(insn.result));
}

function buildStringConcat(llvm:Builder builder, Scaffold scaffold, bir:StringConcatInsn insn) returns BuildError? {
    llvm:Value value = buildRuntimeFunctionCall(builder, scaffold, stringConcatFunction,
                                                [
                                                    check buildString(builder, scaffold, insn.operands[0]),
                                                    check buildString(builder, scaffold, insn.operands[1])
                                                ]);
    builder.store(value, scaffold.address(insn.result));
}

function buildBooleanNot(llvm:Builder builder, Scaffold scaffold, bir:BooleanNotInsn insn) {
    buildStoreBoolean(builder, scaffold,
                      builder.iBitwise("xor", constBoolean(scaffold, true), builder.load(scaffold.address(insn.operand))),
                      insn.result);
}
