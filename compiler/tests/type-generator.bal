import ballerina/test;
import ballerina/io;
import ballerina/random;
import wso2/nballerina.types as t;

// diff-2 stand for isEmpty(diff(a, b)) and isEmpty(diff(b, a))
enum PropositionOp {
    UNION, INTERSECT, DIFF, DIFF2
}

type Proposition record {|
    PropositionOp op;
    boolean isEmpty;
    t:SemType left;
    t:SemType right;
|};

type SubtypeProposition record {|
    *Proposition;
    DIFF op = DIFF;
    true isEmpty = true;
|};

type NonEmptyProposition record {|
    *Proposition;
    UNION op = UNION;
    false isEmpty = false;
|};

type PropositionGenerator function (Context cx, int depth) returns Proposition;

type SubtypePropositionGenerator function (Context cx, int depth) returns SubtypeProposition;

type NonEmptyPropositionGenerator function (Context cx, int depth) returns NonEmptyProposition; 

type Limits readonly & record {|
    readonly int maxTupleMembers = 6;
    readonly int maxStringConstLen = 20;
    readonly int duplicationFactor = 6;
|};

type PropositionListCtor function () returns Proposition[];

type OnFail function(Context cx, Proposition failedProp);

class Context {
    final t:Context typeContext;
    final SubtypeProposition[][] subtypePropositions = [];
    final NonEmptyProposition[][] nonEmptyPropositions = [];
    final Limits 'limit;

    function init(t:Context cx, Limits 'limit = {}) {
        self.typeContext = cx;
        self.'limit = 'limit;
    }

    function takeSubtypeProposition() returns SubtypeProposition {
        return <SubtypeProposition>self.takeFromList(self.subtypePropositions);
    }

    function takeNonEmptyProposition() returns NonEmptyProposition {
        return <NonEmptyProposition>self.takeFromList(self.nonEmptyPropositions);
    }

    private function takeFromList(Proposition[][] list) returns Proposition {
        int level = randomInt(list.length());
        Proposition[] subList = list[level];
        int item = randomInt(subList.length());
        return subList[item];
    }

    function storeSubtypeProposition(int depth, SubtypeProposition proposition) {
        self.storeInList(self.subtypePropositions, () => <SubtypeProposition[]>[], depth, proposition);
    }

    function storeNonEmptyProposition(int depth, NonEmptyProposition proposition) {
        self.storeInList(self.nonEmptyPropositions, () => <NonEmptyProposition[]>[], depth, proposition);
    }

    private function storeInList(Proposition[][] list, PropositionListCtor ctor, int depth, Proposition proposition) {
        if list.length() <= depth {
            list[depth] = ctor();
        }
        list[depth].push(proposition); 
    }
}

final readonly & SubtypePropositionGenerator[] AXIOMATIC_SUBTYPE_PROPOSITION_GENERATORS = [
    subtypeSameBasicType,
    subtypeGenSingletonInt,
    subtypeGenSingletonInt8,
    subtypeGenSingletonString
];

final readonly & NonEmptyPropositionGenerator[] AXIOMATIC_NONEMPTY_PROPOSITION_GENERATORS = [
    nonEmptyFromAxiomaticSubtype
];

int AXIOMATIC_GENERATOR_COUNT = AXIOMATIC_SUBTYPE_PROPOSITION_GENERATORS.length();

final SubtypePropositionGenerator[] SUBTYPE_PROPOSITION_GENERATORS = from var gen in AXIOMATIC_SUBTYPE_PROPOSITION_GENERATORS select gen;
final NonEmptyPropositionGenerator[] NONEMPTY_PROPOSITION_GENERATORS = from var gen in AXIOMATIC_NONEMPTY_PROPOSITION_GENERATORS select gen;

