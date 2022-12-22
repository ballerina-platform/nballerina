import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;

public distinct class Metadata {
    handle llvmMetadata;
    function init(handle jObj) {
        self.llvmMetadata = jObj;
    }
}

function intAsMetadata(Context cx, int value) returns Metadata {
    Value val = cx.constInt("i32", value);
    return new(jLLVMValueAsMetadata(val.LLVMValueRef));
}

final readonly & map<int> sourceLangToInt = {
    "C99": 11
};

final readonly & map<int> emissionKindToInt = {
    "none": 0,
    "full": 1,
    "lineTablesOnly": 2
};

final readonly & map<int> dIFlagToInt = {
    "zero": 0
};

final readonly & map<int> encodingToInt = {
    "boolean": 2,
    "float": 4,
    "signed": 5,
    "signed_char": 6
};

public class DIBuilder {
    handle LLVMDIBuilder;
    Context context;

    function init(Module m, Context context) {
        self.LLVMDIBuilder = jLLVMCreateDIBuilder(m.LLVMModule);
        self.context = context;
    }

    public function createCompileUnit(*CompileUnitProperties props) returns Metadata {
        int lang = sourceLangToInt.get(props.language);
        handle file = getMetadataProp(props.file);
        var [producer, producerLen] = getStringProp(props.producer);
        int optimized = getBooleanProp(props.isOptimized);
        var [flags, flagsLen] = getStringProp(props.flags);
        var [splitName, splitNameLen] = getStringProp(props.splitName);
        int kind = emissionKindToInt.get(props.kind);
        int DWOId = getIntProp(props.DWOId);
        int splitDebugInlining = getBooleanProp(props.splitDebugInlining);
        int splitDebugInfoForProfiling = getBooleanProp(props.splitDebugInfoForProfiling);
        var [sysRoot, sysRootLen] = getStringProp(props.sysRoot);
        var [sdk, sdkLen] = getStringProp(props.sdk);
        handle jObj = jLLVMDIBuilderCreateCompileUnit(self.LLVMDIBuilder, lang, file, producer, producerLen, optimized, flags, flagsLen, props.runtimeVersion, splitName, splitNameLen, kind, DWOId, splitDebugInlining, splitDebugInfoForProfiling, sysRoot, sysRootLen, sdk, sdkLen);
        return new(jObj);
    }

    public function createFile(string filename, string directory) returns Metadata {
        var [filenameObj, filenameLen] = getStringProp(filename);
        var [dir, dirLen] = getStringProp(directory);
        handle jObj = jLLVMDIBuilderCreateFile(self.LLVMDIBuilder, filenameObj, filenameLen, dir, dirLen);
        return new(jObj);
    }

    public function createFunction(*FunctionMetadataProperties props) returns Metadata {
        handle scope = getMetadataProp(props.scope);
        var [name, nameLen] = getStringProp(props.name);
        var [linkageName, linkageNameLen] = getStringProp(props.linkageName);
        handle file = getMetadataProp(props.file);
        handle ty = getMetadataProp(props.ty);
        int isLocalToUnit = getBooleanProp(props.isLocalToUnit);
        int isDefinition = getBooleanProp(props.isDefinition);
        int flag = dIFlagToInt.get(props.flag);
        int isOptimized = getBooleanProp(props.isOptimized);
        handle jObj = jLLVMDIBuilderCreateFunction(self.LLVMDIBuilder, scope, name, nameLen,
                                                   linkageName, linkageNameLen, file, props.lineNo,
                                                   ty, isLocalToUnit, isDefinition, props.scopeLine,
                                                   flag, isOptimized);
        return new(jObj);
    }

    public function createSubroutineType(Metadata? file, Metadata[] parameterTypes=[], DIFlag flag="zero") returns Metadata {
        handle fileObj = getMetadataProp(file);
        PointerPointer parameterArr = PointerPointerFromMetadata(parameterTypes);
        int flagObj = dIFlagToInt.get(flag);
        handle jObj = jLLVMDIBuilderCreateSubroutineType(self.LLVMDIBuilder, fileObj, parameterArr.jObject, parameterTypes.length(), flagObj);
        return new(jObj);
    }

    public function createDebugLocation(int line, int column, Metadata? scope, Metadata? inlinedAt=()) returns Metadata {
        handle scopeJObj = getMetadataProp(scope);
        handle inlinedAtJObj = getMetadataProp(inlinedAt);
        handle jObj = jLLVMDIBuilderCreateDebugLocation(self.context.LLVMContext, line, column, scopeJObj, inlinedAtJObj);
        return new(jObj);
    }

