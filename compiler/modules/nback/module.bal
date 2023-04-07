import wso2/nballerina.bir;
import wso2/nballerina.comm.err;
import wso2/nballerina.print.llvm;
import wso2/nballerina.types as t;

public function buildModule(bir:Module birMod, *Options options) returns [llvm:Module, TypeUsage, FunctionSignatureUsage]|BuildError {
    llvm:Context llContext = new;
    bir:ModuleId modId = birMod.getId();
    llvm:Module llMod = llContext.createModule();
    bir:File[] partFiles = birMod.getPartFiles();
    ModuleDI? di = ();
    if options.debugLevel > 0 {
        di = createModuleDI(llMod, partFiles, options.debugLevel == DEBUG_FULL);
    }
    bir:FunctionDefn[] functionDefns = birMod.getFunctionDefns();
    llvm:FunctionDefn[] llFuncs = [];
    DISubprogram[] diFuncs = [];
    llvm:FunctionType[] llFuncTypes = [];
    map<llvm:FunctionDefn> llFuncMap = {};
    foreach var defn in functionDefns {
        llvm:FunctionType ty = buildFunctionSignature(defn.decl);
        llFuncTypes.push(ty);
        bir:InternalSymbol symbol = defn.symbol;
        string mangledName = mangleInternalSymbol(modId, symbol);
        llvm:FunctionDefn llFunc = llMod.addFunctionDefn(mangledName, ty);
        if di != () {
            DISubprogram diFunc = createFunctionDI(di, partFiles, defn, llFunc, mangledName);
            diFuncs.push(diFunc);
            llFunc.setSubprogram(diFunc);
        }   
        if !(options.gcName == ()) {
            llFunc.setGC(options.gcName);
        }
        if !symbol.isPublic {
            llFunc.setLinkage("internal");
        }
        llFuncs.push(llFunc);
        llFuncMap[defn.symbol.identifier] = llFunc;
    }
    llvm:Builder builder = llContext.createBuilder();
    Module mod = {
        bir: birMod,
        modId,
        llContext,
        llMod,
        partFiles,
        di,
        typeContext: birMod.getTypeContext(),
        functionDefns: llFuncMap,
        stackGuard: llMod.addGlobal(llvm:pointerType("i8"), mangleRuntimeSymbol("stack_guard")),
        llInitTypes: createInitTypes(llContext)
    };  
    foreach int i in 0 ..< functionDefns.length() {
        bir:FunctionDefn defn = functionDefns[i];
        bir:FunctionCode code = check birMod.generateFunctionCode(i);
        check bir:verifyFunctionCode(birMod, defn, code);
        DISubprogram? diFunc = di == () ? () : diFuncs[i];
        Scaffold scaffold = new(mod, llFuncs[i], diFunc, builder, defn, code);
        buildPrologue(builder, scaffold, defn.position);
        check buildFunctionBody(builder, scaffold, code.blocks, calculateBuildOrder(code.blocks));
    }
    check birMod.finish();
    return [llMod, createTypeUsage(mod.usedSemTypes), createFunctionSignatureUsage(mod.usedFunctionSignatures)];
}

function createFunctionSignatureUsage(table<UsedFunctionSignature> signatureUsage) returns FunctionSignatureUsage {
   [t:FunctionSignature, int][] usage = from var each in signatureUsage select [each.signature, each.index];
   return { usage };
}

function calculateBuildOrder(bir:BasicBlock[] blocks) returns bir:Label[] {
    bir:Label[] ordered = [];
    boolean[] visited = [];
    visited[blocks.length() - 1] = false;
    orderByFwdTargets(blocks, 0, visited, ordered);
    int orphaned = blocks.length() - ordered.length();
    if orphaned != 0 {
        panic err:impossible(orphaned.toString() + " orphan basic block" + (orphaned == 1 ? "" : "s"));
    }
    return ordered.reverse();
}

// Finds a label ordering in which all forward branch (conditional + non backward unconditional) targets appear before their origins.
function orderByFwdTargets(bir:BasicBlock[] blocks, bir:Label label, boolean[] visited, bir:Label[] ordered) {
    if visited[label] {
        return;
    }
    // Flag here prevents it being re-added, in below recursive calls or via a sibling. Former shouldn't happen anyway since it's a DAG.
    visited[label] = true;
    bir:BasicBlock block = blocks[label];
    bir:Label? onPanic = block.onPanic;
    if onPanic != () {
        orderByFwdTargets(blocks, onPanic, visited, ordered);
    }
    var insns = block.insns;
    var insnsLen = insns.length();
    if insnsLen > 0 {
        var insn = insns[insnsLen - 1];
        if insn is bir:BranchInsn && !insn.backward{
            orderByFwdTargets(blocks, insn.dest, visited, ordered);
        }
        else if insn is bir:TypeCondBranchInsn|bir:CondBranchInsn {
            orderByFwdTargets(blocks, insn.ifTrue, visited, ordered);
            orderByFwdTargets(blocks, insn.ifFalse, visited, ordered);
        }
    }
    ordered.push(label);
}

function createTypeUsage(table<UsedSemType> usedSemTypes) returns TypeUsage {
    byte[] uses = [];
    t:SemType[] types = [];
    // JBUG 36056 can't directly iterate over usedSemTypes
    UsedSemType[] usedSemTy = from var semType in usedSemTypes.toArray() order by semType.index select semType;
    foreach var used in usedSemTy {
        types.push(used.semType);
        byte use = 0;
        if used.inherentType != () {
            use = USED_INHERENT_TYPE;
        }
        if used.typeTest != () {
            use |= USED_TYPE_TEST;
        }
        if used.exactify != () {
            use |= USED_EXACTIFY;
        }
        uses.push(use);
    }
    return { types: types.cloneReadOnly(), uses: uses.cloneReadOnly() };
}

function createModuleDI(llvm:Module mod, bir:File[] partFiles, boolean debugFull) returns ModuleDI {
    DIBuilder builder = mod.createDIBuilder();
    mod.addModuleFlag("warning", ["Debug Info Version", 3]);
    DIFile[] files = from var f in partFiles select builder.createFile(f.filename(), f.directory() ?: "");
    DICompileUnit compileUnit = builder.createCompileUnit(file=files[0]);
    DISubroutineType funcType = builder.createSubroutineType(files[0]);
    return { builder, files, compileUnit, funcType, debugFull };
}

function createFunctionDI(ModuleDI mod, bir:File[] files, bir:FunctionDefn birFunc, llvm:FunctionDefn llFunc, string mangledName) returns DISubprogram {
    int partIndex = birFunc.partIndex;
    var [lineNo, _] = files[partIndex].lineColumn(birFunc.position); 
    DIFile file = mod.files[partIndex];
    return mod.builder.createFunction({
        file,
        scope: file, // XXX Should we use the compileUnit or the File here?
        ty: mod.funcType,
        linkageName: mangledName,
        lineNo,
        isDefinition: true,
        name: birFunc.symbol.identifier,
        scopeLine: lineNo // XXX should be line number of opening brace
    });
}

function buildFunctionBody(llvm:Builder builder, Scaffold scaffold, bir:BasicBlock[] blocks, bir:Label[] buildOrder) returns BuildError? {
    foreach var l in buildOrder {
        check buildBasicBlock(builder, scaffold, blocks[l]);
    }
}
