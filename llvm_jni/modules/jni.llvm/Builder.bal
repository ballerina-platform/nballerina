import ballerina/jballerina.java;

function predicateToInt(IntPredicate predicate) returns int {
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

public distinct class Builder {
    handle LLVMBuilder;

    function init(Context context) {
        self.LLVMBuilder = jLLVMCreateBuilderInContext(context.LLVMContext);
    }

    function setAlignment(Value val, Alignment align) {
        LLVMSetAlignment(val.LLVMValueRef, align);
    }

    public function positionAtEnd(BasicBlock bb) {
        jLLVMPositionBuilderAtEnd(self.LLVMBuilder, bb.LLVMBasicBlockRef);
    }

    public function alloca(IntegralType ty, Alignment? align = (), string? name = ()) returns PointerValue {
        string regName = self.extractName(name);
        PointerValue val = new (jLLVMBuildAlloca(self.LLVMBuilder, typeToLLVMType(ty), java:fromString(regName)));
        if align != () {
            self.setAlignment(val, align);
        }
        return val;
    }

    public function load(PointerValue ptr, Alignment? align = (), string? name = ()) returns Value {
        string regName = self.extractName(name);
        Value val = new (jLLVMBuildLoad(self.LLVMBuilder, ptr.LLVMValueRef, java:fromString(regName)));
        if align != () {
            self.setAlignment(val, align);
        }
        return val;
    }

    public function store(Value val, PointerValue ptr, Alignment? align = ()) {
        Value tmpVal = new (jLLVMBuildStore(self.LLVMBuilder, val.LLVMValueRef, ptr.LLVMValueRef));
        if align != () {
            self.setAlignment(tmpVal, align);
        }
    }

    public function iArithmeticWrap(IntArithmeticOp op, Value lhs, Value rhs, string? name=()) returns Value {
        return self.binaryIntNoWrap(op, lhs, rhs, name);
    }

    public function iArithmeticSigned(IntArithmeticSignedOp op, Value lhs, Value rhs, string? name=()) returns Value {
        return self.binaryIntNoWrap(op, lhs, rhs, name);
    }

    public function iBitwise(IntBitwiseOp op, Value lhs, Value rhs, string? name=()) returns Value {
        return self.binaryIntNoWrap(op, lhs, rhs, name);
    }

    function binaryIntNoWrap(IntOp op, Value lhs, Value rhs, string? name = ()) returns Value {
        string regName = self.extractName(name);
        match op {
            "add" => {
                Value val = new (jLLVMBuildAdd(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)));
                return val;
            }
            "mul" => {
                Value val = new (jLLVMBuildMul(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)));
                return val;
            }
            "sub" => {
                Value val = new (jLLVMBuildSub(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)));
                return val;
            }
            "sdiv" => {
                Value val = new (jLLVMBuildSDiv(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)));
                return val;
            }
            "srem" => {
                Value val = new (jLLVMBuildSRem(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)));
                return val;
            }
            "xor" => {
                Value val = new (jLLVMBuildXor(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)));
                return val;
            }
            "or" => {
                Value val = new (jLLVMBuildOr(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)));
                return val;
            }
            "and" => {
                Value val = new (jLLVMBuildAnd(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)));
                return val;
            }
        }
        panic error("op not implemented");
    }

    public function iCmp(IntPredicate op, Value lhs, Value rhs, string? name = ()) returns Value {
        string reg = self.extractName(name);
        return new (jLLVMBuildICmp(self.LLVMBuilder, predicateToInt(op), lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(reg)));
    }

    public function bitCast(PointerValue val, PointerType destTy, string? name = ()) returns PointerValue {
        string reg = self.extractName(name);
        return new (jLLVMBuildBitCast(self.LLVMBuilder, val.LLVMValueRef, typeToLLVMType(destTy), java:fromString(reg)));
    }

    public function ret(Value? val = ()) {
        if val is () {
            _ = jLLVMBuildRetVoid(self.LLVMBuilder);
        } else {
            _ = jLLVMBuildRet(self.LLVMBuilder, val.LLVMValueRef);
        }
    }

    public function ptrToInt(PointerValue ptr, IntType destTy, string? name = ()) returns Value {
        string reg = self.extractName(name);
        return new (jLLVMBuildPtrToInt(self.LLVMBuilder, ptr.LLVMValueRef, typeToLLVMType(destTy), java:fromString(reg)));
    }

    public function zExt(Value val, IntType destTy, string? name = ()) returns Value {
        string reg = self.extractName(name);
        return new (jLLVMBuildZExt(self.LLVMBuilder, val.LLVMValueRef, typeToLLVMType(destTy), java:fromString(reg)));
    }

    public function sExt(Value val, IntType destTy, string? name = ()) returns Value {
        string reg = self.extractName(name);
        return new (jLLVMBuildSExt(self.LLVMBuilder, val.LLVMValueRef, typeToLLVMType(destTy), java:fromString(reg)));
    }

    public function trunc(Value val, IntType destTy, string? name = ()) returns Value {
        string reg = self.extractName(name);
        return new (jLLVMBuildTrunc(self.LLVMBuilder, val.LLVMValueRef, typeToLLVMType(destTy), java:fromString(reg)));
    }

    public function unreachable() {
        _ = jLLVMBuildUnreachable(self.LLVMBuilder);
    }

    public function call(Function fn, Value[] args, string? name = ()) returns Value? {
        string reg = self.extractName(name);
        PointerPointer arr = PointerPointerFromValues(args);
        return new (jLLVMBuildCall(self.LLVMBuilder, fn.LLVMFunction, arr.jObject, args.length(), java:fromString(reg)));
    }

    public function extractValue(Value value, int index, string? name = ()) returns Value {
        string reg = self.extractName(name);
        return new (jLLVMBuildExtractValue(self.LLVMBuilder, value.LLVMValueRef, index, java:fromString(reg)));
    }

    public function br(BasicBlock destination) {
        _ = jLLVMBuildBr(self.LLVMBuilder, destination.LLVMBasicBlockRef);
    }

    public function condBr(Value condition, BasicBlock ifTrue, BasicBlock ifFalse) {
        _ = jLLVMBuildCondBr(self.LLVMBuilder, condition.LLVMValueRef, ifTrue.LLVMBasicBlockRef, ifFalse.LLVMBasicBlockRef);
    }

    public function getElementPtr(PointerValue ptr, Value[] indices, "inbounds"? inbounds = (), string? name = ()) returns PointerValue {
        string reg = self.extractName(name);
        PointerPointer arr = PointerPointerFromValues(indices);
        if inbounds != () {
            return new (LLVMBuildInBoundsGEP(self.LLVMBuilder, ptr.LLVMValueRef, arr.jObject, indices.length(), java:fromString(reg)));
        } else {
            return new (jLLVMBuildGEP(self.LLVMBuilder, ptr.LLVMValueRef, arr.jObject, indices.length(), java:fromString(reg)));
        }
    }

    function extractName(string? name) returns string {
        if name is () {
            return "";
        } else {
            return name;
        }
    }
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

