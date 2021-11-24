import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;
import ballerina/io;

function intrinsicNameToId(IntrinsicFunctionName name) returns int {
    string str_name = "llvm." + name;
    return jLLVMLookupIntrinsicID(java:fromString(str_name), str_name.length());
}

public type LLVMCodeGenOptLevel string;
public type LLVMRelocMode string;
public type LLVMCodeModel string;

public type ObjectFileGenOptions record {|
    string? optLevel = "Default";
    string? relocMode = "Default";
    string? codeModel = "Default";
|};


final readonly & map<int> moduleFlagBehaviorToInt = {
    "error": 0,
    "warning": 1,
    "require": 2,
    "override": 3,
    "append": 4,
    "appendUnique": 5,
    "max": 6
};

public distinct class Module {
    handle LLVMModule;
    Context context;
    TargetTriple? targetTriple=();
    DIBuilder? diBuilder=();

    function init(string moduleName, Context context) {
        self.context = context;
        self.LLVMModule = jLLVMModuleCreateWithNameInContext(java:fromString(moduleName), context.LLVMContext);
    }

    function addFunction(string fnName, FunctionType fnType) returns Function {
        handle llvmFunction = jLLVMAddFunction(self.LLVMModule, java:fromString(fnName), typeToLLVMType(fnType, self.context));
        Function fn = new (llvmFunction, fnType, self.context);
        return fn;
    }

    public function createDIBuilder() returns DIBuilder {
        DIBuilder dBuilder = new(self);
        self.diBuilder = dBuilder;
        return dBuilder;
    }

    public function addModuleFlag(ModuleFlagBehavior behavior, ModuleFlag flag) {
        var [keyObj, keyLen] = getStringProp(flag[0]);
        Metadata val = intAsMetadata(flag[1]);
        jLLVMAddModuleFlag(self.LLVMModule, moduleFlagBehaviorToInt.get(behavior), keyObj, keyLen, val.llvmMetadata);
    }

    public function addFunctionDefn(string name, FunctionType fnType) returns FunctionDefn {
        return self.addFunction(name, fnType);
    }

    public function addFunctionDecl(string name, FunctionType fnType) returns FunctionDecl {
        return self.addFunction(name, fnType);
    }

    function finalizeDIBuilder() {
        DIBuilder? dBuilder = self.diBuilder;
        if dBuilder is DIBuilder {
            jLLVMDIBuilderFinalize(dBuilder.LLVMDIBuilder);
        }
    }

    public function printModuleToString() returns string {
        self.finalizeDIBuilder();
        BytePointer bytePointer = new (jLLVMPrintModuleToString(self.LLVMModule));
        return bytePointer.toString();
    }

    public function printModuleToFile(string fileName) returns io:Error? {
        self.finalizeDIBuilder();
        byte[] e = [];
        handle err = checkpanic jarrays:toHandle(e, "byte");
        _ = jLLVMPrintModuleToFile(self.LLVMModule, java:fromString(fileName), err);
    }

    function linkInlineLibrary() {
        LLVMMemoryBuffer runtimeMemBuffer = new;
        runtimeMemBuffer.storeResource("balrt_inline.bc");
        Module libModule = new("balrt_inline", self.context);
        libModule.parseBitCode(runtimeMemBuffer);
        int result = jLLVMLinkModules2(self.LLVMModule, libModule.LLVMModule);
        if result != 0 {
            panic error("Failed to link the inline runtime");
        }
    }

    // Corresponds to LLVMParseBitcodeInContext2
    function parseBitCode(LLVMMemoryBuffer memoryBuffer) {
        int result = jLLVMParseBitcodeInContext2(self.context.LLVMContext, memoryBuffer.jObject, self.LLVMModule);
        if result != 0 {
            panic error("Failed to parse the memory buffer");
        }
    }

    public function printModuleToObjectFile(string fileName, *ObjectFileGenOptions opts) returns io:Error? {
        self.finalizeDIBuilder();
        self.linkInlineLibrary(); 

        string optLevel = opts.optLevel ?: "Default";
        string relocMode = opts.relocMode ?: "Default";
        string codeModel = opts.codeModel ?: "Default";
        BytePointer file = new(jBytePointerFromString(java:fromString(fileName)));
        BytePointer targetTriple;
        if self.targetTriple is () {
            targetTriple = new(jLLVMGetDefaultTargetTriple());
        }
        else {
            targetTriple = new(jLLVMGetTarget(self.LLVMModule));
        }
        handle jTargetRef = jLLVMGetFirstTarget();
        BytePointer lookupError = new(jBytePointer());
        int isLookUpError = jLLVMGetTargetFromTriple(targetTriple.jObject, jTargetRef, lookupError.jObject);
        if isLookUpError != 0 {
            return error(lookupError.toString());
        }
        BytePointer cpu = new(jBytePointerFromString(java:fromString("generic")));
        BytePointer features = new(jBytePointerFromString(java:fromString("")));
        handle jTargetMachineRef = jLLVMCreateTargetMachine(jTargetRef,
                                                            targetTriple.jObject,
                                                            cpu.jObject,
                                                            features.jObject,
                                                            getLLVMCodeGenOptLevel(optLevel),
                                                            getLLVMRelocMode(relocMode),
                                                            getLLVMCodeModel(codeModel));
        BytePointer emitError = new(jBytePointer());
        int isEmitError = jLLVMTargetMachineEmitToFile(jTargetMachineRef, self.LLVMModule, file.jObject, 1, emitError.jObject);
        if isEmitError != 0 {
            return error(emitError.toString());
        }
    }

    public function addGlobal(Type ty, string name, *GlobalProperties props) returns ConstPointerValue {
        PointerValue val =  new (jLLVMAddGlobalInAddressSpace(self.LLVMModule, typeToLLVMType(ty, self.context), java:fromString(name), props.addressSpace));
        var initializer = props.initializer;
        if !(initializer is ()) {
            jLLVMSetInitializer(val.LLVMValueRef, initializer.LLVMValueRef);
        }
        self.setGlobalSymbolProperties(val, props);
        if props.isConstant {
            jLLVMSetGlobalConstant(val.LLVMValueRef, 1);
        }
        if props.align is int {
            jLLVMSetAlignment(val.LLVMValueRef, <int>props.align);
        }
        return val;
    }

    public function setInitializer(ConstPointerValue global, ConstValue|Function initializer) {
        jLLVMSetInitializer(global.LLVMValueRef, initializer.LLVMValueRef);
    }

    public function addAlias(Type aliasTy, ConstValue aliasee, string name, *GlobalSymbolProperties props) returns ConstPointerValue {
        Type aliasInternalType = pointerType(aliasTy, props.addressSpace);
        ConstPointerValue val = new(jLLVMAddAlias(self.LLVMModule, typeToLLVMType(aliasInternalType, self.context), aliasee.LLVMValueRef, java:fromString(name)));
        self.setGlobalSymbolProperties(val, props);
        return val;
    }

    private function setGlobalSymbolProperties(PointerValue symbol, GlobalSymbolProperties|GlobalProperties props) {
        if props.unnamedAddr {
            jLLVMSetUnnamedAddr(symbol.LLVMValueRef, 1);
        }
        jLLVMSetLinkage(symbol.LLVMValueRef, linkageToInt(props.linkage));
    }

    public function getIntrinsicDeclaration(IntrinsicFunctionName name) returns FunctionDecl {
        int id = intrinsicNameToId(name);
        if name is IntegerArithmeticIntrinsicName {
            FunctionType fnType = {returnType: structType(["i64", "i1"]), paramTypes: ["i64", "i64"]};
            PointerPointer paramTypes = PointerPointerFromTypes(fnType.paramTypes);
            return new (jLLVMGetIntrinsicDeclaration(self.LLVMModule, id, paramTypes.jObject, 2), fnType, self.context);
        }
        else if name is "ptrmask.p1i8.i64" {
            FunctionType fnType = {returnType: pointerType("i8", 1), paramTypes: [pointerType("i8", 1), "i64"]};
            PointerPointer paramTypes = PointerPointerFromTypes(fnType.paramTypes);
            return new (jLLVMGetIntrinsicDeclaration(self.LLVMModule, id, paramTypes.jObject, 2), fnType, self.context);

        }
    }

    public function setTarget(TargetTriple targetTriple) {
        self.targetTriple = targetTriple;
        jLLVMSetTarget(self.LLVMModule, java:fromString(targetTriple));
    }

}


