import wso2/nballerina.bir;
import wso2/nballerina.err;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

const USER_MAIN_NAME = "main";

public type ProgramModule readonly & record {|
    bir:ModuleId id;
    TypeUsage typeUsage;
|};

type TypeDefn record {|
    readonly t:SemType semType;
    readonly TypeHowUsed howUsed;
    llvm:ConstPointerValue ptr;
    llvm:Type llType;
|};

type SubtypeDefn record {|
    readonly t:SemType semType;
    readonly t:UniformTypeCode typeCode;
    llvm:ConstPointerValue ptr;
|};

const TYPE_KIND_ARRAY = 0;
const TYPE_KIND_MAP = 1;
const TYPE_KIND_RECORD = 2;
const TYPE_KIND_COUNT = 3;
final readonly & string[] typeKindNames = ["array", "map", "record"];

type TypeKindArrayOrMap TYPE_KIND_ARRAY|TYPE_KIND_MAP;
type TypeKind TypeKindArrayOrMap|TYPE_KIND_RECORD;

type InitModuleContext record {|
    llvm:Context llContext;
    llvm:Module llMod;
    t:Context tc;
    int stringCount = 0;
    table<TypeDefn> key(semType, howUsed) typeDefns = table [];
    table<SubtypeDefn> key(typeCode, semType) subtypeDefns = table [];
    InitTypes llTypes;
    llvm:FunctionDecl?[TYPE_KIND_COUNT] typeTestFuncs = [];
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
    foreach var mod in modules {
        var { types, uses } = mod.typeUsage;
        bir:ModuleId id = mod.id;
        foreach int i in 0 ..< types.length() {
            byte use = uses[i];
            t:SemType ty = types[i];
            foreach var howUsed in <TypeHowUsed[]>[USED_INHERENT_TYPE, USED_TYPE_TEST] {
                if (<int>use & <int>howUsed) != 0 {
                    addTypeGlobal(cx, id, i, ty, howUsed);
                }
            }
        }
    }
}

type LlvmTypeDefn [llvm:StructType, llvm:ConstPointerValue];

function addTypeGlobal(InitModuleContext cx, bir:ModuleId id, int i, t:SemType semType, TypeHowUsed howUsed) {
    string sym = mangleTypeSymbol(id, howUsed, i);
    TypeDefn? existingDefn = cx.typeDefns[semType, howUsed];
    if existingDefn == () {
        LlvmTypeDefn [llType, ptr] = howUsed == USED_INHERENT_TYPE ? addInherentTypeDefn(cx, sym, semType) : addTypeTestTypeDefn(cx, sym, semType);
        cx.typeDefns.add( { llType, ptr, howUsed, semType });
    }
    else {
        addTypeAlias(cx, sym, existingDefn);
    }
}

function addInherentTypeDefn(InitModuleContext cx, string symbol, t:SemType ty) returns LlvmTypeDefn {
    if t:isSubtypeSimple(ty, t:LIST) {
        return addArrayMapInherentTypeDefn(cx, symbol, <t:UniformTypeBitSet>t:simpleArrayMemberType(cx.tc, ty));
    }
    else if t:isSubtypeSimple(ty, t:MAPPING) {
        t:MappingAtomicType mat = <t:MappingAtomicType>t:mappingAtomicTypeRw(cx.tc, ty);
        if mat.rest != t:NEVER {
            return addArrayMapInherentTypeDefn(cx, symbol, <t:UniformTypeBitSet>mat.rest);
        }
        else {
            return addRecordInherentTypeDefn(cx, symbol, mat.names, mat.types);
        }
    }
    else {
        panic err:impossible("unexpected SemType while building inherent type definition in init module");
    }
}

function addArrayMapInherentTypeDefn(InitModuleContext cx, string symbol, t:UniformTypeBitSet bitSet) returns LlvmTypeDefn {
    llvm:StructType ty = llInherentType;
    llvm:ConstValue initValue = cx.llContext.constStruct([llvm:constInt("i32", bitSet)]);
    llvm:ConstPointerValue ptr = cx.llMod.addGlobal(ty, symbol, initializer=initValue, isConstant=true);
    return [ty, ptr];
}

function addRecordInherentTypeDefn(InitModuleContext cx, string symbol, string[] fieldNames, t:SemType[] fieldTypes) returns LlvmTypeDefn {
    // 0, fieldCount, fields
    final int nFields = fieldNames.length();
    final llvm:StructType llType = llvm:structType(["i32", "i32", llvm:arrayType("i32", nFields)]);
    llvm:ConstValue[] llFields = from var ty in fieldTypes select llvm:constInt("i32", <t:UniformTypeBitSet>ty);
    llvm:ConstValue initValue = cx.llContext.constStruct([llvm:constInt("i32", 0), llvm:constInt("i32", nFields), cx.llContext.constArray("i32", llFields)]);
    llvm:ConstPointerValue ptr = cx.llMod.addGlobal(llType, symbol, initializer=initValue, isConstant=true);
    return [llType, ptr];
}

