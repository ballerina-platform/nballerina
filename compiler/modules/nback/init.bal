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
        var [llType, ptr] = addTypeDefn(cx, sym, semType, howUsed);
        cx.typeDefns.add( { llType, ptr, howUsed, semType });
    }
    else {
        addTypeAlias(cx, sym, existingDefn);
    }
}

function addTypeDefn(InitModuleContext cx, string symbol, t:SemType ty, TypeHowUsed howUsed) returns LlvmTypeDefn {
    if t:isSubtypeSimple(ty, t:LIST) {
       return addArrayMapTypeDefn(cx, symbol, <t:UniformTypeBitSet>t:simpleArrayMemberType(cx.tc, ty), TYPE_KIND_ARRAY, howUsed);
    }
    else if t:isSubtypeSimple(ty, t:MAPPING) {
        t:MappingAtomicType mat = <t:MappingAtomicType>t:mappingAtomicTypeRw(cx.tc, ty);
        if mat.rest !== t:NEVER {
            return addArrayMapTypeDefn(cx, symbol, <t:UniformTypeBitSet>mat.rest, TYPE_KIND_MAP, howUsed);
        }
        else if howUsed == USED_INHERENT_TYPE {
            return addRecordInherentTypeDefn(cx, symbol, mat.names, mat.types);
        }
        else {
            return addRecordTypeTestDefn(cx, symbol, mat.names, mat.types);
        }  
    }
    else {
        panic err:impossible("unexpected SemType while building inherent type definition in init module");
    }
}

function addArrayMapTypeDefn(InitModuleContext cx, string symbol, t:UniformTypeBitSet bitSet, TypeKindArrayOrMap arrayOrMap, TypeHowUsed howUsed) returns LlvmTypeDefn {
    if howUsed == USED_INHERENT_TYPE {
        return addArrayMapInherentTypeDefn(cx, symbol, bitSet);
    }
    else {
        return addArrayMapTypeTestDefn(cx, symbol, bitSet, arrayOrMap);
    }
}

function addArrayMapInherentTypeDefn(InitModuleContext cx, string symbol, t:UniformTypeBitSet bitSet) returns LlvmTypeDefn {
    llvm:StructType ty = llInherentType;
    llvm:ConstValue initValue = cx.llContext.constStruct([llvm:constInt("i32", bitSet)]);
    llvm:ConstPointerValue ptr = cx.llMod.addGlobal(ty, symbol, initializer=initValue, isConstant=true);
    return [ty, ptr];
}

function addArrayMapTypeTestDefn(InitModuleContext cx, string symbol, t:UniformTypeBitSet bitSet, TypeKindArrayOrMap arrayOrMap) returns LlvmTypeDefn {
    final llvm:StructType ty = llvm:structType([cx.llTypes.typeTestFunctionPtr, LLVM_BITSET]);
    llvm:ConstValue initValue = cx.llContext.constStruct([getTypeTestFunc(cx, arrayOrMap), llvm:constInt("i32", bitSet)]);
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

function addRecordTypeTestDefn(InitModuleContext cx, string symbol, string[] fieldNames, t:SemType[] fieldTypes) returns LlvmTypeDefn {
    // 0, fieldCount, fields
    final llvm:StructType llFieldType = llvm:structType([LLVM_TAGGED_PTR, LLVM_BITSET]);
    final int nFields = fieldNames.length();
    final llvm:StructType llType = llvm:structType([cx.llTypes.typeTestFunctionPtr, "i32", llvm:arrayType(llFieldType, nFields)]);
    llvm:ConstValue[] llFields = [];
    foreach int i in 0 ..< fieldNames.length() {
        llFields.push(cx.llContext.constStruct([addInitString(cx, fieldNames[i]),
                                               llvm:constInt(LLVM_BITSET, <t:UniformTypeBitSet>fieldTypes[i])]));
    }
    llvm:ConstValue initValue = cx.llContext.constStruct([getTypeTestFunc(cx, TYPE_KIND_RECORD), llvm:constInt("i32", nFields), cx.llContext.constArray(llFieldType, llFields)]);
    llvm:ConstPointerValue ptr = cx.llMod.addGlobal(llType, symbol, initializer=initValue, isConstant=true);
    return [llType, ptr];
}

function getTypeTestFunc(InitModuleContext cx, TypeKind tk) returns llvm:FunctionDecl {
    llvm:FunctionDecl? existing = cx.typeTestFuncs[tk];
    if existing == () {
        llvm:FunctionDecl decl = cx.llMod.addFunctionDecl(mangleRuntimeSymbol(typeKindNames[tk] + "_type_contains"), cx.llTypes.typeTestFunction);
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