    public function createPointerType(*PointerTypeMetdataProperties props) returns Metadata {
        int align = getIntProp(props.alignInBits);
        var [tyName, nameLen] = getStringProp(props.name);
        handle jObj = jLLVMDIBuilderCreatePointerType(self.LLVMDIBuilder, props.pointeeTy.llvmMetadata, props.sizeInBits, align, props.addressSpace, tyName, nameLen);
        return new(jObj);
    }

    public function createTypedef(Metadata ty, string name, Metadata file, int lineNo, Metadata scope, Alignment? alignInBits = ()) returns Metadata {
        var [tyName, nameLen] = getStringProp(name);
        int align = getIntProp(alignInBits);
        handle jObj = jLLVMDIBuilderCreateTypedef(self.LLVMDIBuilder, ty.llvmMetadata, tyName, nameLen, file.llvmMetadata, lineNo, scope.llvmMetadata, align);
        return new(jObj);
    }

    public function createBasicType(*BasicTypeMetadataProperties props) returns Metadata {
        var [tyName, nameLen] = getStringProp(props.name);
        int encoding = encodingToInt.get(props.encoding);
        int flags = dIFlagToInt.get(props.flag);
        handle jObj = jLLVMDIBuilderCreateBasicType(self.LLVMDIBuilder, tyName, nameLen, props.sizeInBits, encoding, flags);
        return new(jObj);
    }

    public function createAutoVariable(*VariableMetadataProperties props) returns Metadata {
        var [name, nameLen] = getStringProp(props.name);
        int flags = dIFlagToInt.get(props.flag);
        int align = getIntProp(props.alignInBits);
        handle jObj = jLLVMDIBuilderCreateAutoVariable(self.LLVMDIBuilder, props.scope.llvmMetadata, name, nameLen, props.file.llvmMetadata, props.lineNo, props.ty.llvmMetadata, 1, flags, align);
        return new(jObj);
    }

    public function insertDbgValueAtEnd(*ValueMetadataProperties props) {
        _ = jLLVMDIBuilderInsertDbgValueAtEnd(self.LLVMDIBuilder, props.value.LLVMValueRef, props.varInfo.llvmMetadata, props.expr.llvmMetadata,
                                              props.debugLoc.llvmMetadata, props.block.LLVMBasicBlockRef);
    }

    public function insertDeclareAtEnd(*ValueMetadataProperties props) {
        _ = jLLVMDIBuilderInsertDeclareAtEnd(self.LLVMDIBuilder, props.value.LLVMValueRef, props.varInfo.llvmMetadata, props.expr.llvmMetadata,
                                             props.debugLoc.llvmMetadata, props.block.LLVMBasicBlockRef);
    }

    public function createExpression(int[] addr) returns Metadata {
        handle jObj = jLLVMDIBuilderCreateExpression(self.LLVMDIBuilder, checkpanic jarrays:toHandle(addr, "long"), addr.length());
        return new(jObj);
    }

    public function createLexicalBlock(Metadata scope, Metadata file, int line, int column) returns Metadata {
        handle jObj = jLLVMDIBuilderCreateLexicalBlock(self.LLVMDIBuilder, scope.llvmMetadata, file.llvmMetadata, line, column);
        return new(jObj);
    }
}

function jLLVMCreateDIBuilder(handle module) returns handle = @java:Method {
    name: "LLVMCreateDIBuilder",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef"]
} external;

function jLLVMDIBuilderCreateCompileUnit(handle builder, int lang, handle fileRef, handle producer, int producerLen,
					 int isOptimized, handle flags, int flagsLen, int runtimeVer, handle splitName,
					 int splitNameLen, int kind, int DWOId, int splitDebugInlining, int DebugInfoForProfiling,
					 handle sysRoot, int sysRootLen, handle sdk, int sdkLen) returns handle = @java:Method {
    name: "LLVMDIBuilderCreateCompileUnit",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMDIBuilderRef", "int", "org.bytedeco.llvm.LLVM.LLVMMetadataRef", "java.lang.String", "long",
    		 "int", "java.lang.String", "long", "int", "java.lang.String", "long", "int", "int", "int", "int", "java.lang.String",
		 "long", "java.lang.String", "long"]
} external;

function jLLVMDIBuilderCreateFile(handle builder, handle filename, int filenameLen, handle directory, int directoryLen) returns handle = @java:Method {
    name: "LLVMDIBuilderCreateFile",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMDIBuilderRef", "java.lang.String", "long", "java.lang.String", "long"]
} external;

function jLLVMDIBuilderCreateFunction(handle builder, handle scope, handle name, int nameLen, handle linkageName, int linkageNameLen, handle file,
                                      int lineNo, handle ty, int isLocalToUnit, int isDefinition, int scopeLine, int flags,
                                      int isOptimized) returns handle = @java:Method {
    name: "LLVMDIBuilderCreateFunction",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMDIBuilderRef", "org.bytedeco.llvm.LLVM.LLVMMetadataRef", "java.lang.String", "long",
                 "java.lang.String", "long", "org.bytedeco.llvm.LLVM.LLVMMetadataRef", "int", "org.bytedeco.llvm.LLVM.LLVMMetadataRef",
                 "int", "int", "int", "int", "int"]
} external;

