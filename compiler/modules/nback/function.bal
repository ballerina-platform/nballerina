import wso2/nballerina.bir;
import wso2/nballerina.comm.err;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

final llvm:PointerType llUniformArgArrayType = llvm:pointerType(LLVM_TAGGED_PTR);

final RuntimeFunction functionIsClosureFunction = {
    name: "function_is_closure",
    ty: {
        returnType: LLVM_BOOLEAN,
        paramTypes: [LLVM_TAGGED_PTR]
    },
    attrs: []
};

final RuntimeFunction functionAllocateClosureVal = {
    name: "function_alloc_closure_val",
    ty: {
        returnType: llvm:pointerType(llClosureType, 1),
        paramTypes: ["i32"]
    },
    attrs: []
};

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

type DirectFunctionValue record {|
    llvm:Function func;
    t:FunctionSignature signature;
    t:FunctionSignature erasedSignature;
|};

type IndirectFunctionValue record {|
    llvm:PointerValue funcValuePtr;
    llvm:PointerValue funcDescPtr;
    llvm:PointerValue funcPtr;
    llvm:PointerValue uniformFuncPtr;
|};

function buildCapture(llvm:Builder builder, Scaffold scaffold, bir:CaptureInsn insn) returns BuildError? {
    var { functionIndex, operands, result } = insn;
    [Repr, llvm:Value][] capturedVals = from var operand in operands select check buildReprValue(builder, scaffold, operand);
    t:FunctionSignature signature = scaffold.getBirFunction(functionIndex).decl;
    llvm:PointerType llClosureValTy = llvm:pointerType(closureValueType(signature, from var each in operands select each.semType));
    int nOperands = operands.length();
    if nOperands > int:UNSIGNED32_MAX_VALUE {
        // We are using a struct for captured values (since each value has different type) and we can't
        // index values larger than this
        panic err:impossible("too many captured values");
    }
    llvm:PointerValue closureVal = <llvm:PointerValue>buildRuntimeFunctionCall(builder, scaffold, functionAllocateClosureVal,
                                                                               [constIndex(scaffold, nOperands)]);
    closureVal = builder.addrSpaceCast(closureVal, llClosureValTy);
    llvm:PointerValue closure = builder.getElementPtr(closureVal, [constIndex(scaffold, 0),
                                                                   constIndex(scaffold, 3)],
                                                      "inbounds");
    foreach int i in 0 ..< capturedVals.length() {
        builder.store(capturedVals[i][1], builder.getElementPtr(closure, [constIndex(scaffold, 0),
                                                                          constIndex(scaffold, i)],
                                                                "inbounds"));
    }
    llvm:FunctionDefn anonFunction = scaffold.getFunctionDefn(functionIndex);
    llvm:PointerValue fnDescPtr = scaffold.getConstructType(t:functionSemType(scaffold.typeContext(),
                                                            scaffold.getBirFunction(functionIndex).decl));
    fnDescPtr = builder.bitCast(fnDescPtr, llvm:pointerType(llFunctionDescType));
    builder.store(fnDescPtr, builder.getElementPtr(closureVal, [constIndex(scaffold, 0),
                                                                constIndex(scaffold, 0)],
                                                   "inbounds"));
    builder.store(anonFunction, builder.getElementPtr(closureVal, [constIndex(scaffold, 0),
                                                                   constIndex(scaffold, 1)],
                                                      "inbounds"));
    builder.store(constInt(scaffold, nOperands), builder.getElementPtr(closureVal, [constIndex(scaffold, 0),
                                                                                    constIndex(scaffold, 2)],
                                                                       "inbounds"));
    llvm:PointerValue funcValuePtr = builder.getElementPtr(builder.addrSpaceCast(closureVal, LLVM_TAGGED_PTR),
                                                           [constInt(scaffold, (TAG_FUNCTION | FUNCTION_VARIANT_CAPTURING))]);
    builder.store(funcValuePtr, scaffold.address(result));
}

