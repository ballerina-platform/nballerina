import wso2/nballerina.err;
import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

type BuildError err:Semantic|err:Unimplemented;

type Alignment 1|8;

// Pointer tagging
// JBUG #31394 would be better to use shifts for these
                     //1234567812345678
const TAG_FACTOR   = 0x0100000000000000;
const POINTER_MASK = 0x00ffffffffffffff;

const int TAG_MASK     = 0x1f * TAG_FACTOR;
const TAG_NIL      = 0;
const int TAG_BOOLEAN  = t:UT_BOOLEAN * TAG_FACTOR;
const int TAG_INT      = t:UT_INT * TAG_FACTOR;
const int TAG_STRING   = t:UT_STRING * TAG_FACTOR;

const int TAG_LIST_RW  = t:UT_LIST_RW * TAG_FACTOR;

const HEAP_ADDR_SPACE = 1;
const ALIGN_HEAP = 8;

const LLVM_INT = "i64";
const LLVM_BOOLEAN = "i1";
const LLVM_VOID = "void";

final llvm:PointerType LLVM_TAGGED_PTR = heapPointerType("i8");
final llvm:PointerType LLVM_NIL_TYPE = LLVM_TAGGED_PTR;
final llvm:PointerType LLVM_TAGGED_PTR_WITHOUT_ADDR_SPACE = llvm:pointerType("i8");

type ValueType llvm:IntegralType;

// A Repr is way of representing values.
// It's a mapping from a SemType to an LLVM type.

enum UniformBaseRepr {
    BASE_REPR_INT,
    BASE_REPR_BOOLEAN,
    BASE_REPR_ERROR
}

const BASE_REPR_VOID = "BASE_REPR_VOID";
const BASE_REPR_TAGGED = "BASE_REPR_TAGGED";
type BaseRepr UniformBaseRepr|BASE_REPR_TAGGED;
type RetBaseRepr BaseRepr|BASE_REPR_VOID;

type UniformRepr readonly & record {|
    UniformBaseRepr base;
    llvm:IntegralType llvm;
    t:UniformTypeBitSet subtype?;
|};

// Maps any Ballerina value to a tagged pointer
type TaggedRepr readonly & record {|
    BaseRepr base;
    t:UniformTypeBitSet subtype;
    llvm:IntegralType llvm;
|};

type Repr UniformRepr|TaggedRepr;

type VoidRepr readonly & record {|
    BASE_REPR_VOID base;
    LLVM_VOID llvm;
|};

type RetRepr Repr|VoidRepr;

const PANIC_ARITHMETIC_OVERFLOW = 1;
const PANIC_DIVIDE_BY_ZERO = 2;
const PANIC_TYPE_CAST = 3;
const PANIC_STACK_OVERFLOW = 4;
const PANIC_INDEX_OUT_OF_BOUNDS = 5;
const PANIC_LIST_TOO_LONG = 6;

type PanicIndex PANIC_ARITHMETIC_OVERFLOW|PANIC_DIVIDE_BY_ZERO|PANIC_TYPE_CAST|PANIC_STACK_OVERFLOW|PANIC_INDEX_OUT_OF_BOUNDS;

type RuntimeFunctionName "panic"|"alloc"|"list_set"|"mapping_set"|"mapping_get"|"mapping_init_member"|"mapping_construct"|"int_to_tagged"|"tagged_to_int"|"string_eq"|"string_cmp"|"eq";

type RuntimeFunction readonly & record {|
    RuntimeFunctionName name;
    llvm:FunctionType ty;
    llvm:EnumAttribute[] attrs;
|};

final RuntimeFunction panicFunction = {
    name: "panic",
    ty: {
        returnType: "void",
        paramTypes: ["i64"]
    },
    attrs: ["noreturn", "cold"]
};

final RuntimeFunction allocFunction = {
    name: "alloc",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: ["i64"]
    },
    attrs: []
};

final RuntimeFunction listSetFunction = {
    name: "list_set",
    ty: {
        returnType: REPR_ERROR.llvm,
        paramTypes: [LLVM_TAGGED_PTR, "i64", LLVM_TAGGED_PTR]
    },
    attrs: []
};

final RuntimeFunction mappingSetFunction = {
    name: "mapping_set",
    ty: {
        returnType: REPR_VOID.llvm,
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: []
};

final RuntimeFunction mappingGetFunction = {
    name: "mapping_get",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};


final RuntimeFunction mappingInitMemberFunction = {
    name: "mapping_init_member",
    ty: {
        returnType: REPR_VOID.llvm,
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: []
};

final RuntimeFunction mappingConstructFunction = {
    name: "mapping_construct",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: ["i64"]
    },
    attrs: []
};

final RuntimeFunction intToTaggedFunction = {
    name: "int_to_tagged",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: ["i64"]
    },
    attrs: []
};

final RuntimeFunction taggedToIntFunction = {
    name: "tagged_to_int",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR]
    },
    attrs: []
};

