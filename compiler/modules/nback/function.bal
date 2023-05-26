import wso2/nballerina.bir;
import wso2/nballerina.comm.err;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

final RuntimeFunction functionIsExactFunction = {
    name: "function_is_exact",
    ty: {
        returnType: LLVM_BOOLEAN,
        paramTypes: [llvm:pointerType(llFunctionDescType), heapPointerType(llFunctionType)]
    },
    attrs: []
};

final RuntimeFunction createUniformArgArrayFunction = {
    name: "create_uniform_arg_array",
    ty: {
        returnType: llvm:pointerType(LLVM_TAGGED_PTR),
        paramTypes: ["i64"]
    },
    attrs: []
};

final RuntimeFunction addRestArgsToUniformArgsFunction = {
    name: "add_rest_args_to_uniform_args",
    ty: {
        returnType: LLVM_VOID,
        paramTypes: [llvm:pointerType(LLVM_TAGGED_PTR), LLVM_INT, LLVM_TAGGED_PTR]
    },
    attrs: []
};

final RuntimeFunction addUniformArgsToRestArgsFunction = {
    name: "add_uniform_args_to_rest_args",
    ty: {
        returnType: LLVM_VOID,
        paramTypes: [llvm:pointerType(LLVM_TAGGED_PTR), LLVM_INT, LLVM_INT, LLVM_TAGGED_PTR]
    },
    attrs: []
};

function buildCall(llvm:Builder builder, Scaffold scaffold, bir:CallInsn insn) returns BuildError? {
    var { symbol: funcSymbol, erasedSignature, signature } = insn.func;
    llvm:Function func;
    if funcSymbol is bir:InternalSymbol {
        func = scaffold.getFunctionDefn(funcSymbol.identifier);
    }
    else {
        func = check buildFunctionDecl(scaffold, funcSymbol, erasedSignature);
    }
    check finishBuildCall(builder, scaffold, func, erasedSignature.paramTypes, signature.paramTypes,
                          insn.args, erasedSignature.returnType, insn.result);
}

function buildCallIndirect(llvm:Builder builder, Scaffold scaffold, bir:CallIndirectInsn insn) returns BuildError? {
    // XXX: Once we properly support function types (ability to call unions), semType will no longer guaranteed to be a function atom
    // But in cases where semType is not atomic we don't need a signature since they will always be "inexact"
    t:FunctionAtomicType atomic = <t:FunctionAtomicType>t:functionAtomicType(scaffold.typeContext(), insn.operands[0].semType);
    t:FunctionSignature signature = t:functionSignature(scaffold.typeContext(), atomic);
    llvm:PointerType fnStructPtrTy = llvm:pointerType(functionValueType(signature));
    llvm:PointerValue unTaggedPtr = buildUntagPointer(builder, scaffold, scaffold.address(insn.operands[0]));
    llvm:ConstPointerValue llSignature = scaffold.getFunctionSignatureCall(signature);
    llvm:Value isExact = buildRuntimeFunctionCall(builder, scaffold, functionIsExactFunction,
                                                  [llSignature, builder.bitCast(unTaggedPtr, heapPointerType(llFunctionType))]);
    llvm:PointerValue funcStructPtr = builder.bitCast(builder.addrSpaceCast(unTaggedPtr,
                                                                            LLVM_TAGGED_PTR_WITHOUT_ADDR_SPACE),
                                                      fnStructPtrTy);
    llvm:BasicBlock ifExact = scaffold.addBasicBlock();
    llvm:BasicBlock ifNotExact = scaffold.addBasicBlock();
    llvm:BasicBlock afterCall = scaffold.addBasicBlock();
    builder.condBr(isExact, ifExact, ifNotExact);
    builder.positionAtEnd(ifExact);
    check finishBuildCallIndirectExact(builder, scaffold, insn, afterCall, funcStructPtr, signature);
    builder.positionAtEnd(ifNotExact);
    check finishBuildCallIndirectInexact(builder, scaffold, insn, afterCall, funcStructPtr, signature);
    builder.positionAtEnd(afterCall);
}

function finishBuildCallIndirectExact(llvm:Builder builder, Scaffold scaffold, bir:CallIndirectInsn insn,
                                      llvm:BasicBlock afterCall, llvm:PointerValue funcStructPtr,
                                      t:FunctionSignature signature) returns BuildError? {
    var { returnType, paramTypes } = signature;
    llvm:PointerValue fnPtr = builder.getElementPtr(funcStructPtr, [constIndex(scaffold, 0),
                                                                    constIndex(scaffold, 1)],
                                                    "inbounds");
    llvm:PointerValue funcPtr = <llvm:PointerValue>builder.load(fnPtr);
    check finishBuildCall(builder, scaffold, funcPtr, paramTypes, paramTypes, insn.operands.slice(1), returnType, insn.result);
    builder.br(afterCall);
}

