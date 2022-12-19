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

type InherentTypeDefn record {|
    *TypeDefnFields;
    int tid;
|};

type SubtypeDefn record {|
    readonly t:ComplexSemType semType;
    readonly t:BasicTypeCode typeCode;
    llvm:ConstPointerValue ptr;
    llvm:StructType? structType;
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

const STRUCTURE_LIST = 0;
const STRUCTURE_MAPPING = 1;

type StructureBasicType STRUCTURE_LIST|STRUCTURE_MAPPING;

type TypeKindArrayOrMap TYPE_KIND_ARRAY|TYPE_KIND_MAP;
type TypeKindSimple TYPE_KIND_TRUE|TYPE_KIND_FALSE|TYPE_KIND_INT|TYPE_KIND_FLOAT|TYPE_KIND_DECIMAL;
type TypeKind TypeKindArrayOrMap|TYPE_KIND_RECORD|TYPE_KIND_PRECOMPUTED|TYPE_KIND_STRING|TypeKindSimple;

type FunctionRef llvm:FunctionDecl|llvm:ConstPointerValue;

class InitModuleContext {
    *Context;
    private llvm:Context llvmContext;
    llvm:Module llMod;
    t:Context tc;
    table<InherentTypeDefn> key(semType)[2] inherentTypeDefns = [table [], table[]];
    table<ComplexTypeDefn> key(semType) complexTypeDefns = table [];
    table<SubtypeDefn> key(typeCode, semType) subtypeDefns = table [];
    InitTypes llTypes;
    map<llvm:FunctionDecl> typeTestFuncs = {};
    map<llvm:FunctionDecl> runtimeFuncs = {};
    map<llvm:ConstPointerValue> stringDefns = {};
    int decimalCount = 0;
    // subtype definitions cannot be completed before inherent types are complete,
    // because precomputed subtypes need to know all inherent types
    boolean inherentTypesComplete;

    function init(llvm:Context llContext, llvm:Module llMod, t:Context tc, InitTypes llTypes, boolean inherentTypesComplete) {
        self.llvmContext = llContext;
        self.llMod = llMod;
        self.tc = tc;
        self.llTypes = llTypes;
        self.inherentTypesComplete = inherentTypesComplete;
    }
    
    function llContext() returns llvm:Context => self.llvmContext;
};

public function buildInitModule(t:Env env, ProgramModule[] modules, map<bir:FunctionSignature> publicFuncs) returns llvm:Module|BuildError {
    llvm:Context llContext = new;
    llvm:Module llMod = llContext.createModule();
    buildInitTypes(llContext, llMod, env, modules);
    llvm:Builder builder = llContext.createBuilder();
    buildMain(modules[0].id, USER_MAIN_NAME, publicFuncs[USER_MAIN_NAME], llMod, builder);
    return llMod;
}

function buildMain(bir:ModuleId entryModId, string userMainName, bir:FunctionSignature? userMainSig, llvm:Module llMod, llvm:Builder builder) {
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

function buildInitTypes(llvm:Context llContext, llvm:Module llMod, t:Env env, ProgramModule[] modules) {
    InitTypes llTypes = createInitTypes(llContext);
    InitModuleContext cx = new(llContext, llMod, t:typeContext(env), llTypes, false);
    buildInitTypesForUsage(cx, modules, USED_INHERENT_TYPE);
    cx.inherentTypesComplete = true;
    finishSubtypeDefns(cx);
    buildInitTypesForUsage(cx, modules, USED_EXACTIFY);
    buildInitTypesForUsage(cx, modules, USED_TYPE_TEST);
}

function buildInitTypesForUsage(InitModuleContext cx, ProgramModule[] modules, TypeHowUsed howUsed) {
    foreach var mod in modules {
        var { types, uses } = mod.typeUsage;
        bir:ModuleId id = mod.id;
        foreach int i in 0 ..< types.length() {
            if (uses[i] & howUsed) != 0 {
                t:SemType ty = types[i];
                string sym = mangleTypeSymbol(id, howUsed, i);
                if howUsed == USED_INHERENT_TYPE {
                    addInherentTypeSymbol(cx, sym, ty);
                }
                else if howUsed == USED_EXACTIFY {
                    addExactifyTypeSymbol(cx, sym, ty);
                }
                else {
                    addTypeTestTypeSymbol(cx, sym, <t:ComplexSemType>ty);
                }
            }       
        }
    }    
}

function addInherentTypeSymbol(InitModuleContext cx, string symbol, t:SemType semType)  {
    StructureBasicType basic = <StructureBasicType>structureBasicType(semType);
    InherentTypeDefn? existingDefn = cx.inherentTypeDefns[basic][semType];
    if existingDefn != () {
        addTypeAlias(cx, symbol, existingDefn);
    }
    else {
        _ = addInherentTypeDefn(cx, symbol, semType, basic, "external");
    }
}

function addInherentTypeDefn(InitModuleContext cx, string symbol, t:SemType semType, StructureBasicType basic, llvm:Linkage linkage) returns llvm:ConstPointerValue {
    table<InherentTypeDefn> key(semType) defns = cx.inherentTypeDefns[basic];
    int tid = defns.length();
    llvm:StructType llType;
    if basic == STRUCTURE_LIST {
        llType = createListDescType(cx.tc, semType);        
    }
    else {
        llType = createMappingDescType(cx.tc, semType);        
    }
    // The initializer is set later, because of the possibility of
    // recursion via `getFillerDesc`.
    llvm:ConstPointerValue ptr = cx.llMod.addGlobal(llType, symbol, isConstant=true, linkage=linkage);
    defns.add({ llType, ptr, semType, tid });
    llvm:ConstValue initValue;
    if basic == STRUCTURE_LIST {
        initValue = createListDescInit(cx, tid, semType);
    }
    else {
        initValue = createMappingDescInit(cx, tid, semType);
    }
    cx.llMod.setInitializer(ptr, initValue);
    return ptr;
}


function createListDescType(t:Context tc, t:SemType semType) returns llvm:StructType {
    t:ListAtomicType lat = <t:ListAtomicType>t:listAtomicType(tc, semType);
    return createLlListDescType(lat.members.initial.length());
}

function createListDescInit(InitModuleContext cx, int tid, t:SemType semType) returns llvm:ConstValue {
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
    t:SemType restType = t:cellInner(atomic.rest);
    initStructValues.push(getMemberType(cx, restType));
    initStructValues.push(getFillerDesc(cx, restType));
    llvm:ConstValue[] llMembers = from var ty in atomic.members.initial let var tyInner = t:cellInner(ty) select getMemberType(cx, tyInner);
    initStructValues.push(cx.llContext().constArray(LLVM_MEMBER_TYPE, llMembers));
    return cx.llContext().constStruct(initStructValues);    
}

function createMappingDescType(t:Context tc, t:SemType semType) returns llvm:StructType {
    t:MappingAtomicType mat = <t:MappingAtomicType>t:mappingAtomicType(tc, semType);
    // tid, fieldCount, restField, individualFields...
    return llvm:structType([LLVM_TID, "i32", LLVM_MEMBER_TYPE, llStructureDescPtrType, llvm:arrayType(LLVM_MEMBER_TYPE, mat.names.length())]);
}

function createMappingDescInit(InitModuleContext cx, int tid, t:SemType semType) returns llvm:ConstValue {
    t:MappingAtomicType mat = <t:MappingAtomicType>t:mappingAtomicType(cx.tc, semType);
    llvm:ConstValue[] llFields = from var ty in mat.types let var tyInner = t:cellInner(ty) select getMemberType(cx, tyInner);
    t:SemType rest = t:cellInner(mat.rest);
    return cx.llContext().constStruct([
        constTid(cx, tid),
        constI32(cx, llFields.length()),
        getMemberType(cx, rest),
        getFillerDesc(cx, rest),
        cx.llContext().constArray(LLVM_MEMBER_TYPE, llFields)
    ]);
}

// Type of the value should be llStructureDescPtrType
function getFillerDesc(InitModuleContext cx, t:SemType memberType) returns llvm:ConstPointerValue {
    StructureBasicType? basic = fillableStructureBasicType(cx.tc, memberType);
    // JBUG narrowing does not work if you say `== ()`
    if basic is () {
        return cx.llContext().constNull(llStructureDescPtrType);
    }
    table<InherentTypeDefn> key(semType) defns = cx.inherentTypeDefns[basic];
    InherentTypeDefn? existingDefn = defns[memberType];
    llvm:ConstPointerValue desc;
    if existingDefn != () {
        desc = existingDefn.ptr;
    }
    else {
        desc = addInherentTypeDefn(cx, fillerDescSymbol(basic, defns.length()), memberType, basic, "internal");
    }
    return cx.llContext().constBitCast(desc, llStructureDescPtrType);
}

function fillableStructureBasicType(t:Context tc, t:SemType semType) returns StructureBasicType? {
    StructureBasicType? basic = structureBasicType(semType);
    if basic == STRUCTURE_LIST {
        if t:listAtomicType(tc, semType) != () {
            return basic;
        }
    }
    if basic == STRUCTURE_MAPPING {
        t:MappingAtomicType? mat = t:mappingAtomicType(tc, semType);
        if  mat != () && mat.names.length() == 0 {
            return basic;
        }
    }
    return ();
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
    StructureBasicType basic = <StructureBasicType>structureBasicType(semType);
    InherentTypeDefn? existingDefn = cx.inherentTypeDefns[basic][semType];
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
        if cx.inherentTypesComplete {
            SubtypeStruct sub = createSubtypeStruct(cx, typeCode, semType);
            llStructTy = llvm:structType(sub.types);
            init = cx.llContext().constStruct(sub.values);
        }
        else {
            llStructTy = cx.llContext().structCreateNamed(subtypeTypeDefnSymbol(cx.subtypeDefns.length()));
        }
        ptr = cx.llMod.addGlobal(llStructTy, symbol, initializer=init, align=SUBTYPE_ALIGN, isConstant=true, linkage="internal");
        SubtypeDefn newDefn = { typeCode, semType, ptr, structType: cx.inherentTypesComplete ? () : llStructTy };
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
    }
    panic err:impossible(`subtypes of uniform type ${typeCode} are not implemented`);    
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
        t:SemType rest = t:cellInner(lat.rest);
        if rest is t:BasicTypeBitSet && lat.members.fixedLength == 0 {
            return createArrayMapSubtypeStruct(cx, rest, TYPE_KIND_ARRAY);
        }
    }
    return createPrecomputedSubtypeStruct(cx, STRUCTURE_LIST, semType);
}