function jLLVMBuildLoad(handle builder, handle ptr, handle name) returns handle = @java:Method {
    name: "LLVMBuildLoad",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMBuildStore(handle builder, handle val, handle ptr) returns handle = @java:Method {
    name: "LLVMBuildStore",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef"]
} external;

function jLLVMBuildAdd(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildAdd",
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

function jLLVMBuildICmp(handle builder, int op, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildICmp",
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

function jLLVMBuildCall(handle builder, handle fn, handle args, int numArgs, handle name) returns handle = @java:Method {
    name: "LLVMBuildCall",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.javacpp.PointerPointer", "int", "java.lang.String"]
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

function jLLVMBuildGEP(handle builder, handle pointer, handle indices, int numArgs, handle name) returns handle = @java:Method {
    name: "LLVMBuildGEP",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.javacpp.PointerPointer", "int", "java.lang.String"]
} external;

function LLVMBuildInBoundsGEP(handle builder, handle pointer, handle indices, int numArgs, handle name) returns handle = @java:Method {
    name: "LLVMBuildInBoundsGEP",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.javacpp.PointerPointer", "int", "java.lang.String"]
} external;

function LLVMSetAlignment(handle valueRef, int bytes) = @java:Method {
    name: "LLVMSetAlignment",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "int"]
} external;
