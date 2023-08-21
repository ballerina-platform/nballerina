import wso2/nballerina.bir;
import wso2/nballerina.comm.err;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

const USER_MAIN_NAME = "main";

// Need to guarantee alignment for subtypes, so we can lo bit to distinguish betweem
// bitsets and pointers to subtypes
const SUBTYPE_ALIGN = 8;

final llvm:StructType llIntRangeType = llvm:structType([LLVM_INT, LLVM_INT]);

public type ProgramModule readonly & record {|
    bir:ModuleId id;
    TypeUsage typeUsage;
|};

type TypeDefnFields record {|
    readonly t:SemType semType;
    llvm:ConstPointerValue ptr;
    llvm:Type llType;
|};

type TypeDefn record {|
    *TypeDefnFields;
    int tid?;
|};

type ComplexTypeDefn record {|
    *TypeDefnFields;
    readonly t:ComplexSemType semType;
|};

type ConstructTypeDefn record {|
    *TypeDefnFields;
    int tid;
|};

type SubtypeDefn record {|
    readonly t:ComplexSemType semType;
    readonly t:BasicTypeCode typeCode;
    llvm:ConstPointerValue ptr;
    llvm:StructType? structType;
|};

type FillerDescDefn record {|
    readonly t:SemType semType;
    readonly llvm:ConstPointerValue defn;
|};

const TYPE_KIND_ARRAY = "array";
const TYPE_KIND_MAP = "map";
const TYPE_KIND_RECORD = "record";
const TYPE_KIND_PRECOMPUTED = "precomputed";
const TYPE_KIND_TRUE = "true";
const TYPE_KIND_FALSE = "false";
const TYPE_KIND_INT = "int";
const TYPE_KIND_FLOAT = "float";
const TYPE_KIND_DECIMAL = "decimal";
const TYPE_KIND_STRING = "string";
const TYPE_KIND_FUNCTION = "function";

const ID_LIST = 0;
const ID_MAPPING = 1;
const ID_FUNCTION = 2;

type TypeIdBasicType ID_LIST|ID_MAPPING|ID_FUNCTION;

type TypeKindArrayOrMap TYPE_KIND_ARRAY|TYPE_KIND_MAP;
type TypeKindSimple TYPE_KIND_TRUE|TYPE_KIND_FALSE|TYPE_KIND_INT|TYPE_KIND_FLOAT|TYPE_KIND_DECIMAL;
type TypeKind TypeKindArrayOrMap|TYPE_KIND_RECORD|TYPE_KIND_PRECOMPUTED|TYPE_KIND_STRING|TYPE_KIND_FUNCTION|TypeKindSimple;

type FunctionRef llvm:FunctionDecl|llvm:ConstPointerValue;

class InitModuleContext {
    *Context;
    private llvm:Context llvmContext;
    llvm:Module llMod;
    t:Context tc;
    table<ConstructTypeDefn> key(semType)[3] constructTypeDefns = [table [], table[], table[]];
    table<ComplexTypeDefn> key(semType) complexTypeDefns = table [];
    table<SubtypeDefn> key(typeCode, semType) subtypeDefns = table [];
    InitTypes llTypes;
    map<llvm:FunctionDecl> typeTestFuncs = {};
    map<llvm:FunctionDecl> runtimeFuncs = {};
    map<llvm:ConstPointerValue> stringDefns = {};
    map<llvm:ConstPointerValue> predefinedFillerDesc = {};
    int decimalCount = 0;
    // subtype definitions cannot be completed before construct types are complete,
    // because precomputed subtypes need to know all construct types
    boolean constructTypesComplete;
    table<FillerDescDefn> key(semType) fillerDescDefns = table [];
    int fillerDescCount = 0;
    TypeSymbolConstructor? symbolConstructor = ();
    llvm:StructType? fillerDescTy = ();

    function init(llvm:Context llContext, llvm:Module llMod, t:Context tc, InitTypes llTypes, boolean constructTypesComplete) {
        self.llvmContext = llContext;
        self.llMod = llMod;
        self.tc = tc;
        self.llTypes = llTypes;
        self.constructTypesComplete = constructTypesComplete;
    }
    
    function llContext() returns llvm:Context => self.llvmContext;

    function getRuntimeFunctionDecl(RuntimeFunction rf) returns llvm:FunctionDecl {
        var { name, ty } = rf;
        string symbol = "_bal_" + name;
        llvm:FunctionDecl? existingDecl = self.runtimeFuncs[symbol];
        if existingDecl != () {
            return existingDecl;
        }
        llvm:FunctionDecl decl = self.llMod.addFunctionDecl(symbol, ty);
        self.runtimeFuncs[symbol] = decl;
        return decl;
    }

    // These are no-ops in init module, since we don't want to add function calls in init module to the stack trace
    function useDebugLocation(llvm:Builder builder, DebugLocationUsage usage) {}
    function clearDebugLocation(llvm:Builder builder) {}

    function getLlFillerDescTy() returns llvm:StructType {
        if self.fillerDescTy == () {
            llvm:StructType ty = self.llContext().structCreateNamed("FillerDesc");
            self.fillerDescTy = ty;
            self.llContext().structSetBody(ty, [llvm:pointerType(self.getLlFillerCreateFuncTy())]);
        }
        return <llvm:StructType> self.fillerDescTy;
    }

    function getLlFillerCreateFuncTy() returns llvm:FunctionType {
        return llvm:functionType(LLVM_TAGGED_PTR,
                                 [llvm:pointerType(self.getLlFillerDescTy()), llvm:pointerType(LLVM_BOOLEAN)]);
    }

};

// This encapsulate states needed to create new types symbols in init module without having to pass them as arguments to functions
class TypeSymbolConstructor {
    private bir:ModuleId id;
    private int typeUsageCount;

    function init(bir:ModuleId id, int typeUsageCount) {
        self.id = id;
        self.typeUsageCount = typeUsageCount;
    }