final RuntimeFunction eqFunction = {
    name: "eq",
    ty: {
        returnType: "i1",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: [["return", "zeroext"]]
};

final RuntimeFunction stringEqFunction = {
    name: "string_eq",
    ty: {
        returnType: "i1",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: [["return", "zeroext"]]
};

final RuntimeFunction stringCmpFunction = {
    name: "string_cmp",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: []
};

final bir:ModuleId runtimeModule = {
    organization: "ballerinai",
    names: ["runtime"]
};

type ImportedFunction record {|
    readonly bir:ExternalSymbol symbol;
    llvm:FunctionDecl decl;
|};

type ImportedFunctionTable table<ImportedFunction> key(symbol);

const STRING_VARIANT_SMALL = 0;
const STRING_VARIANT_MEDIUM = 1;
type StringVariant STRING_VARIANT_SMALL|STRING_VARIANT_MEDIUM;

type StringDefn llvm:ConstPointerValue;

type Module record {|
    llvm:Context llContext;
    llvm:Module llMod;
    // LLVM functions in the module indexed by (unmangled) identifier within the module
    map<llvm:FunctionDefn> functionDefns;
     // List of all imported functions that have been added to the LLVM module
    ImportedFunctionTable importedFunctions = table [];
    llvm:PointerValue stackGuard;
    map<StringDefn> stringDefns = {};
|};

class Scaffold {
    private final Module mod;
    private final llvm:FunctionDefn llFunc;

    // Representation for each BIR register
    private final Repr[] reprs;
    private final RetRepr retRepr;
    // LLVM ValueRef referring to address (allocated with alloca)
    // of each BIR register
    private final llvm:PointerValue[] addresses;
    // LLVM basic blocks indexed by BIR label
    private final llvm:BasicBlock[] blocks;
    private bir:Label? onPanicLabel = ();
    private final bir:BasicBlock[] birBlocks;
    private final int nParams;

    function init(Module mod, llvm:FunctionDefn llFunc, llvm:Builder builder,  bir:FunctionDefn defn, bir:FunctionCode code) returns BuildError? {
        self.mod = mod;
        self.llFunc = llFunc;
        self.birBlocks = code.blocks;
        final Repr[] reprs = from var reg in code.registers select check semTypeRepr(reg.semType);
        self.reprs = reprs;
        self.retRepr = check semTypeRetRepr(defn.signature.returnType);
        self.nParams = defn.signature.paramTypes.length();
        llvm:BasicBlock entry = llFunc.appendBasicBlock();

        self.blocks = from var b in code.blocks select llFunc.appendBasicBlock();

        builder.positionAtEnd(entry);
        self.addresses = [];
        foreach int i in 0 ..< reprs.length() {
            self.addresses.push(builder.alloca(reprs[i].llvm, (), code.registers[i].varName));
        } 
    }

    function saveParams(llvm:Builder builder) {
         foreach int i in 0 ..< self.nParams {
            builder.store(self.llFunc.getParam(i), self.addresses[i]);
        }
    }

    function address(bir:Register r) returns llvm:PointerValue => self.addresses[r.number];
       
    function basicBlock(int label) returns llvm:BasicBlock  => self.blocks[label];

    function getRepr(bir:Register r) returns Repr => self.reprs[r.number];

    function getRetRepr() returns RetRepr => self.retRepr;

    function getFunctionDefn(string name) returns llvm:FunctionDefn => self.mod.functionDefns.get(name);

    function getModule() returns llvm:Module => self.mod.llMod;

    function stackGuard() returns llvm:PointerValue => self.mod.stackGuard;

    function getImportedFunction(bir:ExternalSymbol symbol) returns llvm:FunctionDecl? {
        ImportedFunction? fn = self.mod.importedFunctions[symbol];
        return fn is () ? () : fn.decl;
    }
    
    function addImportedFunction(bir:ExternalSymbol symbol, llvm:FunctionDecl decl) {
        self.mod.importedFunctions.add({symbol, decl});
    }

    function getIntrinsicFunction(llvm:IntrinsicFunctionName name) returns llvm:FunctionDecl {
        return self.mod.llMod.getIntrinsicDeclaration(name);
    }

    function getString(string str) returns StringDefn|BuildError {
        StringDefn? curDefn = self.mod.stringDefns[str];
        if !(curDefn is ()) {
            return curDefn;
        }
        StringDefn newDefn = check addStringDefn(self.mod.llContext, self.mod.llMod, self.mod.stringDefns.length(), str);
        self.mod.stringDefns[str] = newDefn;
        return newDefn;
    }

    function addBasicBlock() returns llvm:BasicBlock {
        return self.llFunc.appendBasicBlock();
    }

    function setBasicBlock(bir:BasicBlock block) {
        self.onPanicLabel = block.onPanic;
    }

    function getOnPanic() returns llvm:BasicBlock {
        return self.blocks[<bir:Label>self.onPanicLabel];
    }

    function panicAddress() returns llvm:PointerValue {
        bir:Insn catchInsn = self.birBlocks[<bir:Label>self.onPanicLabel].insns[0];
        return self.address((<bir:CatchInsn>catchInsn).result);
    }
}

function buildModule(bir:Module birMod, llvm:Context llContext, *Options options) returns llvm:Module|BuildError {
    bir:ModuleId modId = birMod.getId();
    llvm:Module llMod = llContext.createModule();
    bir:FunctionDefn[] functionDefns = birMod.getFunctionDefns();
    llvm:FunctionDefn[] llFuncs = [];
    llvm:FunctionType[] llFuncTypes = [];
    map<llvm:FunctionDefn> llFuncMap = {};
    foreach var defn in functionDefns {
        llvm:FunctionType ty = check buildFunctionSignature(defn.signature);
        llFuncTypes.push(ty);
        bir:InternalSymbol symbol = defn.symbol;
        llvm:FunctionDefn llFunc = llMod.addFunctionDefn(mangleInternalSymbol(modId, symbol), ty);
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
        llContext,
        llMod,
        functionDefns: llFuncMap,
        stackGuard: llMod.addGlobal(llvm:pointerType("i8"), mangleRuntimeSymbol("stack_guard"))
    };  
    foreach int i in 0 ..< functionDefns.length() {
        bir:FunctionDefn defn = functionDefns[i];
        bir:FunctionCode code = check birMod.generateFunctionCode(i);
        check bir:verifyFunctionCode(birMod, defn, code);
        Scaffold scaffold = check new(mod, llFuncs[i], builder, defn, code);
        buildPrologue(builder, scaffold, defn.position);
        check buildFunctionBody(builder, scaffold, code);
    }
    return llMod;
}

function buildPrologue(llvm:Builder builder, Scaffold scaffold, err:Position pos) {
    llvm:BasicBlock overflowBlock = scaffold.addBasicBlock();
    llvm:BasicBlock firstBlock = scaffold.basicBlock(0);
    builder.condBr(builder.iCmp("ult", builder.alloca("i8"), builder.load(scaffold.stackGuard())),
                   overflowBlock, firstBlock);
    builder.positionAtEnd(overflowBlock);
    buildPanic(builder, scaffold, buildConstPanicError(PANIC_STACK_OVERFLOW, pos));
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
        else if insn is bir:CondBranchInsn {
            check buildCondBranch(builder, scaffold, insn);
        }
        else if insn is bir:CatchInsn {
            // nothing to do
            // scaffold.panicAddress uses this to figure out where to store the panic info
        }
        else if insn is bir:AbnormalRetInsn {
            buildAbnormalRet(builder, scaffold, insn);
        }
        else {
            return err:unimplemented(`BIR insn ${insn.name} not implemented`);
        }
    }
}

function buildBranch(llvm:Builder builder, Scaffold scaffold, bir:BranchInsn insn) returns BuildError? {
    builder.br(scaffold.basicBlock(insn.dest));
}

function buildCondBranch(llvm:Builder builder, Scaffold scaffold, bir:CondBranchInsn insn) returns BuildError? {
    builder.condBr(builder.load(scaffold.address(insn.operand)),
                   scaffold.basicBlock(insn.ifTrue),
                   scaffold.basicBlock(insn.ifFalse));
}

function buildRet(llvm:Builder builder, Scaffold scaffold, bir:RetInsn insn) returns BuildError? {
    RetRepr repr = scaffold.getRetRepr();
    builder.ret(repr is Repr ? check buildRepr(builder, scaffold, insn.operand, repr) : ());
}

function buildAbnormalRet(llvm:Builder builder, Scaffold scaffold, bir:AbnormalRetInsn insn) {
    buildPanic(builder, scaffold, buildInt(builder, scaffold, insn.operand));
}

function buildPanic(llvm:Builder builder, Scaffold scaffold, llvm:Value panicCode) {
    _ = builder.call(buildRuntimeFunctionDecl(scaffold, panicFunction), [panicCode]);
    builder.unreachable();
}

function buildAssign(llvm:Builder builder, Scaffold scaffold, bir:AssignInsn insn) returns BuildError? {
    builder.store(check buildRepr(builder, scaffold, insn.operand, scaffold.getRepr(insn.result)), scaffold.address(insn.result));
}

function buildCall(llvm:Builder builder, Scaffold scaffold, bir:CallInsn insn) returns BuildError? {
    // Handler indirect calls later
    bir:FunctionRef funcRef = <bir:FunctionRef>insn.func;
    llvm:Value[] args = [];
    t:SemType[] paramTypes = funcRef.signature.paramTypes;
    foreach int i in 0 ..< insn.args.length() {
        args.push(check buildRepr(builder, scaffold, insn.args[i], check semTypeRepr(paramTypes[i])));
    }

    bir:Symbol funcSymbol = funcRef.symbol;
    llvm:Function func;
    if funcSymbol is bir:InternalSymbol {
        func = scaffold.getFunctionDefn(funcSymbol.identifier);
    }
    else {
        func = check buildFunctionDecl(scaffold, funcSymbol, funcRef.signature);
    }  
    llvm:Value? retValue = builder.call(func, args);
    RetRepr retRepr = check semTypeRetRepr(funcRef.signature.returnType);
    check buildStoreRet(builder, scaffold, retRepr, retValue, insn.result);
}

const LLVM_INDEX = "i32";

function buildListConstruct(llvm:Builder builder, Scaffold scaffold, bir:ListConstructInsn insn) returns BuildError? {
    final llvm:Type unsizedArrayType = llvm:arrayType(LLVM_TAGGED_PTR, 0);
    final llvm:PointerType ptrUnsizedArrayType = heapPointerType(unsizedArrayType);
    final llvm:Type structType = llvm:structType([LLVM_INT, LLVM_INT, ptrUnsizedArrayType]);
    final int length = insn.operands.length();
    llvm:PointerValue array;
    if length > 0 {
        final llvm:Type sizedArrayType = llvm:arrayType(LLVM_TAGGED_PTR, length);
        final llvm:PointerType ptrSizedArrayType = heapPointerType(sizedArrayType);

        array = buildTypedAlloc(builder, scaffold, sizedArrayType);
        foreach int i in 0 ..< length {
            builder.store(check buildRepr(builder, scaffold, insn.operands[i], REPR_ANY),
                          builder.getElementPtr(array, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INT, i)], "inbounds"));
        }
        array = builder.bitCast(array, ptrUnsizedArrayType);
    }
    else {
        array = llvm:constNull(ptrUnsizedArrayType);
    }
    final llvm:PointerValue structMem = buildUntypedAlloc(builder, scaffold, structType);
    final llvm:PointerValue struct = builder.bitCast(structMem, heapPointerType(structType));
    foreach int i in 0 ..< 2 {
        builder.store(llvm:constInt(LLVM_INT, length),
                      builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, i)], "inbounds"));
    }
    builder.store(array,
                  builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 2)], "inbounds"));
    // Don't need to convert here
    builder.store(buildTaggedPtr(builder, structMem, TAG_LIST_RW), scaffold.address(insn.result));
}

