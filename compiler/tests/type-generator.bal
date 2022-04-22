import ballerina/test;
import ballerina/io;
import ballerina/random;
import wso2/nballerina.types as t;

enum PrepositionOp {
    UNION, INTERSECTION, DIFF, DIFF2
}

type Preposition record {|
    // diff-2 stand for diff(a, b) and diff(b, a)
    PrepositionOp op;
    boolean result;
    t:SemType a;
    t:SemType b;
|};

type SubtypePreposition record {|
    *Preposition;
    DIFF op = DIFF;
    true result = true;
|};

const INT_CEIL = 1000;
const ARRAY_LEN_CEIL = 100;
const TUPLE_MEMBER_CEIL = 6;
const STRING_CONST_LEN_CEIL = 20;
const PREPOSITION_DEPTH_LIMIT = 15;

type AxiomGenerator function (t:Context cx, int depth) returns Preposition;

type AxiomSubtypeGenerator function (t:Context cx, int depth) returns SubtypePreposition;

final readonly & AxiomSubtypeGenerator[] SUBTYPE_AXIOM_GENERATORS = [
    subTypeSameBasicType,
    subTypeGenSingletonInt,
    subTypeGenSingletonInt8,
    subTypeGenSingletonIntUnion,
    subTypeGenSingletonString
];

final AxiomSubtypeGenerator[] SUBTYPE_GENERATORS = from var gen in SUBTYPE_AXIOM_GENERATORS select gen;

function init() {
    // JBUG #35902 this list should be initialized in the list constructor.
    SUBTYPE_GENERATORS.push(subTypeGenFixedLengthArray);
    SUBTYPE_GENERATORS.push(subTypeGenList);
    SUBTYPE_GENERATORS.push(subTypeGenListUnionUnionList);
    SUBTYPE_GENERATORS.push(subtypeGenSimpleTuple);
    SUBTYPE_GENERATORS.push(subTypeGenTupleWithRest);
    SUBTYPE_GENERATORS.push(subTypeGenTupleUnequalMemberCount);
    SUBTYPE_GENERATORS.push(subTypeGenUnion);
}

final readonly ALL_PREPOSITION_GENERATORS = fromList(SUBTYPE_GENERATORS);

function fromList(AxiomGenerator[]... generators) returns readonly & AxiomGenerator[] {
    AxiomGenerator[] all = [];
    foreach AxiomGenerator[] l in generators {
        all.push(...l);
    }
    return all.cloneReadOnly();
}

// todo: should replace with re-producible random sequence generator 
function randomInt(int ceil) returns int {
    if ceil == 0 {
        return ceil;
    }
    // `endRange` is always greater than `startRange`
    return checkpanic random:createIntInRange(0, ceil);
}

function subTypeSameBasicType(t:Context cx, int depth) returns SubtypePreposition {
    int r = randomInt(6);
    match r {
        0 => {
            return { a: t:INT, b: t:INT };
        }        
        1 => {
            return { a: t:FLOAT, b: t:FLOAT };
        }        
        2 => {
            return { a: t:DECIMAL, b: t:DECIMAL };
        }        
        3 => {
            return { a: t:BYTE, b: t:BYTE };
        }        
        4 => {
            return { a: t:STRING, b: t:STRING };
        }
        5 => {
            return { a: t:NEVER, b: t:NEVER };
        }        
    }
    panic error("invalid state");
}

function subTypeGenSingletonInt(t:Context cx, int depth) returns SubtypePreposition {
    int r = randomInt(INT_CEIL);
    return { a: t:intConst(r), b: t:INT };
}

function subTypeGenSingletonIntUnion(t:Context cx, int depth) returns SubtypePreposition {
    int members = randomInt(10);
    t:SemType[] singletons = from var _ in 0 ... members select t:intConst(randomInt(INT_CEIL));
    t:SemType intUnion = t:NEVER;
    foreach t:SemType t in singletons {
        intUnion = t:union(intUnion, t);
    }
    
    int r = randomInt(2);
    match r {
        0 => {
            return { a: intUnion, b: t:INT };
        }
        1 => {
            t:SemType super = t:union(intUnion, t:intConst(randomInt(INT_CEIL)));
            return { a: intUnion, b: super };
        }
    }
    panic error("Invalid state");
}

function subTypeGenSingletonInt8(t:Context cx, int depth) returns SubtypePreposition {
    int r = randomInt(128);
    return { a: t:intConst(r), b: t:intWidthSigned(8) };
}

function subTypeGenSingletonString(t:Context cx, int depth) returns SubtypePreposition {
    int l = randomInt(STRING_CONST_LEN_CEIL);
    int[] codePoints = from int _ in 0 ... l select string:toCodePointInt("a") + randomInt(52);
    // codepoints in [a-zA-Z]
    string r = checkpanic string:fromCodePointInts(codePoints);
    return { a: t:stringConst(r), b: t:STRING };
}

function subTypeGenUnion(t:Context cx, int depth) returns SubtypePreposition {
    SubtypePreposition p1 = generateSubtypePreposition(cx, depth + 1);
    SubtypePreposition p2 = generateSubtypePreposition(cx, depth + 1);
    return { a: t:union(p1.a, p2.a), b: t:union(p1.b, p2.b) };
}

function subTypeGenFixedLengthArray(t:Context cx, int depth) returns SubtypePreposition {
    int r = randomInt(ARRAY_LEN_CEIL);
    SubtypePreposition p = generateSubtypePreposition(cx, depth + 1);
    t:SemType t = p.a;
    t:SemType sub = (new t:ListDefinition()).define(cx.env, [t], r);
    t:SemType super = (new t:ListDefinition()).define(cx.env, rest = t);
    return { a: sub, b: super };
}

