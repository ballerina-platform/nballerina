import wso2/nballerina.bir;
import wso2/nballerina.comm.err;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

final llvm:PointerType llUniformArgArrayType = llvm:pointerType(LLVM_TAGGED_PTR);

final RuntimeFunction functionIsExactFunction = {
    name: "function_is_exact",
    ty: {
        returnType: LLVM_BOOLEAN,
        paramTypes: [llvm:pointerType(llFunctionDescType), heapPointerType(llFunctionType)]
    },
    attrs: []
};

final RuntimeFunction allocUniformArgArrayFunction = {
    name: "function_alloc_uniform_args",
    ty: {
        returnType: llvm:pointerType(LLVM_TAGGED_PTR),
        paramTypes: ["i64"]
    },
    attrs: []
};

final RuntimeFunction addToUniformArgsFunction = {
    name: "function_add_to_uniform_args",
    ty: {
        returnType: LLVM_VOID,
        paramTypes: [llUniformArgArrayType, heapPointerType(llListType), LLVM_INT]
    },
    attrs: []
};

final RuntimeFunction addToRestArgsFunction = {
    name: "function_add_to_rest_args",
    ty: {
        returnType: LLVM_VOID,
        paramTypes: [heapPointerType(llListType), llUniformArgArrayType, LLVM_INT, LLVM_INT]
    },
    attrs: []
};

function buildCall(llvm:Builder builder, Scaffold scaffold, bir:CallInsn insn) returns BuildError? {
    bir:FunctionConstOperand|bir:Register func = insn.func;
    if func is bir:FunctionConstOperand {
        return finishDirectCall(builder, scaffold, func.value, insn.args, insn.result);
    }
    else {
        return finishIndirectCall(builder, scaffold, func, insn.args, insn.result);
    }
}

function finishDirectCall(llvm:Builder builder, Scaffold scaffold, bir:FunctionRef funcRef, bir:Operand[] args,
                          bir:Register result) returns BuildError? {
    var { symbol: funcSymbol, erasedSignature, signature } = funcRef;
    llvm:Function func;
    if funcSymbol is bir:InternalSymbol {
        func = scaffold.getFunctionDefn(funcSymbol.identifier);
    }
    else {
        func = check buildFunctionDecl(scaffold, funcSymbol, erasedSignature);
    }
    check finishBuildCall(builder, scaffold, func, erasedSignature.paramTypes, signature.paramTypes,
                          args, erasedSignature.returnType, result);
}

function buildCallInexact(llvm:Builder builder, Scaffold scaffold, bir:CallInexactInsn insn) returns BuildError? {
    panic err:unimplemented("inexact call not implemented", scaffold.location(insn.pos));
}

function finishIndirectCall(llvm:Builder builder, Scaffold scaffold, bir:Register func, bir:Operand[] args,
                            bir:Register result) returns BuildError? {
    t:FunctionAtomicType atomic = <t:FunctionAtomicType>t:functionAtomicType(scaffold.typeContext(), func.semType);
    t:FunctionSignature signature = t:functionSignature(scaffold.typeContext(), atomic);
    llvm:PointerType funcValuePtrTy = llvm:pointerType(functionValueType(signature));
    llvm:PointerValue untaggedFuncValuePtr = buildUntagPointer(builder, scaffold, scaffold.address(func));
    llvm:ConstPointerValue funcDescPtr = scaffold.getCalledType(signature);
    llvm:Value isExact = buildRuntimeFunctionCall(builder, scaffold, functionIsExactFunction,
                                                  [funcDescPtr, builder.bitCast(untaggedFuncValuePtr, heapPointerType(llFunctionType))]);
    llvm:PointerValue funcValuePtr = builder.bitCast(builder.addrSpaceCast(untaggedFuncValuePtr,
                                                                           LLVM_TAGGED_PTR_WITHOUT_ADDR_SPACE),
                                                     funcValuePtrTy);
    llvm:BasicBlock ifExact = scaffold.addBasicBlock();
    llvm:BasicBlock ifNotExact = scaffold.addBasicBlock();
    llvm:BasicBlock afterCall = scaffold.addBasicBlock();
    builder.condBr(isExact, ifExact, ifNotExact);
    builder.positionAtEnd(ifExact);
    check finishBuildCallIndirectExact(builder, scaffold, args, result, afterCall, funcValuePtr, signature);
    builder.positionAtEnd(ifNotExact);
    check finishBuildCallIndirectInexact(builder, scaffold, args, result, afterCall, funcValuePtr, signature);

    builder.positionAtEnd(afterCall);
}

function finishBuildCallIndirectExact(llvm:Builder builder, Scaffold scaffold, bir:Operand[] args, bir:Register result,
                                      llvm:BasicBlock afterCall, llvm:PointerValue funcValuePtr,
                                      t:FunctionSignature signature) returns BuildError? {
    var { returnType, paramTypes } = signature;
    llvm:PointerValue funcPtr = builder.getElementPtr(funcValuePtr, [constIndex(scaffold, 0),
                                                                     constIndex(scaffold, 1)],
                                                      "inbounds");
    llvm:PointerValue func = <llvm:PointerValue>builder.load(funcPtr);
    check finishBuildCall(builder, scaffold, func, paramTypes, paramTypes, args, returnType, result);
    builder.br(afterCall);
}