function buildListGet(llvm:Builder builder, Scaffold scaffold, bir:ListGetInsn insn) returns BuildError? {
    final llvm:Type unsizedArrayType = llvm:arrayType(LLVM_TAGGED_PTR, 0);
    final llvm:PointerType ptrUnsizedArrayType = heapPointerType(unsizedArrayType);
    final llvm:Type structType = llvm:structType([LLVM_INT, LLVM_INT, ptrUnsizedArrayType]);

    llvm:Value index = buildInt(builder, scaffold, insn.operand);
    // struct is the untagged pointer to the struct
    llvm:PointerValue struct = builder.bitCast(<llvm:PointerValue>builder.call(scaffold.getIntrinsicFunction("ptrmask.p1i8.i64"),
                                                                               [builder.load(scaffold.address(insn.list)), llvm:constInt(LLVM_INT, POINTER_MASK)]),
                                               heapPointerType(structType));
    llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
    llvm:BasicBlock outOfBoundsBlock = scaffold.addBasicBlock();
    builder.condBr(builder.iCmp("ult",
                                index,
                                builder.load(builder.getElementPtr(struct, [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 0)]), ALIGN_HEAP)),
                   continueBlock,
                   outOfBoundsBlock);
    builder.positionAtEnd(outOfBoundsBlock);
    builder.store(buildConstPanicError(PANIC_INDEX_OUT_OF_BOUNDS, insn.position), scaffold.panicAddress());
    builder.br(scaffold.getOnPanic());
    builder.positionAtEnd(continueBlock);
    // array is a pointer to the array
    llvm:PointerValue array = <llvm:PointerValue>builder.load(builder.getElementPtr(struct,
                                                                                    [llvm:constInt(LLVM_INT, 0), llvm:constInt(LLVM_INDEX, 2)], "inbounds"),
                                                                                    ALIGN_HEAP);
    builder.store(builder.load(builder.getElementPtr(array,
                                                     [llvm:constInt(LLVM_INT, 0), index], "inbounds"),
                                                     ALIGN_HEAP),
                  scaffold.address(insn.result));
}

