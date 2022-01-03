import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;
import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

type BuildError err:Semantic|err:Unimplemented;

type DIBuilder llvm:DIBuilder;
type DISubprogram llvm:Metadata;
type DILocation llvm:Metadata;
type DIFile llvm:Metadata;
type DICompileUnit llvm:Metadata;
type DISubroutineType llvm:Metadata;

const LLVM_INT = "i64";
const LLVM_DOUBLE = "double";
const LLVM_BOOLEAN = "i1";
const LLVM_VOID = "void";

final llvm:PointerType LLVM_TAGGED_PTR = heapPointerType("i8");
final llvm:PointerType LLVM_NIL_TYPE = LLVM_TAGGED_PTR;
final llvm:PointerType LLVM_TAGGED_PTR_WITHOUT_ADDR_SPACE = llvm:pointerType("i8");
final llvm:PointerType LLVM_DECIMAL_CONST = llvm:pointerType("i8");

// A Repr is way of representing values.
// It's a mapping from a SemType to an LLVM type.

enum UniformBaseRepr {
    BASE_REPR_INT,
    BASE_REPR_FLOAT,
    BASE_REPR_BOOLEAN,
    BASE_REPR_ERROR
}

const BASE_REPR_VOID = "BASE_REPR_VOID";
const BASE_REPR_TAGGED = "BASE_REPR_TAGGED";
type BaseRepr UniformBaseRepr|BASE_REPR_TAGGED;
type RetBaseRepr BaseRepr|BASE_REPR_VOID;

type UniformRepr readonly & record {|
    UniformBaseRepr base;
    llvm:SingleValueType llvm;
    t:UniformTypeBitSet subtype?;
|};

// Maps any Ballerina value to a tagged pointer
type TaggedRepr readonly & record {|
    BASE_REPR_TAGGED base;
    t:UniformTypeBitSet subtype;
    llvm:IntegralType llvm;
|};

type Repr UniformRepr|TaggedRepr;

type VoidRepr readonly & record {|
    BASE_REPR_VOID base;
    LLVM_VOID llvm;
|};

type RetRepr Repr|VoidRepr;

type ImportedFunction record {|
    readonly bir:ExternalSymbol symbol;
    llvm:FunctionDecl decl;
|};

type ImportedFunctionTable table<ImportedFunction> key(symbol);


//const STRING_VARIANT_SMALL = 0;
const STRING_VARIANT_MEDIUM = 0;
const STRING_VARIANT_LARGE = 1;

type StringVariant STRING_VARIANT_MEDIUM|STRING_VARIANT_LARGE; // STRING_VARIANT_SMALL|;

type StringDefn llvm:ConstPointerValue;
type DecimalDefn llvm:ConstPointerValue;

type Module record {|
    llvm:Context llContext;
    llvm:Module llMod;
    // LLVM functions in the module indexed by (unmangled) identifier within the module
    map<llvm:FunctionDefn> functionDefns;
     // List of all imported functions that have been added to the LLVM module
    ImportedFunctionTable importedFunctions = table [];
    llvm:PointerValue stackGuard;
    map<StringDefn> stringDefns = {};
    map<DecimalDefn> decimalDefns = {};
    t:Context typeContext;
    bir:Module bir;
    bir:ModuleId modId;
    bir:File[] partFiles;
    ModuleDI? di;
    table<UsedSemType> key(semType) usedSemTypes = table [];
    InitTypes llInitTypes;
|};

type UsedSemType record {|
    readonly t:SemType semType;
    readonly int index;
    llvm:ConstPointerValue? inherentType = ();
    llvm:ConstPointerValue? typeTest = ();
    llvm:ConstPointerValue? exactify = ();
|};

type ModuleDI record {|
    DIBuilder builder;
    DIFile[] files;
    DICompileUnit compileUnit;
    DISubroutineType funcType;
    boolean debugFull;
|};

// Debug location will always be added
public const int DEBUG_ORIGIN_ERROR_CONSTRUCT = 0;
public const int DEBUG_ORIGIN_CALL = 1;
// Debug location for these will be added only in full debug
public const int DEBUG_ORIGIN_OTHER = 2;

public type DebugLocationOrigin DEBUG_ORIGIN_ERROR_CONSTRUCT|DEBUG_ORIGIN_CALL|DEBUG_ORIGIN_OTHER;

class Scaffold {
    private final Module mod;
    private final bir:File file;
    private final llvm:FunctionDefn llFunc;
    private final DISubprogram? diFunc;
    private DILocation? noLineLocation = ();

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
    final t:SemType returnType;