    function construct() returns string {
        int typeUsageCount = self.typeUsageCount;
        self.typeUsageCount += 1;
        return mangleTypeSymbol(self.id, USED_CONSTRUCT, typeUsageCount);
    }
};

public function buildInitModule(t:Env env, ProgramModule[] modules, map<t:FunctionSignature> publicFuncs) returns llvm:Module|BuildError {
    llvm:Context llContext = new;
    llvm:Module llMod = llContext.createModule();
    llvm:Builder builder = llContext.createBuilder();
    buildInitTypes(llContext, llMod, builder, env, modules);
    buildMain(modules[0].id, USER_MAIN_NAME, publicFuncs[USER_MAIN_NAME], llMod, builder);
    return llMod;
}

function buildMain(bir:ModuleId entryModId, string userMainName, t:FunctionSignature? userMainSig, llvm:Module llMod, llvm:Builder builder) {
    llvm:FunctionType ty = { returnType: "void", paramTypes: [] };
    llvm:FunctionDefn func = llMod.addFunctionDefn("_bal_main", ty);
    builder.positionAtEnd(func.appendBasicBlock());

    if userMainSig != () {
        string userMainMangledName = mangleInternalSymbol(entryModId, { identifier: userMainName, isPublic: true });
        llvm:FunctionType userMainTy = buildFunctionSignature(userMainSig);
        llvm:FunctionDecl userMainDecl = llMod.addFunctionDecl(userMainMangledName, userMainTy);
        _ = builder.call(userMainDecl, []);
    }

    builder.ret();
}

function buildInitTypes(llvm:Context llContext, llvm:Module llMod, llvm:Builder builder, t:Env env, ProgramModule[] modules) {
    InitTypes llTypes = createInitTypes(llContext);
    InitModuleContext cx = new(llContext, llMod, t:typeContext(env), llTypes, false);
    buildInitTypesForUsage(builder, cx, modules, USED_CONSTRUCT);
    cx.constructTypesComplete = true;
    finishSubtypeDefns(cx);
    buildInitTypesForUsage(builder, cx, modules, USED_EXACTIFY);
    buildInitTypesForUsage(builder, cx, modules, USED_TYPE_TEST);
    buildInitTypesForUsage(builder, cx, modules, USED_CALLED);
}

function buildInitTypesForUsage(llvm:Builder builder, InitModuleContext cx, ProgramModule[] modules, TypeHowUsed howUsed) {
    foreach var mod in modules {
        var { types, uses } = mod.typeUsage;
        bir:ModuleId id = mod.id;
        cx.symbolConstructor = new(id, types.length());
        foreach int i in 0 ..< types.length() {
            if (uses[i] & howUsed) != 0 {
                t:SemType ty = types[i];
                string sym = mangleTypeSymbol(id, howUsed, i);
                if howUsed == USED_CONSTRUCT {
                    addConstructTypeSymbol(builder, cx, sym, ty);
                }
                else if howUsed == USED_EXACTIFY {
                    addExactifyTypeSymbol(cx, sym, ty);
                }
                else if howUsed == USED_CALLED {
                    addCalledTypeSymbol(builder, cx, sym, ty);
                }
                else {
                    addTypeTestTypeSymbol(cx, sym, <t:ComplexSemType>ty);
                }
            }
        }
    }
}

function addCalledTypeSymbol(llvm:Builder builder, InitModuleContext cx, string symbol, t:SemType semType) {
    ConstructTypeDefn? existingDefn = cx.constructTypeDefns[ID_FUNCTION][semType];
    if existingDefn != () {
        _ = cx.llMod.addAlias(existingDefn.llType, existingDefn.ptr, symbol);
        return;
    }
    // Since we handle construct usages before call usages this means we have a signature without an actual function value
    // therefor all we need is a unique pointer to differentiate signatures
    llvm:PointerType llType = llvm:pointerType(llFunctionDescType);
    _ = cx.llMod.addGlobal(llType, symbol, initializer=cx.llContext().constNull(llvm:pointerType(llFunctionDescType)));
}

function addConstructTypeSymbol(llvm:Builder builder, InitModuleContext cx, string symbol, t:SemType semType)  {
    TypeIdBasicType basic = <TypeIdBasicType>typeIdBasicType(semType);
    ConstructTypeDefn? existingDefn = cx.constructTypeDefns[basic][semType];
    if existingDefn != () {
        addTypeAlias(cx, symbol, existingDefn);
    }
    else {
        _ = addConstructTypeDefn(builder, cx, symbol, semType, basic, "external");
    }
}

function addConstructTypeDefn(llvm:Builder builder, InitModuleContext cx, string symbol, t:SemType semType,
                              TypeIdBasicType basic, llvm:Linkage linkage) returns llvm:ConstPointerValue {
    table<ConstructTypeDefn> key(semType) defns = cx.constructTypeDefns[basic];
    int tid = defns.length();
    llvm:StructType llType;
    if basic == ID_LIST {
        llType = createListDescType(cx.tc, semType);        
    }
    else if basic == ID_MAPPING {
        llType = createMappingDescType(cx.tc, semType);        
    }
    else {
        llType = createFunctionDescType(cx.tc, semType);
    }
    // The initializer is set later, because of the possibility of
    // recursion via `getFillerDesc`.
    llvm:ConstPointerValue ptr = cx.llMod.addGlobal(llType, symbol, isConstant=true, linkage=linkage);
    defns.add({ llType, ptr, semType, tid });
    llvm:ConstValue initValue;
    if basic == ID_LIST {
        initValue = createListDescInit(builder, cx, tid, semType);
    }
    else if basic == ID_MAPPING {
        initValue = createMappingDescInit(builder, cx, tid, semType);
    }
    else {
        initValue = createFunctionDescInit(builder, cx, tid, semType);
    }
    cx.llMod.setInitializer(ptr, initValue);
    return ptr;
}

function createListDescType(t:Context tc, t:SemType semType) returns llvm:StructType {
    t:ListAtomicType lat = <t:ListAtomicType>t:listAtomicType(tc, semType);
    return createLlListDescType(lat.members.initial.length());
}