function buildCallDirect(llvm:Builder builder, Scaffold scaffold, bir:CallDirectInsn insn) returns BuildError? {
    var { func, signature, erasedSignature } = check buildDirectFunctionValue(scaffold, insn.operands[0]);
    return buildCallExact(builder, scaffold, func, (), erasedSignature, signature,
                          insn.operands.slice(1), insn.result, erasedSignature.returnType);
}

function buildCallIndirect(llvm:Builder builder, Scaffold scaffold, bir:CallIndirectInsn insn) returns BuildError? {
    bir:Operand[] args = insn.operands.slice(1);
    bir:Register result = insn.result;
    bir:Register funcOperand = insn.operands[0];
    var { funcValuePtr, funcPtr, uniformFuncPtr } = check buildIndirectFunctionValue(builder, scaffold, funcOperand);
    llvm:PointerValue taggedFuncPtr = scaffold.address(funcOperand);
    var [nArgs, uniformArgArray] = check buildUniformArgArray(builder, scaffold, insn);
    t:SemType funcTy = funcOperand.semType;
    t:FunctionAtomicType? atomic = t:functionAtomicType(scaffold.typeContext(), funcTy);
    // We say a function call is exact if the compile time type of the function variable
    // is the same as the inherent type (type of the function declaration) of the
    // function value. If so we can just make an indirect branch via the function
    // pointer (exact call). Otherwise, we have to call it through the uniform
    // function pointer (inexact call), which handles bridging call site and declaration
    // site types of arguments/parameters and return value.
    if atomic == () {
        // The inherent type of a function value is always atomic, therefore if the
        // compile time type is not atomic, the call is always inexact.
        t:SemType[] argTypes = from var arg in args select arg.semType;
        t:Context tc = scaffold.typeContext();
        t:SemType returnType = <t:SemType>t:functionReturnType(scaffold.typeContext(), funcTy,
                                                               t:tupleTypeWrappedRo(tc.env, ...argTypes));
        return buildCallInexact(builder, scaffold, funcPtr, [taggedFuncPtr, funcValuePtr],
                                uniformFuncPtr, uniformArgArray, nArgs, result, returnType);
    }
    // If the function type is atomic, we have to check for the exactness at runtime
    // and decide whether to use exact call or inexact call.
    t:FunctionSignature signature = t:functionSignature(scaffold.typeContext(), atomic);
    llvm:ConstPointerValue signatureDescPtr = scaffold.getCalledType(signature);
    llvm:Value isExact = buildRuntimeFunctionCall(builder, scaffold, functionIsExactFunction,
                                                  [signatureDescPtr, builder.addrSpaceCast(funcValuePtr, heapPointerType(llFunctionType))]);
    llvm:BasicBlock ifExact = scaffold.addBasicBlock();
    llvm:BasicBlock ifNotExact = scaffold.addBasicBlock();
    llvm:BasicBlock afterCall = scaffold.addBasicBlock();
    builder.condBr(isExact, ifExact, ifNotExact);
    builder.positionAtEnd(ifExact);
    check buildCallExact(builder, scaffold, funcPtr, [taggedFuncPtr, funcValuePtr], signature, signature,
                         args, result, signature.returnType);
    builder.br(afterCall);
    builder.positionAtEnd(ifNotExact);
    check buildCallInexact(builder, scaffold, funcPtr, [taggedFuncPtr, funcValuePtr],
                           uniformFuncPtr, uniformArgArray, nArgs, result, signature.returnType);
    builder.br(afterCall);
    builder.positionAtEnd(afterCall);
}

