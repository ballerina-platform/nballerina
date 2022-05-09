import ballerina/io;
import ballerina/test;
import ballerina/time;

import wso2/nballerina.types as t;

// diff-2 stand for isEmpty(diff(a, b)) and isEmpty(diff(b, a))
enum PropositionOp {
    UNION, INTERSECT, DIFF, DIFF2
}

type Proposition record {|
    PropositionOp op;
    boolean isEmpty;
    int left;
    int right;
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

type PropositionGenerator function (Context cx, PropositionPath path) returns Proposition;

type SubtypePropositionGenerator function (Context cx, PropositionPath path) returns SubtypeProposition;

type NonEmptyPropositionGenerator function (Context cx, PropositionPath path) returns NonEmptyProposition; 

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
    final int seed;
    final Random random;
    final TypeBuilder tBuilder;

    function init(t:Context cx, int seed, Limits 'limit = {}) {
        self.typeContext = cx;
        self.'limit = 'limit;
        self.seed = seed;
        self.random = new(seed);
        self.tBuilder = new AstBasedTypeDefBuilder(cx);
    }

    function takeSubtypeProposition() returns SubtypeProposition {
        return <SubtypeProposition>self.takeFromList(self.subtypePropositions);
    }

    function takeNonEmptyProposition() returns NonEmptyProposition {
        return <NonEmptyProposition>self.takeFromList(self.nonEmptyPropositions);
    }

    private function takeFromList(Proposition[][] list) returns Proposition {
        int level = self.random.nextRange(list.length());
        Proposition[] subList = list[level];
        int item = self.random.nextRange(subList.length());
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

type PropositionPath record {|
    int depth;
    (PropositionPath|int)[] rands;
|};

function propositionBranch(PropositionPath current) returns PropositionPath {
    PropositionPath next = { depth: current.depth - 1, rands: [] };
    current.rands.push(next);
    return next;
}

final readonly & SubtypePropositionGenerator[] AXIOMATIC_SUBTYPE_PROPOSITION_GENERATORS = [
    subtypeSameSimpleType,
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

final (function (TypeBuilder) returns int)[] TYPES_GENERATOR_LIST = [
    d => d.intType(),
    d => d.floatType(),
    d => d.byteType(),
    d => d.stringType(),
    d => d.neverType()
];

function subtypeSameSimpleType(Context cx, PropositionPath path) returns SubtypeProposition {
    int r = cx.random.nextRange(TYPES_GENERATOR_LIST.length());
    (function (TypeBuilder) returns int) g = TYPES_GENERATOR_LIST[r];
    int index = g(cx.tBuilder);
    return { left: index, right: index };
}

function subtypeGenSingletonInt(Context cx, PropositionPath path) returns SubtypeProposition {
    int r = cx.random.next();
    return { left: cx.tBuilder.intConst(r), right: cx.tBuilder.intType() };
}

function subtypeGenSingletonInt8(Context cx, PropositionPath path) returns SubtypeProposition {
    int r = cx.random.nextRange(128);
    return { left: cx.tBuilder.intConst(r), right: cx.tBuilder.intWidthSigned(8) };
}

// "abc" <: string
function subtypeGenSingletonString(Context cx, PropositionPath path) returns SubtypeProposition {
    int l = cx.random.nextRange(cx.'limit.maxStringConstLen);
    return { left: cx.tBuilder.stringConst(cx.random.randomStringValue(l)), right: cx.tBuilder.stringType() };
}

// T1 <: S1, T2 <: S2 -> (T1 | T2) <: (S1 | S2)
function subtypeGenUnion(Context cx, PropositionPath path) returns SubtypeProposition {
    SubtypeProposition p1 = generateSubtypeProposition(cx, propositionBranch(path));
    SubtypeProposition p2 = generateSubtypeProposition(cx, propositionBranch(path));
    return { left: cx.tBuilder.union(p1.left, p2.left), right: cx.tBuilder.union(p1.right, p2.right) };
}

// T[N] <: T[]
function subtypeGenFixedLengthArray(Context cx, PropositionPath path) returns SubtypeProposition {
    int r = cx.random.next();
    SubtypeProposition p = generateSubtypeProposition(cx, propositionBranch(path));
    int t = p.left;
    int left = cx.tBuilder.list([t], fixedLen = r);
    int right = cx.tBuilder.list(rest = t);
    return { left, right };
}

// T[] | T1[] <: (T|T1)[]
function subtypeGenListUnionUnionList(Context cx, PropositionPath path) returns SubtypeProposition {
    SubtypeProposition p1 = generateSubtypeProposition(cx, propositionBranch(path));
    int left = cx.tBuilder.union(cx.tBuilder.list(rest = p1.left), cx.tBuilder.list(rest = p1.right));
    int right = cx.tBuilder.list(rest = cx.tBuilder.union(p1.left, p1.right));
    return { left, right };
}

// T <: T1 -> T[] <: T1[]
function subtypeGenList(Context cx, PropositionPath path) returns SubtypeProposition {
    SubtypeProposition p = generateSubtypeProposition(cx, propositionBranch(path));
    return { left: cx.tBuilder.list(rest = p.left), right: cx.tBuilder.list(rest = p.right) };
}

// T1 <: S1, T2 <: S2, ..., Tn <: Sn -> [T1, T2, ..Tn] < [S1, S2, ..Sn]
function subtypeGenSimpleTuple(Context cx, PropositionPath path) returns SubtypeProposition {
    int memberCount = cx.random.nextRange(cx.'limit.maxTupleMembers);
    var [subtypes, supertypes] = generateNSubtypePropositions(cx, memberCount, propositionBranch(path));
    return { left: cx.tBuilder.list(subtypes), right: cx.tBuilder.list(supertypes) };
}

// T1 <: S1, T2 <: S2, ..., Tn <: Sn, Tr, <: Sr -> [T1, T2, ..Tn, Tr...] < [S1, S2, ..Sn, Sr...]
function subtypeGenTupleWithRest(Context cx, PropositionPath path) returns SubtypeProposition {
    int memberCount = cx.random.nextRange(cx.'limit.maxTupleMembers);
    var [subtypes, supertypes] = generateNSubtypePropositions(cx, memberCount, propositionBranch(path));
    SubtypeProposition restProposition = generateSubtypeProposition(cx, propositionBranch(path));
    int left = cx.tBuilder.list(subtypes, rest = restProposition.left);
    int right = cx.tBuilder.list(supertypes, rest = restProposition.right);
    return { left, right };
}

// T1 <: S1, T2 <: S2, T3 <: S3, Tr <: Sr -> [T1, T2, T3, Tr...] < [S1, S2, (S3|Sr)...]
function subtypeGenTupleUnequalMemberCount(Context cx, PropositionPath path) returns SubtypeProposition {
    int memberCount = cx.random.nextRange(cx.'limit.maxTupleMembers);
    var [subtypes, supertypes] = generateNSubtypePropositions(cx, memberCount, propositionBranch(path));
    SubtypeProposition rest = generateSubtypeProposition(cx, propositionBranch(path));
    int left = cx.tBuilder.list(subtypes, rest = rest.left);
    
    int sliceIndex = cx.random.nextRange(supertypes.length());
    int[] superMembers = supertypes.slice(0, sliceIndex);
    int superRest = rest.right;
    foreach var i in sliceIndex ..< supertypes.length() {
        superRest = cx.tBuilder.union(superRest, supertypes[i]);
    }
    int right = cx.tBuilder.list(superMembers, rest = superRest);
    return { left, right };
}

// T <: S, NE(T1), NE(T2)... -> T[] <: []|[S]|[(S|T1), S]|[S, S, (S|T2)...]
function subtypeGenFixedTupleUnion(Context cx, PropositionPath path) returns SubtypeProposition {
    int memberCount = cx.random.nextRange(cx.'limit.maxTupleMembers);
    SubtypeProposition p = generateSubtypeProposition(cx, propositionBranch(path));
    int left = cx.tBuilder.list(rest = p.left);
    int right = t:NEVER;
    foreach var i in 0 ... memberCount {
        right = cx.tBuilder.union(right, generateNTuple(cx, i, memberCount, p.right, propositionBranch(path)));
    }
    return { left, right };
}

// Generate N-tuple, using baseType unioned with other random types.
// When len == maxFixedLen, generated tuple has non-never rest type.
function generateNTuple(Context cx, int len, int maxFixedLen, int baseType, PropositionPath path) returns int {
    int[] members = [];
    int t = cx.tBuilder.neverType();
    foreach int i in 1...len {
        match cx.random.nextRange(2) {
            0 => {
                t = cx.tBuilder.neverType();
                members.push(baseType);
            }
            1 => {
                t = generateSubtypeProposition(cx, propositionBranch(path)).left;
                members.push(cx.tBuilder.union(baseType, t));
            }
        }
    }
    int rest = -1;
    if len == maxFixedLen {
        rest = cx.tBuilder.union(baseType, t);
    }
    return cx.tBuilder.list(members, rest = rest);
}

// Max allowed value for `depth` = max(all previous depth values associated with the same Context) + 1
function generateSubtypeProposition(Context cx, PropositionPath path) returns SubtypeProposition {
    if path.depth <= 0 {
        SubtypePropositionGenerator generator = AXIOMATIC_SUBTYPE_PROPOSITION_GENERATORS[cx.random.nextRange(AXIOMATIC_GENERATOR_COUNT)];
        SubtypeProposition prop =  generator(cx, path);
        cx.storeSubtypeProposition(0, prop);
        return prop;
    }
    if cx.subtypePropositions.length() > path.depth + 1 {
        return cx.takeSubtypeProposition();
    }
    int r = cx.random.nextRange(SUBTYPE_PROPOSITION_GENERATORS.length());
    SubtypePropositionGenerator generator = SUBTYPE_PROPOSITION_GENERATORS[r];
    SubtypeProposition prop = generator(cx, path);
    cx.storeSubtypeProposition(path.depth, prop);
    return prop;
}

function generateNSubtypePropositions(Context cx, int n, PropositionPath path) returns [int[], int[]] {
    int[] subtypes = [];
    int[] supertypes = [];
    foreach var _ in 0 ... n {
        SubtypeProposition p = generateSubtypeProposition(cx, path);
        foreach var _ in 0 ... cx.random.nextRange(cx.'limit.duplicationFactor) {
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
function nonEmptyFromAxiomaticSubtype(Context cx, PropositionPath path) returns NonEmptyProposition {
    while true {
        SubtypeProposition subtypeProp = generateSubtypeProposition(cx, { depth: 0, rands: [] });
        if !t:isEmpty(cx.typeContext, cx.tBuilder.semtype(subtypeProp.left)) {
            match cx.random.nextRange(2) {
                0 => {
                    return { left: subtypeProp.left, right: subtypeProp.right };
                }
                1 => {
                    return { left: subtypeProp.left, right: t:NEVER };
                }
            }
        }
        if !t:isEmpty(cx.typeContext, cx.tBuilder.semtype(subtypeProp.right)) {
            match cx.random.nextRange(2) {
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
function nonEmptyGenUnion(Context cx, PropositionPath path) returns NonEmptyProposition {
    NonEmptyProposition left = generateNonEmptyProposition(cx, propositionBranch(path));
    NonEmptyProposition right = generateNonEmptyProposition(cx, propositionBranch(path));
    return { left: cx.tBuilder.union(left.left, right.left), right: t:NEVER };
}

// NE(T) -> NE(T[])
function nonEmptyGenList(Context cx, PropositionPath path) returns NonEmptyProposition {
    NonEmptyProposition base = generateNonEmptyProposition(cx, propositionBranch(path));
    int elem = base.left;
    int t = cx.tBuilder.list(rest = elem);
    return { left: t, right: cx.tBuilder.neverType() };
}

// NE(T1), NE(T2), ...NE(Tn), Tr -> NE([T1, T2, ..Tn, Tr...])
function nonEmptyGenTuple(Context cx, PropositionPath path) returns NonEmptyProposition {
    NonEmptyProposition base = generateNonEmptyProposition(cx, propositionBranch(path));
    int rest = base.left;
    int[] fixedMembers = from var _ in 0 ... cx.random.nextRange(cx.'limit.maxTupleMembers) 
                               let var prop = generateNonEmptyProposition(cx, propositionBranch(path))
                               select prop.left;
    int t = cx.tBuilder.list(fixedMembers, rest = rest);
    return { left: t, right: t:NEVER };

}
// NE(T1), NE(T2), ...NE(Tn) -> NE([T1, T2, ..Tn])
function nonEmptyGenNonRestTuple(Context cx, PropositionPath path) returns NonEmptyProposition {
    int[] fixedMembers = from var _ in 0 ... cx.random.nextRange(cx.'limit.maxTupleMembers) 
                               let var prop = generateNonEmptyProposition(cx, propositionBranch(path))
                               select prop.left;
    int t = cx.tBuilder.list(fixedMembers);
    return { left: t, right: cx.tBuilder.neverType() };
}

// Max allowed value for `depth` = max(all previous depth values associated with the same Context) + 1
function generateNonEmptyProposition(Context cx, PropositionPath path) returns NonEmptyProposition {
    if path.depth <= 0 {
        NonEmptyPropositionGenerator generator = AXIOMATIC_NONEMPTY_PROPOSITION_GENERATORS[cx.random.nextRange(AXIOMATIC_NONEMPTY_PROPOSITION_GENERATORS.length())];
        return generator(cx, path);
    }
    if cx.subtypePropositions.length() > path.depth + 1 {
        return cx.takeNonEmptyProposition();
    }
    int r = cx.random.nextRange(NONEMPTY_PROPOSITION_GENERATORS.length());
    NonEmptyPropositionGenerator generator = NONEMPTY_PROPOSITION_GENERATORS[r];
    NonEmptyProposition prop = generator(cx, path);
    cx.storeNonEmptyProposition(path.depth, prop);
    return prop;
}

function evalProposition(Context cx, Proposition p) returns boolean {
    t:SemType left = cx.tBuilder.semtype(p.left);
    t:SemType right = cx.tBuilder.semtype(p.right);
    match p.op {
        UNION => {
            return t:isEmpty(cx.typeContext, t:union(left, right)) == p.isEmpty;
        }
        INTERSECT => {
            return t:isEmpty(cx.typeContext, t:intersect(left, right)) == p.isEmpty;
        }
        DIFF => {
            return t:isEmpty(cx.typeContext, t:diff(left, right)) == p.isEmpty;
        }
        DIFF2 => {
            return t:isEmpty(cx.typeContext, t:diff(left, right)) == p.isEmpty 
                && t:isEmpty(cx.typeContext, t:diff(right, left)) == p.isEmpty;
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
    test:assertFail(prop.toString() + "\n---------\n" 
                    + cx.tBuilder.typeToString(prop.left) 
                    + "\ndiff::\n" + cx.tBuilder.typeToString(prop.right)
                    + "\n\n" + cx.tBuilder.semtype(prop.left).toString()
                    + "\n" + cx.tBuilder.semtype(prop.right).toString());
}

function invokePropositionGenerator(*PropositionTestConfig config) {
    foreach int i in 0 ... config.totalTestRuns {
        time:Utc seed = time:utcNow();
        Context cx = new Context(t:typeContext(new), seed[0]);
        foreach int depth in 0 ... config.depthLimit {
            io:print(string `${"\r"}Iteration: ${i}, level: ${depth}/${config.depthLimit}`);
            foreach int j in 0 ... config.widthLimit {
                PropositionGenerator generator = config.generator;
                Proposition prop = generator(cx, { depth, rands: [] });
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