function createListDescInit(llvm:Builder builder, InitModuleContext cx, int tid, t:SemType semType) returns llvm:ConstValue {
    t:Context tc = cx.tc;
    t:ListAtomicType atomic = <t:ListAtomicType>t:listAtomicType(tc, semType);
    FunctionRef[] functionRefs = getListDescFunctionRefs(cx, atomic);
    llvm:Value[] initStructValues = [
        constTid(cx, tid),
        constI32(cx, atomic.members.initial.length()),
        constI64(cx, atomic.members.fixedLength)
    ];
    foreach FunctionRef fr in functionRefs {
        initStructValues.push(fr);
    }
    t:SemType restType = t:cellInnerVal(atomic.rest);
    initStructValues.push(getMemberType(cx, restType));
    initStructValues.push(getFillerDesc(builder, cx, restType));
    llvm:ConstValue[] llMembers = from var ty in atomic.members.initial let var tyInner = t:cellInner(ty) select getMemberType(cx, tyInner);
    initStructValues.push(cx.llContext().constArray(LLVM_MEMBER_TYPE, llMembers));
    return cx.llContext().constStruct(initStructValues);    
}

function createMappingDescType(t:Context tc, t:SemType semType) returns llvm:StructType {
    t:MappingAtomicType mat = <t:MappingAtomicType>t:mappingAtomicType(tc, semType);
    // tid, fieldCount, restField, individualFields...
    return llvm:structType([LLVM_TID, "i32", LLVM_MEMBER_TYPE, fillerDescPtrType, llvm:arrayType(LLVM_MEMBER_TYPE, mat.names.length())]);
}

function createMappingDescInit(llvm:Builder builder, InitModuleContext cx, int tid, t:SemType semType) returns llvm:ConstValue {
    t:MappingAtomicType mat = <t:MappingAtomicType>t:mappingAtomicType(cx.tc, semType);
    llvm:ConstValue[] llFields = from var ty in mat.types let var tyInner = t:cellInner(ty) select getMemberType(cx, tyInner);
    t:SemType rest = t:cellInnerVal(mat.rest);
    return cx.llContext().constStruct([
        constTid(cx, tid),
        constI32(cx, llFields.length()),
        getMemberType(cx, rest),
        getFillerDesc(builder, cx, rest),
        cx.llContext().constArray(LLVM_MEMBER_TYPE, llFields)
    ]);
}

function createFunctionDescType(t:Context tc, t:SemType semType) returns llvm:StructType {
    t:FunctionAtomicType atomic = <t:FunctionAtomicType>t:functionAtomicType(tc, semType);
    t:FunctionSignature signature = t:functionSignature(tc, atomic);
    return llvm:structType([LLVM_TID,
                            llvm:pointerType(llUniformFunctionType),
                            LLVM_MEMBER_TYPE,
                            LLVM_MEMBER_TYPE,
                            LLVM_INT,
                            llvm:arrayType(LLVM_MEMBER_TYPE, requiredParamCount(signature))]);
}

function createFunctionDescInit(llvm:Builder builder, InitModuleContext cx, int tid, t:SemType semType) returns llvm:ConstValue {
    t:FunctionAtomicType atomic = <t:FunctionAtomicType>t:functionAtomicType(cx.tc, semType);
    t:FunctionSignature signature = t:functionSignature(cx.tc, atomic);
    llvm:Function uniformFunc = createUniformFunction(builder, cx, signature);
    llvm:ConstValue returnTy = getMemberType(cx, signature.returnType);
    t:SemType? restParamType = signature.restParamType;
    llvm:ConstValue restParamTy = restParamType == () ? getMemberType(cx, t:NEVER) : getMemberType(cx, restParamType);
    int nRequiredParams = requiredParamCount(signature);
    llvm:ConstValue paramTys = cx.llContext().constArray(LLVM_MEMBER_TYPE,
                                                         from int i in 0 ..< nRequiredParams select getMemberType(cx, signature.paramTypes[i]));
    return cx.llContext().constStruct([constTid(cx, tid), uniformFunc, returnTy, restParamTy,
                                       constInt(cx, nRequiredParams), paramTys]);
}

function createUniformFunction(llvm:Builder builder, InitModuleContext cx, t:FunctionSignature signature) returns llvm:Function {
    llvm:FunctionDefn func = cx.llMod.addFunctionDefn(uniformFunctionSymbol(cx.constructTypeDefns[ID_FUNCTION].length()),
                                                      llUniformFunctionType);
    llvm:BasicBlock bb = func.appendBasicBlock();
    builder.positionAtEnd(bb);
    llvm:PointerValue[] exactArgs = from t:SemType paramType in signature.paramTypes
                                      select builder.alloca(exactArgType(paramType));
    llvm:PointerValue uniformArgArray = <llvm:PointerValue>func.getParam(1);
    int nRequiredParams = requiredParamCount(signature);
    foreach int i in 0 ..< nRequiredParams {
        llvm:Value uniformArg = builder.load(builder.getElementPtr(uniformArgArray, [constIndex(cx, i)]));
        // uniform args is a taggedPtr
        llvm:Value arg = convertToExactArg(builder, cx, <llvm:PointerValue>uniformArg, signature.paramTypes[i]);
        builder.store(arg, exactArgs[i]);
    }
    if signature.restParamType != () {
        llvm:Value startingOffset = constInt(cx, nRequiredParams);
        llvm:Value nRestArgs = builder.iArithmeticNoWrap("sub", func.getParam(2), startingOffset);
        llvm:PointerValue restArgArrayPtr = exactArgs[nRequiredParams];
        builder.store(createUniformCallRestArgList(builder, cx, signature.paramTypes[nRequiredParams], nRestArgs),
                      restArgArrayPtr);
        buildVoidRuntimeFunctionCall(builder, cx, addToRestArgsFunction,
                                     [builder.load(restArgArrayPtr), uniformArgArray, startingOffset, nRestArgs]);
    }
    llvm:FunctionType funcTy = buildFunctionSignature(signature);
    llvm:Value? retValue = builder.call(builder.bitCast(<llvm:PointerValue>func.getParam(0), llvm:pointerType(funcTy)),
                                        from var each in exactArgs select builder.load(each));
    builder.ret(retValue == () ? constNilTaggedPtr(cx) :
                                 convertToTaggedValue(builder, cx, retValue, signature.returnType));
    return func;
}