function buildListSet(llvm:Builder builder, Scaffold scaffold, bir:ListSetInsn insn) returns BuildError? {
    llvm:Value? err = builder.call(buildRuntimeFunctionDecl(scaffold, listSetFunction),
                                   [builder.load(scaffold.address(insn.list)),
                                    buildInt(builder, scaffold, insn.index),
                                    check buildRepr(builder, scaffold, insn.operand, REPR_ANY)]);
    llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
    llvm:BasicBlock errorBlock = scaffold.addBasicBlock();
    builder.condBr(builder.iCmp("eq", <llvm:Value>err, llvm:constInt("i64", 0)),
                   continueBlock,
                   errorBlock);
    builder.positionAtEnd(errorBlock);
    builder.store(buildPanicError(builder, <llvm:Value>err, insn.position), scaffold.panicAddress());
    builder.br(scaffold.getOnPanic());
    builder.positionAtEnd(continueBlock);
}

function buildMappingConstruct(llvm:Builder builder, Scaffold scaffold, bir:MappingConstructInsn insn) returns BuildError? {
    int length = insn.operands.length();
    llvm:PointerValue m = <llvm:PointerValue>builder.call(buildRuntimeFunctionDecl(scaffold, mappingConstructFunction),
                                                          [llvm:constInt(LLVM_INT, length)]);
    foreach int i in 0 ..< length {
        _ = builder.call(buildRuntimeFunctionDecl(scaffold, mappingInitMemberFunction),
                         [
                             m,
                             check buildConstString(builder, scaffold, insn.fieldNames[i]),
                             check buildRepr(builder, scaffold, insn.operands[i], REPR_ANY)
                         ]);
    }
    builder.store(m, scaffold.address(insn.result));
}

function buildMappingGet(llvm:Builder builder, Scaffold scaffold, bir:MappingGetInsn insn) returns BuildError? {
    llvm:Value value = <llvm:Value>builder.call(buildRuntimeFunctionDecl(scaffold, mappingGetFunction),
                                                [
                                                    builder.load(scaffold.address(insn.operands[0])),
                                                    check buildString(builder, scaffold, insn.operands[1])
                                                ]);
    builder.store(value, scaffold.address(insn.result));
}

function buildMappingSet(llvm:Builder builder, Scaffold scaffold, bir:MappingSetInsn insn) returns BuildError? {
    _ = builder.call(buildRuntimeFunctionDecl(scaffold, mappingSetFunction),
                 [
                     builder.load(scaffold.address(insn.operands[0])),
                     check buildString(builder, scaffold, insn.operands[1]),
                     check buildRepr(builder, scaffold, insn.operands[2], REPR_ANY)
                 ]);
}

function buildStoreRet(llvm:Builder builder, Scaffold scaffold, RetRepr retRepr, llvm:Value? retValue, bir:Register reg) returns BuildError? {
    if retRepr is Repr {
        builder.store(check buildConvertRepr(builder, scaffold, retRepr, <llvm:Value>retValue, scaffold.getRepr(reg)),
                      scaffold.address(reg));
    }
    else {
         builder.store(buildConstNil(), scaffold.address(reg));
    }
}

function buildFunctionDecl(Scaffold scaffold, bir:ExternalSymbol symbol, bir:FunctionSignature sig) returns llvm:FunctionDecl|BuildError {
    llvm:FunctionDecl? decl = scaffold.getImportedFunction(symbol);
    if !(decl is ()) {
        return decl;
    }
    else {
        llvm:FunctionType ty = check buildFunctionSignature(sig);
        llvm:Module mod = scaffold.getModule();
        llvm:FunctionDecl d = mod.addFunctionDecl(mangleExternalSymbol(symbol), ty);
        scaffold.addImportedFunction(symbol, d);
        return d;
    }
}

function buildRuntimeFunctionDecl(Scaffold scaffold, RuntimeFunction rf) returns llvm:FunctionDecl {
    bir:ExternalSymbol symbol =  { module: runtimeModule, identifier: rf.name };
    llvm:FunctionDecl? decl = scaffold.getImportedFunction(symbol);
    if !(decl is ()) {
        return decl;
    }
    else {
        llvm:Module mod = scaffold.getModule();
        llvm:FunctionDecl f = mod.addFunctionDecl(mangleRuntimeSymbol(rf.name), rf.ty);
        foreach var attr in rf.attrs {
            f.addEnumAttribute(attr);
        }
        scaffold.addImportedFunction(symbol, f);
        return f;
    } 
}

function buildArithmeticBinary(llvm:Builder builder, Scaffold scaffold, bir:IntArithmeticBinaryInsn insn) {
    llvm:IntrinsicFunctionName? intrinsicName = buildBinaryIntIntrinsic(insn.op);
    llvm:Value lhs = buildInt(builder, scaffold, insn.operands[0]);
    llvm:Value rhs = buildInt(builder, scaffold, insn.operands[1]);
    llvm:Value result;
    llvm:BasicBlock? joinBlock = ();
    if intrinsicName != () {
        llvm:FunctionDecl intrinsicFunction = scaffold.getIntrinsicFunction(intrinsicName);
        // XXX better to distinguish builder.call and builder.callVoid
        llvm:Value resultWithOverflow = <llvm:Value>builder.call(intrinsicFunction, [lhs, rhs]);
        llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
        llvm:BasicBlock overflowBlock = scaffold.addBasicBlock();
        builder.condBr(builder.extractValue(resultWithOverflow, 1), overflowBlock, continueBlock);
        builder.positionAtEnd(overflowBlock);
        builder.store(buildConstPanicError(PANIC_ARITHMETIC_OVERFLOW, insn.position), scaffold.panicAddress());
        builder.br(scaffold.getOnPanic());
        builder.positionAtEnd(continueBlock);
        result = builder.extractValue(resultWithOverflow, 0);
    }
    else {
        llvm:BasicBlock zeroDivisorBlock = scaffold.addBasicBlock();
        llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
        builder.condBr(builder.iCmp("eq", rhs, llvm:constInt(LLVM_INT, 0)), zeroDivisorBlock, continueBlock);
        builder.positionAtEnd(zeroDivisorBlock);
        builder.store(buildConstPanicError(PANIC_DIVIDE_BY_ZERO, insn.position), scaffold.panicAddress());
        builder.br(scaffold.getOnPanic());
        builder.positionAtEnd(continueBlock);
        continueBlock = scaffold.addBasicBlock();
        llvm:BasicBlock overflowBlock = scaffold.addBasicBlock();
        builder.condBr(builder.iBitwise("and",
                                        builder.iCmp("eq", lhs, llvm:constInt(LLVM_INT, int:MIN_VALUE)),
                                        builder.iCmp("eq", rhs, llvm:constInt(LLVM_INT, -1))),
                       overflowBlock,
                       continueBlock);
        builder.positionAtEnd(overflowBlock);
        llvm:IntArithmeticSignedOp op;
        if insn.op == "/" {
            op = "sdiv";
            builder.store(buildConstPanicError(PANIC_ARITHMETIC_OVERFLOW, insn.position), scaffold.panicAddress());
            builder.br(scaffold.getOnPanic());
        }
        else {
            builder.store(llvm:constInt(LLVM_INT, 0), scaffold.address(insn.result));
            llvm:BasicBlock b = scaffold.addBasicBlock();
            builder.br(b);
            joinBlock = b;
            op = "srem";
        }
        builder.positionAtEnd(continueBlock);
        result = builder.iArithmeticSigned(op, lhs, rhs);
    }
    buildStoreInt(builder, scaffold, result, insn.result);                                  
    if !(joinBlock is ()) {
        builder.br(joinBlock);
        builder.positionAtEnd(joinBlock);
    }                         
}