function finishBuildCall(llvm:Builder builder, Scaffold scaffold, llvm:Function|llvm:PointerValue func,
                         t:SemType[] paramTypes, t:SemType[] instantiatedParamTypes, bir:Operand[] args,
                         t:SemType returnTy, bir:Register result) returns BuildError? {
    llvm:Value[] argValues = check buildFunctionCallArgs(builder, scaffold, paramTypes, instantiatedParamTypes, args);
    llvm:Value? retValue = buildFunctionCall(builder, scaffold, func, argValues);
    buildStoreRet(builder, scaffold, semTypeRetRepr(returnTy), retValue, result);
}

// This is using the calling scheme defined in https://github.com/ballerina-platform/nballerina/issues/907#issuecomment-1041053503 (for inexact calls).
// This function converts direct representation of call site type to uniform representation and call the uniformFunction
// `createUniformFunction` defined in `init.bal` converts the uniform representation to direct representation of function definition,
// call the function pointer and return the result in uniform representation.
// Then this function convert that result to direct representation of call site type.
function finishBuildCallIndirectInexact(llvm:Builder builder, Scaffold scaffold, bir:Operand[] args, bir:Register result,
                                        llvm:BasicBlock afterCall, llvm:PointerValue funcValuePtr,
                                        t:FunctionSignature signature) returns BuildError? {
    var { returnType, paramTypes, restParamType } = signature;
    int requiredArgCount = restParamType == () ? paramTypes.length() : paramTypes.length() - 1;
    llvm:Value[] uniformArgs = from int i in 0 ..< requiredArgCount 
                                    select buildClearExact(builder, scaffold,
                                                           (check buildRepr(builder, scaffold, args[i], REPR_ANY)),
                                                           args[i].semType);
    llvm:Value nArgs;
    llvm:PointerValue? restArgs;
    if restParamType !is () {
        // rest is represented as a temporary array
        llvm:PointerValue restArrayPtr = buildUntagPointer(builder, scaffold,
                                                           scaffold.address(<bir:TmpRegister>args[requiredArgCount]));
        llvm:PointerValue restArgArray = builder.bitCast(restArrayPtr, heapPointerType(llListType));
        llvm:Value restArgCount = builder.load(builder.getElementPtr(restArgArray,
                                                                     [constIndex(scaffold, 0), constIndex(scaffold, 1)],
                                                                     "inbounds"));
        // since both requiredArgCount and restArgCount are singed64 this addition will not overflow as long as
        // runtime treats nArgs as unsigned64 (note llvm don't distinguish signed and unsigned integer types)
        nArgs = builder.iArithmeticWrap("add", constInt(scaffold, requiredArgCount), restArgCount);
        restArgs = restArgArray;
    }
    else {
        nArgs = constInt(scaffold, requiredArgCount);
        restArgs = ();
    }
    llvm:PointerValue uniformArgArray = <llvm:PointerValue>buildRuntimeFunctionCall(builder, scaffold,
                                                                                    allocUniformArgArrayFunction, [nArgs]);
    foreach int i in 0 ..< uniformArgs.length() {
        builder.store(uniformArgs[i], builder.getElementPtr(uniformArgArray, [constInt(scaffold, i)], "inbounds"));
    }
    if restArgs != () {
        buildVoidRuntimeFunctionCall(builder, scaffold, addToUniformArgsFunction,
                                     [uniformArgArray, restArgs, constInt(scaffold, uniformArgs.length())]);
    }
    llvm:PointerValue funcPtr = builder.getElementPtr(funcValuePtr, [constIndex(scaffold, 0),
                                                                     constIndex(scaffold, 1)],
                                                      "inbounds");
    llvm:PointerValue funcDesc = <llvm:PointerValue>builder.load(builder.getElementPtr(funcValuePtr,
                                                                                       [constIndex(scaffold, 0),
                                                                                        constIndex(scaffold, 0)],
                                                                                       "inbounds"));
    llvm:PointerValue uniformFuncPtr = builder.getElementPtr(funcDesc, [constIndex(scaffold, 0),
                                                                        constIndex(scaffold, 1)],
                                                             "inbounds");
    llvm:Value? returnVal = buildFunctionCall(builder, scaffold, <llvm:PointerValue>builder.load(uniformFuncPtr),
                                              [builder.load(funcPtr), uniformArgArray, nArgs]);
    if returnVal !is llvm:PointerValue {
        panic err:impossible("uniform call must return a tagged pointer");
    }
    builder.store(exactReturnValue(builder, scaffold, semTypeRetRepr(returnType), returnVal),
                  scaffold.address(result));
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

function buildFunctionCallArgs(llvm:Builder builder, Scaffold scaffold, t:SemType[] paramTypes,
                               t:SemType[] instantiatedParamTypes, bir:Operand[] args) returns llvm:Value[]|BuildError {
    return from int i in 0 ..< args.length()
           select check buildWideRepr(builder, scaffold, args[i], semTypeRepr(paramTypes[i]), instantiatedParamTypes[i]);
}
