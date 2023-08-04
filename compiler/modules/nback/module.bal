import wso2/nballerina.bir;
import wso2/nballerina.comm.err;
import wso2/nballerina.print.llvm;
import wso2/nballerina.types as t;

public function buildModule(bir:Module birMod, *Options options) returns [llvm:Module, TypeUsage]|BuildError {
    llvm:Context llContext = new;
    bir:ModuleId modId = birMod.getId();
    llvm:Module llMod = llContext.createModule();
    bir:File[] partFiles = birMod.getPartFiles();
    ModuleDI? di = ();
    if options.debugLevel > 0 {
        di = createModuleDI(llMod, partFiles, options.debugLevel == DEBUG_FULL);
    }
    llvm:FunctionDefn[] llFuncs = [];
    DISubprogram[] diFuncs = [];
    llvm:FunctionType[] llFuncTypes = [];
    llvm:Builder builder = llContext.createBuilder();
    Module mod = {
        bir: birMod,
        modId,
        llContext,
        llMod,
        partFiles,
        di,
        typeContext: birMod.getTypeContext(),
        functionDefns: llFuncs,
        stackGuard: llMod.addGlobal(llvm:pointerType("i8"), mangleRuntimeSymbol("stack_guard")),
        llInitTypes: createInitTypes(llContext)
    };
    bir:Function[] functions = birMod.getFunctions();
    bir:FunctionCode[] functionCodes = from int i in 0 ..< functions.length()
                                         select check birMod.generateFunctionCode(i);
    foreach int i in 0 ..< functions.length() {
        bir:Function func = functions[i];
        llvm:FunctionType ty = buildFunctionSignature(func.decl);
        llFuncTypes.push(ty);
        var [mangledName, identifier] = functionIdentifiers(modId, func);
        llvm:FunctionDefn llFunc = llMod.addFunctionDefn(mangledName, ty);
        boolean isPublic = func is bir:AnonFunction ? false : func.symbol.isPublic;
        if di != () {
            DISubprogram diFunc = createFunctionDI(di, partFiles, func, llFunc, mangledName, identifier);
            diFuncs.push(diFunc);
            llFunc.setSubprogram(diFunc);
        }   
        if !(options.gcName == ()) {
            llFunc.setGC(options.gcName);
        }
        if !isPublic {
            llFunc.setLinkage("internal");
        }
        llFuncs.push(llFunc);
    }
    foreach int i in 0 ..< functions.length() {
        bir:FunctionCode code = i < functionCodes.length() ? functionCodes[i] : check birMod.generateFunctionCode(i);
        check buildFunction(builder, birMod, mod, di != () ? diFuncs[i] : (), llFuncs[i], functions[i], code);
    }
    check birMod.finish();
    return [llMod, createTypeUsage(mod.usedSemTypes)];
}

function functionIdentifiers(bir:ModuleId modId, bir:Function func) returns [string, string] {
    if func is bir:AnonFunction {
        string mangledName = anonFunctionSymbol(func.index);
        return [mangledName, mangledName];
    }
    string mangledName = mangleInternalSymbol(modId, func.symbol);
    string identifier = func.symbol.identifier;
    return [mangledName, identifier];
}

function buildFunction(llvm:Builder builder, bir:Module birMod, Module mod, DISubprogram? diFunc,
                       llvm:FunctionDefn llFunc, bir:Function birFunc, bir:FunctionCode code) returns BuildError? {
    check bir:verifyFunctionCode(birMod, birFunc, code);
    Scaffold scaffold = new(mod, llFunc, diFunc, builder, birFunc, code);
    buildPrologue(builder, scaffold, birFunc.position);
    check buildFunctionBody(builder, scaffold, code.blocks, calculateBuildOrder(code.blocks));
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
        if used.constructType != () {
            use = USED_CONSTRUCT;
        }
        if used.typeTest != () {
            use |= USED_TYPE_TEST;
        }
        if used.exactify != () {
            use |= USED_EXACTIFY;
        }
        if used.called != () {
            use |= USED_CALLED;
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

function createFunctionDI(ModuleDI mod, bir:File[] files, bir:Function birFunc, llvm:FunctionDefn llFunc, string mangledName, string identifier) returns DISubprogram {
    int partIndex = functionPartIndex(birFunc);
    var [lineNo, _] = files[partIndex].lineColumn(birFunc.position); 
    DIFile file = mod.files[partIndex];
    return mod.builder.createFunction({
        file,
        scope: file, // XXX Should we use the compileUnit or the File here?
        ty: mod.funcType,
        linkageName: mangledName,
        lineNo,
        isDefinition: true,
        name: identifier,
        scopeLine: lineNo // XXX should be line number of opening brace
    });
}

function buildFunctionBody(llvm:Builder builder, Scaffold scaffold, bir:BasicBlock[] blocks, bir:Label[] buildOrder) returns BuildError? {
    foreach var l in buildOrder {
        check buildBasicBlock(builder, scaffold, blocks[l]);
    }
}
