import ballerina/io;
import ballerina/test;
import ballerina/time;

import wso2/nballerina.types as t;
import wso2/nballerina.comm.lib;

// diff-2 stand for isEmpty(diff(a, b)) and isEmpty(diff(b, a))
enum PropositionOp {
    UNION, INTERSECT, DIFF, DIFF2, APPLY
}

type Proposition record {
    PropositionOp op;
    boolean isEmpty;
    int left;
    int right;
};

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

type ApplicationProposition record {|
    // In the proposition left is the return type, right is [functiontype, arglisttype]
    *Proposition;
    APPLY op = APPLY;
    true isEmpty = true;
    // We keep the destructured fields of right to make it easy when generating new propositions
    int functionType;
    int argListType;
|};

type PropositionGenerator function (PropositionGenContext cx, PropositionPath path) returns Proposition;

type SubtypePropositionGenerator function (PropositionGenContext cx, PropositionPath path) returns SubtypeProposition;

type NonEmptyPropositionGenerator function (PropositionGenContext cx, PropositionPath path) returns NonEmptyProposition;

type ApplicationPropositionGenerator function (PropositionGenContext cx, PropositionPath path) returns ApplicationProposition;

type PropositionGenBounds readonly & record {|
    readonly int maxMemberCount = 6;
    readonly int maxParamCount = 20;
    readonly int maxStringConstLen = 20;
    readonly int duplicationFactor = 6;
|};

type PropositionListCtor function () returns Proposition[];

class PropositionGenContext {
    final t:Context typeContext;
    final SubtypeProposition[][] subtypePropositions = [];
    final NonEmptyProposition[][] nonEmptyPropositions = [];
    final ApplicationProposition[][] applicationPropositions = [];
    final PropositionGenBounds bounds;
    final int seed;
    final lib:Random random;
    final TypeBuilder types;
    final Proposition[] failedPropositions = [];

    function init(t:Context cx, int seed, PropositionGenBounds bounds = {}) {
        self.typeContext = cx;
        self.bounds = bounds;
        self.seed = seed;
        self.types = new AstBasedTypeDefBuilder(cx);
        self.random = new (seed);
    }

    function takeSubtypeProposition() returns SubtypeProposition {
        return <SubtypeProposition>self.takeFromList(self.subtypePropositions);
    }

    function takeNonEmptyProposition() returns NonEmptyProposition {
        return <NonEmptyProposition>self.takeFromList(self.nonEmptyPropositions);
    }

