import wso2/nballerina.err;
import wso2/nballerina.bir;
import wso2/nballerina.print.llvm;

public function buildModule(bir:Module birMod, llvm:Context llContext, *Options options) returns llvm:Module|BuildError {
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
        llvm:FunctionType ty = check buildFunctionSignature(defn.signature, err:location(defnFile, defn.position));
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
    return llMod;
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

function buildPrologue(llvm:Builder builder, Scaffold scaffold, bir:Position pos) {
    llvm:BasicBlock overflowBlock = scaffold.addBasicBlock();
    llvm:BasicBlock firstBlock = scaffold.basicBlock(0);
    builder.condBr(builder.iCmp("ult", builder.alloca("i8"), builder.load(scaffold.stackGuard())),
                   overflowBlock, firstBlock);
    builder.positionAtEnd(overflowBlock);
    buildCallPanic(builder, scaffold, buildErrorForConstPanic(builder, scaffold, PANIC_STACK_OVERFLOW, pos));
    builder.positionAtEnd(firstBlock);
    scaffold.saveParams(builder);
}


function buildFunctionBody(llvm:Builder builder, Scaffold scaffold, bir:FunctionCode code) returns BuildError? {
    foreach var b in code.blocks {
        check buildBasicBlock(builder, scaffold, b);
    }
}

function buildBasicBlock(llvm:Builder builder, Scaffold scaffold, bir:BasicBlock block) returns BuildError? {
    scaffold.setBasicBlock(block);
    builder.positionAtEnd(scaffold.basicBlock(block.label));
    foreach var insn in block.insns {
        if insn is bir:IntArithmeticBinaryInsn {
            buildArithmeticBinary(builder, scaffold, insn);
        }
        else if insn is bir:IntNoPanicArithmeticBinaryInsn {
            buildNoPanicArithmeticBinary(builder, scaffold, insn);
        }
        else if insn is bir:IntBitwiseBinaryInsn {
            buildBitwiseBinary(builder, scaffold, insn);
        }
        else if insn is bir:CompareInsn {
            check buildCompare(builder, scaffold, insn);
        }
        else if insn is bir:EqualityInsn {
            check buildEquality(builder, scaffold, insn);
        }
        else if insn is bir:BooleanNotInsn {
            buildBooleanNot(builder, scaffold, insn);
        }
        else if insn is bir:RetInsn {
            check buildRet(builder, scaffold, insn);
        }
        else if insn is bir:AssignInsn {
            check buildAssign(builder, scaffold, insn);
        }
        else if insn is bir:TypeCastInsn {
            check buildTypeCast(builder, scaffold, insn);
        }
        else if insn is bir:ConvertToIntInsn {
            check buildConvertToInt(builder, scaffold, insn);
        }
        else if insn is bir:ConvertToFloatInsn {
            check buildConvertToFloat(builder, scaffold, insn);
        }
        else if insn is bir:TypeTestInsn {
            check buildTypeTest(builder, scaffold, insn);
        }
        else if insn is bir:CondNarrowInsn {
            check buildCondNarrow(builder, scaffold, insn);
        }
        else if insn is bir:CallInsn {
            check buildCall(builder, scaffold, insn);
        }
        else if insn is bir:ListConstructInsn {
            check buildListConstruct(builder, scaffold, insn);
        }
        else if insn is bir:ListGetInsn {
            check buildListGet(builder, scaffold, insn);
        }
        else if insn is bir:ListSetInsn {
            check buildListSet(builder, scaffold, insn);
        }
        else if insn is bir:BranchInsn {
            check buildBranch(builder, scaffold, insn);
        }
        else if insn is bir:MappingConstructInsn {
            check buildMappingConstruct(builder, scaffold, insn);
        }
        else if insn is bir:MappingGetInsn {
            check buildMappingGet(builder, scaffold, insn);
        }
        else if insn is bir:MappingSetInsn {
            check buildMappingSet(builder, scaffold, insn);
        }
        else if insn is bir:StringConcatInsn {
            check buildStringConcat(builder, scaffold, insn);
        }
        else if insn is bir:CondBranchInsn {
            check buildCondBranch(builder, scaffold, insn);
        }
        else if insn is bir:AbnormalRetInsn {
            buildAbnormalRet(builder, scaffold, insn);
        }
        else if insn is bir:PanicInsn {
            buildPanic(builder, scaffold, insn);
        }
        else if insn is bir:ErrorConstructInsn {
            check buildErrorConstruct(builder, scaffold, insn);
        }
        else if insn is bir:FloatArithmeticBinaryInsn {
            buildFloatArithmeticBinary(builder, scaffold, insn);
        }
        else if insn is bir:FloatNegateInsn {
            buildFloatNegate(builder, scaffold, insn);
        }
        else {
            bir:CatchInsn unused = insn;
            // nothing to do
            // scaffold.panicAddress uses this to figure out where to store the panic info
        }
        scaffold.clearDebugLocation(builder);
    }
}