function buildNoPanicArithmeticBinary(llvm:Builder builder, Scaffold scaffold, bir:IntNoPanicArithmeticBinaryInsn insn) {
    llvm:Value lhs = buildInt(builder, scaffold, insn.operands[0]);
    llvm:Value rhs = buildInt(builder, scaffold, insn.operands[1]);
    llvm:IntArithmeticOp op = arithmeticOps.get(insn.op);
    llvm:Value result = builder.iArithmeticNoWrap(op, lhs, rhs);
    buildStoreInt(builder, scaffold, result, insn.result);                                  
}

final readonly & map<llvm:IntBitwiseOp> binaryBitwiseOp = {
    "&": "and",
    "^": "xor",
    "|": "or",
    "<<": "shl",
    ">>": "ashr",
    ">>>" : "lshr"
};

function buildBitwiseBinary(llvm:Builder builder, Scaffold scaffold, bir:IntBitwiseBinaryInsn insn) {
    llvm:Value lhs = buildInt(builder, scaffold, insn.operands[0]);
    llvm:Value rhs = buildInt(builder, scaffold, insn.operands[1]);
    if insn.op is bir:BitwiseShiftOp {
        rhs = builder.iBitwise("and", llvm:constInt(LLVM_INT, 0x3F), rhs);
    }
    llvm:IntBitwiseOp op = binaryBitwiseOp.get(insn.op);
    llvm:Value result = builder.iBitwise(op, lhs, rhs);
    buildStoreInt(builder, scaffold, result, insn.result);                                  
}

function buildCompare(llvm:Builder builder, Scaffold scaffold, bir:CompareInsn insn) returns BuildError? {
    match insn.orderType {
        "int" => {
            buildStoreBoolean(builder, scaffold,
                              builder.iCmp(buildIntCompareOp(insn.op),
                                           buildInt(builder, scaffold, <bir:IntOperand>insn.operands[0]),
                                           buildInt(builder, scaffold, <bir:IntOperand>insn.operands[1])),
                              insn.result); 
        }
        "boolean" => {
            buildStoreBoolean(builder, scaffold,
                              builder.iCmp(buildBooleanCompareOp(insn.op),
                                           buildBoolean(builder, scaffold, <bir:BooleanOperand>insn.operands[0]),
                                           buildBoolean(builder, scaffold, <bir:BooleanOperand>insn.operands[1])),
                              insn.result);
        }
        "string" => {
            llvm:Value s1 = check buildString(builder, scaffold, <bir:StringOperand>insn.operands[0]);
            llvm:Value s2 = check buildString(builder, scaffold, <bir:StringOperand>insn.operands[1]);
            buildStoreBoolean(builder, scaffold,
                              builder.iCmp(buildIntCompareOp(insn.op),
                                           <llvm:Value>builder.call(buildRuntimeFunctionDecl(scaffold, stringCmpFunction), [s1, s2]),
                                           llvm:constInt(LLVM_INT, 0)),
                              insn.result);
        }
        _ => {
            panic err:impossible();
        }
    }
}

type CmpEqOp "ne"|"eq";

// For subset 2, == and === are the same: they differ only in when they are allowed
function buildEquality(llvm:Builder builder, Scaffold scaffold, bir:EqualityInsn insn) returns BuildError? {
    var [lhsRepr, lhsValue] = check buildReprValue(builder, scaffold, insn.operands[0]);
    var [rhsRepr, rhsValue] = check buildReprValue(builder, scaffold, insn.operands[1]);
    CmpEqOp op = insn.op[0] == "!" ?  "ne" : "eq"; 
    bir:Register result = insn.result;
    match [lhsRepr.base, rhsRepr.base] {
        [BASE_REPR_TAGGED, BASE_REPR_TAGGED] => {
            if reprIsNil(lhsRepr) || reprIsNil(rhsRepr) {
                return buildStoreBoolean(builder, scaffold, builder.iCmp(op, lhsValue, rhsValue), result);
            }
            else {
                return buildEqualTaggedTagged(builder, scaffold, op, <llvm:PointerValue>lhsValue, <llvm:PointerValue>rhsValue, result);
            }
        }
        [BASE_REPR_TAGGED, BASE_REPR_BOOLEAN] => {
            return buildEqualTaggedBoolean(builder, scaffold, op, <llvm:PointerValue>lhsValue, rhsValue, result);
        }
        [BASE_REPR_BOOLEAN, BASE_REPR_TAGGED] => {
            return buildEqualTaggedBoolean(builder, scaffold, op, <llvm:PointerValue>rhsValue, lhsValue, result);
        }
        [BASE_REPR_TAGGED, BASE_REPR_INT] => {
            return buildEqualTaggedInt(builder, scaffold, op, <llvm:PointerValue>lhsValue, rhsValue, result);
        }
        [BASE_REPR_INT, BASE_REPR_TAGGED] => {
            return buildEqualTaggedInt(builder, scaffold, op, <llvm:PointerValue>rhsValue, lhsValue, result);
        }
        [BASE_REPR_BOOLEAN, BASE_REPR_BOOLEAN]
        | [BASE_REPR_INT, BASE_REPR_INT] => {
             // no tags involved, same representation, boolean/int
            return buildStoreBoolean(builder, scaffold, builder.iCmp(op, lhsValue, rhsValue), result);
        }
    }
    return err:unimplemented("equality with two different untagged representations");    
}

function reprIsNil(Repr repr) returns boolean {
    return repr is TaggedRepr && repr.subtype == t:NIL;
}