function getLLVMCodeGenOptLevel(LLVMCodeGenOptLevel codeGenLevel) returns int {
    match codeGenLevel {
        "None" => {
            return 0;
        }
        "Less" => {
            return 1;
        }
        "Default" => {
            return 2;
        }
        "Aggressive" => {
            return 3;
        }
        _ => {
            panic error("Unknown code gen level");
        }
    }
}

function getLLVMRelocMode(LLVMRelocMode relocMode) returns int {
    match relocMode {
        "Default" => {
            return 0;
        }
        "Static" => {
            return 1;
        }
        "PIC" => {
            return 2;
        }
        "DynamicNoPic" => {
            return 3;
        }
        "ROPI" => {
            return 4;
        }
        "RWPI" => {
            return 5;
        }
        "ROPI_RWPI" => {
            return 6;
        }
        _ => {
            panic error("Unknown reloc mode");
        }
    }
}

function getLLVMCodeModel(LLVMCodeModel codeModel) returns int {
    match codeModel {
        "Default" => {
            return 0;
        }
        "JITDefault" => {
            return 1;
        }
        "Tiny" => {
            return 2;
        }
        "Small" => {
            return 3;
        }
        "Kernel" => {
            return 4;
        }
        "Medium" => {
            return 5;
        }
        "Large" => {
            return 6;
        }
        _ => {
            panic error("Unknown code model");
        }
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

function jLLVMGetTarget(handle moduleRef) returns handle = @java:Method {
    name: "LLVMGetTarget",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef"]
} external;

function jLLVMGetDefaultTargetTriple() returns handle = @java:Method {
    name: "LLVMGetDefaultTargetTriple",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
} external;

function jLLVMGetTargetFromTriple(handle triple, handle targetRef, handle err) returns int = @java:Method {
    name: "LLVMGetTargetFromTriple",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.javacpp.BytePointer", "org.bytedeco.llvm.LLVM.LLVMTargetRef", "org.bytedeco.javacpp.BytePointer"]
} external;

function jLLVMGetFirstTarget() returns handle = @java:Method {
    name: "LLVMGetFirstTarget",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
} external;

function jLLVMCreateTargetMachine(handle targetRef, handle triple, handle cpu, handle features, int optLevel, int relocMode, int codeModel) returns handle = @java:Method {
    name: "LLVMCreateTargetMachine",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTargetRef", "org.bytedeco.javacpp.BytePointer", "org.bytedeco.javacpp.BytePointer", "org.bytedeco.javacpp.BytePointer", "int", "int", "int"]
} external;

function jLLVMTargetMachineEmitToFile(handle targetMachineRef, handle moduleRef, handle fileName, int codeGen, handle err) returns int = @java:Method {
    name: "LLVMTargetMachineEmitToFile",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTargetMachineRef", "org.bytedeco.llvm.LLVM.LLVMModuleRef","org.bytedeco.javacpp.BytePointer", "int", "org.bytedeco.javacpp.BytePointer"]
} external;

function jLLVMParseBitcodeInContext2(handle contextRef, handle memoryBufferRef, handle moduleRef) returns int = @java:Method {
    name: "LLVMParseBitcodeInContext2",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef", "org.bytedeco.llvm.LLVM.LLVMMemoryBufferRef", "org.bytedeco.llvm.LLVM.LLVMModuleRef"]
} external;

function jLLVMLinkModules2(handle dest, handle src) returns int = @java:Method {
    name: "LLVMLinkModules2",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef", "org.bytedeco.llvm.LLVM.LLVMModuleRef"]
} external;

function jLLVMAddModuleFlag(handle m, int behavior, handle k, int kLen, handle val) = @java:Method {
    name: "LLVMAddModuleFlag",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef", "int", "java.lang.String", "long", "org.bytedeco.llvm.LLVM.LLVMMetadataRef"]
} external;

function jLLVMAddAlias(handle m, handle ty, handle aliasee, handle name) returns handle = @java:Method {
    name: "LLVMAddAlias",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMDIBuilderFinalize(handle dBuilder) = @java:Method {
    name: "LLVMDIBuilderFinalize",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMDIBuilderRef"]
} external;
