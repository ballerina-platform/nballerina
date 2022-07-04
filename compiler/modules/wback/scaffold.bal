import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;
import wso2/nballerina.types as t;

const WASM_BOOLEAN = "i32";
const WASM_INT = "i64";
const WASM_FLOAT = "f64";
const WASM_VOID = "None";
const WASM_ANY = "eqref";

enum UniformBaseRepr {
    BASE_REPR_INT,
    BASE_REPR_FLOAT,
    BASE_REPR_BOOLEAN
}

const BASE_REPR_VOID = "BASE_REPR_VOID";
const BASE_REPR_TAGGED = "BASE_REPR_TAGGED";
type BaseRepr UniformBaseRepr|BASE_REPR_TAGGED;
type RetBaseRepr BaseRepr|BASE_REPR_VOID;

type UniformRepr readonly & record {|
    UniformBaseRepr base;
    wasm:Type wasm;
    t:UniformTypeBitSet subtype?;
|};

type TaggedRepr readonly & record {|
    BASE_REPR_TAGGED base = BASE_REPR_TAGGED;
    t:UniformTypeBitSet subtype;
    wasm:Type wasm;
|};

// Maps boolean to i32
type BooleanRepr readonly & record {|
    BASE_REPR_BOOLEAN base = BASE_REPR_BOOLEAN;
    wasm:Type wasm = WASM_BOOLEAN;
|};

// Maps int to i64
type IntRepr readonly & record {|
    BASE_REPR_INT base = BASE_REPR_INT;
    wasm:Type wasm = WASM_INT;
|};

// Maps float to f64
type FloatRepr readonly & record {|
    BASE_REPR_FLOAT base = BASE_REPR_FLOAT;
    wasm:Type wasm = WASM_FLOAT;
|};

type Repr BooleanRepr|IntRepr|FloatRepr|TaggedRepr;

type VoidRepr readonly & record {|
    BASE_REPR_VOID base;
    wasm:Type wasm = "None";
|};

type RetRepr Repr|VoidRepr;

type RegionBlocks record {|
    readonly bir:RegionIndex index;
    bir:Label[] labels;
|};

type UsedMapAtomicType record {|
    readonly t:MappingAtomicType semType;
    wasm:Expression struct;
    readonly string global;
|};

type ComplexTypeDefn record {|
    readonly string global;
    wasm:Expression[] body;
    readonly t:ComplexSemType semType;
|};

type SubtypeDefn record {|
    readonly t:ComplexSemType semType;
    readonly t:UniformTypeCode typeCode;
    SubtypeStruct? struct = ();
    string global;
|};

type UsedRecordSubtype record {|
    readonly t:MappingAtomicType semType;
    wasm:Expression struct;
    wasm:Expression[] names;
    readonly string global;
|};

class Scaffold {
    private wasm:Module module;
    final bir:BasicBlock[] blocks;
    final bir:Region[] regions;
    private Repr[] reprs = [];
    private bir:FunctionDefn defn;
    final t:SemType returnType;
    private final RetRepr retRepr;
    private Component component;
    private t:Context typeContext;
    private map<wasm:Expression[]> renderedRegion = {};
    private bir:Label[] processedBlocks = [];
    private table<RegionBlocks> key(index) regionBlocks = table[];
    private map<bir:RegionIndex> regionEntries = {};
    private bir:Label[] breakBlocks = [];
    private bir:Label[] regionsWithBreak = [];
    private map<bir:RegionIndex> regionStepBlock = {};
    private bir:Label[] stepBlocks = [];
    private boolean hasPanic = false;
    final bir:ModuleId modId;
    
    function init(wasm:Module module, bir:FunctionCode code, bir:FunctionDefn def, Component component, bir:Module birMod) {
        self.module = module;
        self.blocks = code.blocks;
        self.regions = code.regions;
        self.defn = def;
        self.returnType = def.signature.returnType;
        self.retRepr = semTypeRetRepr(self.returnType);
        self.typeContext = component.getTypeContext();
        self.modId = birMod.getId();
        self.component = component;
        self.initializeReprs(code.registers);
    }

    function initializeReprs(bir:Register[] registers) {
        Repr[] reprs = [];
        foreach bir:Register reg in registers {
            Repr repr = semTypeRepr(reg.semType);
            reprs.push(repr);
        }
        self.reprs = reprs;
    }

    function addExceptionTag(ExceptionTag tag, wasm:Type? kind = ()) {
        self.component.addExceptionTag(tag, kind);
    }

    function getRepr(bir:Register r) returns Repr => self.reprs[r.number];

    function getRetRepr() returns RetRepr => self.retRepr;

    function setHasPanic() {
        self.hasPanic = true;
    }

    function getHasPanic() returns boolean {
        return self.hasPanic;
    }

    function getTypeContext() returns t:Context => self.typeContext;
    
    function setProcessedBlock(bir:Label label) {
        self.processedBlocks.push(label);
    }

    function getComponent() returns Component {
        return self.component;
    }

    function isBlockNotProcessed(bir:Label label) returns boolean {
        return self.processedBlocks.indexOf(label) == ();
    }

