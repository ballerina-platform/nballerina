import ballerina/jballerina.java;
import wso2/nballerina.comm.err;

function intPredicateToInt(IntPredicate predicate) returns int {
    match predicate {
        "eq" => {
            return 32;
        }
        "ne" => {
            return 33;
        }
        "ugt" => {
            return 34;
        }
        "uge" => {
            return 35;
        }
        "ult" => {
            return 36;
        }
        "ule" => {
            return 37;
        }
        "sgt" => {
            return 38;
        }
        "sge" => {
            return 39;
        }
        "slt" => {
            return 40;
        }
        "sle" => {
            return 41;
        }
    }
    panic error("Unknown predicate");
}

function floatPredicateToInt(FloatPredicate predicate) returns int {
    match predicate {
        "false" => { 
            return 0;
        }
        "oeq" => {
            return 1;
        }   
        "ogt" => {
            return 2;
        }
        "oge" => {
            return 3;    
        }
        "olt" => {
            return 4;
        }
        "ole" => {
            return 5;
        }
        "one" => {
            return 6; 
        }
        "ord" => {
            return 7;
        }
        "uno" => {
            return 8;     
        }
        "ueq" => {
            return 9;
        }     
        "ugt" => {
            return 10;
        }
        "uge" => {
            return 11;
        }
        "ult" => {
            return 12;
        }
        "ule" => {
            return 13;
        }
        "une" => {
            return 14;
        }
        "true" => {
            return 15;
        }
    }
    panic error("unknown predicate");
}

