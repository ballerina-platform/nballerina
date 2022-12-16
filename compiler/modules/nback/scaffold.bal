import wso2/nballerina.comm.err;
import wso2/nballerina.comm.lib;
import wso2/nballerina.comm.diagnostic as d;
import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

type BuildError err:Semantic|err:Unimplemented|err:Internal;

const LLVM_INT = "i64";
const LLVM_BYTE = "i8";
const LLVM_FLOAT = "double";
const LLVM_BOOLEAN = "i1";
const LLVM_VOID = "void";

final llvm:PointerType LLVM_TAGGED_PTR = heapPointerType("i8");
final llvm:PointerType LLVM_NIL_TYPE = LLVM_TAGGED_PTR;
final llvm:PointerType LLVM_TAGGED_PTR_WITHOUT_ADDR_SPACE = llvm:pointerType("i8");
final llvm:PointerType LLVM_DECIMAL_CONST = llvm:pointerType("i64");

// A Repr is way of representing values.
// It's a mapping from a SemType to an LLVM type.

enum UniformBaseRepr {
    BASE_REPR_INT,
    BASE_REPR_FLOAT,
    BASE_REPR_BOOLEAN
}

const BASE_REPR_VOID = "BASE_REPR_VOID";
const BASE_REPR_TAGGED = "BASE_REPR_TAGGED";
type BaseRepr UniformBaseRepr|BASE_REPR_TAGGED;
type RetBaseRepr BaseRepr|BASE_REPR_VOID;

type ReprFields record {|
    BaseRepr base;
    llvm:SingleValueType llvm;
    boolean alwaysImmediate;
|};

// Maps int to i1
type BooleanRepr readonly & record {|
    *ReprFields;
    BASE_REPR_BOOLEAN base = BASE_REPR_BOOLEAN;
    LLVM_BOOLEAN llvm = LLVM_BOOLEAN;
    true alwaysImmediate = true;
|};

// Maps int to i64
type IntRepr readonly & record {|
    *ReprFields;
    BASE_REPR_INT base = BASE_REPR_INT;
    LLVM_INT llvm = LLVM_INT;
    true alwaysImmediate = true;

    t:IntSubtypeConstraints? constraints;
    boolean alwaysInImmediateRange;
|};

// Maps float to llvm double
type FloatRepr readonly & record {|
    *ReprFields;
    BASE_REPR_FLOAT base = BASE_REPR_FLOAT;
    LLVM_FLOAT llvm = LLVM_FLOAT;
    true alwaysImmediate = true;
|};

// Maps any Ballerina value to a tagged pointer
type TaggedRepr readonly & record {|
    *ReprFields;
    BASE_REPR_TAGGED base = BASE_REPR_TAGGED;
    llvm:IntegralType llvm = LLVM_TAGGED_PTR;
    boolean alwaysImmediate;

    t:BasicTypeBitSet subtype;
|};

type Repr BooleanRepr|IntRepr|FloatRepr|TaggedRepr;

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

class Scaffold {
    *Context;
    private final Module mod;
    private final bir:File file;
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
    private DIScaffold? diScaffold;
    final t:SemType returnType;
    private final BlockNarrowRegBuilder[] narrowRegBuilders = [];

    function init(Module mod, llvm:FunctionDefn llFunc, DISubprogram? diFunc, llvm:Builder builder, bir:FunctionDefn defn, bir:FunctionCode code) {
        self.mod = mod;
        self.file = mod.partFiles[defn.partIndex];
        self.llFunc = llFunc;
        DIScaffold? diScaffold;
        ModuleDI? moduleDI = mod.di;
        if moduleDI !is () {
            diScaffold = new(<DISubprogram>diFunc, moduleDI, self, defn.position, defn.partIndex);
        }
        else {
            diScaffold = ();
        }
        self.diScaffold = diScaffold;
        self.birBlocks = code.blocks;
        final Repr[] reprs = from var reg in code.registers select semTypeRepr(reg.semType);
        self.reprs = reprs;
        self.returnType = defn.signature.returnType;
        self.retRepr = semTypeRetRepr(self.returnType);
        self.nParams = defn.signature.paramTypes.length();
        llvm:BasicBlock entry = llFunc.appendBasicBlock();

        self.blocks = from var b in code.blocks select llFunc.appendBasicBlock(b.name);
        self.narrowRegBuilders.setLength(code.blocks.length());

        builder.positionAtEnd(entry);
        self.addresses = [];
        self.setCurrentPosition(builder, defn.position);
        foreach int i in 0 ..< reprs.length() {
            bir:Register register = code.registers[i];
            string? name;
            if register is bir:NarrowRegister {
                name = register.underlying.name;
            }
            else {
                name = register.name;
            }
            self.addresses.push(builder.alloca(reprs[i].llvm, (), name));
        }
        if moduleDI !is () && moduleDI.debugFull {
            declareVariables(self, <DIScaffold>diScaffold, entry, code.registers);
        }
    }