function subTypeGenListUnionUnionList(t:Context cx, int depth) returns SubtypePreposition {
    SubtypePreposition p1 = generateSubtypePreposition(cx, depth + 1);
    SubtypePreposition p2 = generateSubtypePreposition(cx, depth + 1);
    t:SemType list1 = (new t:ListDefinition()).define(cx.env, rest = p1.a);
    t:SemType list2 = (new t:ListDefinition()).define(cx.env, rest = p2.b);
    t:SemType super = (new t:ListDefinition()).define(cx.env, rest = t:union(p1.b, p2.b));
    return { a: t:union(list1, list2), b: super };
}

function subTypeGenList(t:Context cx, int depth) returns SubtypePreposition {
    SubtypePreposition p = generateSubtypePreposition(cx, depth + 1);
    t:SemType sub = (new t:ListDefinition()).define(cx.env, rest = p.a);
    t:SemType super = (new t:ListDefinition()).define(cx.env, rest = p.b);
    return { a: sub, b: super };
}

function subtypeGenSimpleTuple(t:Context cx, int depth) returns SubtypePreposition {
    int memberCount = randomInt(TUPLE_MEMBER_CEIL);
    var [subTypes, superTypes] = generateNSubTypePrepositions(cx, memberCount, depth + 1);
    t:SemType sub = (new t:ListDefinition()).define(cx.env, subTypes);
    t:SemType super = (new t:ListDefinition()).define(cx.env, superTypes);
    return { a: sub, b: super };
}

function subTypeGenTupleWithRest(t:Context cx, int depth) returns SubtypePreposition {
    int memberCount = randomInt(TUPLE_MEMBER_CEIL);
    var [subTypes, superTypes] = generateNSubTypePrepositions(cx, memberCount, depth + 1);
    SubtypePreposition restPreposition = generateSubtypePreposition(cx, depth + 1);
    t:SemType sub = (new t:ListDefinition()).define(cx.env, subTypes, rest = restPreposition.a);
    t:SemType super = (new t:ListDefinition()).define(cx.env, superTypes, rest = restPreposition.b);
    return { a: sub, b: super };
}

// a1 <: b1, a2 <: b2, a3 <: b3, ar <: br ==> [a1, a2, a3, ar...] < [b1, b2, (br|b3)...]
function subTypeGenTupleUnequalMemberCount(t:Context cx, int depth) returns SubtypePreposition {
    int memberCount = randomInt(TUPLE_MEMBER_CEIL);
    // Avoid heavy tree creations by duplicating some pre-generated members.
    var [subTypes, superTypes] = randomDuplicateList(generateNSubTypePrepositions(cx, memberCount, depth + 1));
    SubtypePreposition restPreposition = generateSubtypePreposition(cx, depth + 1);
    t:SemType sub = (new t:ListDefinition()).define(cx.env, subTypes, rest = restPreposition.a);
    
    int sliceIndex = randomInt(superTypes.length());
    t:SemType[] superMembers = superTypes.slice(0, sliceIndex);
    t:SemType superRest = restPreposition.b;
    foreach var i in sliceIndex ..< superTypes.length() {
        superRest = t:union(superRest, superTypes[i]);
    }
    t:SemType super = (new t:ListDefinition()).define(cx.env, superMembers, rest = superRest);
    return { a: sub, b: super };
}

function generateSubtypePreposition(t:Context cx, int depth) returns SubtypePreposition {
    //io:println(depth);
    int factor = 3;
    // change the shape of random numbers to focus more on axiomatic subtype generators
    int axiLen = SUBTYPE_AXIOM_GENERATORS.length();
    int dependentLen = SUBTYPE_GENERATORS.length() - axiLen;
    int range = axiLen * factor + dependentLen;
    int r = randomInt(range);
    if (depth >= PREPOSITION_DEPTH_LIMIT) {
        r = r % axiLen;
    }
    else if (r <= axiLen * factor) {
        r = r / factor;
    }
    else {
        r = r - (axiLen * (factor - 1));
    }
    AxiomSubtypeGenerator generator = SUBTYPE_GENERATORS[r];
    return generator(cx, depth);
}

function generateNSubTypePrepositions(t:Context cx, int n, int depth) returns [t:SemType[], t:SemType[]] {
    //io:println("N" + n.toString());
    t:SemType[] subTypes = [];
    t:SemType[] superTypes = [];
    foreach var _ in 0 ... n {
        SubtypePreposition p = generateSubtypePreposition(cx, depth);
        subTypes.push(p.a);
        superTypes.push(p.b);
    }
    return [subTypes, superTypes];
}

function randomDuplicateList([t:SemType[], t:SemType[]] orig) returns [t:SemType[], t:SemType[]] {
    t:SemType[] sub = [];
    t:SemType[] super = [];
    foreach int i in 0 ..< orig[0].length() {
        t:SemType a = orig[0][i];
        t:SemType b = orig[1][i];
        foreach var _ in 0 ... randomInt(4) {
            sub.push(a);
            super.push(b);
        }
    }
    return [sub, super];
}

function evalPreposition(t:Context cx, Preposition p) returns boolean {
    match p.op {
        UNION => {

        }
        INTERSECTION => {
            
        }
        DIFF => {
            return t:isEmpty(cx, t:diff(p.a, p.b)) == p.result;
        }
        DIFF2 => {

        }
    }
    panic error("Invalid state");
}

@test:Config
function testPostulateGenerators() {
    t:Context cx = t:typeContext(new);
    int testCount = 5000;
    foreach int i in 0 ... testCount {
        io:print(string `${"\r"}${i}/${testCount}`);
        SubtypePreposition res = generateSubtypePreposition(cx, 0);
        if !evalPreposition(cx, res) {
            io:println("failed");
        }
    }
    io:println();
}