import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;
import wso2/nballerina.types as t;

const WASM_INT = "i64";
const WASM_BOOLEAN = "i32";
const WASM_VOID = "None";
// final llvm:PointerType LLVM_TAGGED_PTR = heapPointerType("i8");


// A Repr is way of representing values.
// It's a mapping from a SemType to an WASM type.

enum UniformBaseRepr {
    BASE_REPR_INT,
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

// Maps any Ballerina value to a tagged pointer
type TaggedRepr readonly & record {|
    BASE_REPR_TAGGED base;
    t:UniformTypeBitSet subtype;
    wasm:Type wasm;
|};

type Repr UniformRepr|TaggedRepr;

type VoidRepr readonly & record {|
    BASE_REPR_VOID base;
    wasm:Type wasm = "None";
|};

type RetRepr Repr|VoidRepr;

class Scaffold {
    map<wasm:Expression[]> renderedRegion = {};
    int[] processedBlocks = [];
    final bir:BasicBlock[] blocks;
    final bir:Region[] regions;
    string[] taggedFuncs = [];
    bir:FunctionDefn defn;
    boolean setMemory = false;
    private Repr[] reprs = [];
    final t:SemType returnType;
    private final RetRepr retRepr;
    private string[] exceptionTags = [];
    function init(bir:FunctionCode code, bir:FunctionDefn def) {
        self.blocks = code.blocks;
        self.regions = code.regions;
        self.defn = def;
        self.returnType = def.signature.returnType;
        self.retRepr = semTypeRetRepr(self.returnType);
        self.initializeReprs(code.registers);
    }

    public function initializeReprs(bir:Register[] registers) {
        Repr[] reprs = [];
        foreach bir:Register reg in registers {
            Repr repr = semTypeRepr(reg.semType);
            // if repr != REPR_NIL {
                reprs.push(repr);
            // }
        }
        self.reprs = reprs;
    }

    public function addExceptionTag(string tag) {
        if self.exceptionTags.indexOf(tag) == () {
            self.exceptionTags.push(tag);
        }
    }

    public function getExceptionTags() returns string[] {
        return self.exceptionTags;
    }

    function getRepr(bir:Register r) returns Repr => self.reprs[r.number];

    function getRetRepr() returns RetRepr => self.retRepr;


}

final Repr REPR_INT = { base: BASE_REPR_INT, wasm: WASM_INT };
final Repr REPR_BOOLEAN = { base: BASE_REPR_BOOLEAN, wasm: WASM_BOOLEAN };
final TaggedRepr REPR_NIL = { base: BASE_REPR_TAGGED, wasm: "anyref", subtype: t:NIL };
final TaggedRepr REPR_ANY = { base: BASE_REPR_TAGGED, wasm: "anyref" , subtype: t:ANY };
final VoidRepr REPR_VOID = { base: BASE_REPR_VOID, wasm: WASM_VOID };

final readonly & record {|
    t:UniformTypeBitSet domain;
    Repr repr;
|}[] typeReprs = [
    // These are ordered from most to least specific
    { domain: t:INT, repr: REPR_INT },
    { domain: t:BOOLEAN, repr: REPR_BOOLEAN },
    { domain: t:NIL, repr: REPR_NIL },
    { domain: t:ANY, repr: REPR_ANY },
    { domain: t:TOP, repr: REPR_ANY }
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
    return REPR_NIL;
    // panic error("unimplemented type (" + w.toHexString() + ")");
}