    function llContext() returns llvm:Context => self.mod.llContext;

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
        DecimalDefn newDefn = addDecimalDefn(self.mod.llContext, self.mod.llMod, self.mod.decimalDefns.length(), val);
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

    function lineColumn(bir:Position pos) returns [int, int] {
        return self.file.lineColumn(pos);
    }

    function typeContext() returns t:Context => self.mod.typeContext;

    function location(bir:Position pos) returns d:Location {
        return d:location(self.file, pos);
    }

    function setCurrentPosition(llvm:Builder builder, bir:Position pos) {
        DIScaffold? diScaffold = self.diScaffold;
        if diScaffold !is () {
            diScaffold.setCurrentPosition(builder, pos);
        }
    }

    function clearDebugLocation(llvm:Builder builder) {
        DIScaffold? diScaffold = self.diScaffold;
        if diScaffold !is () {
            diScaffold.clearDebugLocation(builder);
        }
    }

    function useDebugLocation(llvm:Builder builder, DebugLocationUsage usage) {
        DIScaffold? diScaffold = self.diScaffold;
        if diScaffold !is () {
            diScaffold.useDebugLocation(builder, usage);
        }
    }

    function unimplementedErr(d:Message message) returns err:Unimplemented {
        return err:unimplemented(message, d:location(self.file, (<DIScaffold>self.diScaffold).currentPos()));
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

    function narrowRegBuilder(bir:Label label) returns BlockNarrowRegBuilder {
        return self.narrowRegBuilders[label];
    }

    function scheduleBlockNarrowReg(bir:Label label, bir:NarrowRegister reg) {
        self.narrowRegBuilders[label].schedule(reg);
    }
}

class BlockNarrowRegBuilder {
    private final table<bir:NarrowRegister> key(number) regs = table[];

    function schedule(bir:NarrowRegister reg) {
        self.regs.add(reg);
    }

    function markMerged(bir:Register[] regs) {
        foreach var reg in regs {
            _ = self.regs.removeIfHasKey(reg.number);
        }
    }

