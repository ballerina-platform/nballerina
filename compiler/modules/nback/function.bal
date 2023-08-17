import wso2/nballerina.bir;
import wso2/nballerina.comm.err;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

final llvm:PointerType llUniformArgArrayType = llvm:pointerType(LLVM_TAGGED_PTR);

final RuntimeFunction functionCreateClosure = {
    name: "function_create_closure",
    ty: {
        returnType: llvm:pointerType(llFunctionType),
        paramTypes: [llvm:pointerType(llFunctionType), llUniformArgArrayType]
    },
    attrs: []
};

final RuntimeFunction functionIsClosure = {
    name: "function_is_closure",
    ty: {
        returnType: LLVM_BOOLEAN,
        paramTypes: [heapPointerType(llFunctionType)]
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
    llvm:Value isClosure;
|};

type FunctionCallBuilderFn function(llvm:Builder, Context, llvm:Function|llvm:PointerValue, llvm:Value[]) returns llvm:Value?;

function buildCapture(llvm:Builder builder, Scaffold scaffold, bir:CaptureInsn insn) returns BuildError? {
    var [_, capturedValues] = check buildUniformArgArrayInner(builder, scaffold, insn.operands, ());
    llvm:Function lambda = scaffold.getFunctionDefn(insn.functionIndex);
    bir:Function birFunc = scaffold.getBirFunction(insn.functionIndex);
    llvm:ConstPointerValue funcPtr = scaffold.getLocalFunctionValue(lambda, birFunc.decl, insn.functionIndex); 
    llvm:PointerValue tmpReg = builder.alloca(LLVM_TAGGED_PTR);
    builder.store(funcPtr, tmpReg);
    llvm:PointerValue closure = <llvm:PointerValue>buildRuntimeFunctionCall(builder, scaffold, functionCreateClosure,
                                                                            [buildUntagPointer(builder, scaffold, tmpReg), capturedValues]);
    closure = builder.addrSpaceCast(closure, LLVM_TAGGED_PTR);
    builder.store(closure, scaffold.address(insn.result));
}

function buildCallDirect(llvm:Builder builder, Scaffold scaffold, bir:CallDirectInsn insn) returns BuildError? {
    var { func, signature, erasedSignature } = check buildDirectFunctionValue(scaffold, insn.operands[0]);
    return buildCallExact(builder, scaffold, func, erasedSignature, signature, 
                          insn.operands.slice(1), insn.result, erasedSignature.returnType, buildFunctionCall);
}

function buildCallIndirect(llvm:Builder builder, Scaffold scaffold, bir:CallIndirectInsn insn) returns BuildError? {
    bir:Operand[] args = insn.operands.slice(1);
    bir:Register result = insn.result;
    bir:Register funcOperand = insn.operands[0];
    var { funcValuePtr, funcDescPtr, funcPtr, uniformFuncPtr } = check buildIndirectFunctionValue(builder, scaffold, funcOperand);
    var [nArgs, uniformArgArray] = check buildUniformArgArray(builder, scaffold, insn);
    llvm:BasicBlock ifClosure = scaffold.addBasicBlock();
    llvm:BasicBlock ifNotClosure = scaffold.addBasicBlock();
    llvm:BasicBlock afterCall = scaffold.addBasicBlock();
    var isClosure = buildRuntimeFunctionCall(builder, scaffold, functionIsClosure,
                                        [builder.addrSpaceCast(funcValuePtr, heapPointerType(llFunctionType))]);
    builder.condBr(isClosure, ifClosure, ifNotClosure);
    builder.positionAtEnd(ifClosure);
    check buildCallIndirectInner(builder, scaffold, args, result, funcOperand, funcValuePtr, funcDescPtr, funcPtr,
                                 uniformFuncPtr, nArgs, uniformArgArray, createClosureCallBuilder(builder, scaffold, funcValuePtr));

    builder.br(afterCall);
    builder.positionAtEnd(ifNotClosure);
    check buildCallIndirectInner(builder, scaffold, args, result, funcOperand, funcValuePtr, funcDescPtr, funcPtr,
                                  uniformFuncPtr, nArgs, uniformArgArray, buildFunctionCall);
    builder.br(afterCall);
    builder.positionAtEnd(afterCall);
}

function buildCallIndirectInner(llvm:Builder builder, Scaffold scaffold, bir:Operand[] args, bir:Register result,
                                bir:Register funcOperand, llvm:PointerValue funcValuePtr, llvm:PointerValue funcDescPtr,
                                llvm:PointerValue funcPtr, llvm:PointerValue uniformFuncPtr, llvm:Value nArgs, 
                                llvm:PointerValue uniformArgArray, FunctionCallBuilderFn callBuilder) returns BuildError? {
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
        return buildCallInexact(builder, scaffold, result, funcDescPtr, funcPtr, uniformFuncPtr,
                                uniformArgArray, nArgs, returnType, callBuilder);
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
    check buildCallExact(builder, scaffold, funcPtr, signature, signature,
                         args, result, signature.returnType, callBuilder);
    builder.br(afterCall);
    builder.positionAtEnd(ifNotExact);
    check buildCallInexact(builder, scaffold, result, funcDescPtr, funcPtr, uniformFuncPtr,
                           uniformArgArray, nArgs, signature.returnType, buildFunctionCall);
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
    llvm:Value isClosure = builder.load(builder.getElementPtr(funcValuePtr, [constIndex(scaffold, 0),
                                                                             constIndex(scaffold, 2)],
                                                              "inbounds"));
    llvm:PointerValue uniformFuncPtr = builder.getElementPtr(funcDescPtr, [constIndex(scaffold, 0),
                                                                           constIndex(scaffold, 1)],
                                                             "inbounds");
    return { funcValuePtr, funcDescPtr, funcPtr, uniformFuncPtr, isClosure };
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

function buildCallExact(llvm:Builder builder, Scaffold scaffold, llvm:Function|llvm:PointerValue func,
                        t:FunctionSignature erasedSignature, t:FunctionSignature signature,
                        bir:Operand[] args, bir:Register result, t:SemType returnTy, FunctionCallBuilderFn callBuilder) returns BuildError? {
    llvm:Value[] argValues = check buildFunctionCallArgs(builder, scaffold, erasedSignature.paramTypes,
                                                         signature.paramTypes, args);
    llvm:Value? retValue = callBuilder(builder, scaffold, func, argValues);
    buildStoreRet(builder, scaffold, semTypeRetRepr(returnTy), retValue, result);
}

// This builds each argument in the call instruction as a tagged pointer and store them in an array. We call this array the uniform argument array.
// In cases where there are rest parameters as a single list (see bir:CallIndirectInsn for more details), this will spread
// that list into individual arguments in the uniform argument array.
function buildUniformArgArray(llvm:Builder builder, Scaffold scaffold, bir:CallIndirectInsn insn) returns [llvm:Value, llvm:PointerValue]|BuildError {
    bir:Operand[] args = insn.operands.slice(1);
    if insn.restParamIsList {
        return buildUniformArgArrayInner(builder, scaffold, args.slice(0, args.length() - 1),
                                         <bir:TmpRegister>args[args.length() - 1]);
    }
    return buildUniformArgArrayInner(builder, scaffold, args, ());
}

function buildUniformArgArrayInner(llvm:Builder builder, Scaffold scaffold, bir:Operand[] args, bir:TmpRegister? rest) returns [llvm:Value, llvm:PointerValue]|BuildError {
    llvm:Value[] uniformArgs = from var arg in args select buildClearExact(builder, scaffold,
                                                                           (check buildRepr(builder, scaffold, arg, REPR_ANY)),
                                                                           arg.semType);
    llvm:Value nArgs;
    llvm:PointerValue? restArgs;
    if rest != () {
        llvm:PointerValue restArrayPtr = buildUntagPointer(builder, scaffold,
                                                           scaffold.address(rest));
        llvm:PointerValue restArgArray = builder.bitCast(restArrayPtr, heapPointerType(llListType));
        llvm:Value restArgCount = builder.load(builder.getElementPtr(restArgArray,
                                                                     [constIndex(scaffold, 0), constIndex(scaffold, 1)],
                                                                     "inbounds"));
        // since both requiredArgCount and restArgCount are singed64 this addition will not overflow as long as
        // runtime treats nArgs as unsigned64 (note llvm don't distinguish signed and unsigned integer types)
        nArgs = builder.iArithmeticWrap("add", constInt(scaffold, args.length()), restArgCount);
        restArgs = restArgArray;
    }
    else {
        nArgs = constInt(scaffold, args.length());
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
function buildCallInexact(llvm:Builder builder, Scaffold scaffold, bir:Register result,
                          llvm:PointerValue funcDescPtr, llvm:PointerValue funcPtr, llvm:PointerValue uniformFuncPtr,
                          llvm:PointerValue uniformArgArray, llvm:Value nArgs, t:SemType returnType, FunctionCallBuilderFn callBuilder) returns BuildError? {
    // FIXME: how to handle uniform call?
    // 1. We can pass as the second argument (we will pass the closure as the first implicitly the closure
    // by swapping the callBuilder) wether it is anon or not). Then in the uniform call we can pass through
    // the clsoure fields
    llvm:Value? returnVal = callBuilder(builder, scaffold, <llvm:PointerValue>builder.load(uniformFuncPtr),
                                        [funcPtr, uniformArgArray, nArgs]);
    if returnVal !is llvm:PointerValue {
        panic err:impossible("uniform call must return a tagged pointer");
    }
    builder.store(exactReturnValue(builder, scaffold, semTypeRetRepr(returnType), returnVal),
                  scaffold.address(result));
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

function createClosureCallBuilder(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue funcValuePtr) returns FunctionCallBuilderFn {
    llvm:PointerValue closureValuePtr = builder.bitCast(funcValuePtr, llvm:pointerType(llClosureType));
    llvm:PointerValue capturedValues = <llvm:PointerValue>builder.load(builder.getElementPtr(closureValuePtr, [constIndex(scaffold, 0),
                                                                                                               constIndex(scaffold, 3)],
                                                                       "inbounds"));
    return function(llvm:Builder innerBuilder, Context context, llvm:Function|llvm:PointerValue fn, llvm:Value[] args) returns llvm:Value? {
        if fn is llvm:Function {
            panic err:impossible("closure call on a function");
        }
        context.useDebugLocation(builder, DEBUG_USAGE_CALL);
        llvm:Value? result = builder.call(fn, [capturedValues, ...args]);
        context.clearDebugLocation(builder);
        return result;
    };
}