    function init(Module mod, llvm:FunctionDefn llFunc, DISubprogram? diFunc, llvm:Builder builder, bir:FunctionDefn defn, bir:FunctionCode code) {
        self.mod = mod;
        self.file = mod.partFiles[defn.partIndex];
        self.llFunc = llFunc;
        self.diFunc = diFunc;
        self.birBlocks = code.blocks;
        final Repr[] reprs = from var reg in code.registers select semTypeRepr(reg.semType);
        self.reprs = reprs;
        self.returnType = defn.signature.returnType;
        self.retRepr = semTypeRetRepr(self.returnType);
        self.nParams = defn.signature.paramTypes.length();
        llvm:BasicBlock entry = llFunc.appendBasicBlock();

        self.blocks = from var b in code.blocks select llFunc.appendBasicBlock(b.name);

        builder.positionAtEnd(entry);
        self.addresses = [];
        foreach int i in 0 ..< reprs.length() {
            bir:Register register = code.registers[i];
            self.addresses.push(builder.alloca(reprs[i].llvm, (), register.varName));
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
        return fn == () ? () : fn.decl;
    }
    
    function addImportedFunction(bir:ExternalSymbol symbol, llvm:FunctionDecl decl) {
        self.mod.importedFunctions.add({symbol, decl});
    }

    function getIntrinsicFunction(llvm:IntrinsicFunctionName name) returns llvm:FunctionDecl {
        return self.mod.llMod.getIntrinsicDeclaration(name);
    }

    function getRuntimeFunctionDecl(RuntimeFunction rf) returns llvm:FunctionDecl {
        bir:ExternalSymbol symbol =  { module: runtimeModule, identifier: rf.name };
        llvm:FunctionDecl? decl = self.getImportedFunction(symbol);
        if decl != () {
            return decl;
        }
        else {
            llvm:FunctionDecl f = addRuntimeFunctionDecl(self.mod.llMod, rf);
            self.addImportedFunction(symbol, f);
            return f;
        }
    }

    function getString(string str) returns StringDefn {
        StringDefn? curDefn = self.mod.stringDefns[str];
        if curDefn != () {
            return curDefn;
        }
        StringDefn newDefn = addStringDefn(self.mod.llContext, self.mod.llMod, self.mod.stringDefns.length(), str);
        self.mod.stringDefns[str] = newDefn;
        return newDefn;
    }

    function getDecimal(decimal val) returns DecimalDefn {
        string str = val.toString();
        DecimalDefn? curDefn = self.mod.decimalDefns[str];
        if curDefn != () {
            return curDefn;
        }
        DecimalDefn newDefn = addDecimalDefn(self.mod.llContext, self.mod.llMod, self.mod.decimalDefns.length(), str);
        self.mod.decimalDefns[str] = newDefn;
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

    function lineNumber(bir:Position pos) returns int {
       return self.file.lineColumn(pos)[0];
    }

    function typeContext() returns t:Context => self.mod.typeContext;

    function location(bir:Position pos) returns d:Location {
        return d:location(self.file, pos);
    }

    function setDebugLocation(llvm:Builder builder, bir:Position pos, DebugLocationOrigin origin = DEBUG_ORIGIN_OTHER) {
        DISubprogram? diFunc = self.diFunc;
        if diFunc is () {
            return;
        }
        ModuleDI di = <ModuleDI>self.mod.di;
        // In the debugFull case, there is no need to do anything for DEBUG_ORIGIN_ERROR_CONSTRUCT
        // because the full location will have been set earlier.
        if origin == (di.debugFull ? DEBUG_ORIGIN_ERROR_CONSTRUCT : DEBUG_ORIGIN_OTHER) {
            return;
        }
        DILocation loc;
        if origin == DEBUG_ORIGIN_ERROR_CONSTRUCT {
            DILocation? noLineLoc = self.noLineLocation;
            if noLineLoc == () {
                loc =  di.builder.createDebugLocation(self.mod.llContext, 0, 0, self.diFunc);
                self.noLineLocation = loc;
            }
            else {
                loc = noLineLoc;
            }
        }
        else {
            var [line, column] = self.file.lineColumn(pos);
            loc = di.builder.createDebugLocation(self.mod.llContext, line, column, self.diFunc);
        }
        builder.setCurrentDebugLocation(loc);
    }

    function clearDebugLocation(llvm:Builder builder) {
        if !(self.diFunc == ()) {
            builder.setCurrentDebugLocation(());
        }
    }

    function unimplementedErr(d:Message message, d:Position pos) returns err:Unimplemented {
        return err:unimplemented(message, d:location(self.file, pos));
    }

    function initTypes() returns InitTypes => self.mod.llInitTypes;

    function getTypeTest(t:ComplexSemType ty) returns llvm:ConstPointerValue {
        UsedSemType used = self.getUsedSemType(ty);
        llvm:ConstPointerValue? value = used.typeTest;
        if value == () {
            Module m = self.mod;
            string symbol = mangleTypeSymbol(m.modId, USED_TYPE_TEST, used.index);
            llvm:ConstPointerValue v = m.llMod.addGlobal(llComplexType, symbol, isConstant = true);
            used.typeTest = v;
            return v;
        }
        else {
            return value;
        }
    }

    function getInherentType(t:SemType ty) returns llvm:ConstPointerValue {
        UsedSemType used = self.getUsedSemType(ty);
        llvm:ConstPointerValue? value = used.inherentType;
        if value == () {
            Module m = self.mod;
            string symbol = mangleTypeSymbol(m.modId, USED_INHERENT_TYPE, used.index);
            llvm:ConstPointerValue v = m.llMod.addGlobal(llStructureDescType, symbol, isConstant = true);
            used.inherentType = v;
            return v;
        }
        else {
            return value;
        }
    }

    function getExactify(t:SemType ty) returns llvm:ConstPointerValue {
        UsedSemType used = self.getUsedSemType(ty);
        llvm:ConstPointerValue? value = used.exactify;
        if value == () {
            Module m = self.mod;
            string symbol = mangleTypeSymbol(m.modId, USED_EXACTIFY, used.index);
            llvm:ConstPointerValue v = m.llMod.addGlobal(LLVM_TID, symbol, isConstant = true);
            used.exactify = v;
            return v;
        }
        else {
            return value;
        }
    }

    private function getUsedSemType(t:SemType ty) returns UsedSemType {
        UsedSemType? used  = self.mod.usedSemTypes[ty];
        if used == () {
            UsedSemType t = {
                index: self.mod.usedSemTypes.length(),
                semType: ty
            };
            self.mod.usedSemTypes.add(t);
            return t;
        }
        else {
            return used;
        }
    }
}

function addRuntimeFunctionDecl(llvm:Module mod, RuntimeFunction rf) returns llvm:FunctionDecl {
    llvm:FunctionDecl f = mod.addFunctionDecl(mangleRuntimeSymbol(rf.name), rf.ty);
    foreach var attr in rf.attrs {
        f.addEnumAttribute(attr);
    }
    return f;
}

function addStringDefn(llvm:Context context, llvm:Module mod, int defnIndex, string str) returns llvm:ConstPointerValue {
    int nCodePoints = str.length();
    byte[] bytes = str.toBytes();
    int nBytes = bytes.length();

    llvm:Type ty;
    llvm:ConstValue val;
    StringVariant variant;
    if isSmallString(nCodePoints, bytes, nBytes) {
        int encoded = 0;
        foreach int i in 0 ..< 7 {
            encoded |= (i < nBytes ? bytes[i] : 0xFF) << i*8;
        }
        encoded |= FLAG_IMMEDIATE|TAG_STRING;
        return context.constGetElementPtr(llvm:constNull(LLVM_TAGGED_PTR), [llvm:constInt(LLVM_INT, encoded)]);
    }
    // if nBytes == nCodePoints && nBytes <= 0xFF {
    //     // We want the total size including the header to be a multiple of 8
    //     int nBytesPadded = padBytes(bytes, 1);
    //     val = context.constStruct([llvm:constInt("i8", nBytes), context.constString(bytes)]);
    //     ty = llvm:structType(["i8", llvm:arrayType("i8", nBytesPadded)]);
    //     variant = STRING_VARIANT_SMALL;
    // }
    else if nBytes <= 0xFFFF {
        int nBytesPadded = padBytes(bytes, 4);
        val = context.constStruct([llvm:constInt("i16", nBytes), llvm:constInt("i16", nCodePoints), context.constString(bytes)]);
        ty = llvm:structType(["i16", "i16", llvm:arrayType("i8", nBytesPadded)]);
        variant = STRING_VARIANT_MEDIUM;
    }
    else {
        int nBytesPadded = padBytes(bytes, 16);
        val = context.constStruct([llvm:constInt("i64", nBytes), llvm:constInt("i64", nCodePoints), context.constString(bytes)]);
        ty = llvm:structType(["i64", "i64", llvm:arrayType("i8", nBytesPadded)]);
        variant = STRING_VARIANT_LARGE;
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

function addDecimalDefn(llvm:Context context, llvm:Module mod, int defnIndex, string str) returns llvm:ConstPointerValue {
    byte[] bytes = str.toBytes();
    bytes.push(0);
    llvm:ConstValue val = context.constString(bytes);
    llvm:Type ty = llvm:arrayType("i8", bytes.length());
    llvm:ConstPointerValue ptr = mod.addGlobal(ty,
                                               decimalDefnSymbol(defnIndex),
                                               initializer = val,
                                               align = 8,
                                               isConstant = true,
                                               unnamedAddr = true,
                                               linkage = "internal");
    return context.constBitCast(ptr, LLVM_DECIMAL_CONST);
}

function isSmallString(int nCodePoints, byte[] bytes, int nBytes) returns boolean {
    return nCodePoints == 1 || (nBytes == nCodePoints && nBytes <= 7);
}

// Returns the new, padded length
function padBytes(byte[] bytes, int headerSize) returns int {
    int nBytes = bytes.length();
    int nBytesPadded = (((nBytes + headerSize + 7) >> 3) << 3) - headerSize;
    // JBUG #33352 should be able to use `_` here
    foreach int i in 0 ..< nBytesPadded - nBytes {
        bytes.push(0);
    }
    return nBytesPadded;
}

// Maps int to i64
final Repr REPR_INT = { base: BASE_REPR_INT, llvm: LLVM_INT };
// Maps float to llvm double
final Repr REPR_FLOAT = { base: BASE_REPR_FLOAT, llvm: LLVM_DOUBLE };
// Maps int to i1
final Repr REPR_BOOLEAN = { base: BASE_REPR_BOOLEAN, llvm: LLVM_BOOLEAN };

final TaggedRepr REPR_NIL = { base: BASE_REPR_TAGGED, llvm: LLVM_TAGGED_PTR, subtype: t:NIL };
final TaggedRepr REPR_STRING = { base: BASE_REPR_TAGGED, llvm: LLVM_TAGGED_PTR, subtype: t:STRING };
final TaggedRepr REPR_LIST_RW = { base: BASE_REPR_TAGGED, llvm: LLVM_TAGGED_PTR, subtype: t:LIST_RW };
final TaggedRepr REPR_LIST = { base: BASE_REPR_TAGGED, llvm: LLVM_TAGGED_PTR, subtype: t:LIST };
final TaggedRepr REPR_MAPPING_RW = { base: BASE_REPR_TAGGED, llvm: LLVM_TAGGED_PTR, subtype: t:MAPPING_RW };
final TaggedRepr REPR_MAPPING = { base: BASE_REPR_TAGGED, llvm: LLVM_TAGGED_PTR, subtype: t:MAPPING };
final TaggedRepr REPR_ERROR = { base: BASE_REPR_TAGGED, llvm: LLVM_TAGGED_PTR, subtype: t:ERROR };
final TaggedRepr REPR_DECIMAL = { base: BASE_REPR_TAGGED, llvm: LLVM_TAGGED_PTR, subtype: t:DECIMAL };

final TaggedRepr REPR_TOP = { base: BASE_REPR_TAGGED, llvm: LLVM_TAGGED_PTR, subtype: t:TOP };
final TaggedRepr REPR_ANY = { base: BASE_REPR_TAGGED, llvm: LLVM_TAGGED_PTR, subtype: t:ANY };
final VoidRepr REPR_VOID = { base: BASE_REPR_VOID, llvm: LLVM_VOID };

final readonly & record {|
    t:UniformTypeBitSet domain;
    Repr repr;
|}[] typeReprs = [
    // These are ordered from most to least specific
    { domain: t:INT, repr: REPR_INT },
    { domain: t:FLOAT, repr: REPR_FLOAT },
    { domain: t:DECIMAL, repr: REPR_DECIMAL },
    { domain: t:BOOLEAN, repr: REPR_BOOLEAN },
    { domain: t:NIL, repr: REPR_NIL },
    { domain: t:STRING, repr: REPR_STRING },
    { domain: t:LIST_RW, repr: REPR_LIST_RW },
    { domain: t:LIST, repr: REPR_LIST },
    { domain: t:MAPPING_RW, repr: REPR_MAPPING_RW },
    { domain: t:MAPPING, repr: REPR_MAPPING },
    { domain: t:ERROR, repr: REPR_ERROR },
    { domain: t:ANY, repr: REPR_ANY },
    { domain: t:TOP, repr: REPR_TOP }
];

function semTypeRetRepr(t:SemType ty) returns RetRepr {
    if ty === t:NIL {
        return REPR_VOID;
    }
    return semTypeRepr(ty);
}

// Return the representation for a SemType.
function semTypeRepr(t:SemType ty) returns Repr {
    t:UniformTypeBitSet w = t:widenToUniformTypes(ty);    
    foreach var tr in typeReprs {
        if w == tr.domain {
            return tr.repr;
        }
    }
    if w == t:NEVER {
        panic err:impossible("allocate register with never type");
    }
    int supported = t:NIL|t:BOOLEAN|t:INT|t:FLOAT|t:DECIMAL|t:STRING|t:LIST|t:MAPPING|t:ERROR;
    int maximized = w | supported;
    if maximized == t:TOP || maximized == (t:NON_BEHAVIOURAL|t:ERROR) || (w & supported) == w {
        TaggedRepr repr = { base: BASE_REPR_TAGGED, llvm: LLVM_TAGGED_PTR, subtype: w };
        return repr;
    }
    panic error("unimplemented type (" + w.toHexString() + ")");
}
