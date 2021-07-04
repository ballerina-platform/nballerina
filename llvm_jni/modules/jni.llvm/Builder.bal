import ballerina/jballerina.java;

public type BinaryIntOp BinaryArithmeticOp|BinaryBitwiseOp;

public type BinaryArithmeticOp "add"|"mul"|"sub"|"sdiv"|"srem";

public type BinaryBitwiseOp "xor"|"or"|"and";

public type IntPredicate "eq"|"ne"|"ugt"|"uge"|"ult"|"ule"|"sgt"|"sge"|"slt"|"sle";

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
        self.LLVMBuilder = create_llvm_builderRef(context.LLVMContext);
    }

    function setAlignment(Value val, Alignment align) {
        llvm_set_alignment(val.LLVMValueRef, align);
    }

    public function positionAtEnd(BasicBlock bb) {
        llvm_position_at_end(self.LLVMBuilder, bb.LLVMBasicBlockRef);
    }

    public function alloca(IntegralType ty, Alignment? align = (), string? name = ()) returns PointerValue {
        string regName = self.extractName(name);
        PointerValue val = new (llvm_alloca(self.LLVMBuilder, typeToLLVMType(ty), java:fromString(regName)));
        if align != () {
            self.setAlignment(val, align);
        }
        return val;
    }

    public function load(PointerValue ptr, Alignment? align = (), string? name = ()) returns Value {
        string regName = self.extractName(name);
        Value val = new (llvm_load(self.LLVMBuilder, ptr.LLVMValueRef, java:fromString(regName)));
        if align != () {
            self.setAlignment(val, align);
        }
        return val;
    }

    public function store(Value val, PointerValue ptr, Alignment? align = ()) {
        Value tmpVal = new (llvm_store(self.LLVMBuilder, val.LLVMValueRef, ptr.LLVMValueRef));
        if align != () {
            self.setAlignment(tmpVal, align);
        }
    }

    public function binaryInt(BinaryIntOp op, Value lhs, Value rhs, string? name = ()) returns Value {
        string regName = self.extractName(name);
        match op {
            "add" => {
                Value val = new (llvm_add(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)));
                return val;
            }
            "mul" => {
                Value val = new (llvm_mul(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)));
                return val;
            }
            "sub" => {
                Value val = new (llvm_sub(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)));
                return val;
            }
            "sdiv" => {
                Value val = new (llvm_sdiv(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)));
                return val;
            }
            "srem" => {
                Value val = new (llvm_srem(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)));
                return val;
            }
            "xor" => {
                Value val = new (llvm_xor(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)));
                return val;
            }
            "or" => {
                Value val = new (llvm_or(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)));
                return val;
            }
            "and" => {
                Value val = new (llvm_and(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(regName)));
                return val;
            }
        }
        panic error("op not implemented");
    }

    public function iCmp(IntPredicate op, Value lhs, Value rhs, string? name = ()) returns Value {
        string reg = self.extractName(name);
        return new (llvm_icmp(self.LLVMBuilder, predicateToInt(op), lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(reg)));
    }

    public function bitCast(PointerValue val, PointerType destTy, string? name = ()) returns PointerValue {
        string reg = self.extractName(name);
        return new (llvm_bit_cast(self.LLVMBuilder, val.LLVMValueRef, typeToLLVMType(destTy), java:fromString(reg)));
    }

    public function ret(Value? val = ()) {
        if val is () {
            _ = llvm_ret_void(self.LLVMBuilder);
        } else {
            _ = llvm_ret(self.LLVMBuilder, val.LLVMValueRef);
        }
    }

    public function ptrToInt(PointerValue ptr, IntType destTy, string? name = ()) returns Value {
        string reg = self.extractName(name);
        return new (llvm_ptr_to_int(self.LLVMBuilder, ptr.LLVMValueRef, typeToLLVMType(destTy), java:fromString(reg)));
    }

    public function zExt(Value val, IntType destTy, string? name = ()) returns Value {
        string reg = self.extractName(name);
        return new (llvm_z_ext(self.LLVMBuilder, val.LLVMValueRef, typeToLLVMType(destTy), java:fromString(reg)));
    }

    public function sExt(Value val, IntType destTy, string? name = ()) returns Value {
        string reg = self.extractName(name);
        return new (llvm_s_ext(self.LLVMBuilder, val.LLVMValueRef, typeToLLVMType(destTy), java:fromString(reg)));
    }

    public function trunc(Value val, IntType destTy, string? name = ()) returns Value {
        string reg = self.extractName(name);
        return new (llvm_trunc(self.LLVMBuilder, val.LLVMValueRef, typeToLLVMType(destTy), java:fromString(reg)));
    }

    public function unreachable() {
        _ = llvm_unreachable(self.LLVMBuilder);
    }

    public function call(Function fn, Value[] args, string? name = ()) returns Value? {
        string reg = self.extractName(name);
        PointerPointer arr = PointerPointerFromValues(args);
        return new (llvm_call(self.LLVMBuilder, fn.LLVMFunction, arr.jObject, args.length(), java:fromString(reg)));
    }

    public function extractValue(Value value, int index, string? name = ()) returns Value {
        string reg = self.extractName(name);
        return new (llvm_extract_value(self.LLVMBuilder, value.LLVMValueRef, index, java:fromString(reg)));
    }

    public function br(BasicBlock destination) {
        _ = llvm_br(self.LLVMBuilder, destination.LLVMBasicBlockRef);
    }

    public function condBr(Value condition, BasicBlock ifTrue, BasicBlock ifFalse) {
        _ = llvm_cond_br(self.LLVMBuilder, condition.LLVMValueRef, ifTrue.LLVMBasicBlockRef, ifFalse.LLVMBasicBlockRef);
    }

    public function getElementPtr(PointerValue ptr, Value[] indices, "inbounds"? inbounds = (), string? name = ()) returns PointerValue {
        string reg = self.extractName(name);
        PointerPointer arr = PointerPointerFromValues(indices);
        if inbounds != () {
            return new (llvm_inbounds_gep(self.LLVMBuilder, ptr.LLVMValueRef, arr.jObject, indices.length(), java:fromString(reg)));
        } else {
            return new (llvm_gep(self.LLVMBuilder, ptr.LLVMValueRef, arr.jObject, indices.length(), java:fromString(reg)));
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

function create_llvm_builderRef(handle context) returns handle = @java:Method {
    name: "LLVMCreateBuilderInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef"]
} external;

function llvm_position_at_end(handle builder, handle bb) = @java:Method {
    name: "LLVMPositionBuilderAtEnd",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMBasicBlockRef"]
} external;

function llvm_alloca(handle builder, handle typeRef, handle name) returns handle = @java:Method {
    name: "LLVMBuildAlloca",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "java.lang.String"]
} external;

