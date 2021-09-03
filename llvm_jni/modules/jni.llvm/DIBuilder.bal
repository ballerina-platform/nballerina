import ballerina/jballerina.java;

public distinct class Metadata {
    handle llvmMetadata;
    function init(handle jObj) {
        self.llvmMetadata = jObj;
    }
}


function intAsMetadata(int value) returns Metadata {
    Value val = constInt("i32", value);
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

public class DIBuilder {
    handle LLVMDIBuilder;

    function init(Module m) {
        self.LLVMDIBuilder = jLLVMCreateDIBuilder(m.LLVMModule);
    }

    public function createCompileUnit(*CompileUnitProperties props) returns Metadata {
        int lang = sourceLangToInt.get(props.language);
        handle file = getMetadataProp(props.file);
        var [producer, producerLen] = getStringProp(props.producer);
        int optimized = getBooleanProp(props.isOptimized);
        var [flags, flagsLen] = getStringProp(props.flags);
        var [splitName, splitNameLen] = getStringProp(props.splitName);
        int kind = emissionKindToInt.get(props.kind);
        int DWOId = self.getIntProp(props.DWOId);
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


    public function createDebugLocation(Context context, int line, int column, Metadata? scope, Metadata? inlinedAt=()) returns Metadata {
        handle scopeJObj = getMetadataProp(scope);
        handle inlinedAtJObj = getMetadataProp(inlinedAt);
        handle jObj = jLLVMDIBuilderCreateDebugLocation(context.LLVMContext, line, column, scopeJObj, inlinedAtJObj);
        return new(jObj);
    }


    function getIntProp(int? prop) returns int {
	    if prop is int {
		return prop;
	    }
	    return 0;
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