function addTypeTestTypeDefn(InitModuleContext cx, string symbol, t:SemType ty) returns LlvmTypeDefn {
    t:SplitSemType { all, some } = t:split(ty);
    int someBits = 0;
    llvm:ConstValue[] llSubtypes = [];
    foreach var [code, subtype] in some {
        if code == t:UT_LIST_RO || code == t:UT_MAPPING_RO {
            // these cannot occur for now, so ignore them
            continue;
        }
        someBits |= 1 << code;
        llSubtypes.push(getSubtypeTest(cx, code, subtype));
    }
    llvm:ConstValue subtypeArray = cx.llContext.constArray(cx.llTypes.subtypeTestVTablePtr, llSubtypes);
    llvm:ConstValue initValue = cx.llContext.constStruct([llvm:constInt("i32", all), llvm:constInt("i32", someBits), subtypeArray]);
    llvm:StructType llType = llvm:structType([LLVM_BITSET, LLVM_BITSET, llvm:arrayType(cx.llTypes.subtypeTestVTablePtr, llSubtypes.length())]);
    llvm:ConstPointerValue ptr = cx.llMod.addGlobal(llType, symbol, initializer=initValue, isConstant=true);
    return [llType, ptr];
}

function getSubtypeTest(InitModuleContext cx, t:UniformTypeCode typeCode, t:SemType semType) returns llvm:ConstPointerValue {
    SubtypeDefn? existingDefn = cx.subtypeDefns[typeCode, semType];
    if existingDefn != () {
        return existingDefn.ptr;
    }
    llvm:ConstPointerValue ptr;
    string symbol = subtypeDefnSymbol(cx.subtypeDefns.length());
    // JBUG if we use a match statement for this, then we get an error for `ptr` being uninitialized
    if typeCode == t:UT_LIST_RW {
        ptr = addArrayMapSubtypeTestDefn(cx, symbol, <t:UniformTypeBitSet>t:simpleArrayMemberType(cx.tc, semType), TYPE_KIND_ARRAY);
    }
    else if typeCode == t:UT_MAPPING_RW {
        t:MappingAtomicType mat = <t:MappingAtomicType>t:mappingAtomicTypeRw(cx.tc, semType);
        if mat.rest != t:NEVER {
            ptr = addArrayMapSubtypeTestDefn(cx, symbol, <t:UniformTypeBitSet>mat.rest, TYPE_KIND_MAP);
        }
        else {
            ptr = addRecordSubtypeTestDefn(cx, symbol, mat.names, mat.types);
        }
    }
    else {
        panic err:impossible(`subtypes of uniform type ${typeCode} are not implemented`);
    }
    ptr = cx.llContext.constBitCast(ptr, cx.llTypes.subtypeTestVTablePtr);
    SubtypeDefn newDefn = { typeCode, semType, ptr };
    cx.subtypeDefns.add(newDefn);
    return ptr;
}

function addArrayMapSubtypeTestDefn(InitModuleContext cx, string symbol, t:UniformTypeBitSet bitSet, TypeKindArrayOrMap arrayOrMap) returns llvm:ConstPointerValue {
    final llvm:StructType ty = llvm:structType([cx.llTypes.subtypeTestFunctionPtr, LLVM_BITSET]);
    llvm:ConstValue initValue = cx.llContext.constStruct([getSubtypeTestFunc(cx, arrayOrMap), llvm:constInt("i32", bitSet)]);
    return cx.llMod.addGlobal(ty, symbol, initializer=initValue, isConstant=true, linkage="internal");
}

function addRecordSubtypeTestDefn(InitModuleContext cx, string symbol, string[] fieldNames, t:SemType[] fieldTypes) returns llvm:ConstPointerValue {
    // 0, fieldCount, fields
    final llvm:StructType llFieldType = llvm:structType([LLVM_TAGGED_PTR, LLVM_BITSET]);
    final int nFields = fieldNames.length();
    final llvm:StructType llType = llvm:structType([cx.llTypes.subtypeTestFunctionPtr, "i32", llvm:arrayType(llFieldType, nFields)]);
    llvm:ConstValue[] llFields = [];
    foreach int i in 0 ..< fieldNames.length() {
        llFields.push(cx.llContext.constStruct([addInitString(cx, fieldNames[i]),
                                               llvm:constInt(LLVM_BITSET, <t:UniformTypeBitSet>fieldTypes[i])]));
    }
    llvm:ConstValue initValue = cx.llContext.constStruct([getSubtypeTestFunc(cx, TYPE_KIND_RECORD), llvm:constInt("i32", nFields), cx.llContext.constArray(llFieldType, llFields)]);
    return cx.llMod.addGlobal(llType, symbol, initializer=initValue, isConstant=true, linkage="internal");
}

function getSubtypeTestFunc(InitModuleContext cx, TypeKind tk) returns llvm:FunctionDecl {
    llvm:FunctionDecl? existing = cx.typeTestFuncs[tk];
    if existing == () {
        llvm:FunctionDecl decl = cx.llMod.addFunctionDecl(mangleRuntimeSymbol(typeKindNames[tk] + "_subtype_contains"), cx.llTypes.subtypeTestFunction);
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