function buildIndirectFunctionValue(llvm:Builder builder, Scaffold scaffold, bir:Register operand) returns IndirectFunctionValue|BuildError {
    llvm:PointerValue untaggedFuncValuePtr = buildUntagPointer(builder, scaffold, scaffold.address(operand));
    llvm:PointerValue funcValuePtr = builder.bitCast(builder.addrSpaceCast(untaggedFuncValuePtr,
                                                                           LLVM_TAGGED_PTR_WITHOUT_ADDR_SPACE),
                                                     functionValuePtrType(scaffold, operand.semType));
    llvm:PointerValue funcDescPtr = <llvm:PointerValue>builder.load(builder.getElementPtr(funcValuePtr, [constIndex(scaffold, 0),
                                                                                                         constIndex(scaffold, 0)],
                                                                    "inbounds"));
    llvm:PointerValue funcPtr = <llvm:PointerValue>builder.load(builder.getElementPtr(funcValuePtr, [constIndex(scaffold, 0),
                                                                                                     constIndex(scaffold, 1)],
                                                                "inbounds"));
    llvm:PointerValue uniformFuncPtr = builder.getElementPtr(funcDescPtr, [constIndex(scaffold, 0),
                                                                           constIndex(scaffold, 1)],
                                                             "inbounds");
    return { funcValuePtr, funcDescPtr, funcPtr, uniformFuncPtr };
}

function buildDirectFunctionValue(Scaffold scaffold, bir:FunctionConstOperand operand) returns DirectFunctionValue|BuildError {
    bir:FunctionRef functionRef = operand.value;
    t:FunctionSignature erasedSignature = functionRef.erasedSignature;
    t:FunctionSignature signature = functionRef.signature;
    llvm:Function func;
    if functionRef is bir:InternalFunctionRef {
        func = scaffold.getFunctionDefn(functionRef.index);
    }
    else {
        bir:ExternalSymbol funcSymbol = functionRef.symbol;
        func = check buildFunctionDecl(scaffold, funcSymbol, erasedSignature);
    }
    return { signature, erasedSignature, func };
}

function functionValuePtrType(Scaffold scaffold, t:SemType funcType) returns llvm:PointerType {
    t:FunctionAtomicType? atomic = t:functionAtomicType(scaffold.typeContext(), funcType);
    if atomic == () {
        // This is an approximation, which is sufficient for making the uniform call
        return llvm:pointerType(llFunctionType);
    }
    t:FunctionSignature signature = t:functionSignature(scaffold.typeContext(), atomic);
    return llvm:pointerType(functionValueType(signature));
}

type CallBuilderWithMaybeCapture function(llvm:Value? capturedVals) returns BuildError?;

function buildCallExact(llvm:Builder builder, Scaffold scaffold, llvm:Function|llvm:PointerValue func,
                        [llvm:PointerValue, llvm:PointerValue]? functionValuePtrs, t:FunctionSignature erasedSignature, t:FunctionSignature signature,
                        bir:Operand[] args, bir:Register result, t:SemType returnTy) returns BuildError? {
    if functionValuePtrs == () {
        return buildCallExactInner(builder, scaffold, func, erasedSignature, signature,
                                   args, (), result, returnTy);
    }
    CallBuilderWithMaybeCapture callBuilderFn = function(llvm:Value? capturedVals) returns BuildError? {
        return buildCallExactInner(builder, scaffold, func, erasedSignature, signature,
                                   args, capturedVals, result, returnTy);
    };
    return finishBuildCall(builder, scaffold, callBuilderFn, functionValuePtrs);
}

function buildCallExactInner(llvm:Builder builder, Scaffold scaffold, llvm:Function|llvm:PointerValue func,
                             t:FunctionSignature erasedSignature, t:FunctionSignature signature,
                             bir:Operand[] args, llvm:Value? capturedVals, bir:Register result, t:SemType returnTy) returns BuildError? {
    llvm:Value[] argValues = check buildFunctionCallArgs(builder, scaffold, erasedSignature.paramTypes,
                                                         signature.paramTypes, args);
    if capturedVals != () {
        argValues = [capturedVals, ...argValues];
    }
    llvm:Value? retValue = buildFunctionCall(builder, scaffold, func, argValues);
    buildStoreRet(builder, scaffold, semTypeRetRepr(returnTy), retValue, result);
}

