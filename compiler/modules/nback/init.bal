import wso2/nballerina.bir;
import wso2/nballerina.comm.err;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

const USER_MAIN_NAME = "main";

// Need to guarantee alignment for subtypes, so we can lo bit to distinguish betweem
// bitsets and pointers to subtypes
const SUBTYPE_ALIGN = 8;

public type ProgramModule readonly & record {|
    bir:ModuleId id;
    TypeUsage typeUsage;
|};

type TypeDefn record {|
    *TypeTestDefn;
    int tid?;
|};

type TypeTestDefn record {|
    readonly t:SemType semType;
    llvm:ConstPointerValue ptr;
    llvm:Type llType;
|};

type InherentTypeDefn record {|
    *TypeTestDefn;
    int tid;
|};

type SubtypeDefn record {|
    readonly t:SemType semType;
    readonly t:UniformTypeCode typeCode;
    llvm:ConstPointerValue ptr;
|};

const TYPE_KIND_ARRAY = "array";
const TYPE_KIND_MAP = "map";
const TYPE_KIND_RECORD = "record";
const TYPE_KIND_PRECOMPUTED = "precomputed";

type TypeKindArrayOrMap TYPE_KIND_ARRAY|TYPE_KIND_MAP;
type TypeKind TypeKindArrayOrMap|TYPE_KIND_RECORD|TYPE_KIND_PRECOMPUTED;

type InitModuleContext record {|
    llvm:Context llContext;
    llvm:Module llMod;
    t:Context tc;
    int stringCount = 0;
    table<InherentTypeDefn> key(semType) listTypeDefns = table [];
    table<InherentTypeDefn> key(semType) mappingTypeDefns = table [];
    table<TypeTestDefn> key(semType) typeTestDefns = table [];
    table<SubtypeDefn> key(typeCode, semType) subtypeDefns = table [];
    InitTypes llTypes;
    map<llvm:FunctionDecl> typeTestFuncs = {};
    llvm:FunctionDecl? listSetFunc = ();
    llvm:FunctionDecl? listGetFunc = ();
|};

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
    InitModuleContext cx = {
        llContext,
        llMod,
        tc: t:typeContext(env),
        llTypes
    };
    buildInitTypesForUsage(cx, modules, USED_INHERENT_TYPE);
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
                    addInherentTypeDefn(cx, sym, ty);
                }
                else if howUsed == USED_EXACTIFY {
                    addExactifyTypeDefn(cx, sym, ty);
                }
                else {
                    addTypeTestTypeDefn(cx, sym, ty);
                }
            }       
        }
    }    
}

function addInherentTypeDefn(InitModuleContext cx, string symbol, t:SemType semType)  {
    table<InherentTypeDefn> key(semType) defns;
    boolean isList;
    if t:isSubtypeSimple(semType, t:LIST) {
        isList = true;
        defns = cx.listTypeDefns;
    }
    else if t:isSubtypeSimple(semType, t:MAPPING) {
        isList = false;
        defns = cx.mappingTypeDefns;
    }
    else {
        panic err:impossible("unexpected SemType while building inherent type definition in init module");
    }
    InherentTypeDefn? existingDefn = defns[semType];
    if existingDefn != () {
        addTypeAlias(cx, symbol, existingDefn);
        return;
    }
    int tid = defns.length();
    llvm:StructType llType;
    llvm:ConstPointerValue ptr;
    if isList {
        [llType, ptr] = addArrayInherentTypeDefn(cx, symbol, tid, <t:UniformTypeBitSet>t:simpleArrayMemberType(cx.tc, semType));
    }
    else {
        t:MappingAtomicType mat = <t:MappingAtomicType>t:mappingAtomicTypeRw(cx.tc, semType);
        if mat.rest != t:NEVER {
            [llType, ptr] = addMapInherentTypeDefn(cx, symbol, tid, mat.rest);
        }
        else {
            [llType, ptr] = addRecordInherentTypeDefn(cx, symbol, tid, mat.names, mat.types);
        }
    }
    defns.add({ llType, ptr, semType, tid });
}

function addArrayInherentTypeDefn(InitModuleContext cx, string symbol, int tid, t:SemType memberType) returns [llvm:StructType, llvm:ConstPointerValue] {
    llvm:ConstValue initValue = cx.llContext.constStruct([llvm:constInt(LLVM_TID, tid), getListGetFunc(cx), getListSetFunc(cx), getMemberType(cx, memberType)]);
    llvm:ConstPointerValue ptr = cx.llMod.addGlobal(llListDescType, symbol, initializer=initValue, isConstant=true);
    return [llListDescType, ptr];
}

function addMapInherentTypeDefn(InitModuleContext cx, string symbol, int tid, t:SemType memberType) returns [llvm:StructType, llvm:ConstPointerValue] {
    llvm:ConstValue initValue = cx.llContext.constStruct([llvm:constInt(LLVM_TID, tid), getMemberType(cx, memberType)]);
    llvm:ConstPointerValue ptr = cx.llMod.addGlobal(llMapDescType, symbol, initializer=initValue, isConstant=true);
    return [llMapDescType, ptr];
}