function convertToExactArg(llvm:Builder builder, InitModuleContext context,
                           llvm:PointerValue arg, t:SemType ty) returns llvm:Value {
    t:BasicTypeBitSet w = t:widenToBasicTypes(ty);
    if t:isSubtypeSimple(w, t:INT) {
        return buildUntagInt(builder, context, arg);
    }
    else if t:isSubtypeSimple(ty, t:FLOAT) {
        return buildUntagFloat(builder, context, arg);
    }
    else if t:isSubtypeSimple(ty, t:BOOLEAN) {
        return buildUntagBoolean(builder, arg);
    }
    return arg;
}

function convertToTaggedValue(llvm:Builder builder, InitModuleContext context, llvm:Value val, t:SemType ty) returns llvm:Value {
    t:BasicTypeBitSet w = t:widenToBasicTypes(ty);
    if t:isSubtypeSimple(w, t:INT) {
        return buildTaggedInt(builder, context, val);
    }
    else if t:isSubtypeSimple(ty, t:FLOAT) {
        return buildTaggedFloat(builder, context, val);
    }
    else if t:isSubtypeSimple(ty, t:BOOLEAN) {
        return buildTaggedBoolean(builder, context, val);
    }
    return val;
}

function requiredParamCount(t:FunctionSignature signature) returns int {
    return signature.restParamType == () ? signature.paramTypes.length() :
                                           signature.paramTypes.length() - 1;
}

function createUniformCallRestArgList(llvm:Builder builder, InitModuleContext cx, t:SemType listTy,
                                      llvm:Value nRestArgs) returns llvm:PointerValue {
    t:ListAtomicType atomic = <t:ListAtomicType>t:listAtomicType(cx.tc, listTy);
    ConstructTypeDefn? memo = cx.constructTypeDefns[ID_LIST][listTy];
    ConstructTypeDefn defn;
    if memo == () {
        TypeSymbolConstructor symbolConstructor = <TypeSymbolConstructor>cx.symbolConstructor;
        addConstructTypeSymbol(builder, cx, symbolConstructor.construct(), listTy);
        defn = cx.constructTypeDefns[ID_LIST].get(listTy);
    }
    else {
        defn = memo;
    }
    ListRepr repr = listAtomicTypeToSpecializedListRepr(atomic) ?: GENERIC_LIST_REPR;
    llvm:ConstPointerValue typeDefn = defn.ptr;
    llvm:PointerValue struct = <llvm:PointerValue>buildRuntimeFunctionCall(builder, cx, repr.construct,
                                                                           [typeDefn, nRestArgs]);
    return builder.getElementPtr(builder.bitCast(struct, LLVM_TAGGED_PTR), [constInt(cx, TAG_LIST|FLAG_EXACT)]);
}

// Type of the value should be fillerDescPtrType
function getFillerDesc(llvm:Builder builder, InitModuleContext cx, t:SemType memberType) returns llvm:ConstPointerValue {
    FillerDescDefn? memo = cx.fillerDescDefns[memberType];
    if memo != () {
        return memo.defn;
    }
    t:Filler? fillerValue = t:filler(cx.tc, memberType);
    if fillerValue == () {
        return cx.llContext().constNull(fillerDescPtrType);
    }
    llvm:ConstPointerValue defn = getFillerDescValue(builder, cx, fillerValue);
    // This is to deal with recursive case
    if !cx.fillerDescDefns.hasKey(memberType) {
        cx.fillerDescDefns.add({ semType: memberType, defn });
    }
    return defn;
}

function getFillerDescValue(llvm:Builder builder, InitModuleContext cx, t:Filler fillerValue) returns llvm:ConstPointerValue {
    if fillerValue is t:WrappedSingleValue {
        t:SingleValue val = fillerValue.value;
        if val is int {
            return val == 0 ? getPredefinedFillerDesc(cx, "int_zero") : addIntFillerDesc(cx, val);
        }
        else if val is boolean {
            return val ? getPredefinedFillerDesc(cx, "boolean_true") : getPredefinedFillerDesc(cx, "boolean_false");
        }
        else if val is float {
            return val === 0.0 ? getPredefinedFillerDesc(cx, "float_zero") : addFloatFillerDesc(cx, val);
        }
        else if val is decimal {
            return val == 0d ? getPredefinedFillerDesc(cx, "decimal_zero") : addDecimalFillerDesc(cx, val);
        }
        else if val is string {
            return val == "" ? getPredefinedFillerDesc(cx, "string_empty") : addStringFillerDesc(cx, val);
        }
        else {
            return getPredefinedFillerDesc(cx, "nil");
        }
    }
    else if fillerValue is t:ListFiller {
        return addListFillerDesc(builder, cx, fillerValue);
    }
    else {
        return addMappingFillerDesc(builder, cx, fillerValue);
    }
}

function addListFillerDesc(llvm:Builder builder, InitModuleContext cx, t:ListFiller filler) returns llvm:ConstPointerValue {
    t:SemType listTy = filler.semType;
    table<ConstructTypeDefn> key(semType) defns = cx.constructTypeDefns[ID_LIST];
    llvm:ConstPointerValue defn = defns.hasKey(listTy) ? defns.get(listTy).ptr : addConstructTypeDefn(builder, cx, memberListDescSymbol(defns.length()),
                                                                                                      listTy, ID_LIST, "external");
    llvm:ConstPointerValue structDescPtr = cx.llContext().constBitCast(defn, llTypeIdDescPtrType);
    return filler.atomic.members.fixedLength == 0 ? addFillerDesc(cx, structDescPtr, "list") :
                                                    finishFixedLengthListFillerDesc(builder, cx, structDescPtr, filler);
}