// This builds each argument in the call instruction as a tagged pointer and store them in an array. We call this array the uniform argument array.
// In cases where there are rest parameters as a single list (see bir:CallIndirectInsn for more details), this will spread
// that list into individual arguments in the uniform argument array.
function buildUniformArgArray(llvm:Builder builder, Scaffold scaffold, bir:CallIndirectInsn insn) returns [llvm:Value, llvm:PointerValue]|BuildError {
    bir:Operand[] args = insn.operands.slice(1);
    int requiredArgCount = insn.restParamIsList ? args.length() - 1 : args.length();
    llvm:Value[] uniformArgs = from int i in 0 ..< requiredArgCount
                                    select buildClearExact(builder, scaffold,
                                                           (check buildRepr(builder, scaffold, args[i], REPR_ANY)),
                                                           args[i].semType);
    llvm:Value nArgs;
    llvm:PointerValue? restArgs;
    if insn.restParamIsList {
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
    return [nArgs, uniformArgArray];
}

// This is using the uniform argument array and uniform function (defined in init.bal createUniformFunction)
// to call a function pointer when the type of the function definition is different from the type of the call site.
// Uniform function returns a tagged pointer, and this function takes care of converting it to the type expected by
// the call site return type.
function buildCallInexact(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue func,
                          [llvm:PointerValue, llvm:PointerValue] functionValuePtrs,
                          llvm:PointerValue uniformFuncPtr, llvm:PointerValue uniformArgArray, llvm:Value nArgs,
                          bir:Register result, t:SemType returnType) returns BuildError? {
    CallBuilderWithMaybeCapture builderFn = function(llvm:Value? capturedVals) returns BuildError? {
        return buildCallInexactInner(builder, scaffold, result, func, capturedVals,
                                     uniformFuncPtr, uniformArgArray, nArgs, returnType);
    };
    return finishBuildCall(builder, scaffold, builderFn, functionValuePtrs);
}

function buildCallInexactInner(llvm:Builder builder, Scaffold scaffold, bir:Register result,
                               llvm:PointerValue func, llvm:Value? capturedVals,
                               llvm:PointerValue uniformFuncPtr, llvm:PointerValue uniformArgArray, llvm:Value nArgs,
                               t:SemType returnType) returns BuildError? {
    llvm:Value[] args = capturedVals == () ? [func, uniformArgArray, nArgs, constBoolean(scaffold, false), constNilTaggedPtr(scaffold)]:
                                             [func, uniformArgArray, nArgs, constBoolean(scaffold, true), capturedVals];
    llvm:Value? returnVal = buildFunctionCall(builder, scaffold, <llvm:PointerValue>builder.load(uniformFuncPtr),
                                              args);
    if returnVal !is llvm:PointerValue {
        panic err:impossible("uniform call must return a tagged pointer");
    }
    builder.store(exactReturnValue(builder, scaffold, semTypeRetRepr(returnType), returnVal),
                  scaffold.address(result));
}

function finishBuildCall(llvm:Builder builder, Scaffold scaffold, CallBuilderWithMaybeCapture callBuilderFn,
                         [llvm:PointerValue, llvm:PointerValue] functionValuePtrs) returns BuildError? {
    llvm:BasicBlock ifClosure = scaffold.addBasicBlock();
    llvm:BasicBlock ifNotClosure = scaffold.addBasicBlock();
    llvm:BasicBlock afterCall = scaffold.addBasicBlock();
    var [taggedFuncValuePtr, funcValuePtr] = functionValuePtrs;
    llvm:Value isClosure = buildRuntimeFunctionCall(builder, scaffold, functionIsClosureFunction,
                                                    [builder.load(taggedFuncValuePtr)]);
    isClosure = <llvm:Value>builder.call(scaffold.getIntrinsicFunction("expect.i1"),
                                         [isClosure, constBoolean(scaffold, false)]);
    builder.condBr(isClosure, ifClosure, ifNotClosure);
    builder.positionAtEnd(ifClosure);
    llvm:PointerValue closurePtr = builder.bitCast(funcValuePtr, llvm:pointerType(llClosureType));
    llvm:Value capturedVals = builder.getElementPtr(closurePtr, [constIndex(scaffold, 0),
                                                                 constIndex(scaffold, 3)],
                                                    "inbounds");
    check callBuilderFn(capturedVals);
    builder.br(afterCall);
    builder.positionAtEnd(ifNotClosure);
    check callBuilderFn(());
    builder.br(afterCall);
    builder.positionAtEnd(afterCall);
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