function addRecordInherentTypeDefn(InitModuleContext cx, string symbol, int tid, string[] fieldNames, t:SemType[] fieldTypes) returns [llvm:StructType, llvm:ConstPointerValue] {
    final int nFields = fieldNames.length();
    // tid, 0, fieldCount, fields
    final llvm:StructType llType = llvm:structType([LLVM_TID, LLVM_MEMBER_TYPE, "i32", llvm:arrayType(LLVM_MEMBER_TYPE, nFields)]);
    llvm:ConstValue[] llFields = from var ty in fieldTypes select getMemberType(cx, ty);
    llvm:ConstValue initValue = cx.llContext.constStruct(
        [llvm:constInt(LLVM_TID, tid), llInvalidMemberType, llvm:constInt("i32", nFields), cx.llContext.constArray(LLVM_MEMBER_TYPE, llFields)]);
    llvm:ConstPointerValue ptr = cx.llMod.addGlobal(llType, symbol, initializer=initValue, isConstant=true);
    return [llType, ptr];  
}

function getMemberType(InitModuleContext cx, t:SemType memberType) returns llvm:ConstValue {
    return llvm:constInt(LLVM_BITSET, <t:UniformTypeBitSet>memberType);
}

function addExactifyTypeDefn(InitModuleContext cx, string symbol, t:SemType semType) {
    table<InherentTypeDefn> key(semType) defns;
    if t:isSubtypeSimple(semType, t:LIST) {
        defns = cx.listTypeDefns;
    }
    else if t:isSubtypeSimple(semType, t:MAPPING) {
        defns = cx.mappingTypeDefns;
    }
    else {
        panic err:impossible("unexpected SemType while building exact type definition in init module");
    }
    InherentTypeDefn? existingDefn = defns[semType];
    llvm:ConstValue initValue = llvm:constInt(LLVM_TID, existingDefn == () ? -1 : existingDefn.tid);
    _ = cx.llMod.addGlobal(LLVM_TID, symbol, initializer=initValue, isConstant=true);
}

function addTypeTestTypeDefn(InitModuleContext cx, string symbol, t:SemType semType) {
    TypeDefn? existingDefn = cx.typeTestDefns[semType];
    if existingDefn != () {
        addTypeAlias(cx, symbol, existingDefn);
        return;
    }
    t:SplitSemType { all, some } = t:split(semType);
    int someBits = 0;
    llvm:ConstValue[] llSubtypes = [];
    foreach var [code, subtype] in some {
        if code == t:UT_LIST_RO || code == t:UT_MAPPING_RO {
            // these cannot occur for now, so ignore them
            continue;
        }
        someBits |= 1 << code;
        llSubtypes.push(getUniformSubtype(cx, code, subtype));
    }
    llvm:ConstValue subtypeArray = cx.llContext.constArray(cx.llTypes.uniformSubtypePtr, llSubtypes);
    llvm:ConstValue initValue = cx.llContext.constStruct([llvm:constInt(LLVM_BITSET, all), llvm:constInt(LLVM_BITSET, someBits), subtypeArray]);
    llvm:StructType llType = llvm:structType([LLVM_BITSET, LLVM_BITSET, llvm:arrayType(cx.llTypes.uniformSubtypePtr, llSubtypes.length())]);
    llvm:ConstPointerValue ptr = cx.llMod.addGlobal(llType, symbol, initializer=initValue, isConstant=true);
    cx.typeTestDefns.add({ llType, ptr, semType });
}

function getUniformSubtype(InitModuleContext cx, t:UniformTypeCode typeCode, t:SemType semType) returns llvm:ConstPointerValue {
    SubtypeDefn? existingDefn = cx.subtypeDefns[typeCode, semType];
    if existingDefn != () {
        return existingDefn.ptr;
    }
    llvm:ConstPointerValue ptr;
    string symbol = subtypeDefnSymbol(cx.subtypeDefns.length());
    // JBUG if we use a match statement for this, then we get an error for `ptr` being uninitialized
    if typeCode == t:UT_LIST_RW {
        t:ListAtomicType? lat = t:listAtomicTypeRw(cx.tc, semType);
        if lat == () {
            ptr = addPrecomputedSubtypeDefn(cx, symbol, cx.listTypeDefns, semType);
        }
        else {
            ptr = addArrayMapSubtypeDefn(cx, symbol, <t:UniformTypeBitSet>lat.rest, TYPE_KIND_ARRAY);
        }
    }
    else if typeCode == t:UT_MAPPING_RW {
        t:MappingAtomicType? mat = t:mappingAtomicTypeRw(cx.tc, semType);
        if mat == () {
            ptr = addPrecomputedSubtypeDefn(cx, symbol, cx.mappingTypeDefns, semType);
        }
        else if mat.rest != t:NEVER {
            ptr = addArrayMapSubtypeDefn(cx, symbol, <t:UniformTypeBitSet>mat.rest, TYPE_KIND_MAP);
        }
        else {
            ptr = addRecordSubtypeDefn(cx, symbol, mat.names, mat.types);
        }
    }
    else {
        panic err:impossible(`subtypes of uniform type ${typeCode} are not implemented`);
    }
    ptr = cx.llContext.constBitCast(ptr, cx.llTypes.uniformSubtypePtr);
    SubtypeDefn newDefn = { typeCode, semType, ptr };
    cx.subtypeDefns.add(newDefn);
    return ptr;
}