function buildEqualTaggedBoolean(llvm:Builder builder, Scaffold scaffold, CmpEqOp op, llvm:PointerValue tagged, llvm:Value untagged, bir:Register result)  {
    buildStoreBoolean(builder, scaffold,
                      builder.iCmp(op, tagged, buildTaggedBoolean(builder, untagged)),
                      result);
}

function buildEqualTaggedInt(llvm:Builder builder, Scaffold scaffold, CmpEqOp op, llvm:PointerValue tagged, llvm:Value untagged, bir:Register result) {
    llvm:BasicBlock intTagBlock = scaffold.addBasicBlock();
    llvm:BasicBlock otherTagBlock = scaffold.addBasicBlock();
    llvm:BasicBlock joinBlock = scaffold.addBasicBlock();
    builder.condBr(buildHasTag(builder, tagged, TAG_INT), intTagBlock, otherTagBlock);
    builder.positionAtEnd(otherTagBlock);
    buildStoreBoolean(builder, scaffold,
                      // result is false if op is "eq", true if op is "ne"
                      buildConstBoolean(op == "ne"),
                      result);
    builder.br(joinBlock);
    builder.positionAtEnd(intTagBlock);
    buildStoreBoolean(builder, scaffold, builder.iCmp(op, buildUntagInt(builder, scaffold, tagged), untagged), result);
    builder.br(joinBlock);
    builder.positionAtEnd(joinBlock);
}

function buildEqualTaggedTagged(llvm:Builder builder, Scaffold scaffold, CmpEqOp op, llvm:PointerValue tagged1, llvm:PointerValue tagged2, bir:Register result) {
    llvm:Value b = <llvm:Value>builder.call(buildRuntimeFunctionDecl(scaffold, eqFunction), [tagged1, tagged2]);
    if op == "ne" {
        b = builder.iBitwise("xor", b, llvm:constInt(LLVM_BOOLEAN, 1));
    }
    buildStoreBoolean(builder, scaffold, b, result);
}

function buildTypeCast(llvm:Builder builder, Scaffold scaffold, bir:TypeCastInsn insn) returns BuildError? {
    var [repr, val] = check buildReprValue(builder, scaffold, insn.operand);
    if repr.base != BASE_REPR_TAGGED {
        return err:unimplemented("cast from untagged value"); // should not happen in subset 2
    }
    llvm:PointerValue tagged = <llvm:PointerValue>val;
    llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
    llvm:BasicBlock castFailBlock = scaffold.addBasicBlock();
    if insn.semType === t:BOOLEAN {
        builder.condBr(buildHasTag(builder, tagged, TAG_BOOLEAN), continueBlock, castFailBlock);
        builder.positionAtEnd(continueBlock);
        buildStoreBoolean(builder, scaffold, buildUntagBoolean(builder, tagged), insn.result);
    }
    else if insn.semType === t:INT {
        builder.condBr(buildHasTag(builder, tagged, TAG_INT), continueBlock, castFailBlock);
        builder.positionAtEnd(continueBlock);
        buildStoreInt(builder, scaffold, buildUntagInt(builder, scaffold, tagged), insn.result);
    }
    else if insn.semType === t:STRING {
        builder.condBr(buildHasTag(builder, tagged, TAG_STRING), continueBlock, castFailBlock);
        builder.positionAtEnd(continueBlock);
        builder.store(tagged, scaffold.address(insn.result));
    }
    else {
        return err:unimplemented("type cast other than to int or boolean"); // should not happen in subset 2
    }
    builder.positionAtEnd(castFailBlock);
    builder.store(buildConstPanicError(PANIC_TYPE_CAST, insn.position), scaffold.panicAddress());
    builder.br(scaffold.getOnPanic());
    builder.positionAtEnd(continueBlock);
}

function buildConstPanicError(PanicIndex panicIndex, err:Position pos) returns llvm:Value {
    // JBUG #31753 cast
    return llvm:constInt(LLVM_INT, <int>panicIndex | (pos.lineNumber << 8));
}

function buildPanicError(llvm:Builder builder, llvm:Value panicIndex, err:Position pos) returns llvm:Value {
    return builder.iBitwise("or", panicIndex, llvm:constInt(LLVM_INT, pos.lineNumber << 8));
}

function buildBooleanNot(llvm:Builder builder, Scaffold scaffold, bir:BooleanNotInsn insn) {
    buildStoreBoolean(builder, scaffold,
                      builder.iBitwise("xor", llvm:constInt(LLVM_BOOLEAN, 1), builder.load(scaffold.address(insn.operand))),
                      insn.result);
}

function buildStoreInt(llvm:Builder builder, Scaffold scaffold, llvm:Value value, bir:Register reg) {
    builder.store(scaffold.getRepr(reg).base == BASE_REPR_TAGGED ? buildTaggedInt(builder, scaffold, value) : value,
                  scaffold.address(reg));
}

function buildStoreBoolean(llvm:Builder builder, Scaffold scaffold, llvm:Value value, bir:Register reg) {
    builder.store(scaffold.getRepr(reg).base == BASE_REPR_TAGGED ? buildTaggedBoolean(builder, value) : value,
                  scaffold.address(reg));
}

function buildRepr(llvm:Builder builder, Scaffold scaffold, bir:Operand operand, Repr targetRepr) returns llvm:Value|BuildError {
    var [sourceRepr, value] = check buildReprValue(builder, scaffold, operand);
    return buildConvertRepr(builder, scaffold, sourceRepr, value, targetRepr);
}

function buildConvertRepr(llvm:Builder builder, Scaffold scaffold, Repr sourceRepr, llvm:Value value, Repr targetRepr) returns llvm:Value|BuildError {
    BaseRepr sourceBaseRepr = sourceRepr.base;
    BaseRepr targetBaseRepr = targetRepr.base;
    if sourceBaseRepr == targetBaseRepr {
        return value;
    }
    if targetBaseRepr == BASE_REPR_TAGGED {
        if sourceBaseRepr == BASE_REPR_INT {
            return buildTaggedInt(builder, scaffold, value);
        }
        else if sourceBaseRepr == BASE_REPR_BOOLEAN {
            return buildTaggedBoolean(builder, value);
        }
    }
    // this shouldn't ever happen I think
    return err:unimplemented("unimplemented conversion required");
}