// We are special casing lists wit fixed length > 0 since their filler descriptors consists of other (for members) filler descriptors
function finishFixedLengthListFillerDesc(llvm:Builder builder, InitModuleContext cx, llvm:ConstPointerValue structDescPtr, t:ListFiller filler) returns llvm:ConstPointerValue {
    llvm:StructType fillerTy = createFixedLengthListFillerDescTy(cx, filler.memberFillers.length());
    cx.fillerDescCount += 1;
    string name = fillerDescSymbol(cx.fillerDescCount);
    RuntimeFunction listFillerCreateFunc = { name: "fixed_length_list_filler_create",
                                             ty: cx.getLlFillerCreateFuncTy(), attrs: [] };
    llvm:FunctionDecl decl = cx.getRuntimeFunctionDecl(listFillerCreateFunc);
    llvm:ConstPointerValue[] memberFillers = from t:Filler each in filler.memberFillers select getFillerDescValue(builder, cx, each);
    llvm:ConstValue fillers = cx.llContext().constArray(fillerDescPtrType, memberFillers);
    llvm:ConstValue fillerCount = constInt(cx, memberFillers.length());
    llvm:ConstValue initializer = cx.llContext().constStruct([decl, structDescPtr, fillerCount, fillers]);

    llvm:ConstPointerValue ptr = cx.llMod.addGlobal(fillerTy, name, initializer=initializer);
    return cx.llContext().constBitCast(ptr, fillerDescPtrType);
}

function createFixedLengthListFillerDescTy(InitModuleContext cx, int fixedLength) returns llvm:StructType {
    return llvm:structType([llvm:pointerType(cx.getLlFillerCreateFuncTy()),
                            llTypeIdDescPtrType,
                            "i64",
                            llvm:arrayType(fillerDescPtrType, fixedLength)]);
}

function addMappingFillerDesc(llvm:Builder builder, InitModuleContext cx, t:MappingFiller filler) returns llvm:ConstPointerValue {
    t:SemType mappingTy = filler.semType;
    table<ConstructTypeDefn> key(semType) defns = cx.constructTypeDefns[ID_MAPPING];
    llvm:ConstPointerValue defn = defns.hasKey(mappingTy) ? defns.get(mappingTy).ptr : addConstructTypeDefn(builder, cx, memberMappingDescSymbol(defns.length()),
                                                                                                            mappingTy, ID_MAPPING, "external");
    llvm:ConstPointerValue structDescPtr = cx.llContext().constBitCast(defn, llTypeIdDescPtrType);
    return addFillerDesc(cx, structDescPtr, "mapping");
}

function addStringFillerDesc(InitModuleContext cx, string value) returns llvm:ConstPointerValue {
    return addFillerDesc(cx, getInitString(cx, value), "string");
}

function addDecimalFillerDesc(InitModuleContext cx, decimal value) returns llvm:ConstPointerValue {
    return addFillerDesc(cx, getInitDecimal(cx, value), "decimal");
}

function addIntFillerDesc(InitModuleContext cx, int value) returns llvm:ConstPointerValue {
    return addFillerDesc(cx, constInt(cx, value), "int");
}

function addFloatFillerDesc(InitModuleContext cx, float value) returns llvm:ConstPointerValue {
    return addFillerDesc(cx, constFloat(cx, value), "float");
}

type FillerKind "float"|"int"|"decimal"|"string"|"mapping"|"list";

function addFillerDesc(InitModuleContext cx, llvm:ConstValue value, FillerKind kind) returns llvm:ConstPointerValue {
    llvm:StructType fillerTy = createFillerDescTy(cx, kind);
    cx.fillerDescCount += 1;
    string name = fillerDescSymbol(cx.fillerDescCount);
    llvm:FunctionDecl decl = getFillerCreateFunc(cx, kind);
    llvm:ConstValue initializer = cx.llContext().constStruct([decl, value]);
    llvm:ConstPointerValue ptr = cx.llMod.addGlobal(fillerTy, name, initializer=initializer);
    return cx.llContext().constBitCast(ptr, fillerDescPtrType);
}

function createFillerDescTy(InitModuleContext cx, FillerKind kind) returns llvm:StructType {
    llvm:Type valType;
    match kind {
        "float"   => { valType = LLVM_FLOAT; }
        "int"     => { valType = LLVM_INT; }
        "decimal" => { valType = LLVM_DECIMAL_CONST; }
        "string"  => { valType = LLVM_TAGGED_PTR; }
        _         => { valType = llTypeIdDescPtrType; }
    }
    return llvm:structType([llvm:pointerType(cx.getLlFillerCreateFuncTy()), valType]);
}

function getFillerCreateFunc(InitModuleContext cx, FillerKind kind) returns llvm:FunctionDecl {
    string name = kind == "string" ? "generic_filler_create" : string `${kind}_filler_create`;
    return cx.getRuntimeFunctionDecl({ name, ty: cx.getLlFillerCreateFuncTy(), attrs: [] });
}

type PredefinedFillerDescName "int_zero"|"boolean_true"|"boolean_false"|"float_zero"|"decimal_zero"|"string_empty"|"nil";

function getPredefinedFillerDesc(InitModuleContext cx, PredefinedFillerDescName name) returns llvm:ConstPointerValue {
    string symbol = name + "_filler_desc";
    llvm:ConstPointerValue? memo = cx.predefinedFillerDesc[symbol];
    if memo != () {
        return memo;
    }
    // We are special casing decimal since we don't have a GenericFillerDesc defined for decimals
    llvm:ConstPointerValue fillerDesc = symbol == "decimal_zero_filler_desc" ? addDecimalFillerDesc(cx, 0d) :
                                                                               cx.llMod.addGlobal(cx.getLlFillerDescTy(), "_bal_" + symbol);
    llvm:ConstPointerValue fillerPtr = cx.llContext().constBitCast(fillerDesc, fillerDescPtrType);
    cx.predefinedFillerDesc[symbol] = fillerPtr;
    return fillerPtr;
}