function jLLVMDIBuilderCreateSubroutineType(handle builder, handle file, handle parameterTypes, int numParameters, int flags) returns handle = @java:Method {
    name: "LLVMDIBuilderCreateSubroutineType",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMDIBuilderRef", "org.bytedeco.llvm.LLVM.LLVMMetadataRef", "org.bytedeco.javacpp.PointerPointer", "int", "int"]
} external;

function jLLVMDIBuilderCreateDebugLocation(handle context, int line, int column, handle scope, handle inlinedAt) returns handle = @java:Method {
    name: "LLVMDIBuilderCreateDebugLocation",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef", "int", "int", "org.bytedeco.llvm.LLVM.LLVMMetadataRef", "org.bytedeco.llvm.LLVM.LLVMMetadataRef"]
} external;

function jLLVMValueAsMetadata(handle val) returns handle = @java:Method {
    name: "LLVMValueAsMetadata",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef"]
} external;

function jLLVMDIBuilderCreatePointerType(handle builder, handle pointeeTy, int sizeInBits, int alignInBits, int addressSpace, handle name, int nameLen) returns handle = @java:Method {
    name: "LLVMDIBuilderCreatePointerType",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMDIBuilderRef", "org.bytedeco.llvm.LLVM.LLVMMetadataRef", "long", "int", "int", "java.lang.String", "long"]
} external;

function jLLVMDIBuilderCreateTypedef(handle builder, handle ty, handle name, int nameLen, handle file, int lineNo, handle scope, int alignInBits) returns handle = @java:Method {
    name: "LLVMDIBuilderCreateTypedef",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMDIBuilderRef", "org.bytedeco.llvm.LLVM.LLVMMetadataRef", "java.lang.String", "long", "org.bytedeco.llvm.LLVM.LLVMMetadataRef",
                 "int", "org.bytedeco.llvm.LLVM.LLVMMetadataRef", "int"]
} external;

function jLLVMDIBuilderCreateBasicType(handle builder, handle name, int nameLen, int sizeInBits, int encoding, int flags) returns handle = @java:Method {
    name: "LLVMDIBuilderCreateBasicType",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMDIBuilderRef", "java.lang.String", "long", "long", "int", "int"]
} external;

function jLLVMDIBuilderCreateAutoVariable(handle builder, handle scope, handle name, int nameLen, handle file, int lineNo, handle ty, int alwaysPreserve, int flags, int alignInBits) returns handle = @java:Method {
    name: "LLVMDIBuilderCreateAutoVariable",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMDIBuilderRef", "org.bytedeco.llvm.LLVM.LLVMMetadataRef", "java.lang.String", "long",
                 "org.bytedeco.llvm.LLVM.LLVMMetadataRef", "int", "org.bytedeco.llvm.LLVM.LLVMMetadataRef", "int", "int", "int"]
} external;

function jLLVMDIBuilderInsertDbgValueAtEnd(handle builder, handle val, handle varInfo, handle expr, handle debugLoc, handle block) returns handle = @java:Method {
    name: "LLVMDIBuilderInsertDbgValueAtEnd",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMDIBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMMetadataRef",
                 "org.bytedeco.llvm.LLVM.LLVMMetadataRef", "org.bytedeco.llvm.LLVM.LLVMMetadataRef", "org.bytedeco.llvm.LLVM.LLVMBasicBlockRef"]
} external;

function jLLVMDIBuilderInsertDeclareAtEnd(handle builder, handle val, handle varInfo, handle expr, handle debugLoc, handle block) returns handle = @java:Method {
    name: "LLVMDIBuilderInsertDeclareAtEnd",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMDIBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMMetadataRef",
                 "org.bytedeco.llvm.LLVM.LLVMMetadataRef", "org.bytedeco.llvm.LLVM.LLVMMetadataRef", "org.bytedeco.llvm.LLVM.LLVMBasicBlockRef"]
} external;

function jLLVMDIBuilderCreateExpression(handle builder, handle addr, int length) returns handle = @java:Method {
    name: "LLVMDIBuilderCreateExpression",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMDIBuilderRef", "[J", "long"]
} external;

function jLLVMDIBuilderCreateLexicalBlock(handle builder, handle scope, handle file, int line, int column) returns handle = @java:Method {
    name: "LLVMDIBuilderCreateLexicalBlock",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMDIBuilderRef", "org.bytedeco.llvm.LLVM.LLVMMetadataRef", "org.bytedeco.llvm.LLVM.LLVMMetadataRef", "int", "int"]
} external;