function finishBuildCall(llvm:Builder builder, Scaffold scaffold, llvm:Function|llvm:PointerValue func,
                         t:SemType[] paramTypes, t:SemType[] instantiatedParamTypes, bir:Operand[] args,
                         t:SemType returnTy, bir:Register result) returns BuildError? {
    llvm:Value[] argValues = check buildFunctionCallArgs(builder, scaffold, paramTypes, instantiatedParamTypes, args);
    llvm:Value? retValue = buildFunctionCall(builder, scaffold, func, argValues);
    buildStoreRet(builder, scaffold, semTypeRetRepr(returnTy), retValue, result);
}

function finishBuildCallIndirectInexact(llvm:Builder builder, Scaffold scaffold, bir:CallIndirectInsn insn,
                                        llvm:BasicBlock afterCall, llvm:PointerValue funcStructPtr,
                                        t:FunctionSignature signature) returns BuildError? {
    var { returnType, paramTypes, restParamType } = signature;
    int requiredArgCount = restParamType == () ? paramTypes.length() : paramTypes.length() - 1;
    llvm:Value[] uniformArgs = from int i in 1 ..< requiredArgCount + 1
                                    select check buildRepr(builder, scaffold, insn.operands[i],
                                                           uniformRepr(insn.operands[i].semType));
    llvm:Value nArgs;
    llvm:PointerValue uniformArgArray;
    if restParamType !is () {
        // rest is represented as a temporary array
        llvm:PointerValue unTaggedPtr = buildUntagPointer(builder, scaffold,
                                                          scaffold.address(<bir:TmpRegister>insn.operands[requiredArgCount + 1]));
        llvm:PointerValue restArray = builder.bitCast(unTaggedPtr, heapPointerType(llListType));
        llvm:Value restArgCount = builder.load(builder.getElementPtr(restArray, [constIndex(scaffold, 0), constIndex(scaffold, 1)],
                                                                     "inbounds"));
        // since both requiredArgCount and restArgCount are singed64 this addition will not overflow as long as
        // runtime treats nArgs as unsigned64 (note llvm don't distinguish signed and unsigned integer types)
        nArgs = builder.iArithmeticWrap("add", constInt(scaffold, requiredArgCount), restArgCount);
        uniformArgArray = <llvm:PointerValue>buildRuntimeFunctionCall(builder, scaffold,
                                                                      createUniformArgArrayFunction, [nArgs]);
        foreach int i in 0 ..< uniformArgs.length() {
            builder.store(uniformArgs[i], builder.getElementPtr(uniformArgArray, [constInt(scaffold, i)], "inbounds"));
        }
        buildVoidRuntimeFunctionCall(builder, scaffold, addRestArgsToUniformArgsFunction,
                                     [uniformArgArray, constInt(scaffold, uniformArgs.length()),
                                      builder.bitCast(restArray, LLVM_TAGGED_PTR)]);
    }
    else {
        nArgs = constInt(scaffold, requiredArgCount);
        uniformArgArray = <llvm:PointerValue>buildRuntimeFunctionCall(builder, scaffold,
                                                                      createUniformArgArrayFunction, [nArgs]);
        foreach int i in 0 ..< uniformArgs.length() {
            builder.store(uniformArgs[i], builder.getElementPtr(uniformArgArray, [constInt(scaffold, i)], "inbounds"));
        }
    }
    llvm:PointerValue funcPtr = builder.getElementPtr(funcStructPtr, [constIndex(scaffold, 0),
                                                                      constIndex(scaffold, 1)],
                                                      "inbounds");
    llvm:PointerValue fnDescPtr = builder.getElementPtr(funcStructPtr, [constIndex(scaffold, 0),
                                                                        constIndex(scaffold, 0)],
                                                             "inbounds");
    llvm:PointerValue fnDesc = <llvm:PointerValue>builder.load(fnDescPtr);
    llvm:PointerValue callUniformFuncPtr = builder.getElementPtr(fnDesc, [constIndex(scaffold, 0),
                                                                          constIndex(scaffold, 1)],
                                                                 "inbounds");
    llvm:Value? returnVal = builder.call(<llvm:PointerValue>builder.load(callUniformFuncPtr),
                                         [uniformArgArray, nArgs, builder.load(funcPtr)]);
    if returnVal !is llvm:PointerValue {
        panic err:impossible("uniform call must return a tagged pointer");
    }
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

function buildFunctionCallArgs(llvm:Builder builder, Scaffold scaffold, t:SemType[] paramTypes,
                               t:SemType[] instantiatedParamTypes, bir:Operand[] args) returns llvm:Value[]|BuildError {
    return from int i in 0 ..< args.length()
           select check buildWideRepr(builder, scaffold, args[i], semTypeRepr(paramTypes[i]), instantiatedParamTypes[i]);
}

function buildUntagPointer(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue taggedPtr) returns llvm:PointerValue {
    return <llvm:PointerValue>builder.call(scaffold.getIntrinsicFunction("ptrmask.p1.i64"),
                                           [builder.load(taggedPtr), constInt(scaffold, POINTER_MASK)]);
}

function buildFunctionCall(llvm:Builder builder, Scaffold scaffold, llvm:Function|llvm:PointerValue fn, llvm:Value[] args) returns llvm:Value? {
    scaffold.useDebugLocation(builder, DEBUG_USAGE_CALL);
    llvm:Value? result = builder.call(fn, args);
    scaffold.clearDebugLocation(builder);
    return result;
}
