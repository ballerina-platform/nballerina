import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;

public type IntegerArithmeticIntrinsicName "sadd.with.overflow.i64"|"ssub.with.overflow.i64"|"smul.with.overflow.i64";

public type GeneralIntrinsicName "ptrmask.p0i8.i64";

public type IntrinsicFunctionName IntegerArithmeticIntrinsicName|GeneralIntrinsicName;

public type TargetTriple string;

function intrinsicNameToId(IntrinsicFunctionName name) returns int {
    string str_name = "llvm." + name;
    return llvm_lookup_intrinsic_id(java:fromString(str_name), str_name.length());
}

public distinct class Module {
    handle LLVMModule;
    Context context;

    function init(string moduleName, Context context) {
        self.context = context;
        self.LLVMModule = create_llvm_moduleRef(java:fromString(moduleName), context.LLVMContext);
    }

    function addFunction(string fnName, FunctionType fnType) returns Function {
        handle llvmFunction = add_function(self.LLVMModule, java:fromString(fnName), toLLVmFunctionType(fnType, self.context));
        Function fn = new (llvmFunction, fnType, self.context);
        return fn;
    }

    public function addFunctionDefn(string name, FunctionType fnType) returns FunctionDefn {
        return self.addFunction(name, fnType);
    }

    public function addFunctionDecl(string name, FunctionType fnType) returns FunctionDecl {
        return self.addFunction(name, fnType);
    }

    //FIXME: rename printModuleToString 
    public function toString() returns string {
        BytePointer bytePointer = new (module_to_string(self.LLVMModule));
        return bytePointer.toString();
    }

    //FIXME: rename printModuleToFile
    public function writeFile(string fileName) returns error? {
        byte[] e = [];
        _ = module_to_file(self.LLVMModule, java:fromString(fileName), check jarrays:toHandle(e, "byte"));
    }

    public function addGlobal(Type ty, string name) returns PointerValue {
        return new(llvm_add_global(self.LLVMModule, typeToLLVMType(ty), java:fromString(name)));    
    }

    public function getIntrinsicDeclaration(IntrinsicFunctionName name) returns FunctionDecl {
        int id = intrinsicNameToId(name);
        if name is IntegerArithmeticIntrinsicName {
            FunctionType fnType = {returnType:structType(["i64", "i1"]), paramTypes:["i64", "i64"]};
            PointerPointer paramTypes = PointerPointerFromTypes(fnType.paramTypes);
            return new (llvm_get_intrinsic_declaration(self.LLVMModule, id, paramTypes.jObject, 2),fnType, self.context);
        }
        if name is "ptrmask.p0i8.i64" {
            FunctionType fnType = {returnType:pointerType("i8"), paramTypes:[pointerType("i8"), "i64"]};
            PointerPointer paramTypes = PointerPointerFromTypes(fnType.paramTypes);
            return new (llvm_get_intrinsic_declaration(self.LLVMModule, id, paramTypes.jObject, 2),fnType, self.context);

        }
        panic error(string `${<string>name} not implemented`);
    }
}

function create_llvm_moduleRef(handle moduleId, handle context) returns handle = @java:Method {
    name: "LLVMModuleCreateWithNameInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["java.lang.String", "org.bytedeco.llvm.LLVM.LLVMContextRef"]
} external;

function add_function(handle moduleRef, handle functionName, handle functionType) returns handle = @java:Method {
    name: "LLVMAddFunction",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef", "java.lang.String", "org.bytedeco.llvm.LLVM.LLVMTypeRef"]
} external;

function module_to_file(handle moduleRef, handle fileName, handle er) returns int = @java:Method {
    name: "LLVMPrintModuleToFile",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef", "java.lang.String", "[B"]
} external;

function module_to_string(handle moduleRef) returns handle = @java:Method {
    name: "LLVMPrintModuleToString",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef"]
} external;

function llvm_add_global(handle moduleRef, handle typeRef, handle name) returns handle = @java:Method {
    name: "LLVMAddGlobal",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "java.lang.String"]
} external;

function llvm_lookup_intrinsic_id(handle name, int nameLen) returns int = @java:Method {
    name: "LLVMLookupIntrinsicID",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["java.lang.String", "long"]
} external;

function llvm_get_intrinsic_declaration(handle moduleRef, int id, handle paramTypes, int paramCount) returns handle = @java:Method {
    name: "LLVMGetIntrinsicDeclaration",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef", "int", "org.bytedeco.javacpp.PointerPointer", "long"]
} external;
