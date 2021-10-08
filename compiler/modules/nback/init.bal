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

type InitModuleContext record {|
    llvm:Context llContext;
    llvm:Module llMod;
    t:Context tc;
    int stringCount = 0;
    table<TypeDefn> key(semType, howUsed) typeDefns = table [];
|};

public function buildInitModule(llvm:Context llContext, t:Env env, ProgramModule[] modules, map<bir:FunctionSignature> publicFuncs) returns llvm:Module|BuildError {
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
    InitModuleContext cx = { llContext, llMod, tc: t:typeContext(env) };
    foreach var mod in modules {
        var { types, uses } = mod.typeUsage;
        bir:ModuleId id = mod.id;
        foreach int i in 0 ..< types.length() {
            byte use = uses[i];
            t:SemType ty = types[i];
            buildTypeDefn(cx, id, i, ty, USED_INHERENT_TYPE, use);
            buildTypeDefn(cx, id, i, ty, USED_TYPE_TEST, use);
        }
    }
}

function buildTypeDefn(InitModuleContext cx, bir:ModuleId id, int i, t:SemType semType, TypeHowUsed howUsed, byte actuallyUsed) {
    if (<int>actuallyUsed & <int>howUsed) == 0 {
        return;
    }
    string sym = mangleTypeSymbol(id, howUsed, i);
    TypeDefn? existingDefn = cx.typeDefns[semType, howUsed];
    if existingDefn is () {
        if howUsed == USED_INHERENT_TYPE {
            cx.typeDefns.add(buildInherentTypeDefn(cx, sym, semType));
        }
        // else {
        //     cx.typeDefns.add(buildTypeTestDefn(cx, sym, semType));
        // }
    }
    else {
        buildTypeAlias(cx, sym, existingDefn);
    }
}

function buildInherentTypeDefn(InitModuleContext cx, string symbol, t:SemType ty) returns TypeDefn {
    llvm:StructType llType;
    llvm:ConstPointerValue ptr;
    if t:isSubtypeSimple(ty, t:LIST_RW) {
        [llType, ptr] = buildMemberTypeDefn(cx, symbol, <t:UniformTypeBitSet>t:simpleArrayMemberType(cx.tc, ty));
    }
    else if t:isSubtypeSimple(ty, t:MAPPING_RW) {
        t:MappingAtomicType mat = <t:MappingAtomicType>t:mappingAtomicTypeRw(cx.tc, ty);
        if mat.rest !== t:NEVER {
            [llType, ptr] = buildMemberTypeDefn(cx, symbol, <t:UniformTypeBitSet>mat.rest);
        }
        else {
            [llType, ptr] = buildRecordInherentTypeDefn(cx, symbol, mat.names, mat.types);
        }  
    }
    else {
        panic err:impossible("unexpected SemType building inherent type definition in init module");
    }
    return { llType, ptr, howUsed: USED_INHERENT_TYPE, semType: ty };
}

function buildMemberTypeDefn(InitModuleContext cx, string symbol, t:UniformTypeBitSet bitSet) returns [llvm:StructType, llvm:ConstPointerValue] {
    llvm:StructType ty = llInherentType;
    llvm:ConstValue initValue = cx.llContext.constStruct([llvm:constInt("i32", bitSet)]);
    llvm:ConstPointerValue ptr = cx.llMod.addGlobal(ty, symbol, initializer=initValue, isConstant=true);
    return [ty, ptr];
}

function buildRecordInherentTypeDefn(InitModuleContext cx, string symbol, string[] fieldNames, t:SemType[] fieldTypes) returns [llvm:StructType, llvm:ConstPointerValue] {
    // 0, fieldCount, fields
    final int nFields = fieldNames.length();
    final llvm:StructType llType = llvm:structType(["i32", "i32", llvm:arrayType("i32", nFields)]);
    llvm:ConstValue[] llFields = from var ty in fieldTypes select llvm:constInt("i32", <t:UniformTypeBitSet>ty);
    llvm:ConstValue initValue = cx.llContext.constStruct([llvm:constInt("i32", 0), llvm:constInt("i32", nFields), cx.llContext.constArray("i32", llFields)]);
    llvm:ConstPointerValue ptr = cx.llMod.addGlobal(llType, symbol, initializer=initValue, isConstant=true);
    return [llType, ptr];
}

function buildRecordTypeTestDefn(InitModuleContext cx, string symbol, string[] fieldNames, t:SemType[] fieldTypes) returns [llvm:StructType, llvm:ConstPointerValue] {
    // 0, fieldCount, fields
    final llvm:StructType llFieldType = llvm:structType([LLVM_TAGGED_PTR, "i32"]);
    final int nFields = fieldNames.length();
    final llvm:StructType llType = llvm:structType(["i32", "i32", llvm:arrayType(llFieldType, nFields)]);
    llvm:ConstValue[] llFields = [];
    foreach int i in 0 ..< fieldNames.length() {
        llFields.push(cx.llContext.constStruct([buildInitString(cx, fieldNames[i]),
                                               llvm:constInt("i32", <t:UniformTypeBitSet>fieldTypes[i])]));
    }
    llvm:ConstValue initValue = cx.llContext.constStruct([llvm:constInt("i32", 0), llvm:constInt("i32", nFields), cx.llContext.constArray(llFieldType, llFields)]);
    llvm:ConstPointerValue ptr = cx.llMod.addGlobal(llType, symbol, initializer=initValue, isConstant=true);
    return [llType, ptr];
}

function buildInitString(InitModuleContext cx, string str) returns llvm:ConstPointerValue {
    int index = cx.stringCount;
    cx.stringCount += 1;
    return addStringDefn(cx.llContext, cx.llMod, index, str);
}

// function buildTypeTestDefn(InitModuleContext cx, string symbol, t:SemType ty) returns TypeDefn {
// }

function buildTypeAlias(InitModuleContext cx, string sym, TypeDefn defn) {
    _ = cx.llMod.addAlias(defn.llType, defn.ptr, sym);
}