function buildTaggedBoolean(llvm:Builder builder, llvm:Value value) returns llvm:Value {
    return builder.getElementPtr(llvm:constNull(LLVM_TAGGED_PTR),
                                     [builder.iBitwise("or",
                                                       builder.zExt(value, LLVM_INT),
                                                       llvm:constInt(LLVM_INT, TAG_BOOLEAN))]);
}

function buildTaggedInt(llvm:Builder builder, Scaffold scaffold, llvm:Value value) returns llvm:PointerValue {
    return <llvm:PointerValue>builder.call(buildRuntimeFunctionDecl(scaffold, intToTaggedFunction), [value]);
}

function buildTaggedPtr(llvm:Builder builder, llvm:PointerValue mem, int tag) returns llvm:PointerValue {
    return builder.getElementPtr(mem, [llvm:constInt(LLVM_INT, tag)]);
}

function buildTypedAlloc(llvm:Builder builder, Scaffold scaffold, llvm:Type ty) returns llvm:PointerValue {
    return builder.bitCast(buildUntypedAlloc(builder, scaffold, ty), heapPointerType(ty));
}

function buildUntypedAlloc(llvm:Builder builder, Scaffold scaffold, llvm:Type ty) returns llvm:PointerValue {
    return <llvm:PointerValue>builder.call(buildRuntimeFunctionDecl(scaffold, allocFunction),
                                           [llvm:constInt(LLVM_INT, typeSize(ty))]);
}

// XXX this should go in llvm module, because it needs to know about alignment
function typeSize(llvm:Type ty) returns int {
    if ty is llvm:PointerType || ty == "i64" {
        return 8;
    }
    else if ty is llvm:StructType {
        int size = 0;
        foreach var elemTy in ty.elementTypes {
            size += typeSize(elemTy);
        }
        return size;
    }
    else if ty is llvm:ArrayType {
        if ty.elementCount == 0 {
            panic error("cannot take size of 0-length array");
        }
        return ty.elementCount * typeSize(ty.elementType);
    }
    panic error("size of unsized type");
}

function buildHasTag(llvm:Builder builder, llvm:PointerValue tagged, int tag) returns llvm:Value {
    return builder.iCmp("eq", builder.iBitwise("and", buildTaggedPtrToInt(builder, tagged),
                                                       llvm:constInt(LLVM_INT, TAG_MASK)),
                              llvm:constInt(LLVM_INT, tag));
}

function buildUntagInt(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue tagged) returns llvm:Value {
    return <llvm:Value>builder.call(buildRuntimeFunctionDecl(scaffold, taggedToIntFunction), [tagged]);
}

function buildUntagBoolean(llvm:Builder builder, llvm:PointerValue tagged) returns llvm:Value {
    return builder.trunc(buildTaggedPtrToInt(builder, tagged), LLVM_BOOLEAN);
}

function buildTaggedPtrToInt(llvm:Builder builder, llvm:PointerValue tagged) returns llvm:Value {
    return builder.ptrToInt(builder.addrSpaceCast(tagged, LLVM_TAGGED_PTR_WITHOUT_ADDR_SPACE), LLVM_INT);
}

function buildReprValue(llvm:Builder builder, Scaffold scaffold, bir:Operand operand) returns [Repr, llvm:Value]|BuildError {
    if operand is bir:Register {
        return buildLoad(builder, scaffold, operand);
    }
    else if operand is string {
        return [REPR_STRING, check buildConstString(builder, scaffold, operand)];
    }
    else {
        return buildSimpleConst(operand);
    }
}

function buildConstString(llvm:Builder builder, Scaffold scaffold, string str) returns llvm:ConstPointerValue|BuildError {   
    return check scaffold.getString(str);
}

function addStringDefn(llvm:Context context, llvm:Module mod, int defnIndex, string str) returns llvm:ConstPointerValue|BuildError {
    int nCodePoints = str.length();
    byte[] bytes = str.toBytes();
    int nBytes = bytes.length();

    llvm:Type ty;
    llvm:ConstValue val;
    StringVariant variant;
    if nBytes == nCodePoints && nBytes <= 0xFF {
        // We want the total size including the header to be a multiple of 8
        int nBytesPadded = padBytes(bytes, 1);
        val = context.constStruct([llvm:constInt("i8", nBytes), context.constString(bytes)]);
        ty = llvm:structType(["i8", llvm:arrayType("i8", nBytesPadded)]);
        variant = STRING_VARIANT_SMALL;
    }
    else if nBytes <= 0xFFFF {
        int nBytesPadded = padBytes(bytes, 4);
        val = context.constStruct([llvm:constInt("i16", nBytes), llvm:constInt("i16", nCodePoints), context.constString(bytes)]);
        ty = llvm:structType(["i16", "i16", llvm:arrayType("i8", nBytesPadded)]);
        variant = STRING_VARIANT_MEDIUM;
    }
    else {
        return err:unimplemented("long constant strings");
    }
    llvm:ConstPointerValue ptr = mod.addGlobal(ty,
                                               stringDefnSymbol(defnIndex),
                                               initializer = val,
                                               align = 8,
                                               isConstant = true,
                                               unnamedAddr = true,
                                               linkage = "internal");
    return context.constGetElementPtr(context.constAddrSpaceCast(context.constBitCast(ptr, LLVM_TAGGED_PTR_WITHOUT_ADDR_SPACE), LLVM_TAGGED_PTR),
                                      [llvm:constInt(LLVM_INT, TAG_STRING | <int>variant)]);
}

// Returns the new, padded length
function padBytes(byte[] bytes, int headerSize) returns int {
    int nBytes = bytes.length();
    int nBytesPadded = (((nBytes + headerSize + 7) >> 3) << 3) - headerSize;
    foreach int i in 0 ..< nBytesPadded - nBytes {
        bytes.push(0);
    }
    return nBytesPadded;
}

function buildLoad(llvm:Builder builder, Scaffold scaffold, bir:Register reg) returns [Repr, llvm:Value] {
    return [scaffold.getRepr(reg), builder.load(scaffold.address(reg))];
}

function buildSimpleConst(bir:SimpleConstOperand operand) returns [Repr, llvm:Value] {
    if operand is int {
        return [REPR_INT, llvm:constInt(LLVM_INT, operand)];
    }
    else if operand is () {
        return [REPR_NIL, buildConstNil()];
    }
    else {
        // operand is boolean
        return [REPR_BOOLEAN, llvm:constInt(LLVM_BOOLEAN, operand ? 1 : 0)];
    }
}

