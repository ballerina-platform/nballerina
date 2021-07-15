import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;
import ballerina/io;

function intrinsicNameToId(IntrinsicFunctionName name) returns int {
    string str_name = "llvm." + name;
    return jLLVMLookupIntrinsicID(java:fromString(str_name), str_name.length());
}

public distinct class Module {
    handle LLVMModule;
    Context context;

    function init(string moduleName, Context context) {
        self.context = context;
        self.LLVMModule = jLLVMModuleCreateWithNameInContext(java:fromString(moduleName), context.LLVMContext);
    }

    function addFunction(string fnName, FunctionType fnType) returns Function {
        handle llvmFunction = jLLVMAddFunction(self.LLVMModule, java:fromString(fnName), toLLVmFunctionType(fnType, self.context));
        Function fn = new (llvmFunction, fnType, self.context);
        return fn;
    }

    public function addFunctionDefn(string name, FunctionType fnType) returns FunctionDefn {
        return self.addFunction(name, fnType);
    }

    public function addFunctionDecl(string name, FunctionType fnType) returns FunctionDecl {
        return self.addFunction(name, fnType);
    }

    public function printModuleToString() returns string {
        BytePointer bytePointer = new (jLLVMPrintModuleToString(self.LLVMModule));
        return bytePointer.toString();
    }

    public function printModuleToFile(string fileName) returns io:Error? {
        byte[] e = [];
        handle err = checkpanic jarrays:toHandle(e, "byte");
        _ = jLLVMPrintModuleToFile(self.LLVMModule, java:fromString(fileName), err);
    }

    public function addGlobal(Type ty, string name, *GlobalProperties props) returns PointerValue {
        PointerValue val =  new (jLLVMAddGlobalInAddressSpace(self.LLVMModule, typeToLLVMType(ty), java:fromString(name), props.addressSpace));
        if props.initializer is ConstValue {
            ConstValue initializer = <ConstValue>props.initializer;
            jLLVMSetInitializer(val.LLVMValueRef, initializer.LLVMValueRef);
        }
        if props.unnamedAddr {
            jLLVMSetUnnamedAddr(val.LLVMValueRef, 1);
        }
        jLLVMSetLinkage(val.LLVMValueRef, linkageToInt(props.linkage));
        if props.isConstant {
            jLLVMSetGlobalConstant(val.LLVMValueRef, 1);
        }
        if props.align is int {
            jLLVMSetAlignment(val.LLVMValueRef, <int>props.align);
        }
        return val;
    }

    public function getIntrinsicDeclaration(IntrinsicFunctionName name) returns FunctionDecl {
        int id = intrinsicNameToId(name);
        if name is IntegerArithmeticIntrinsicName {
            FunctionType fnType = {returnType: structType(["i64", "i1"]), paramTypes: ["i64", "i64"]};
            PointerPointer paramTypes = PointerPointerFromTypes(fnType.paramTypes);
            return new (jLLVMGetIntrinsicDeclaration(self.LLVMModule, id, paramTypes.jObject, 2), fnType, self.context);
        }
        if name is "ptrmask.p1i8.i64" {
            FunctionType fnType = {returnType: pointerType("i8", 1), paramTypes: [pointerType("i8", 1), "i64"]};
            PointerPointer paramTypes = PointerPointerFromTypes(fnType.paramTypes);
            return new (jLLVMGetIntrinsicDeclaration(self.LLVMModule, id, paramTypes.jObject, 2), fnType, self.context);

        }
        panic error(string `${<string>name} not implemented`);
    }

    public function setTarget(TargetTriple targetTriple) {
        jLLVMSetTarget(self.LLVMModule, java:fromString(targetTriple));
    }
}

function jLLVMModuleCreateWithNameInContext(handle moduleId, handle context) returns handle = @java:Method {
    name: "LLVMModuleCreateWithNameInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["java.lang.String", "org.bytedeco.llvm.LLVM.LLVMContextRef"]
} external;

function jLLVMAddFunction(handle moduleRef, handle functionName, handle functionType) returns handle = @java:Method {
    name: "LLVMAddFunction",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef", "java.lang.String", "org.bytedeco.llvm.LLVM.LLVMTypeRef"]
} external;

function jLLVMPrintModuleToFile(handle moduleRef, handle fileName, handle er) returns int = @java:Method {
    name: "LLVMPrintModuleToFile",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef", "java.lang.String", "[B"]
} external;

function jLLVMPrintModuleToString(handle moduleRef) returns handle = @java:Method {
    name: "LLVMPrintModuleToString",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef"]
} external;

function jLLVMAddGlobalInAddressSpace(handle moduleRef, handle typeRef, handle name, int addressSpace) returns handle = @java:Method {
    name: "LLVMAddGlobalInAddressSpace",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "java.lang.String", "int"]
} external;

function jLLVMLookupIntrinsicID(handle name, int nameLen) returns int = @java:Method {
    name: "LLVMLookupIntrinsicID",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["java.lang.String", "long"]
} external;

function jLLVMGetIntrinsicDeclaration(handle moduleRef, int id, handle paramTypes, int paramCount) returns handle = @java:Method {
    name: "LLVMGetIntrinsicDeclaration",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef", "int", "org.bytedeco.javacpp.PointerPointer", "long"]
} external;

function jLLVMSetTarget(handle moduleRef, handle target) = @java:Method {
    name: "LLVMSetTarget",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef", "java.lang.String"]
} external;

function jLLVMSetInitializer(handle globalVar, handle constVar) = @java:Method {
    name: "LLVMSetInitializer",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef"]
} external;

function jLLVMSetUnnamedAddr(handle globalVar, int hasUnnamedAddr) = @java:Method {
    name: "LLVMSetUnnamedAddr",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "int"]
} external;

function jLLVMSetGlobalConstant(handle globalVar, int isConstant) = @java:Method {
    name: "LLVMSetGlobalConstant",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "int"]
} external;