function init() {
    // JBUG #35902 this list should be initialized in the list constructor.
    SUBTYPE_PROPOSITION_GENERATORS.push(subtypeGenFixedLengthArray,
                                        subtypeGenList, 
                                        subtypeGenListUnionUnionList, 
                                        subtypeGenSimpleTuple, 
                                        subtypeGenTupleWithRest, 
                                        subtypeGenTupleUnequalMemberCount, 
                                        subtypeGenUnion,
                                        subtypeGenFixedTupleUnion);
    NONEMPTY_PROPOSITION_GENERATORS.push(nonEmptyGenUnion,
                                         nonEmptyGenTuple,
                                         nonEmptyGenNonRestTuple);
}

final readonly ALL_PROPOSITION_GENERATORS = fromList(SUBTYPE_PROPOSITION_GENERATORS);

function fromList(PropositionGenerator[]... generators) returns readonly & PropositionGenerator[] {
    PropositionGenerator[] all = [];
    foreach PropositionGenerator[] l in generators {
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

function subtypeSameBasicType(Context cx, int depth) returns SubtypeProposition {
    int r = randomInt(6);
    match r {
        0 => {
            return { left: t:INT, right: t:INT };
        }        
        1 => {
            return { left: t:FLOAT, right: t:FLOAT };
        }        
        2 => {
            return { left: t:DECIMAL, right: t:DECIMAL };
        }        
        3 => {
            return { left: t:BYTE, right: t:BYTE };
        }        
        4 => {
            return { left: t:STRING, right: t:STRING };
        }
        5 => {
            return { left: t:NEVER, right: t:NEVER };
        }        
    }
    panic error("invalid state");
}

function subtypeGenSingletonInt(Context cx, int depth) returns SubtypeProposition {
    int r = randomInt(int:MAX_VALUE);
    return { left: t:intConst(r), right: t:INT };
}

function subtypeGenSingletonInt8(Context cx, int depth) returns SubtypeProposition {
    int r = randomInt(128);
    return { left: t:intConst(r), right: t:intWidthSigned(8) };
}

// "abc" <: string
function subtypeGenSingletonString(Context cx, int depth) returns SubtypeProposition {
    int l = randomInt(cx.'limit.maxStringConstLen);
    int[] codePoints = from int _ in 0 ... l select string:toCodePointInt("a") + randomInt(52);
    // codepoints in [a-zA-Z]
    string r = checkpanic string:fromCodePointInts(codePoints);
    return { left: t:stringConst(r), right: t:STRING };
}

// T1 <: S1, T2 <: S2 -> (T1 | T2) <: (S1 | S2)
function subtypeGenUnion(Context cx, int depth) returns SubtypeProposition {
    SubtypeProposition p1 = generateSubtypeProposition(cx, depth - 1);
    SubtypeProposition p2 = generateSubtypeProposition(cx, depth - 1);
    return { left: t:union(p1.left, p2.left), right: t:union(p1.right, p2.right) };
}

// T[N] <: T[]
function subtypeGenFixedLengthArray(Context cx, int depth) returns SubtypeProposition {
    int r = randomInt(int:MAX_VALUE);
    SubtypeProposition p = generateSubtypeProposition(cx, depth - 1);
    t:SemType t = p.left;
    t:SemType sub = (new t:ListDefinition()).define(cx.typeContext.env, [t], r);
    t:SemType super = (new t:ListDefinition()).define(cx.typeContext.env, rest = t);
    return { left: sub, right: super };
}

// T[] | T1[] <: (T|T1)[]
function subtypeGenListUnionUnionList(Context cx, int depth) returns SubtypeProposition {
    SubtypeProposition p1 = generateSubtypeProposition(cx, depth - 1);
    SubtypeProposition p2 = generateSubtypeProposition(cx, depth - 1);
    t:SemType list1 = (new t:ListDefinition()).define(cx.typeContext.env, rest = p1.left);
    t:SemType list2 = (new t:ListDefinition()).define(cx.typeContext.env, rest = p2.right);
    t:SemType super = (new t:ListDefinition()).define(cx.typeContext.env, rest = t:union(p1.right, p2.right));
    return { left: t:union(list1, list2), right: super };
}

// T <: T1 -> T[] <: T1[]
function subtypeGenList(Context cx, int depth) returns SubtypeProposition {
    SubtypeProposition p = generateSubtypeProposition(cx, depth - 1);
    t:SemType sub = (new t:ListDefinition()).define(cx.typeContext.env, rest = p.left);
    t:SemType super = (new t:ListDefinition()).define(cx.typeContext.env, rest = p.right);
    return { left: sub, right: super };
}

// T1 <: S1, T2 <: S2, ..., Tn <: Sn -> [T1, T2, ..Tn] < [S1, S2, ..Sn]
function subtypeGenSimpleTuple(Context cx, int depth) returns SubtypeProposition {
    int memberCount = randomInt(cx.'limit.maxTupleMembers);
    var [subtypes, supertypes] = generateNSubtypePropositions(cx, memberCount, depth - 1);
    t:SemType sub = (new t:ListDefinition()).define(cx.typeContext.env, subtypes);
    t:SemType super = (new t:ListDefinition()).define(cx.typeContext.env, supertypes);
    return { left: sub, right: super };
}

// T1 <: S1, T2 <: S2, ..., Tn <: Sn, Tr, <: Sr -> [T1, T2, ..Tn, Tr...] < [S1, S2, ..Sn, Sr...]
function subtypeGenTupleWithRest(Context cx, int depth) returns SubtypeProposition {
    int memberCount = randomInt(cx.'limit.maxTupleMembers);
    var [subtypes, supertypes] = generateNSubtypePropositions(cx, memberCount, depth - 1);
    SubtypeProposition restProposition = generateSubtypeProposition(cx, depth - 1);
    t:SemType sub = (new t:ListDefinition()).define(cx.typeContext.env, subtypes, rest = restProposition.left);
    t:SemType super = (new t:ListDefinition()).define(cx.typeContext.env, supertypes, rest = restProposition.right);
    return { left: sub, right: super };
}

// T1 <: S1, T2 <: S2, T3 <: S3, Tr <: Sr -> [T1, T2, T3, Tr...] < [S1, S2, (S3|Sr)...]
function subtypeGenTupleUnequalMemberCount(Context cx, int depth) returns SubtypeProposition {
    int memberCount = randomInt(cx.'limit.maxTupleMembers);
    // Avoid heavy tree creations by duplicating some pre-generated members.
    var [subtypes, supertypes] = generateNSubtypePropositions(cx, memberCount, depth - 1);
    SubtypeProposition restProposition = generateSubtypeProposition(cx, depth - 1);
    t:SemType sub = (new t:ListDefinition()).define(cx.typeContext.env, subtypes, rest = restProposition.left);
    
    int sliceIndex = randomInt(supertypes.length());
    t:SemType[] superMembers = supertypes.slice(0, sliceIndex);
    t:SemType superRest = restProposition.right;
    foreach var i in sliceIndex ..< supertypes.length() {
        superRest = t:union(superRest, supertypes[i]);
    }
    t:SemType super = (new t:ListDefinition()).define(cx.typeContext.env, superMembers, rest = superRest);
    return { left: sub, right: super };
}

// T <: S, NE(T1), NE(T2)... -> T[] <: []|[S]|[(S|T1), S]|[S, S, (S|T2)...]
function subtypeGenFixedTupleUnion(Context cx, int depth) returns SubtypeProposition {
    int memberCount = randomInt(cx.'limit.maxTupleMembers);
    SubtypeProposition p = generateSubtypeProposition(cx, depth - 1);
    t:SemType left = (new t:ListDefinition()).define(cx.typeContext.env, rest = p.left);
    t:SemType right = t:NEVER;
    foreach var i in 0 ... memberCount {
        right = t:union(right, generateNTuple(cx, i, memberCount, p.right, depth - 1));
    }
    return { left, right };
}

// Generate N-tuple, using baseType unioned with other random types.
// When len == maxFixedLen, generated tuple has non-never rest type.
function generateNTuple(Context cx, int len, int maxFixedLen, t:SemType baseType, int depth) returns t:SemType {
    t:SemType[] members = [];
    t:SemType t = t:NEVER;
    foreach int i in 1...len {
        match randomInt(2) {
            0 => {
                t = t:NEVER;
                members.push(baseType);
            }
            1 => {
                t = generateSubtypeProposition(cx, depth).left;
                members.push(t:union(baseType, t));
            }
        }
    }
    t:SemType rest = t:NEVER;
    if len == maxFixedLen {
        rest = t:union(baseType, t);
    }
    return (new t:ListDefinition()).define(cx.typeContext.env, members, rest = rest);
}

// Max allowed value for `depth` = max(all previous depth values associated with the same Context) + 1
function generateSubtypeProposition(Context cx, int depth) returns SubtypeProposition {
    if depth <= 0 {
        SubtypePropositionGenerator generator = AXIOMATIC_SUBTYPE_PROPOSITION_GENERATORS[randomInt(AXIOMATIC_GENERATOR_COUNT)];
        SubtypeProposition prop =  generator(cx, depth);
        cx.storeSubtypeProposition(depth, prop);
        return prop;
    }
    if cx.subtypePropositions.length() > depth + 1 {
        return cx.takeSubtypeProposition();
    }
    int r = randomInt(SUBTYPE_PROPOSITION_GENERATORS.length());
    SubtypePropositionGenerator generator = SUBTYPE_PROPOSITION_GENERATORS[r];
    SubtypeProposition prop = generator(cx, depth);
    cx.storeSubtypeProposition(depth, prop);
    return prop;
}

function generateNSubtypePropositions(Context cx, int n, int depth) returns [t:SemType[], t:SemType[]] {
    t:SemType[] subtypes = [];
    t:SemType[] supertypes = [];
    foreach var _ in 0 ... n {
        SubtypeProposition p = generateSubtypeProposition(cx, depth);
        foreach var _ in 0 ... randomInt(cx.'limit.duplicationFactor) {
            subtypes.push(p.left);
            supertypes.push(p.right);
            if subtypes.length() == n {
                break;
            }
        }
    }
    return [subtypes, supertypes];
}

// Convert subtype proposition into non-empty preposition
function nonEmptyFromAxiomaticSubtype(Context cx, int depth) returns NonEmptyProposition {
    while true {
        SubtypeProposition subtypeProp = generateSubtypeProposition(cx, 0);
        if !t:isEmpty(cx.typeContext, subtypeProp.left) {
            match randomInt(2) {
                0 => {
                    return { left: subtypeProp.left, right: subtypeProp.right };
                }
                1 => {
                    return { left: subtypeProp.left, right: t:NEVER };
                }
            }
        }
        if !t:isEmpty(cx.typeContext, subtypeProp.right) {
            match randomInt(2) {
                0 => {
                    return { left: subtypeProp.left, right: subtypeProp.right };
                }
                1 => {
                    return { left: t:NEVER, right: subtypeProp.right };
                }
            }
        }
    }
}

// NE(T), NE(S) -> NE(T|S)
function nonEmptyGenUnion(Context cx, int depth) returns NonEmptyProposition {
    NonEmptyProposition left = generateNonEmptyProposition(cx, depth - 1);
    NonEmptyProposition right = generateNonEmptyProposition(cx, depth - 1);
    return { left: t:union(left.left, right.left), right: t:NEVER };
}

// NE(T) -> NE(T[])
function nonEmptyGenList(Context cx, int depth) returns NonEmptyProposition {
    NonEmptyProposition base = generateNonEmptyProposition(cx, depth - 1);
    t:SemType elem = base.left;
    t:SemType t = (new t:ListDefinition()).define(cx.typeContext.env, [], rest = elem);
    return { left: t, right: t:NEVER };
}

// NE(T1), NE(T2), ...NE(Tn), Tr -> NE([T1, T2, ..Tn, Tr...])
function nonEmptyGenTuple(Context cx, int depth) returns NonEmptyProposition {
    NonEmptyProposition base = generateNonEmptyProposition(cx, depth - 1);
    t:SemType rest = base.left;
    t:SemType[] fixedMembers = from var _ in 0 ... randomInt(cx.'limit.maxTupleMembers) 
                               let var prop = generateNonEmptyProposition(cx, depth - 1)
                               select prop.left;
    t:SemType t = (new t:ListDefinition()).define(cx.typeContext.env, fixedMembers, rest = rest);
    return { left: t, right: t:NEVER };

}
// NE(T1), NE(T2), ...NE(Tn) -> NE([T1, T2, ..Tn])
function nonEmptyGenNonRestTuple(Context cx, int depth) returns NonEmptyProposition {
    t:SemType[] fixedMembers = from var _ in 0 ... randomInt(cx.'limit.maxTupleMembers) 
                               let var prop = generateNonEmptyProposition(cx, depth - 1)
                               select prop.left;
    t:SemType t = (new t:ListDefinition()).define(cx.typeContext.env, fixedMembers);
    return { left: t, right: t:NEVER };
}

// Max allowed value for `depth` = max(all previous depth values associated with the same Context) + 1
function generateNonEmptyProposition(Context cx, int depth) returns NonEmptyProposition {
    if depth <= 0 {
        NonEmptyPropositionGenerator generator = AXIOMATIC_NONEMPTY_PROPOSITION_GENERATORS[randomInt(AXIOMATIC_NONEMPTY_PROPOSITION_GENERATORS.length())];
        return generator(cx, depth);
    }
    if cx.subtypePropositions.length() > depth + 1 {
        return cx.takeNonEmptyProposition();
    }
    int r = randomInt(NONEMPTY_PROPOSITION_GENERATORS.length());
    NonEmptyPropositionGenerator generator = NONEMPTY_PROPOSITION_GENERATORS[r];
    NonEmptyProposition prop = generator(cx, depth);
    cx.storeNonEmptyProposition(depth, prop);
    return prop;
}

function evalProposition(Context cx, Proposition p) returns boolean {
    match p.op {
        UNION => {
            return t:isEmpty(cx.typeContext, t:union(p.left, p.right)) == p.isEmpty;
        }
        INTERSECT => {
            return t:isEmpty(cx.typeContext, t:intersect(p.left, p.right)) == p.isEmpty;
        }
        DIFF => {
            return t:isEmpty(cx.typeContext, t:diff(p.left, p.right)) == p.isEmpty;
        }
        DIFF2 => {
            return t:isEmpty(cx.typeContext, t:diff(p.left, p.right)) == p.isEmpty 
                && t:isEmpty(cx.typeContext, t:diff(p.right, p.left)) == p.isEmpty;
        }
    }
    panic error("Invalid state");
}

type PropositionTestConfig record {|
    int totalTestRuns = 10;
    int depthLimit = 6;
    int widthLimit = 200;
    PropositionGenerator generator;
    OnFail onFail = assertFail;
|};

function assertFail(Context cx, Proposition prop) {
    test:assertFail(prop.toString());
}

function invokePropositionGenerator(*PropositionTestConfig config) {
    foreach int i in 0 ... config.totalTestRuns {
        Context cx = new Context(t:typeContext(new));
        foreach int depth in 0 ... config.depthLimit {
            io:print(string `${"\r"}Iteration: ${i}, level: ${depth}/${config.depthLimit}`);
            foreach int j in 0 ... config.widthLimit {
                PropositionGenerator generator = config.generator;
                Proposition prop = generator(cx, depth);
                if !evalProposition(cx, prop) {
                    OnFail onFail = config.onFail;
                    onFail(cx, prop);
                }
            }
        }
        io:println();
    }
}

@test:Config
function testSubtyping() {
    invokePropositionGenerator(generator = generateSubtypeProposition);
}

@test:Config
function testNonEmptyTypes() {
    invokePropositionGenerator(generator = generateNonEmptyProposition);
}