function getMemberType(InitModuleContext cx, t:SemType memberType) returns llvm:ConstValue {
    if memberType is t:BasicTypeBitSet {
        return constMemberType(cx, (memberType << 1)|1);
    }
    else {
        llvm:ConstPointerValue ptr;
        ComplexTypeDefn? existing = cx.complexTypeDefns[memberType];
        if existing != () {
            ptr = existing.ptr;
        }
        else {
            ptr = addComplexTypeDefn(cx, memberTypeSymbol(cx.complexTypeDefns.length()), memberType, "internal");
        }
        return cx.llContext().constPtrToInt(ptr, LLVM_MEMBER_TYPE);
    }
}

function addExactifyTypeSymbol(InitModuleContext cx, string symbol, t:SemType semType) {
    TypeIdBasicType basic = <TypeIdBasicType>typeIdBasicType(semType);
    ConstructTypeDefn? existingDefn = cx.constructTypeDefns[basic][semType];
    llvm:ConstValue initValue = constTid(cx, existingDefn == () ? -1 : existingDefn.tid);
    _ = cx.llMod.addGlobal(LLVM_TID, symbol, initializer=initValue, isConstant=true);
}

function addTypeTestTypeSymbol(InitModuleContext cx, string symbol, t:ComplexSemType semType) {
    ComplexTypeDefn? existingDefn = cx.complexTypeDefns[semType];
    if existingDefn != () {
        addTypeAlias(cx, symbol, existingDefn);
    }
    else {
        _ = addComplexTypeDefn(cx, symbol, semType, "external");
    }
}

function addComplexTypeDefn(InitModuleContext cx, string symbol, t:ComplexSemType semType, llvm:Linkage linkage) returns llvm:ConstPointerValue {
    t:SplitSemType { all, some } = t:split(semType);
    int someBits = 0;
    llvm:ConstValue[] llSubtypes = [];
    foreach var [code, subtype] in some {
        if code == t:BT_TABLE {
            // this cannot occur for now, so ignore them
            continue;
        }
        someBits |= 1 << code;
        llSubtypes.push(getBasicSubtype(cx, code, subtype));
    }
    llvm:ConstValue subtypeArray = cx.llContext().constArray(cx.llTypes.basicSubtypePtr, llSubtypes);
    llvm:ConstValue initValue = cx.llContext().constStruct([constBitset(cx, all), constBitset(cx, someBits), subtypeArray]);
    llvm:StructType llType = llvm:structType([LLVM_BITSET, LLVM_BITSET, llvm:arrayType(cx.llTypes.basicSubtypePtr, llSubtypes.length())]);
    llvm:ConstPointerValue ptr = cx.llMod.addGlobal(llType, symbol, initializer=initValue, isConstant=true, linkage=linkage);
    cx.complexTypeDefns.add({ llType, ptr, semType });
    return ptr;
}

type SubtypeStruct record {|
    llvm:Type[] types;
    llvm:Value[] values;
|};

function getBasicSubtype(InitModuleContext cx, t:BasicTypeCode typeCode, t:ComplexSemType semType) returns llvm:ConstPointerValue {
    llvm:ConstPointerValue ptr;
    SubtypeDefn? existingDefn = cx.subtypeDefns[typeCode, semType];
    if existingDefn != () {
        ptr = existingDefn.ptr;
    }
    else {
        string symbol = subtypeDefnSymbol(cx.subtypeDefns.length());
        llvm:ConstValue? init = ();
        llvm:StructType llStructTy;
        if cx.constructTypesComplete {
            SubtypeStruct sub = createSubtypeStruct(cx, typeCode, semType);
            llStructTy = llvm:structType(sub.types);
            init = cx.llContext().constStruct(sub.values);
        }
        else {
            llStructTy = cx.llContext().structCreateNamed(subtypeTypeDefnSymbol(cx.subtypeDefns.length()));
        }
        ptr = cx.llMod.addGlobal(llStructTy, symbol, initializer=init, align=SUBTYPE_ALIGN, isConstant=true, linkage="internal");
        SubtypeDefn newDefn = { typeCode, semType, ptr, structType: cx.constructTypesComplete ? () : llStructTy };
        cx.subtypeDefns.add(newDefn);
    }
    return cx.llContext().constBitCast(ptr, cx.llTypes.basicSubtypePtr); 
}

function finishSubtypeDefns(InitModuleContext cx) {
    foreach SubtypeDefn defn in cx.subtypeDefns {
        llvm:StructType? structType = defn.structType;
        if structType != () {
            SubtypeStruct sub = createSubtypeStruct(cx, defn.typeCode, defn.semType);
            cx.llContext().structSetBody(structType, sub.types);
            cx.llMod.setInitializer(defn.ptr, cx.llContext().constStruct(sub.values));
        }
    }
}

function createSubtypeStruct(InitModuleContext cx, t:BasicTypeCode typeCode, t:ComplexSemType semType) returns SubtypeStruct {
    match typeCode {
        t:BT_BOOLEAN => {
            return createBooleanSubtypeStruct(cx, semType);
        }
        t:BT_INT => {
            return createIntSubtypeStruct(cx, semType);
        }
        t:BT_FLOAT => {
            return createFloatSubtypeStruct(cx, semType);
        }
        t:BT_DECIMAL => {
            return createDecimalSubtypeStruct(cx, semType);
        }
        t:BT_STRING => {
            return createStringSubtypeStruct(cx, semType);
        }
        t:BT_LIST => {
            return createListSubtypeStruct(cx, semType); 
        }
        t:BT_MAPPING => {
            return createMappingSubtypeStruct(cx, semType); 
        }
        t:BT_FUNCTION => {
            return createFunctionSubtypeStruct(cx, semType);
        }
    }
    panic err:impossible(`subtypes of uniform type ${typeCode} are not implemented`);    
}

function createFunctionSubtypeStruct(InitModuleContext cx, t:ComplexSemType semType) returns SubtypeStruct {
    return createFunctionSubtypeStructInner(cx, semType) ?:
           createPrecomputedSubtypeStruct(cx, ID_FUNCTION, semType);
}