    function finish(llvm:Builder builder, Scaffold scaffold) returns BuildError? {
        foreach var reg in self.regs {
            check buildNarrowReg(builder, scaffold, reg);
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
        return context.constGetElementPtr(context.constNull(LLVM_TAGGED_PTR), [context.constInt(LLVM_INT, encoded)]);
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
        val = context.constStruct([context.constInt("i16", nBytes), context.constInt("i16", nCodePoints), context.constString(bytes)]);
        ty = llvm:structType(["i16", "i16", llvm:arrayType("i8", nBytesPadded)]);
        variant = STRING_VARIANT_MEDIUM;
    }
    else {
        int nBytesPadded = padBytes(bytes, 16);
        val = context.constStruct([context.constInt("i64", nBytes), context.constInt("i64", nCodePoints), context.constString(bytes)]);
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
                                      [context.constInt(LLVM_INT, TAG_STRING | <int>variant)]);
}

function addDecimalDefn(llvm:Context context, llvm:Module mod, int defnIndex, decimal val) returns llvm:ConstPointerValue {
    var [leastSignificantVal, mostSignificantVal] = lib:toLeDpd(val);
    llvm:ConstValue lestSignificant = context.constInt("i64", leastSignificantVal);
    llvm:ConstValue mostSignificant = context.constInt("i64", mostSignificantVal);
    llvm:ConstPointerValue ptr = mod.addGlobal(llvm:arrayType("i64", 2),
                                               decimalDefnSymbol(defnIndex),
                                               initializer = context.constArray("i64", [lestSignificant, mostSignificant]),
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
    foreach var _ in 0 ..< nBytesPadded - nBytes {
        bytes.push(0);
    }
    return nBytesPadded;
}

final FloatRepr REPR_FLOAT = { };
final BooleanRepr REPR_BOOLEAN = { };
final IntRepr REPR_INT = { alwaysInImmediateRange: false, constraints: () };
final IntRepr REPR_BYTE = { alwaysInImmediateRange: true, constraints: { min: 0, max: 255, all: true } };

final TaggedRepr REPR_NIL = { subtype: t:NIL, alwaysImmediate: true };
final TaggedRepr REPR_LIST = { subtype: t:LIST, alwaysImmediate: false };
final TaggedRepr REPR_MAPPING = { subtype: t:MAPPING, alwaysImmediate: false };
final TaggedRepr REPR_ERROR = { subtype: t:ERROR, alwaysImmediate: false };
final TaggedRepr REPR_DECIMAL = { subtype: t:DECIMAL, alwaysImmediate: false };

final TaggedRepr REPR_TOP = { subtype: t:TOP, alwaysImmediate: false };
final TaggedRepr REPR_ANY = { subtype: t:ANY, alwaysImmediate: false };
final VoidRepr REPR_VOID = { base: BASE_REPR_VOID, llvm: LLVM_VOID };

final readonly & record {|
    t:BasicTypeBitSet domain;
    Repr repr;
|}[] typeReprs = [
    // These are ordered from most to least specific
    { domain: t:FLOAT, repr: REPR_FLOAT },
    { domain: t:DECIMAL, repr: REPR_DECIMAL },
    { domain: t:BOOLEAN, repr: REPR_BOOLEAN },
    { domain: t:NIL, repr: REPR_NIL },
    { domain: t:LIST, repr: REPR_LIST },
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
    t:BasicTypeBitSet w = t:widenToBasicTypes(ty);    
    if w == t:INT {
        t:IntSubtypeConstraints? constraints = t:intSubtypeConstraints(ty);
        IntRepr repr = { constraints, alwaysInImmediateRange: isIntConstrainedToImmediate(constraints) };
        return repr;
    }
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
        TaggedRepr repr = { subtype: w, alwaysImmediate: isSemTypeAlwaysImmediate(ty, w) };
        return repr;
    }
    panic error("unimplemented type (" + w.toHexString() + ")");
}

function isSemTypeAlwaysImmediate(t:SemType ty, t:BasicTypeBitSet widenedTy) returns boolean {
    if (widenedTy & ~(t:NIL|t:BOOLEAN|t:INT|t:STRING)) != 0 {
        return false;
    }
    if (widenedTy & t:STRING) != 0 && !isStringSubtypeAlwaysImmediate(ty) {
        return false;
    }
    if (widenedTy & t:INT) != 0 && !isIntSubtypeAlwaysImmediate(ty) {
        return false;
    }
    return true;
}

function isStringSubtypeAlwaysImmediate(t:SemType ty) returns boolean {
    t:StringSubtype|boolean strSubtype = t:stringSubtype(ty);
    if strSubtype is boolean || strSubtype.nonChar.allowed == false {
        return false;
    }
    foreach var s in strSubtype.nonChar.values {
        byte[] bytes = s.toBytes();
        int nBytes = bytes.length();
        if !isSmallString(s.length(), bytes, nBytes) {
            return false;
        }
    }
    return true;
}

function isIntSubtypeAlwaysImmediate(t:SemType ty) returns boolean {
    return isIntConstrainedToImmediate(t:intSubtypeConstraints(ty));
}

function isIntConstrainedToImmediate(t:IntSubtypeConstraints? c) returns boolean {
    if c == () {
        return false;
    }
    return IMMEDIATE_INT_MIN <= c.min && c.max <= IMMEDIATE_INT_MAX;
}