function addPrecomputedSubtypeDefn(InitModuleContext cx, string symbol, table<InherentTypeDefn> inherentTypeDefns, t:SemType ty) returns llvm:ConstPointerValue {
    llvm:ConstValue[] tids = from var itd in inherentTypeDefns where t:isSubtype(cx.tc, itd.semType, ty) select llvm:constInt(LLVM_TID, itd.tid);
    final llvm:StructType llStructTy = llvm:structType([cx.llTypes.subtypeContainsFunctionPtr, "i32", llvm:arrayType(LLVM_TID, tids.length())]);
    llvm:ConstValue initValue = cx.llContext.constStruct([getSubtypeContainsFunc(cx, TYPE_KIND_PRECOMPUTED), llvm:constInt("i32", tids.length()),
                                                          cx.llContext.constArray(LLVM_TID, tids)]);
    return cx.llMod.addGlobal(llStructTy, symbol, initializer=initValue, align=SUBTYPE_ALIGN, isConstant=true, linkage="internal");
}

function addArrayMapSubtypeDefn(InitModuleContext cx, string symbol, t:UniformTypeBitSet bitSet, TypeKindArrayOrMap arrayOrMap) returns llvm:ConstPointerValue {
    final llvm:StructType ty = llvm:structType([cx.llTypes.subtypeContainsFunctionPtr, LLVM_BITSET]);
    llvm:ConstValue initValue = cx.llContext.constStruct([getSubtypeContainsFunc(cx, arrayOrMap), llvm:constInt("i32", bitSet)]);
    return cx.llMod.addGlobal(ty, symbol, initializer=initValue, align=SUBTYPE_ALIGN, isConstant=true, linkage="internal");
}

function addRecordSubtypeDefn(InitModuleContext cx, string symbol, string[] fieldNames, t:SemType[] fieldTypes) returns llvm:ConstPointerValue {
    // 0, fieldCount, fields
    final llvm:StructType llFieldType = llvm:structType([LLVM_TAGGED_PTR, LLVM_BITSET]);
    final int nFields = fieldNames.length();
    final llvm:StructType llType = llvm:structType([cx.llTypes.subtypeContainsFunctionPtr, "i32", llvm:arrayType(llFieldType, nFields)]);
    llvm:ConstValue[] llFields = [];
    foreach int i in 0 ..< fieldNames.length() {
        llFields.push(cx.llContext.constStruct([addInitString(cx, fieldNames[i]),
                                               llvm:constInt(LLVM_BITSET, <t:UniformTypeBitSet>fieldTypes[i])]));
    }
    llvm:ConstValue initValue = cx.llContext.constStruct([getSubtypeContainsFunc(cx, TYPE_KIND_RECORD), llvm:constInt("i32", nFields), cx.llContext.constArray(llFieldType, llFields)]);
    return cx.llMod.addGlobal(llType, symbol, initializer=initValue, align=SUBTYPE_ALIGN, isConstant=true, linkage="internal");
}

function getListSetFunc(InitModuleContext cx) returns llvm:FunctionDecl {
    llvm:FunctionDecl? existing = cx.listSetFunc;
    if existing == () {
        llvm:FunctionDecl decl = cx.llMod.addFunctionDecl(mangleRuntimeSymbol("list_set"), llListSetFuncType);
        cx.listSetFunc = decl;
        return decl;
    }
    else {
        return existing;
    }
}

function getListGetFunc(InitModuleContext cx) returns llvm:FunctionDecl {
    llvm:FunctionDecl? existing = cx.listGetFunc;
    if existing == () {
        llvm:FunctionDecl decl = cx.llMod.addFunctionDecl(mangleRuntimeSymbol("list_get"), llListGetFuncType);
        cx.listGetFunc = decl;
        return decl;
    }
    else {
        return existing;
    }
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

function addInitString(InitModuleContext cx, string str) returns llvm:ConstPointerValue {
    int index = cx.stringCount;
    cx.stringCount += 1;
    return addStringDefn(cx.llContext, cx.llMod, index, str);
}

function addTypeAlias(InitModuleContext cx, string sym, TypeDefn defn) {
    _ = cx.llMod.addAlias(defn.llType, defn.ptr, sym);
}
