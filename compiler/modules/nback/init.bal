import wso2/nballerina.bir;
import wso2/nballerina.print.llvm;

const USER_MAIN_NAME = "main";

public function buildInitModule(bir:ModuleId entryModId, map<bir:FunctionSignature> publicFuncs, llvm:Context llContext) returns llvm:Module|BuildError {
    llvm:Module llMod = llContext.createModule();
    llvm:Builder builder = llContext.createBuilder();
    check buildMain(entryModId, USER_MAIN_NAME, publicFuncs[USER_MAIN_NAME], llMod, builder);
    return llMod;
}

function buildMain(bir:ModuleId entryModId, string userMainName, bir:FunctionSignature? userMainSig, llvm:Module llMod, llvm:Builder builder) returns BuildError? {
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
