import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

public type TypeUsage readonly & record {|
    t:UniformTypeBitSet[] mapMemberTypes;
    t:UniformTypeBitSet[] arrayMemberTypes;
|};

public function buildModule(bir:Module birMod, llvm:Context llContext, *Options options) returns [llvm:Module, TypeUsage]|BuildError {
    bir:ModuleId modId = birMod.getId();
    llvm:Module llMod = llContext.createModule();
    bir:File[] partFiles = birMod.getPartFiles();
    ModuleDI? di = ();
    if options.debugLevel > 0 {
        di = createModuleDI(llMod, partFiles);
    } 
    bir:FunctionDefn[] functionDefns = birMod.getFunctionDefns();
    llvm:FunctionDefn[] llFuncs = [];
    DISubprogram[] diFuncs = [];
    llvm:FunctionType[] llFuncTypes = [];
    map<llvm:FunctionDefn> llFuncMap = {};
    foreach var defn in functionDefns {
        bir:File defnFile = partFiles[defn.partIndex];
        llvm:FunctionType ty = buildFunctionSignature(defn.signature);
        llFuncTypes.push(ty);
        bir:InternalSymbol symbol = defn.symbol;
        string mangledName = mangleInternalSymbol(modId, symbol);
        llvm:FunctionDefn llFunc = llMod.addFunctionDefn(mangledName, ty);
        if !(di is ()) {
            DISubprogram diFunc = createFunctionDI(di, partFiles, defn, llFunc, mangledName);
            diFuncs.push(diFunc);
            llFunc.setSubprogram(diFunc);
        }   
        if !(options.gcName is ()) {
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
        llContext,
        llMod,
        partFiles,
        di,
        typeContext: birMod.getTypeContext(),
        functionDefns: llFuncMap,
        stackGuard: llMod.addGlobal(llvm:pointerType("i8"), mangleRuntimeSymbol("stack_guard"))
    };  
    foreach int i in 0 ..< functionDefns.length() {
        bir:FunctionDefn defn = functionDefns[i];
        bir:FunctionCode code = check birMod.generateFunctionCode(i);
        check bir:verifyFunctionCode(birMod, defn, code);
        DISubprogram? diFunc = di is () ? () : diFuncs[i];
        Scaffold scaffold = new(mod, llFuncs[i], diFunc, builder, defn, code);
        buildPrologue(builder, scaffold, defn.position);
        check buildFunctionBody(builder, scaffold, code);
    }
    check birMod.finish();
    return [llMod, { mapMemberTypes: [], arrayMemberTypes: [] }];
}


function createModuleDI(llvm:Module mod, bir:File[] partFiles) returns ModuleDI {
    DIBuilder builder = mod.createDIBuilder();
    mod.addModuleFlag("error", ["Debug Info Version", 3]);
    DIFile[] files = from var f in partFiles select builder.createFile(f.filename(), f.directory() ?: "");
    DICompileUnit compileUnit = builder.createCompileUnit(file=files[0]);
    DISubroutineType funcType = builder.createSubroutineType(files[0]);
    return { builder, files, compileUnit, funcType };
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

function buildFunctionBody(llvm:Builder builder, Scaffold scaffold, bir:FunctionCode code) returns BuildError? {
    foreach var b in code.blocks {
        check buildBasicBlock(builder, scaffold, b);
    }
}