public distinct class Builder {
    handle LLVMBuilder;
    private final Context context;

    function init(Context context) {
        self.LLVMBuilder = jLLVMCreateBuilderInContext(context.LLVMContext);
        self.context = context;
    }

    function setAlignment(Value val, Alignment align) {
        jLLVMSetAlignment(val.LLVMValueRef, align);
    }

    public function positionAtEnd(BasicBlock bb) {
        jLLVMPositionBuilderAtEnd(self.LLVMBuilder, bb.LLVMBasicBlockRef);
    }

    public function alloca(SingleValueType ty, Alignment? align = (), string? name = ()) returns PointerValue {
        PointerValue val = new (jLLVMBuildAlloca(self.LLVMBuilder, typeToLLVMType(self.context, ty), java:fromString(self.extractName(name))), pointerType(ty));
        if align != () {
            self.setAlignment(val, align);
        }
        return val;
    }

    public function load(PointerValue ptr, Alignment? align = (), string? name = ()) returns Value {
        Type ty = ptr.ty.pointsTo;
        Value val = new (jLLVMBuildLoad(self.LLVMBuilder, typeToLLVMType(self.context, ty), ptr.LLVMValueRef, java:fromString(self.extractName(name))), ty);
        if align != () {
            self.setAlignment(val, align);
        }
        return val;
    }

    public function store(Value val, PointerValue ptr, Alignment? align = ()) {
        Value tmpVal = new (jLLVMBuildStore(self.LLVMBuilder, val.LLVMValueRef, ptr.LLVMValueRef), ptr.ty.pointsTo);
        if align != () {
            self.setAlignment(tmpVal, align);
        }
    }

    public function iArithmeticNoWrap(IntArithmeticOp op, Value lhs, Value rhs, string? name=()) returns Value {
        string regName = self.extractName(name);
        Type ty = sameNumberType(lhs, rhs);
        match op {
            "add" => {
                return new (jLLVMBuildNSWAdd(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
            "mul" => {
                return  new (jLLVMBuildNSWMul(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
            "sub" => {
                return new (jLLVMBuildNSWSub(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
        }
        panic error("op not implemented");
    }

    public function iArithmeticWrap(IntArithmeticOp op, Value lhs, Value rhs, string? name=()) returns Value {
        return self.binaryOpWrap(op, lhs, rhs, name);
    }

    public function fArithmetic(FloatArithmeticOp op, Value lhs, Value rhs, string? name=()) returns Value {
        return self.binaryOpWrap(op, lhs, rhs, name);
    }

    public function iArithmeticSigned(IntArithmeticSignedOp op, Value lhs, Value rhs, string? name=()) returns Value {
        return self.binaryOpWrap(op, lhs, rhs, name);
    }

    public function iBitwise(IntBitwiseOp op, Value lhs, Value rhs, string? name=()) returns Value {
        return self.binaryOpWrap(op, lhs, rhs, name);
    }

    function binaryOpWrap(BinaryOp op, Value lhs, Value rhs, string? name = ()) returns Value {
        string regName = self.extractName(name);
        Type ty = sameNumberType(lhs, rhs);
        match op {
            "add" => {
                return new (jLLVMBuildAdd(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
            "mul" => {
                return new (jLLVMBuildMul(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
            "sub" => {
                return new (jLLVMBuildSub(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
            "sdiv" => {
                return new (jLLVMBuildSDiv(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
            "srem" => {
                return new (jLLVMBuildSRem(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
            "xor" => {
                return new (jLLVMBuildXor(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
            "or" => {
                return new (jLLVMBuildOr(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
            "and" => {
                return new (jLLVMBuildAnd(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
            "shl" => {
                return new (jLLVMBuildShl(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
            "ashr" => {
                return new (jLLVMBuildAShr(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
            "lshr" => {
                return new (jLLVMBuildLShr(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
            "fadd" => {
                return new (jLLVMBuildFAdd(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
            "fsub" => {
                return new (jLLVMBuildFSub(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
            "fmul" => {
                return new (jLLVMBuildFMul(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
            "fdiv" => {
                return new (jLLVMBuildFDiv(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
            "frem" => {
                return new (jLLVMBuildFRem(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)), ty);
            }
        }
        panic error(string `op: ${<string>op} not implemented`);
    }

    public function iCmp(IntPredicate op, Value lhs, Value rhs, string? name = ()) returns Value {
        return new DataValue (jLLVMBuildICmp(self.LLVMBuilder, intPredicateToInt(op), lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(self.extractName(name))), "i1");
    }

    public function fCmp(FloatPredicate op, Value lhs, Value rhs, string? name=()) returns Value {
        return new (jLLVMBuildFCmp(self.LLVMBuilder, floatPredicateToInt(op), lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(self.extractName(name))), sameNumberType(lhs, rhs));
    }

    public function bitCast(PointerValue val, PointerType destTy, string? name = ()) returns PointerValue {
        return new (jLLVMBuildBitCast(self.LLVMBuilder, val.LLVMValueRef, typeToLLVMType(self.context, destTy), java:fromString(self.extractName(name))), destTy);
    }

    public function ret(Value? val = ()) {
        if val is () {
            _ = jLLVMBuildRetVoid(self.LLVMBuilder);
        } else {
            _ = jLLVMBuildRet(self.LLVMBuilder, val.LLVMValueRef);
        }
    }

    public function ptrToInt(PointerValue ptr, IntType destTy, string? name = ()) returns Value {
        return new (jLLVMBuildPtrToInt(self.LLVMBuilder, ptr.LLVMValueRef, typeToLLVMType(self.context, destTy), java:fromString(self.extractName(name))), destTy);
    }

    public function zExt(Value val, IntType destTy, string? name = ()) returns Value {
        return new (jLLVMBuildZExt(self.LLVMBuilder, val.LLVMValueRef, typeToLLVMType(self.context, destTy), java:fromString(self.extractName(name))), destTy);
    }

    public function sExt(Value val, IntType destTy, string? name = ()) returns Value {
        return new (jLLVMBuildSExt(self.LLVMBuilder, val.LLVMValueRef, typeToLLVMType(self.context, destTy), java:fromString(self.extractName(name))), destTy);
    }

    public function trunc(Value val, IntType destTy, string? name = ()) returns Value {
        return new (jLLVMBuildTrunc(self.LLVMBuilder, val.LLVMValueRef, typeToLLVMType(self.context, destTy), java:fromString(self.extractName(name))), destTy);
    }

    public function fNeg(Value val, string? name=()) returns Value {
        return new (jLLVMBuildFNeg(self.LLVMBuilder, val.LLVMValueRef, java:fromString(self.extractName(name))), val.ty);
    }

    public function unreachable() {
        _ = jLLVMBuildUnreachable(self.LLVMBuilder);
    }

    public function call(Function|PointerValue fn, Value[] args, string? name = ()) returns Value? {
        string reg = self.extractName(name);
        FunctionType fnTy;
        if fn !is Function {
            Type ty = fn.ty.pointsTo; 
            if ty !is FunctionType {
                panic err:illegalArgument("not a function pointer");
            }
            fnTy = ty;
        }
        else {
            fnTy = fn.fnType;
        }
        PointerPointer arr = PointerPointerFromValues(args);
        RetType retTy = fnTy.returnType;
        handle llvmFnTy = fn is Function ? fn.LLVMTypeRef : typeToLLVMType(self.context, fnTy);
        handle llvmRetVal = jLLVMBuildCall(self.LLVMBuilder, llvmFnTy, fn.LLVMValueRef, arr.jObject, args.length(), java:fromString(reg));
        return retTy != "void" ? new (llvmRetVal, retTy) : ();
    }

    public function extractValue(Value value, int index, string? name = ()) returns Value {
        return new (jLLVMBuildExtractValue(self.LLVMBuilder, value.LLVMValueRef, index, java:fromString(self.extractName(name))),
                                           getTypeAtIndex(<StructType>value.ty, index, self.context));
    }

    public function br(BasicBlock destination) {
        _ = jLLVMBuildBr(self.LLVMBuilder, destination.LLVMBasicBlockRef);
    }

    public function condBr(Value condition, BasicBlock ifTrue, BasicBlock ifFalse) {
        _ = jLLVMBuildCondBr(self.LLVMBuilder, condition.LLVMValueRef, ifTrue.LLVMBasicBlockRef, ifFalse.LLVMBasicBlockRef);
    }

    public function getElementPtr(PointerValue ptr, Value[] indices, "inbounds"? inbounds = (), string? name = ()) returns PointerValue {
        var builderFn = inbounds != () ? jLLVMBuildInBoundsGEP : jLLVMBuildGEP;
        return new (builderFn(self.LLVMBuilder, typeToLLVMType(self.context, ptr.ty.pointsTo), ptr.LLVMValueRef,
                              PointerPointerFromValues(indices).jObject, indices.length(), java:fromString(self.extractName(name))),
                              gepResultType(self.context, ptr, indices));
    }    
    
    public function addrSpaceCast(PointerValue val, PointerType destTy, string? name=()) returns PointerValue {
        return new (jLLVMBuildAddrSpaceCast(self.LLVMBuilder, val.LLVMValueRef, typeToLLVMType(self.context, destTy), java:fromString(self.extractName(name))), destTy);
    }

    public function sIToFP(Value val, FloatType destTy, string? name=()) returns Value {
        return new (jLLVMBuildSIToFP(self.LLVMBuilder, val.LLVMValueRef, typeToLLVMType(self.context, destTy), java:fromString(self.extractName(name))), destTy);
    }

    public function setCurrentDebugLocation(Metadata? dbLocation) {
        handle dbLocationJObj = getMetadataProp(dbLocation);
        jLLVMSetCurrentDebugLocation2(self.LLVMBuilder, dbLocationJObj);
    }

    function extractName(string? name) returns string {
        if name is () {
            return "";
        } else {
            return name;
        }
    }
}

function gepResultType(Context context, PointerValue ptr, Value[] indices) returns PointerType {
    Type resultType = ptr.ty;
    int resultAddressSpace = 0;
    foreach var index in indices {
        if resultType is PointerType {
            resultAddressSpace = resultType.addressSpace;
            resultType = resultType.pointsTo;
        }
        else if resultType is ArrayType {
            resultType = resultType.elementType;
        }
        else if resultType is StructType {
            if index !is ConstValue || index.operand !is int {
                panic err:illegalArgument("structures can be index only using i32 constants"); 
            }
            resultType = getTypeAtIndex(resultType, <int>index.operand, context);
        }
    }
    return pointerType(resultType, resultAddressSpace);
}

function jLLVMCreateBuilderInContext(handle context) returns handle = @java:Method {
    name: "LLVMCreateBuilderInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef"]
} external;

function jLLVMPositionBuilderAtEnd(handle builder, handle bb) = @java:Method {
    name: "LLVMPositionBuilderAtEnd",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMBasicBlockRef"]
} external;

function jLLVMBuildAlloca(handle builder, handle typeRef, handle name) returns handle = @java:Method {
    name: "LLVMBuildAlloca",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "java.lang.String"]
} external;

function jLLVMBuildLoad(handle builder, handle ty, handle ptr, handle name) returns handle = @java:Method {
    name: "LLVMBuildLoad2",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildStore(handle builder, handle val, handle ptr) returns handle = @java:Method {
    name: "LLVMBuildStore",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef"]
} external;

function jLLVMBuildNSWAdd(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildNSWAdd",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildNSWMul(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildNSWMul",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildNSWSub(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildNSWSub",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildAdd(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildAdd",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildFAdd(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildFAdd",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildFSub(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildFSub",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildFMul(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildFMul",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildFDiv(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildFDiv",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildFRem(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildFRem",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildMul(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildMul",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildSub(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildSub",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildSDiv(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildSDiv",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildSRem(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildSRem",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildXor(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildXor",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildOr(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildOr",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildAnd(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildAnd",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildLShr(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildLShr",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildAShr(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildAShr",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;


function jLLVMBuildShl(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildShl",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildICmp(handle builder, int op, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildICmp",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "int", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildFCmp(handle builder, int op, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildFCmp",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "int", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildBitCast(handle builder, handle val, handle destTy, handle name) returns handle = @java:Method {
    name: "LLVMBuildBitCast",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "java.lang.String"]
} external;

function jLLVMBuildRetVoid(handle builder) returns handle = @java:Method {
    name: "LLVMBuildRetVoid",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef"]
} external;

function jLLVMBuildRet(handle builder, handle val) returns handle = @java:Method {
    name: "LLVMBuildRet",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef"]
} external;

function jLLVMBuildPtrToInt(handle builder, handle val, handle destTy, handle name) returns handle = @java:Method {
    name: "LLVMBuildPtrToInt",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "java.lang.String"]
} external;

function jLLVMBuildZExt(handle builder, handle val, handle destTy, handle name) returns handle = @java:Method {
    name: "LLVMBuildZExt",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "java.lang.String"]
} external;

function jLLVMBuildSExt(handle builder, handle val, handle destTy, handle name) returns handle = @java:Method {
    name: "LLVMBuildSExt",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "java.lang.String"]
} external;

function jLLVMBuildTrunc(handle builder, handle val, handle destTy, handle name) returns handle = @java:Method {
    name: "LLVMBuildTrunc",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "java.lang.String"]
} external;

function jLLVMBuildUnreachable(handle builder) returns handle = @java:Method {
    name: "LLVMBuildUnreachable",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef"]
} external;

function jLLVMBuildCall(handle builder, handle ty, handle fn, handle args, int numArgs, handle name) returns handle = @java:Method {
    name: "LLVMBuildCall2",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.javacpp.PointerPointer", "int", "java.lang.String"]
} external;

function jLLVMBuildExtractValue(handle builder, handle aggVal, int index, handle name) returns handle = @java:Method {
    name: "LLVMBuildExtractValue",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "int", "java.lang.String"]
} external;

function jLLVMBuildBr(handle builder, handle dest) returns handle = @java:Method {
    name: "LLVMBuildBr",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMBasicBlockRef"]
} external;

function jLLVMBuildCondBr(handle builder, handle cond, handle then, handle otherwise) returns handle = @java:Method {
    name: "LLVMBuildCondBr",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMBasicBlockRef", "org.bytedeco.llvm.LLVM.LLVMBasicBlockRef"]
} external;

function jLLVMBuildGEP(handle builder, handle ty, handle pointer, handle indices, int numArgs, handle name) returns handle = @java:Method {
    name: "LLVMBuildGEP2",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.javacpp.PointerPointer", "int", "java.lang.String"]
} external;

function jLLVMBuildInBoundsGEP(handle builder, handle ty, handle pointer, handle indices, int numArgs, handle name) returns handle = @java:Method {
    name: "LLVMBuildInBoundsGEP2",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.javacpp.PointerPointer", "int", "java.lang.String"]
} external;


function jLLVMBuildFNeg(handle builder, handle val, handle name) returns handle = @java:Method {
    name: "LLVMBuildFNeg",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildSIToFP(handle builder, handle val, handle destTy, handle name) returns handle = @java:Method {
    name: "LLVMBuildSIToFP",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "java.lang.String"]
} external;

function jLLVMSetAlignment(handle valueRef, int bytes) = @java:Method {
    name: "LLVMSetAlignment",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "int"]
} external;

function jLLVMBuildAddrSpaceCast(handle builder, handle pointer, handle destTy, handle name) returns handle = @java:Method {
    name: "LLVMBuildAddrSpaceCast",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "java.lang.String"]
} external;

function jLLVMSetCurrentDebugLocation2(handle builder, handle loc) = @java:Method {
    name: "LLVMSetCurrentDebugLocation2",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMMetadataRef"]
} external;

function jLLVMGetReturnType(handle functionTy) returns handle = @java:Method {
    name: "LLVMGetReturnType",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTypeRef"]
} external;

function jLLVMGetCalledFunctionType(handle c) returns handle = @java:Method {
    name: "LLVMGetCalledFunctionType",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef"]
} external;