function createFunctionSubtypeStructInner(InitModuleContext cx, t:ComplexSemType semType) returns SubtypeStruct? {
    t:FunctionAtomicType? atomic = t:functionAtomicType(cx.tc, semType);
    if atomic == () {
        return ();
    }
    t:FunctionSignature signature = t:functionSignature(cx.tc, atomic);
    var { returnType, paramTypes, restParamType } = signature;
    int nRequiredParams = requiredParamCount(signature);
    if returnType !is t:BasicTypeBitSet || restParamType != () || nRequiredParams > int:UNSIGNED32_MAX_VALUE {
        return ();
    }
    t:BasicTypeBitSet[] requiredParamBitSets = from var paramTy in paramTypes.slice(0, nRequiredParams)
                                                 where paramTy is t:BasicTypeBitSet
                                                 select paramTy;
    if requiredParamBitSets.length() != nRequiredParams {
        return ();
    }
    llvm:ConstValue paramBitSetArray = cx.llContext().constArray(LLVM_BITSET,
                                                                 from t:BasicTypeBitSet b in requiredParamBitSets
                                                                   select constBitset(cx, b));
    return {
        types: [cx.llTypes.subtypeContainsFunctionPtr, LLVM_BITSET,
                "i32", llvm:arrayType(LLVM_BITSET, nRequiredParams)],
        values: [getSubtypeContainsFunc(cx, "function"),
                 constBitset(cx, returnType),
                 constI32(cx, nRequiredParams),
                 paramBitSetArray]
    };
}

function createBooleanSubtypeStruct(InitModuleContext cx, t:ComplexSemType semType) returns SubtypeStruct {
    t:BooleanSubtype sub = <t:BooleanSubtype>t:booleanSubtype(semType);
    return {
        types: [cx.llTypes.subtypeContainsFunctionPtr],
        values: [getSubtypeContainsFunc(cx, sub.value ? "true" : "false")]
    };
}

function createIntSubtypeStruct(InitModuleContext cx, t:ComplexSemType semType) returns SubtypeStruct {
    t:IntSubtype ranges = <t:IntSubtype>t:intSubtype(semType);
    if ranges.length() == 0 {
        panic err:impossible("empty list of int ranges in complex subtype");
    }
    return {    
        types: [cx.llTypes.subtypeContainsFunctionPtr, "i64", llvm:arrayType(llIntRangeType, ranges.length())],
        values: [
            getSubtypeContainsFunc(cx, TYPE_KIND_INT),
            constI64(cx, ranges.length()),
            cx.llContext().constArray(llIntRangeType,
                                      from var r in ranges select cx.llContext().constStruct([constInt(cx, r.min),
                                                                                              constInt(cx, r.max)]))
        ]
    };
}

function createFloatSubtypeStruct(InitModuleContext cx, t:ComplexSemType semType) returns SubtypeStruct {
    t:FloatSubtype sub = <t:FloatSubtype>t:floatSubtype(semType);
    int len = sub.values.length();
    if len == 0 {
        panic err:impossible("empty list of float ranges in complex subtype");
    }
    return {
        types: [cx.llTypes.subtypeContainsFunctionPtr, "i32", "i32", llvm:arrayType(LLVM_FLOAT, len)],
        values: [
            getSubtypeContainsFunc(cx, TYPE_KIND_FLOAT),
            constI32(cx, len),
            constI32(cx, sub.allowed ? 1 : 0),
            cx.llContext().constArray(LLVM_FLOAT, from var d in sub.values select constFloat(cx, d))
        ]
    };
}

function createDecimalSubtypeStruct(InitModuleContext cx, t:ComplexSemType semType) returns SubtypeStruct {
    t:DecimalSubtype sub = <t:DecimalSubtype>t:decimalSubtype(semType);
    int len = sub.values.length();
    if len == 0 {
        panic err:impossible("empty list of decimal ranges in complex subtype");
    }
    return {
        types: [cx.llTypes.subtypeContainsFunctionPtr, "i32", "i32", llvm:arrayType(LLVM_DECIMAL_CONST, len)],
        values: [
            getSubtypeContainsFunc(cx, TYPE_KIND_DECIMAL),
            constI32(cx, len),
            constI32(cx, sub.allowed ? 1 : 0),
            cx.llContext().constArray(LLVM_DECIMAL_CONST, from var d in sub.values select getInitDecimal(cx, d))
        ]
    };
}

function createStringSubtypeStruct(InitModuleContext cx, t:ComplexSemType semType) returns SubtypeStruct {
    t:StringSubtype sub = <t:StringSubtype>t:stringSubtype(semType);
    string[] strs = [];
    foreach string s in sub.char.values {
        strs.push(s);
    }
    foreach string s in sub.nonChar.values {
        strs.push(s);
    }
    llvm:ConstValue[] strConsts = from var s in strs.sort() select getInitString(cx, s);
    return {
        types: [cx.llTypes.subtypeContainsFunctionPtr, "i32", "i16", "i16", llvm:arrayType(LLVM_TAGGED_PTR, strs.length())],
        values: [
            getSubtypeContainsFunc(cx, TYPE_KIND_STRING),
            constI32(cx, strs.length()),
            constI16(cx, sub.char.allowed ? 1 : 0),
            constI16(cx, sub.nonChar.allowed ? 1 : 0),
            cx.llContext().constArray(LLVM_TAGGED_PTR, strConsts)
        ]
    };
}

function createListSubtypeStruct(InitModuleContext cx, t:ComplexSemType semType) returns SubtypeStruct {
    t:ListAtomicType? lat = t:listAtomicType(cx.tc, semType);
    if lat != () {
        t:SemType rest = t:cellInnerVal(lat.rest);
        if rest is t:BasicTypeBitSet && lat.members.fixedLength == 0 {
            return createArrayMapSubtypeStruct(cx, rest, TYPE_KIND_ARRAY);
        }
    }
    return createPrecomputedSubtypeStruct(cx, ID_LIST, semType);
}

