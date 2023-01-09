// This contains the common definitions for both print.llvm and jni.llvm

// "i64" corresponds to LLVMInt64Type
// "i8" corresponds to LLVMInt8Type
// "i1" corresponds to LLVMInt1Type
public type IntType "i64"|"i32"|"i16"|"i8"|"i1";
public type FloatType "double";


// Used to constrain parameters that represent an alignment
public type Alignment 1|2|4|8|16;

// Corresponds to LLVMPointerType
public type PointerType readonly & record {|
    Type pointsTo;
    int addressSpace;
|};

public type IntegralType IntType|PointerType;

// Corresponds to LLVMPointerType function
public function pointerType(Type ty, int addressSpace = 0) returns PointerType {
    return { pointsTo: ty, addressSpace };
}

# https://github.com/llvm/llvm-project/blob/ad4bb8280952c2cacf497e30560ee94c119b36e0/llvm/include/llvm/IR/Type.h#L259
# Valid type for a register in codegen. This includes all first-class types except struct and array types.
public type SingleValueType IntegralType|FloatType|PointerType;

// Corresponds to LLVMArrayType
public type ArrayType readonly & record {|
    Type elementType;
    int elementCount;
|};

public function arrayType(Type ty, int elementCount) returns ArrayType {
    return { elementType: ty, elementCount: elementCount };
}

// Corresponds to llvm::StructType
public type StructType readonly & record {
    Type[] elementTypes;
    string? name = ();
};

public function structType(Type[] elementTypes) returns StructType {
    return { elementTypes: elementTypes.cloneReadOnly() };
}

// Corresponds to LLVMMetadataRef
public type MetadataType "metadata";
public type Type IntType|FloatType|PointerType|StructType|ArrayType|FunctionType|MetadataType;

// A RetType is valid only as the return type of a function
public type RetType Type|"void";

# Corresponds to llvm::FunctionType class
public type FunctionType readonly & record {|
    RetType returnType;
    Type[] paramTypes;
|};

public function functionType(RetType returnType, Type[] paramTypes) returns FunctionType {
    return { returnType, paramTypes: paramTypes.cloneReadOnly() };
}

// Corresponds to LLVMLinkage enum
public type Linkage "internal"|"external";

public type FunctionEnumAttribute "nofree"|"nosync"|"readnone"|"noreturn"|"cold"|"nounwind"|"readnone"|"readonly"|"speculatable"|"willreturn";
public type ParamEnumAttribute "signext"|"zeroext";
public type ReturnEnumAttribute "signext"|"zeroext"|"noalias";
public type EnumAttribute FunctionEnumAttribute | (readonly & [int, ParamEnumAttribute]) | (readonly & ["return", ReturnEnumAttribute]);

// Subtype of LLVMOpcode

public type IntArithmeticOp "add"|"sub"|"mul";

public type FloatArithmeticOp "fadd"|"fsub"|"fmul"|"fdiv"|"frem";

public type IntArithmeticSignedOp "sdiv"|"srem";

public type IntBitwiseOp "xor"|"or"|"and"|"shl"|"ashr"|"lshr";

type IntOp IntArithmeticOp|IntArithmeticSignedOp|IntBitwiseOp;
type BinaryOp IntOp|FloatArithmeticOp;

// Corresponds to LLVMIntPredicate
public type IntPredicate "eq"|"ne"|"ugt"|"uge"|"ult"|"ule"|"sgt"|"sge"|"slt"|"sle";

// Corresponds to LLVMRealPredicate
public type FloatPredicate "false"|"oeq"|"ogt"|"oge"|"olt"|"ole"|"one"|"ord"|"ueq"|"ugt"|"uge"|"ult"|"ule"|"une"|"uno"|"true";
public type IntegerArithmeticIntrinsicName "sadd.with.overflow.i64.i64"|"ssub.with.overflow.i64.i64"|"smul.with.overflow.i64.i64";
public type GeneralIntrinsicName "ptrmask.p1.i64";
type DebugIntrinsicName "dbg.value"|"dbg.declare";

public type IntrinsicFunctionName IntegerArithmeticIntrinsicName|GeneralIntrinsicName;

public type TargetTriple string;

public type GlobalSymbolProperties record {|
    boolean unnamedAddr = false;
    int addressSpace = 0;
    Linkage linkage = "external";
|};

public type GlobalProperties record {|
    *GlobalSymbolProperties;
    boolean isConstant = false;
    int? align = ();
    ConstValue|Function? initializer = ();
|};

// Corresponds to LLVMDWARFSourceLanguage
public type DWARFSourceLanguage "C99";

// Corresponds to LLVMDWARFEmissionKind
public type EmissionKind "none"|"full"|"lineTablesOnly";

public type CompileUnitProperties record {|
    DWARFSourceLanguage language = "C99";
    Metadata? file;
    string? producer = ();
    boolean isOptimized = false;
    string? flags = ();
    int runtimeVersion = 0;
    string? splitName = ();
    EmissionKind kind = "full";
    int? DWOId = ();
    boolean splitDebugInlining = false;
    boolean? splitDebugInfoForProfiling = ();
    string? sysRoot = ();
    string? sdk = ();
|};

public type ModuleFlag ["Debug Info Version", int]|["Dwarf Version", int];
// Corresponds to LLVMModuleFlagBehavior
public type ModuleFlagBehavior "error"|"warning"|"require"|"override"|"append"|"appendUnique"|"max";

// Corresponds to LLVMDIFlags
public type DIFlag "zero";
public type FunctionMetadataProperties record {|
    Metadata? scope;
    string? name;
    string? linkageName;
    Metadata? file;
    int lineNo;
    Metadata? ty;
    boolean isLocalToUnit = true;
    boolean isDefinition = true;
    int scopeLine;
    DIFlag flag = "zero";
    boolean isOptimized = false;
|};

// Corresponds to LLVMDWARFTypeEncoding
public type DwarfTypeEncoding "boolean"|"float"|"signed"|"signed_char";
public type BasicTypeMetadataProperties record {|
    string name;
    int sizeInBits;
    DwarfTypeEncoding encoding;
    DIFlag flag = "zero";
|};

public type VariableMetadataProperties record {|
    Metadata scope;
    string name;
    Metadata file;
    int lineNo;
    Metadata ty;
    DIFlag flag = "zero";
    int? alignInBits=();
|};

public type ValueMetadataProperties record {|
    Value value;
    Metadata varInfo;
    Metadata expr;
    Metadata debugLoc;
    BasicBlock block;
|};

public type PointerTypeMetdataProperties record {|
    Metadata pointeeTy;
    int sizeInBits;
    Alignment? alignInBits = ();
    int addressSpace = 0;
    string? name = ();
|};