function buildString(llvm:Builder builder, Scaffold scaffold, bir:StringOperand operand) returns llvm:Value|BuildError {
    if operand is string {
        return buildConstString(builder, scaffold, operand);
    }
    else {
        return builder.load(scaffold.address(operand));
    }
}

// Build a value as REPR_INT
function buildInt(llvm:Builder builder, Scaffold scaffold, bir:IntOperand operand) returns llvm:Value {
    if operand is int {
        return llvm:constInt(LLVM_INT, operand);
    }
    else {
        return builder.load(scaffold.address(operand));
    }
}

// Build a value as REPR_BOOLEAN
function buildBoolean(llvm:Builder builder, Scaffold scaffold, bir:BooleanOperand operand) returns llvm:Value {
    if operand is boolean {
        return llvm:constInt(LLVM_BOOLEAN, operand ? 1 : 0);
    }
    else {
        return builder.load(scaffold.address(operand));
    }
}

final readonly & map<llvm:IntrinsicFunctionName> binaryIntIntrinsics = {
    "+": "sadd.with.overflow.i64",
    "-": "ssub.with.overflow.i64",
    "*": "smul.with.overflow.i64"
};

final readonly & map<llvm:IntArithmeticOp> arithmeticOps = {
    "+": "add",
    "-": "sub",
    "*": "mul"
};

// final readonly & map<llvm:BinaryIntOp> binaryIntOps = {
//     "+": "add",
//     "-": "sub",
//     "*": "mul",
//     "/": "sdiv",
//     "%": "srem"
// };

// function buildBinaryIntOp(bir:ArithmeticBinaryOp op) returns llvm:BinaryIntOp {
//     return <llvm:BinaryIntOp>binaryIntOps[op];
// }

function buildBinaryIntIntrinsic(bir:ArithmeticBinaryOp op) returns llvm:IntrinsicFunctionName? {
    return binaryIntIntrinsics[op];
}

final readonly & map<llvm:IntPredicate> signedIntPredicateOps = {
    "<": "slt",
    "<=": "sle",
    ">": "sgt",
    ">=": "sge"
};

final readonly & map<llvm:IntPredicate> unsignedIntPredicateOps = {
    "<": "ult",
    "<=": "ule",
    ">": "ugt",
    ">=": "uge"
};

function buildIntCompareOp(bir:OrderOp op) returns llvm:IntPredicate {
    return <llvm:IntPredicate>signedIntPredicateOps[op];
}

function buildBooleanCompareOp(bir:OrderOp op) returns llvm:IntPredicate {
    return <llvm:IntPredicate>unsignedIntPredicateOps[op];
}

function buildFunctionSignature(bir:FunctionSignature signature) returns llvm:FunctionType|BuildError {
    llvm:Type[] paramTypes = from var ty in signature.paramTypes select (check semTypeRepr(ty)).llvm;
    RetRepr repr = check semTypeRetRepr(signature.returnType);
    llvm:FunctionType ty = {
        returnType: repr.llvm,
        paramTypes: paramTypes.cloneReadOnly()
    };
    return ty;
}

function buildConstNil() returns llvm:Value {
    return llvm:constNull(LLVM_NIL_TYPE);
}

function buildConstBoolean(boolean b) returns llvm:Value {
    return llvm:constInt(LLVM_BOOLEAN, b ? 1 : 0);
}

// Maps int to i64
final Repr REPR_INT = { base: BASE_REPR_INT, llvm: LLVM_INT };
// Maps int to i1
final Repr REPR_BOOLEAN = { base: BASE_REPR_BOOLEAN, llvm: LLVM_BOOLEAN };
// Maps error value to (for now) int (for panics)
final Repr REPR_ERROR = { base: BASE_REPR_ERROR, llvm: LLVM_INT };

final TaggedRepr REPR_NIL = { base: BASE_REPR_TAGGED, llvm: LLVM_TAGGED_PTR, subtype: t:NIL };
final TaggedRepr REPR_STRING = { base: BASE_REPR_TAGGED, llvm: LLVM_TAGGED_PTR, subtype: t:STRING };
final TaggedRepr REPR_TOP = { base: BASE_REPR_TAGGED, llvm: LLVM_TAGGED_PTR, subtype: t:TOP };
final TaggedRepr REPR_ANY = { base: BASE_REPR_TAGGED, llvm: LLVM_TAGGED_PTR, subtype: t:ANY };
// JBUG this goes wrong when you use REPR_VOID as a type as in buildRet
// const int REPR_VOID = REPR_TAGGED + 1;
final VoidRepr REPR_VOID = { base: BASE_REPR_VOID, llvm: LLVM_VOID };

final readonly & record {|
    t:UniformTypeBitSet domain;
    Repr repr;
|}[] typeReprs = [
    // These are ordered from most to least specific
    { domain: t:INT, repr: REPR_INT },
    { domain: t:BOOLEAN, repr: REPR_BOOLEAN },
    { domain: t:NIL, repr: REPR_NIL },
    { domain: t:STRING, repr: REPR_STRING },
    { domain: t:ERROR, repr: REPR_ERROR },
    { domain: t:ANY, repr: REPR_ANY },
    { domain: t:TOP, repr: REPR_TOP }
];

function semTypeRetRepr(t:SemType ty) returns RetRepr|BuildError {
    if ty === t:NIL {
        return REPR_VOID;
    }
    return semTypeRepr(ty);
}

// Return the representation for a SemType.
function semTypeRepr(t:SemType ty) returns Repr|BuildError {
    foreach var tr in typeReprs {
        if t:isSubtypeSimple(ty, tr.domain) {
            return tr.repr;
        }
    }
    return err:unimplemented("unimplemented type");
}

function heapPointerType(llvm:Type ty) returns llvm:PointerType {
    return llvm:pointerType(ty, HEAP_ADDR_SPACE);
}

function mangleRuntimeSymbol(string name) returns string {
    return "_bal_" + name;
}

// This is just enough to get us started.
// C++ starts mangled names with `_Z` (why `Z`?),
// so I'm starting Ballerina names with `_B`.
function mangleExternalSymbol(bir:ExternalSymbol symbol) returns string {
    string[] names = symbol.module.names;
    // use the last segment of the module name to distinguish between lang.* modules
    return "_B" + names[names.length() - 1] + "__" + symbol.identifier;
}

function mangleInternalSymbol(bir:ModuleId modId, bir:InternalSymbol symbol) returns string {
    return "_B_" + symbol.identifier;
}

function stringDefnSymbol(int n) returns string {
    return ".str" + n.toString();
}