function createMappingSubtypeStruct(InitModuleContext cx, t:ComplexSemType semType) returns SubtypeStruct {
    t:MappingAtomicType? mat = t:mappingAtomicType(cx.tc, semType);
    if mat != () {
        t:SemType rest = t:cellInnerVal(mat.rest);
        if rest == t:NEVER {
            t:BasicTypeBitSet[] fieldTypes = [];
            foreach var ty in mat.types {
                t:SemType tyInner = t:cellInner(ty);
                if tyInner is t:BasicTypeBitSet {
                    fieldTypes.push(tyInner);
                }
                else {
                    break;
                }
            }
            if fieldTypes.length() == mat.types.length() {
                // all bitsets
                return createRecordSubtypeStruct(cx, mat.names, fieldTypes);     
            }
        }
        else if rest is t:BasicTypeBitSet && mat.names.length() == 0 {
            return createArrayMapSubtypeStruct(cx, rest, TYPE_KIND_MAP);
        }
    }
    return createPrecomputedSubtypeStruct(cx, ID_MAPPING, semType);
}

function createPrecomputedSubtypeStruct(InitModuleContext cx, TypeIdBasicType basic, t:ComplexSemType ty) returns SubtypeStruct {
    llvm:ConstValue[] tids = from var itd in cx.constructTypeDefns[basic] where t:isSubtype(cx.tc, itd.semType, ty) select constTid(cx, itd.tid);
    return {
        types: [cx.llTypes.subtypeContainsFunctionPtr, "i32", llvm:arrayType(LLVM_TID, tids.length())],
        values: [getSubtypeContainsFunc(cx, TYPE_KIND_PRECOMPUTED), constI32(cx, tids.length()), cx.llContext().constArray(LLVM_TID, tids)]
    };
}

function createArrayMapSubtypeStruct(InitModuleContext cx, t:BasicTypeBitSet bitSet, TypeKindArrayOrMap arrayOrMap) returns SubtypeStruct {
    return {
        types: [cx.llTypes.subtypeContainsFunctionPtr, LLVM_BITSET],
        values: [getSubtypeContainsFunc(cx, arrayOrMap), constI32(cx, bitSet)]
    };
}

function createRecordSubtypeStruct(InitModuleContext cx, string[] fieldNames, t:BasicTypeBitSet[] fieldTypes) returns SubtypeStruct {
    // 0, fieldCount, fields
    final llvm:StructType llFieldType = llvm:structType([LLVM_TAGGED_PTR, LLVM_BITSET]);
    final int nFields = fieldNames.length();
    llvm:ConstValue[] llFields = [];
    foreach int i in 0 ..< fieldNames.length() {
        llFields.push(cx.llContext().constStruct([getInitString(cx, fieldNames[i]), constBitset(cx, fieldTypes[i])]));
    }
    return {
        types: [cx.llTypes.subtypeContainsFunctionPtr, "i32", llvm:arrayType(llFieldType, nFields)],
        values: [getSubtypeContainsFunc(cx, TYPE_KIND_RECORD), constI32(cx, nFields), cx.llContext().constArray(llFieldType, llFields)]
    };
}

function getListDescFunctionRefs(InitModuleContext cx, t:ListAtomicType atomic) returns FunctionRef[] {
    FunctionRef[] functionRefs = [];
    string prefix = listAtomicTypeToListReprPrefix(atomic);
    foreach int i in 0 ..< listDescFuncSuffixes.length() {
        string suffix = listDescFuncSuffixes[i];
        string tentativeName = prefix + "_" + suffix;
        llvm:FunctionType llType = llListDescFuncTypes[i];
        FunctionRef ref;
        string? name = tentativeName;
        if listDescFuncOverrides.hasKey(tentativeName) {
            name = listDescFuncOverrides[tentativeName];
        }
        if name != () {
            ref = cx.getRuntimeFunctionDecl({ name: "list_" + name, ty: llType, attrs: [] });
        }
        else {
            ref = cx.llContext().constNull(llvm:pointerType(llType));
        }
        functionRefs.push(ref);
    }
    return functionRefs;
}

function getSubtypeContainsFunc(InitModuleContext cx, TypeKind tk) returns llvm:FunctionDecl {
    llvm:FunctionDecl? existing = cx.typeTestFuncs[tk];
    if existing == () {
        llvm:FunctionDecl decl = cx.llMod.addFunctionDecl(mangleRuntimeSymbol(tk + "_subtype_contains"), cx.llTypes.subtypeContainsFunction);
        cx.typeTestFuncs[tk] = decl;
        return decl;
    }
    else {
       return existing;
    }
}

function addTypeAlias(InitModuleContext cx, string sym, TypeDefn defn) {
    _ = cx.llMod.addAlias(defn.llType, defn.ptr, sym);
}

function typeIdBasicType(t:SemType semType) returns TypeIdBasicType? {
    if t:isSubtypeSimple(semType, t:LIST) {
        return ID_LIST;
    }
    if t:isSubtypeSimple(semType, t:MAPPING) {
        return ID_MAPPING;
    }
    if t:isSubtypeSimple(semType, t:FUNCTION) {
        return ID_FUNCTION;
    }
    return ();
}

// XXX this duplicates code in Scaffold
function getInitString(InitModuleContext cx, string str) returns llvm:ConstPointerValue {
    llvm:ConstPointerValue? curDefn = cx.stringDefns[str];
    if curDefn != () {
        return curDefn;
    }
    llvm:ConstPointerValue newDefn = addStringDefn(cx.llContext(), cx.llMod, cx.stringDefns.length(), str);
    cx.stringDefns[str] = newDefn;
    return newDefn;
}

// This is relatively uncommon and LLVM will eliminate duplicates for us.
function getInitDecimal(InitModuleContext cx, decimal d) returns llvm:ConstPointerValue {
    llvm:ConstPointerValue val = addDecimalDefn(cx.llContext(), cx.llMod, cx.decimalCount, d);
    cx.decimalCount += 1;
    return val;
}