function createMappingSubtypeStruct(InitModuleContext cx, t:ComplexSemType semType) returns SubtypeStruct {
    t:MappingAtomicType? mat = t:mappingAtomicType(cx.tc, semType);
    if mat != () {
        t:SemType rest = t:cellInner(mat.rest);
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
    return createPrecomputedSubtypeStruct(cx, STRUCTURE_MAPPING, semType);
}

function createPrecomputedSubtypeStruct(InitModuleContext cx, StructureBasicType basic, t:ComplexSemType ty) returns SubtypeStruct {
    llvm:ConstValue[] tids = from var itd in cx.inherentTypeDefns[basic] where t:isSubtype(cx.tc, itd.semType, ty) select constTid(cx, itd.tid);
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
            ref = getInitRuntimeFunction(cx, mangleRuntimeSymbol("list_" + name), llType);
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

function structureBasicType(t:SemType semType) returns StructureBasicType? {
    if t:isSubtypeSimple(semType, t:LIST) {
        return STRUCTURE_LIST;
    }
    if t:isSubtypeSimple(semType, t:MAPPING) {
        return STRUCTURE_MAPPING;
    }
    return ();
}

function fillerDescSymbol(StructureBasicType basic, int i) returns string {
    if basic == STRUCTURE_LIST {
        return memberListDescSymbol(i);
    }
    else {
        return memberMappingDescSymbol(i);
    }
}

function getInitRuntimeFunction(InitModuleContext cx, string symbol, llvm:FunctionType llType) returns llvm:FunctionDecl {
    llvm:FunctionDecl? existingDecl = cx.runtimeFuncs[symbol];
    if existingDecl != () {
        return existingDecl;
    }
    else {
        llvm:FunctionDecl newDecl = cx.llMod.addFunctionDecl(symbol, llType);
        cx.runtimeFuncs[symbol] = newDecl;
        return newDecl;
    }
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