    function setStepBlock(bir:RegionIndex index, bir:Label label) {
        self.regionStepBlock[index.toString()] = label;
        self.stepBlocks.push(label);
    }

    function isStepBlock(bir:Label label) returns boolean {
        return self.stepBlocks.indexOf(label) != ();
    }

    function getStepBlock(bir:RegionIndex index) returns bir:Label? {
        return self.regionStepBlock[index.toString()];
    }

    function setBreakBlock(bir:RegionIndex index, bir:Label label) {
        self.breakBlocks.push(label);
        self.regionsWithBreak.push(index);
    }

    function regionHasBreak(bir:RegionIndex index) returns boolean {
        return self.regionsWithBreak.indexOf(index) != ();
    }

    function blockHasBreak(bir:Label label) returns boolean {
        return self.breakBlocks.indexOf(label) != ();
    }

    function setRegionBlocks(RegionBlocks rblocks) {
        self.regionBlocks.add(rblocks);
    }

    function getRegionBlocks(bir:RegionIndex index) returns bir:Label[] {
        return self.regionBlocks.get(index).labels;
    }

    function setRegionEntry(bir:RegionIndex index, bir:Label entry) {
        self.regionEntries[entry.toString()] = index;
    }
    
    function entryOfRegion(bir:Label label) returns bir:RegionIndex? {
        return self.regionEntries[label.toString()];
    }

    function isRegionEntry(bir:Label label) returns boolean {
        return self.regionEntries.hasKey(label.toString());
    }

    function setRenderedRegion(bir:RegionIndex index, wasm:Expression[] body) {
        self.renderedRegion[index.toString()] = body;
    }

    function getRenderedRegion(bir:RegionIndex index) returns wasm:Expression[]? {
        return self.renderedRegion[index.toString()];
    }
    
    function getInherentType(t:SemType ty) returns wasm:Expression {
        UsedSemType used = self.component.getUsedSemType(ty);
        return self.module.globalGet(used.global);
    }
    
}

final IntRepr REPR_INT = { };
final BooleanRepr REPR_BOOLEAN = { };
final FloatRepr REPR_FLOAT = { };

final TaggedRepr REPR_STRING = { subtype: t:STRING, wasm: { base: STRING_TYPE } };
final TaggedRepr REPR_NIL = { subtype: t:NIL, wasm: WASM_ANY  };
final TaggedRepr REPR_ANY = { subtype: t:ANY, wasm: WASM_ANY  };
final TaggedRepr REPR_LIST_RW = { subtype: t:LIST_RW, wasm: { base: LIST_TYPE } };
final TaggedRepr REPR_LIST = { subtype: t:LIST, wasm: { base: LIST_TYPE } };
final TaggedRepr REPR_MAPPING_RW = { subtype: t:MAPPING_RW, wasm: { base: MAP_TYPE } };
final TaggedRepr REPR_MAPPING = { subtype: t:MAPPING, wasm: { base: MAP_TYPE } };
final TaggedRepr REPR_ERROR = { subtype: t:ERROR, wasm: { base: ERROR_TYPE } };
final VoidRepr REPR_VOID = { base: BASE_REPR_VOID, wasm: WASM_VOID };

final readonly & record {|
    t:UniformTypeBitSet domain;
    Repr repr;
|}[] typeReprs = [
    { domain: t:FLOAT, repr: REPR_FLOAT },
    { domain: t:INT, repr: REPR_INT },
    { domain: t:BOOLEAN, repr: REPR_BOOLEAN },
    { domain: t:NIL, repr: REPR_NIL },
    { domain: t:ANY, repr: REPR_ANY },
    { domain: t:TOP, repr: REPR_ANY },
    { domain: t:MAPPING_RW, repr: REPR_MAPPING_RW },
    { domain: t:MAPPING, repr: REPR_MAPPING },
    { domain: t:LIST_RW, repr: REPR_LIST_RW },
    { domain: t:LIST, repr: REPR_LIST },
    { domain: t:STRING, repr: REPR_STRING }
];

function semTypeRetRepr(t:SemType ty) returns RetRepr {
    if ty === t:NIL {
        return REPR_VOID;
    }
    return semTypeRepr(ty);
}

function semTypeRepr(t:SemType ty) returns Repr {
    t:UniformTypeBitSet w = t:widenToUniformTypes(ty);
    foreach var tr in typeReprs {
        if w == tr.domain {
            return tr.repr;
        }
    }
    int supported = t:NIL|t:BOOLEAN|t:INT|t:FLOAT|t:STRING|t:LIST|t:MAPPING|t:ERROR;
    int maximized = w | supported;
    if maximized == t:TOP || (w & supported) == w {
        TaggedRepr repr = { base: BASE_REPR_TAGGED, subtype: w, wasm: WASM_ANY };
        return repr;
    }
    return REPR_NIL;
}

function semTypeReprWasm(t:SemType ty) returns wasm:Type {
    Repr repr = semTypeRepr(ty);
    return repr.wasm;
}