    function takeApplicationProposition() returns ApplicationProposition {
        return <ApplicationProposition>self.takeFromList(self.applicationPropositions);
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

    function storeApplicationProposition(int depth, ApplicationProposition proposition) {
        self.storeInList(self.applicationPropositions, () => <ApplicationProposition[]>[], depth, proposition);
    }

    private function storeInList(Proposition[][] list, PropositionListCtor ctor, int depth, Proposition proposition) {
        if list.length() <= depth {
            list[depth] = ctor();
        }
        list[depth].push(proposition);
    }

    function failed(Proposition proposition) {
        self.failedPropositions.push(proposition);
    }
}

type PropositionPath record {|
    int depth;
    (PropositionPath|int)[] rands;
|};

function propositionBranch(PropositionPath current) returns PropositionPath {
    PropositionPath next = {depth: current.depth - 1, rands: []};
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

final readonly & ApplicationPropositionGenerator[] AXIOMATIC_APPLICATION_PROPOSITION_GENERATORS = [
    applicationSimpleFunction,
    applicationVarArgFunction
];

int AXIOMATIC_GENERATOR_COUNT = AXIOMATIC_SUBTYPE_PROPOSITION_GENERATORS.length();

final SubtypePropositionGenerator[] SUBTYPE_PROPOSITION_GENERATORS = from var gen in AXIOMATIC_SUBTYPE_PROPOSITION_GENERATORS
    select gen;
final NonEmptyPropositionGenerator[] NONEMPTY_PROPOSITION_GENERATORS = from var gen in AXIOMATIC_NONEMPTY_PROPOSITION_GENERATORS
    select gen;
final ApplicationPropositionGenerator[] APPLICATION_PROPOSITION_GENERATORS = from var gen in AXIOMATIC_APPLICATION_PROPOSITION_GENERATORS
    select gen;

function init() {
    // JBUG #35902 this list should be initialized in the list constructor.
    SUBTYPE_PROPOSITION_GENERATORS.push(subtypeGenFixedLengthArray,
                                        subtypeGenList,
                                        subtypeGenListUnionUnionList,
                                        subtypeGenSimpleTuple,
                                        subtypeGenTupleWithRest,
                                        subtypeGenTupleUnequalMemberCount,
                                        subtypeGenXmlSequence,
                                        subtypeGenXmlSequenceUnion,
                                        subtypeGenUnion,
                                        subtypeGenFixedTupleUnion,
                                        subtypeGenMap,
                                        subtypeGenMapUnion,
                                        subtypeGenClosedRecord,
                                        subtypeGenFunction,
                                        subtypeGenFunctionExtraVarArg,
                                        subtypeGenFunctionVarArg,
                                        subtypeGenFunctionUnequalArgumentCount,
                                        subtypeGenRecord);
    NONEMPTY_PROPOSITION_GENERATORS.push(nonEmptyGenUnion,
                                        nonEmptyGenTuple,
                                        nonEmptyGenNonRestTuple);
    APPLICATION_PROPOSITION_GENERATORS.push(applicationIntersection,
                                            applicationUnion);
}

final readonly ALL_PROPOSITION_GENERATORS = fromList(SUBTYPE_PROPOSITION_GENERATORS);

function fromList(PropositionGenerator[]... generators) returns readonly & PropositionGenerator[] {
    PropositionGenerator[] all = [];
    foreach PropositionGenerator[] l in generators {
        all.push(...l);
    }
    return all.cloneReadOnly();
}

type TypeGeneratorFunction function (TypeBuilder) returns int;

final TypeGeneratorFunction[] XML_TYPES_GENERATOR_LIST = [
    d => d.xmlType(),
    d => d.xmlElementType(),
    d => d.xmlCommentType(),
    d => d.xmlProcessingInstructionType(),
    d => d.xmlTextType()
];

final TypeGeneratorFunction[] TYPES_GENERATOR_LIST = [
    d => d.intType(),
    d => d.floatType(),
    d => d.byteType(),
    d => d.stringType(),
    d => d.neverType(),
    XML_TYPES_GENERATOR_LIST[0],
    XML_TYPES_GENERATOR_LIST[1],
    XML_TYPES_GENERATOR_LIST[2],
    XML_TYPES_GENERATOR_LIST[3],
    XML_TYPES_GENERATOR_LIST[4]
];

function applicationSimpleFunction(PropositionGenContext cx, PropositionPath path) returns ApplicationProposition {
    int argCount = cx.random.nextRange(cx.bounds.maxParamCount);
    int[] args = [];
    foreach int i in 0 ..< argCount {
        TypeGeneratorFunction argGen = TYPES_GENERATOR_LIST[cx.random.nextRange(TYPES_GENERATOR_LIST.length())];
        args.push(argGen(cx.types));
    }
    TypeGeneratorFunction retGen = TYPES_GENERATOR_LIST[cx.random.nextRange(TYPES_GENERATOR_LIST.length())];
    int ret = retGen(cx.types);
    int functionType = cx.types.functionType(parameterTypes = args, returnType = ret);
    int argListType = cx.types.functionArgumentType(args);
    int right = cx.types.list([functionType, argListType]);
    return { left: ret, right, functionType, argListType };
}

function applicationVarArgFunction(PropositionGenContext cx, PropositionPath path) returns ApplicationProposition {
    int argCount = cx.random.nextRange(cx.bounds.maxParamCount);
    int[] args = [];
    foreach int i in 0 ..< argCount {
        TypeGeneratorFunction argGen = TYPES_GENERATOR_LIST[cx.random.nextRange(TYPES_GENERATOR_LIST.length())];
        args.push(argGen(cx.types));
    }
    TypeGeneratorFunction restGen = TYPES_GENERATOR_LIST[cx.random.nextRange(TYPES_GENERATOR_LIST.length())];
    int rest = restGen(cx.types);
    if cx.random.nextRange(2) == 1 {
        args.push(rest);
    }
    TypeGeneratorFunction retGen = TYPES_GENERATOR_LIST[cx.random.nextRange(TYPES_GENERATOR_LIST.length())];
    int ret = retGen(cx.types);
    int functionType = cx.types.functionType(args, rest, ret);
    int argListType = cx.types.functionArgumentType(args);
    int right = cx.types.list([functionType, argListType]);
    return { left: ret, right, functionType, argListType };
}

function applicationIntersection(PropositionGenContext cx, PropositionPath path) returns ApplicationProposition {
    ApplicationProposition a1 = generateApplicationPropositions(cx, path);
    ApplicationProposition a2 = generateApplicationPropositions(cx, path);
    int functionType = cx.types.intersection(a1.functionType, a2.functionType);
    int ret;
    int argListType;
    boolean intersectionValid = intersectionPossible(cx, a1.argListType, a2.argListType) &&
                                intersectionPossible(cx, a1.left, a2.left);
    if intersectionValid {
        ret = cx.types.intersection(a1.left, a2.left);
        argListType = cx.types.intersection(a1.argListType, a2.argListType);
    } else {
        [ret, argListType] = applicationComponents(cx, a1, a2);
    }
    int right = cx.types.list([functionType, argListType]);
    return { left: ret, right, functionType, argListType };
}

function applicationUnion(PropositionGenContext cx, PropositionPath path) returns ApplicationProposition {
    ApplicationProposition a1 = generateApplicationPropositions(cx, path);
    ApplicationProposition a2 = generateApplicationPropositions(cx, path);
    int functionType = cx.types.union(a1.functionType, a2.functionType);
    int ret;
    int argListType;
    if intersectionPossible(cx, a1.argListType, a2.argListType) {
        ret = cx.types.union(a1.left, a2.left);
        argListType = cx.types.intersection(a1.argListType, a2.argListType);
    }
    else {
        [ret, argListType] = applicationComponents(cx, a1, a2);
    }
    int right = cx.types.list([functionType, argListType]);
    return {left: ret, right, functionType, argListType};
}

function applicationComponents(PropositionGenContext cx, ApplicationProposition a1, ApplicationProposition a2) returns [int, int] {
    match cx.random.nextRange(2) {
        0 => {
            return [a1.left, a1.argListType];
        }
        _ => {
            return [a2.left, a2.argListType];
        }
    }
}


function intersectionPossible(PropositionGenContext cx, int lhs, int rhs) returns boolean {
    t:SemType|TypeBuilderError lhsType = cx.types.semtype(lhs);
    t:SemType|TypeBuilderError rhsType = cx.types.semtype(rhs);
    if lhsType is TypeBuilderError || rhsType is TypeBuilderError {
        panic error("failed to resolve type with seed: " + cx.seed.toString());
    }
    return !t:isEmpty(cx.typeContext, t:intersect(lhsType, rhsType));
}

function subtypeSameSimpleType(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    int r = cx.random.nextRange(TYPES_GENERATOR_LIST.length());
    TypeGeneratorFunction g = TYPES_GENERATOR_LIST[r];
    int index = g(cx.types);
    return {left: index, right: index};
}

function subtypeGenSingletonInt(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    int r = cx.random.next();
    return {left: cx.types.intConst(r), right: cx.types.intType()};
}

function subtypeGenSingletonInt8(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    int r = cx.random.nextRange(128);
    int|TypeBuilderError right = cx.types.intWidthSigned(8);
    if right is error {
        panic error("failed to create byte type with seed: " + cx.seed.toString());
    }
    return {left: cx.types.intConst(r), right};
}

// "abc" <: string
function subtypeGenSingletonString(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    int l = cx.random.nextRange(cx.bounds.maxStringConstLen);
    return {left: cx.types.stringConst(cx.random.randomStringValue(l)), right: cx.types.stringType()};
}

// Generate random xml or xml subtype
function generateXmlType(PropositionGenContext cx) returns int {
    int index = cx.random.nextRange(XML_TYPES_GENERATOR_LIST.length());
    TypeGeneratorFunction generator = XML_TYPES_GENERATOR_LIST[index];
    return generator(cx.types);
}

// Generate random xml sequence
function subtypeGenXmlSequence(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    int t1 = generateXmlType(cx);
    int r = cx.random.nextRange(3);
    if r == 0 {
        return {
            left: cx.types.xmlSequenceType(t1),
            right: cx.types.xmlSequenceType(t1)
        };
    }
    int t2 = generateXmlType(cx);
    if r == 1 {
        return {
            left: cx.types.xmlSequenceType(t1),
            right: cx.types.xmlSequenceType(cx.types.union(t1, t2))
        };
    }

    return {
        left: cx.types.xmlSequenceType(cx.types.union(t1, t2)),
        right: cx.types.xmlSequenceType(cx.types.union(t1, t2))
    };
}

// X, Y in XML -> xml<X>|xml<Y> <: xml<X|Y>
function subtypeGenXmlSequenceUnion(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    int t1 = generateXmlType(cx);
    int t2 = generateXmlType(cx);
    return {
        left: cx.types.union(cx.types.xmlSequenceType(t1), cx.types.xmlSequenceType(t2)),
        right: cx.types.xmlSequenceType(cx.types.union(t1, t2))
    };
}

// T1 <: S1, T2 <: S2 -> (T1 | T2) <: (S1 | S2)
function subtypeGenUnion(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    SubtypeProposition p1 = generateSubtypeProposition(cx, propositionBranch(path));
    SubtypeProposition p2 = generateSubtypeProposition(cx, propositionBranch(path));
    return {left: cx.types.union(p1.left, p2.left), right: cx.types.union(p1.right, p2.right)};
}

// T1 <: S1, T2 <: S2, ..., Tn <: Sn [and Sret <: Tret] -> function(S1, S2, ..., Sn) [returns Sret] <: function(T1, T2, ..., Tn) [returns Tret]
function subtypeGenFunction(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    var [[leftParamTypes, leftReturnType], [rightParamTypes, rightReturnType]] = functionPropositionComponents(cx, path);
    int left = cx.types.functionType(leftParamTypes, returnType = leftReturnType);
    int right = cx.types.functionType(rightParamTypes, returnType = rightReturnType);
    return {left, right};
}

// T1 <: S1, T2 <: S2, ..., Tn <: Sn [and Sret <: Tret] -> function(S1, S2, ..., Sn, Sr...) [returns Sret] <: function(T1, T2, ..., Tn) [returns Tret]
function subtypeGenFunctionExtraVarArg(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    var [[leftParamTypes, leftReturnType], [rightParamTypes, rightReturnType]] = functionPropositionComponents(cx, path);
    int left = cx.types.functionType(leftParamTypes, restType = generateRandomType(cx, path),
                                    returnType = leftReturnType);
    int right = cx.types.functionType(rightParamTypes, returnType = rightReturnType);
    return {left, right};
}

// T1 <: S1, T2 <: S2, ..., Tn <: Sn and m < n [and Sret <: Tret] -> function(S1, S2, ..., (Sm|Tm|Tm+1|...|Tn)...) [returns Sret] <: function(T1, T2, ..., Tn|Sm...) [returns Tret]
function subtypeGenFunctionVarArg(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    var [[leftParamTypes, leftReturnType], [rightParamTypes, rightReturnType]] = functionPropositionComponents(cx, path);
    var {left: rightRest, right: leftRest} = generateSubtypeProposition(cx, propositionBranch(path));
    int sliceIndex = cx.random.nextRange(leftParamTypes.length());
    int[] leftParamTypeSlice = leftParamTypes.slice(0, sliceIndex);
    foreach int i in sliceIndex ..< rightParamTypes.length() {
        leftRest = cx.types.union(leftRest, rightParamTypes[i]);
    }
    int left = cx.types.functionType(leftParamTypeSlice, restType = leftRest, returnType = leftReturnType);
    int right = cx.types.functionType(rightParamTypes, restType = rightRest, returnType = rightReturnType);
    return {left, right};
}

// T1 <: S1, T2 <: S2, ..., Tn <: Sn and m < n [and Sret <: Tret] -> function(S1, S2, ..., (Sm|Tm|Tm+1|...|Tn)) [returns Sret] <: function(T1, T2, ..., Tn|Sm...) [returns Tret]
function subtypeGenFunctionUnequalArgumentCount(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    var [[leftParamTypes, leftReturnType], [rightParamTypes, rightReturnType]] = functionPropositionComponents(cx, path);
    int leftRest = generateRandomType(cx, path);
    int sliceIndex = cx.random.nextRange(leftParamTypes.length());
    int[] leftParamTypeSlice = leftParamTypes.slice(0, sliceIndex);
    foreach int i in sliceIndex ..< rightParamTypes.length() {
        leftRest = cx.types.union(leftRest, rightParamTypes[i]);
    }
    int left = cx.types.functionType(leftParamTypeSlice, restType = leftRest, returnType = leftReturnType);
    int right = cx.types.functionType(rightParamTypes, returnType = rightReturnType);
    return {left, right};
}

function functionPropositionComponents(PropositionGenContext cx, PropositionPath path) returns [int[], int][2] {
    int paramCount = cx.random.nextRange(cx.bounds.maxParamCount);
    var [subtypes, superTypes] = generateNSubtypePropositions(cx, paramCount, propositionBranch(path));
    match cx.random.nextRange(2) {
        0 => {
            return [[superTypes, -1], [subtypes, -1]];
        }
        _ => {
            var {left: subtypeRet, right: superTypeRet} = generateSubtypeProposition(cx, propositionBranch(path));
            return [[superTypes, subtypeRet], [subtypes, superTypeRet]];
        }
    }
}

// T[N] <: T[]
function subtypeGenFixedLengthArray(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    int r = cx.random.next();
    SubtypeProposition p = generateSubtypeProposition(cx, propositionBranch(path));
    int t = p.left;
    int left = cx.types.list([t], fixedLen = r);
    int right = cx.types.list(rest = t);
    return {left, right};
}

// T[] | T1[] <: (T|T1)[]
function subtypeGenListUnionUnionList(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    SubtypeProposition p1 = generateSubtypeProposition(cx, propositionBranch(path));
    int left = cx.types.union(cx.types.list(rest = p1.left), cx.types.list(rest = p1.right));
    int right = cx.types.list(rest = cx.types.union(p1.left, p1.right));
    return {left, right};
}

// T <: T1 -> T[] <: T1[]
function subtypeGenList(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    SubtypeProposition p = generateSubtypeProposition(cx, propositionBranch(path));
    return {left: cx.types.list(rest = p.left), right: cx.types.list(rest = p.right)};
}

// T1 <: S1, T2 <: S2, ..., Tn <: Sn -> [T1, T2, ..Tn] < [S1, S2, ..Sn]
function subtypeGenSimpleTuple(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    int memberCount = cx.random.nextRange(cx.bounds.maxMemberCount);
    var [subtypes, supertypes] = generateNSubtypePropositions(cx, memberCount, propositionBranch(path));
    return {left: cx.types.list(subtypes), right: cx.types.list(supertypes)};
}

// T1 <: S1, T2 <: S2, ..., Tn <: Sn, Tr, <: Sr -> [T1, T2, ..Tn, Tr...] < [S1, S2, ..Sn, Sr...]
function subtypeGenTupleWithRest(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    int memberCount = cx.random.nextRange(cx.bounds.maxMemberCount);
    var [subtypes, supertypes] = generateNSubtypePropositions(cx, memberCount, propositionBranch(path));
    SubtypeProposition restProposition = generateSubtypeProposition(cx, propositionBranch(path));
    int left = cx.types.list(subtypes, rest = restProposition.left);
    int right = cx.types.list(supertypes, rest = restProposition.right);
    return {left, right};
}

// T1 <: S1, T2 <: S2, T3 <: S3, Tr <: Sr -> [T1, T2, T3, Tr...] < [S1, S2, (S3|Sr)...]
function subtypeGenTupleUnequalMemberCount(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    int memberCount = cx.random.nextRange(cx.bounds.maxMemberCount);
    var [subtypes, supertypes] = generateNSubtypePropositions(cx, memberCount, propositionBranch(path));
    SubtypeProposition rest = generateSubtypeProposition(cx, propositionBranch(path));
    int left = cx.types.list(subtypes, rest = rest.left);

    int sliceIndex = cx.random.nextRange(supertypes.length());
    int[] superMembers = supertypes.slice(0, sliceIndex);
    int superRest = rest.right;
    foreach var i in sliceIndex ..< supertypes.length() {
        superRest = cx.types.union(superRest, supertypes[i]);
    }
    int right = cx.types.list(superMembers, rest = superRest);
    return {left, right};
}

// T <: S, NE(T1), NE(T2)... -> T[] <: []|[S]|[(S|T1), S]|[S, S, (S|T2)...]
function subtypeGenFixedTupleUnion(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    int memberCount = cx.random.nextRange(cx.bounds.maxMemberCount);
    SubtypeProposition p = generateSubtypeProposition(cx, propositionBranch(path));
    int left = cx.types.list(rest = p.left);
    int right = t:NEVER;
    foreach var i in 0 ... memberCount {
        right = cx.types.union(right, generateNTuple(cx, i, memberCount, p.right, propositionBranch(path)));
    }
    return {left, right};
}

// Generate N-tuple, using baseType unioned with other random types.
// When len == maxFixedLen, generated tuple has non-never rest type.
function generateNTuple(PropositionGenContext cx, int len, int maxFixedLen, int baseType, PropositionPath path) returns int {
    int[] members = [];
    int t = cx.types.neverType();
    foreach int i in 1 ... len {
        match cx.random.nextRange(2) {
            0 => {
                t = cx.types.neverType();
                members.push(baseType);
            }
            1 => {
                t = generateSubtypeProposition(cx, propositionBranch(path)).left;
                members.push(cx.types.union(baseType, t));
            }
        }
    }
    int rest = -1;
    if len == maxFixedLen {
        rest = cx.types.union(baseType, t);
    }
    return cx.types.list(members, rest = rest);
}

function generateSubtypeProposition(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    if path.depth <= 0 {
        SubtypePropositionGenerator generator = AXIOMATIC_SUBTYPE_PROPOSITION_GENERATORS[cx.random.nextRange(AXIOMATIC_GENERATOR_COUNT)];
        SubtypeProposition prop = generator(cx, path);
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

function generateApplicationPropositions(PropositionGenContext cx, PropositionPath path) returns ApplicationProposition {
    if path.depth <= 0 {
        // we currently have only one but we can add multiple?
        ApplicationPropositionGenerator generator = AXIOMATIC_APPLICATION_PROPOSITION_GENERATORS[cx.random.nextRange(AXIOMATIC_APPLICATION_PROPOSITION_GENERATORS.length())];
        ApplicationProposition prop = generator(cx, path);
        // pick one and call it
        cx.storeApplicationProposition(0, prop);
        return prop;
    }
    if cx.applicationPropositions.length() > path.depth + 1 {
        return cx.takeApplicationProposition();
    }
    int r = cx.random.nextRange(APPLICATION_PROPOSITION_GENERATORS.length());
    ApplicationPropositionGenerator generator = APPLICATION_PROPOSITION_GENERATORS[r];
    ApplicationProposition prop = generator(cx, path);
    cx.storeApplicationProposition(path.depth, prop);
    return prop;
}

function generateRandomType(PropositionGenContext cx, PropositionPath path) returns int {
    return generateSubtypeProposition(cx, path).left;
}

function generateNSubtypePropositions(PropositionGenContext cx, int n, PropositionPath path) returns [int[], int[]] {
    int[] subtypes = [];
    int[] supertypes = [];
    foreach var _ in 0 ... n {
        SubtypeProposition p = generateSubtypeProposition(cx, path);
        foreach var _ in 0 ... cx.random.nextRange(cx.bounds.duplicationFactor) {
            subtypes.push(p.left);
            supertypes.push(p.right);
            if subtypes.length() == n {
                break;
            }
        }
    }
    return [subtypes, supertypes];
}

// T <: S -> map<T> <: map<S>
function subtypeGenMap(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    SubtypeProposition p = generateSubtypeProposition(cx, propositionBranch(path));
    int left = cx.types.mapping(rest = p.left);
    int right = cx.types.mapping(rest = p.right);
    return {left, right};
}

// T1 <: S1, T2 <: S2 -> map<T1>|map<T2> <: map<S1|S2>
function subtypeGenMapUnion(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    SubtypeProposition p1 = generateSubtypeProposition(cx, propositionBranch(path));
    SubtypeProposition p2 = generateSubtypeProposition(cx, propositionBranch(path));
    int left = cx.types.union(cx.types.mapping(rest = p2.left), cx.types.mapping(rest = p2.left));
    int right = cx.types.mapping(rest = cx.types.union(p1.right, p2.right));
    return {left, right};
}

// T1 <: S1, T2 <: S2, Tn <: Sn-> record {| l1=>T1, l2=>T2, ln=>Tn |} < record {| l1=>S1, l2=>S2, ln=>Sn |}
function subtypeGenClosedRecord(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    var [subFields, superFields] = generateRecordFields(cx, path);
    int left = cx.types.mapping(subFields);
    int right = cx.types.mapping(superFields);
    return {left, right};
}

// T1 <: S1, T2 <: S2, Tn <: Sn, Tr <: Sr -> record { l1=>T1, l2=>T2, ln=>Tn, Tr... } < record { l1=>S1, l2=>S2, ln=>Sn, Sr... }
function subtypeGenRecord(PropositionGenContext cx, PropositionPath path) returns SubtypeProposition {
    var [subFields, superFields] = generateRecordFields(cx, path);
    SubtypeProposition rest = generateSubtypeProposition(cx, propositionBranch(path));
    int left = cx.types.mapping(subFields, rest.left);
    int right = cx.types.mapping(superFields, rest.right);
    return {left, right};
}

function generateRecordFields(PropositionGenContext cx, PropositionPath path) returns [Field[], Field[]] {
    int memberCount = cx.random.nextRange(cx.bounds.maxMemberCount);
    var [subtypes, supertypes] = generateNSubtypePropositions(cx, memberCount, propositionBranch(path));
    Field[] subFields = [];
    Field[] superFields = [];
    foreach int i in 0 ..< memberCount {
        int len = cx.random.nextRange(cx.bounds.maxStringConstLen);
        string label = cx.random.randomStringValue(len);
        subFields.push({name: label, index: subtypes[i]});
        superFields.push({name: label, index: supertypes[i]});
    }
    return [subFields, superFields];
}

// Convert subtype proposition into non-empty preposition
function nonEmptyFromAxiomaticSubtype(PropositionGenContext cx, PropositionPath path) returns NonEmptyProposition {
    while true {
        SubtypeProposition subtypeProp = generateSubtypeProposition(cx, {depth: 0, rands: []});
        t:SemType|TypeBuilderError left = cx.types.semtype(subtypeProp.left);
        if left is error {
            panic error("error resolving type for seed: " + cx.seed.toString());
        }
        if !t:isEmpty(cx.typeContext, left) {
            match cx.random.nextRange(2) {
                0 => {
                    return {left: subtypeProp.left, right: subtypeProp.right};
                }
                1 => {
                    return {left: subtypeProp.left, right: t:NEVER};
                }
            }
        }
        t:SemType|TypeBuilderError right = cx.types.semtype(subtypeProp.right);
        if right is error {
            panic error("error resolving type for seed: " + cx.seed.toString());
        }
        if !t:isEmpty(cx.typeContext, right) {
            match cx.random.nextRange(2) {
                0 => {
                    return {left: subtypeProp.left, right: subtypeProp.right};
                }
                1 => {
                    return {left: t:NEVER, right: subtypeProp.right};
                }
            }
        }
    }
}

// NE(T), NE(S) -> NE(T|S)
function nonEmptyGenUnion(PropositionGenContext cx, PropositionPath path) returns NonEmptyProposition {
    NonEmptyProposition left = generateNonEmptyProposition(cx, propositionBranch(path));
    NonEmptyProposition right = generateNonEmptyProposition(cx, propositionBranch(path));
    return {left: cx.types.union(left.left, right.left), right: t:NEVER};
}

// NE(T) -> NE(T[])
function nonEmptyGenList(PropositionGenContext cx, PropositionPath path) returns NonEmptyProposition {
    NonEmptyProposition base = generateNonEmptyProposition(cx, propositionBranch(path));
    int elem = base.left;
    int t = cx.types.list(rest = elem);
    return {left: t, right: cx.types.neverType()};
}

// NE(T1), NE(T2), ...NE(Tn), Tr -> NE([T1, T2, ..Tn, Tr...])
function nonEmptyGenTuple(PropositionGenContext cx, PropositionPath path) returns NonEmptyProposition {
    NonEmptyProposition base = generateNonEmptyProposition(cx, propositionBranch(path));
    int rest = base.left;
    int[] fixedMembers = from var _ in 0 ... cx.random.nextRange(cx.bounds.maxMemberCount)
        let var prop = generateNonEmptyProposition(cx, propositionBranch(path))
        select prop.left;
    int t = cx.types.list(fixedMembers, rest = rest);
    return {left: t, right: t:NEVER};

}

// NE(T1), NE(T2), ...NE(Tn) -> NE([T1, T2, ..Tn])
function nonEmptyGenNonRestTuple(PropositionGenContext cx, PropositionPath path) returns NonEmptyProposition {
    int[] fixedMembers = from var _ in 0 ... cx.random.nextRange(cx.bounds.maxMemberCount)
        let var prop = generateNonEmptyProposition(cx, propositionBranch(path))
        select prop.left;
    int t = cx.types.list(fixedMembers);
    return {left: t, right: cx.types.neverType()};
}

// Max allowed value for `depth` = max(all previous depth values associated with the same Context) + 1
function generateNonEmptyProposition(PropositionGenContext cx, PropositionPath path) returns NonEmptyProposition {
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

function evalProposition(PropositionGenContext cx, Proposition p) returns boolean {
    t:SemType|TypeBuilderError left = cx.types.semtype(p.left);
    t:SemType|TypeBuilderError right = cx.types.semtype(p.right);
    if left is error || right is error {
        panic error("failed to resolve type for seed: " + cx.seed.toString());
    }
    boolean? result = ();
    match p.op {
        UNION => {
            result = t:isEmpty(cx.typeContext, t:union(left, right)) == p.isEmpty;
        }
        INTERSECT => {
            result = t:isEmpty(cx.typeContext, t:intersect(left, right)) == p.isEmpty;
        }
        DIFF => {
            result = t:isEmpty(cx.typeContext, t:diff(left, right)) == p.isEmpty;
        }
        DIFF2 => {
            result = t:isEmpty(cx.typeContext, t:diff(left, right)) == p.isEmpty
                && t:isEmpty(cx.typeContext, t:diff(right, left)) == p.isEmpty;
        }
        APPLY => {
            t:ListAtomicType applicationTuple = <t:ListAtomicType>t:listAtomicType(cx.typeContext, right);
            t:SemType functionType = t:listAtomicTypeMemberAtInner(applicationTuple, 0);
            t:SemType argListType = t:listAtomicTypeMemberAtInner(applicationTuple, 1);
            t:SemType? returnType = t:functionReturnType(cx.typeContext, functionType, argListType);
            if returnType == () {
                panic error("invalid function application for seed: " + cx.seed.toString());
            }
            result = t:isEmpty(cx.typeContext, t:diff(returnType, left)) == p.isEmpty;
        }
        _ => {
            panic error("invalid OP: " + p.op.toString() + " for seed: " + cx.seed.toString());
        }
    }
    if result == false {
        cx.failed(p);
    }
    return <boolean>result;
}

type PropositionTestOnFail function (PropositionGenContext cx, Proposition failedProp);

type PropositionTestConfig record {|
    int totalTestRuns = 3;
    int depthLimit = 5;
    int widthLimit = 60;
    PropositionGenerator generator;
    PropositionTestOnFail onFail = printFailureMessage;
|};

function assertFail(PropositionGenContext cx, Proposition proposition) {
    test:assertFail(propositionToString(cx, proposition));
}

function printFailureMessage(PropositionGenContext cx, Proposition proposition) {
    io:print("[Failure]");
}

function propositionToString(PropositionGenContext cx, Proposition proposition) returns string {
    string|TypeBuilderError left = cx.types.typeToString(proposition.left);
    string|TypeBuilderError right = cx.types.typeToString(proposition.right);
    if left !is string || right !is string {
        panic error("failed to convert proposition to string for seed: " + cx.seed.toString());
    }
    return "\\Failed for seed value: " + cx.seed.toString() + "\n"
            + "\\\\" + proposition.toString()
            + "\n\\\\-------------left---------------------\n"
            + left
            + "\n\\\\-------------right--------------------\n"
            + right
            + "\n\\\\--------------------------------------\n";
}

function printPropositionTestFailures(PropositionGenContext cx) {
    foreach Proposition proposition in cx.failedPropositions {
        io:println(propositionToString(cx, proposition));
        io:println();
    }
    int failureCount = cx.failedPropositions.length();
    if failureCount > 0 {
        test:assertFail("Proposition test failures (" + failureCount.toString() + ")");
    }
}

function testSemtypePropositions(*PropositionTestConfig config) {
    foreach int i in 0 ..< config.totalTestRuns {
        time:Utc seed = time:utcNow();
        t:Context tc = t:typeContext(new);
        // We can' create readonly types with AstBasedTypeDefBuilder but we need them to represent arg type
        PropositionGenContext cx = new PropositionGenContext(tc, seed[0]);
        foreach int depth in 0 ... config.depthLimit {
            io:print(string `${"\r"}Iteration: ${i}, level: ${depth}/${config.depthLimit}`);
            foreach int j in 0 ... config.widthLimit {
                PropositionGenerator generator = config.generator;
                Proposition prop = generator(cx, {depth, rands: []});
                if !evalProposition(cx, prop) {
                    PropositionTestOnFail? onFail = config.onFail;
                    if onFail != () {
                        onFail(cx, prop);
                    }
                }
            }
        }
        io:println();
        printPropositionTestFailures(cx);
    }
}