function llvm_load(handle builder, handle ptr, handle name) returns handle = @java:Method {
    name: "LLVMBuildLoad",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function llvm_store(handle builder, handle val, handle ptr) returns handle = @java:Method {
    name: "LLVMBuildStore",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef"]
} external;

function llvm_add(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildAdd",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function llvm_mul(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildMul",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function llvm_sub(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildSub",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function llvm_sdiv(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildSDiv",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function llvm_srem(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildSRem",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function llvm_xor(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildXor",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function llvm_or(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildOr",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function llvm_and(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildAnd",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function llvm_icmp(handle builder, int op, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildICmp",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "int", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function llvm_bit_cast(handle builder, handle val, handle destTy, handle name) returns handle = @java:Method {
    name: "LLVMBuildBitCast",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "java.lang.String"]
} external;

function llvm_ret_void(handle builder) returns handle = @java:Method {
    name: "LLVMBuildRetVoid",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef"]
} external;

function llvm_ret(handle builder, handle val) returns handle = @java:Method {
    name: "LLVMBuildRet",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef"]
} external;

function llvm_ptr_to_int(handle builder, handle val, handle destTy, handle name) returns handle = @java:Method {
    name: "LLVMBuildPtrToInt",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "java.lang.String"]
} external;

function llvm_z_ext(handle builder, handle val, handle destTy, handle name) returns handle = @java:Method {
    name: "LLVMBuildZExt",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "java.lang.String"]
} external;

function llvm_s_ext(handle builder, handle val, handle destTy, handle name) returns handle = @java:Method {
    name: "LLVMBuildSExt",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "java.lang.String"]
} external;

function llvm_trunc(handle builder, handle val, handle destTy, handle name) returns handle = @java:Method {
    name: "LLVMBuildTrunc",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "java.lang.String"]
} external;

function llvm_unreachable(handle builder) returns handle = @java:Method {
    name: "LLVMBuildUnreachable",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef"]
} external;

function llvm_call(handle builder, handle fn, handle args, int numArgs, handle name) returns handle = @java:Method {
    name: "LLVMBuildCall",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.javacpp.PointerPointer", "int", "java.lang.String"]
} external;

function llvm_extract_value(handle builder, handle aggVal, int index, handle name) returns handle = @java:Method {
    name: "LLVMBuildExtractValue",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "int", "java.lang.String"]
} external;

function llvm_br(handle builder, handle dest) returns handle = @java:Method {
    name: "LLVMBuildBr",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMBasicBlockRef"]
} external;

function llvm_cond_br(handle builder, handle cond, handle then, handle otherwise) returns handle = @java:Method {
    name: "LLVMBuildCondBr",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMBasicBlockRef", "org.bytedeco.llvm.LLVM.LLVMBasicBlockRef"]
} external;

function llvm_gep(handle builder, handle pointer, handle indices, int numArgs, handle name) returns handle = @java:Method {
    name: "LLVMBuildGEP",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.javacpp.PointerPointer", "int", "java.lang.String"]
} external;

function llvm_inbounds_gep(handle builder, handle pointer, handle indices, int numArgs, handle name) returns handle = @java:Method {
    name: "LLVMBuildInBoundsGEP",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.javacpp.PointerPointer", "int", "java.lang.String"]
} external;

function llvm_set_alignment(handle valueRef, int bytes) = @java:Method {
    name: "LLVMSetAlignment",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "int"]
} external;
