// Implementation specific to basic type list.

import ballerina/io;

public type ListAtomicType readonly & record {|
    readonly & FixedLengthArray members;
    SemType rest;
|};

// Represent a fixed length semtype member list similar to a tuple.
// The length of the list is `fixedLength`, the last member of the `initial` is repeated to achieve this semantic.
// { initial: [int], fixedLength: 3, } is same as { initial: [int, int, int], fixedLength: 3 }
// { initial: [string, int], fixedLength: 100 } means `int` is repeated 99 times to get a list of 100 members.
// `fixedLength` must be `0` when `initial` is empty and the `fixedLength` must be at least `initial.length()`
public type FixedLengthArray record {|
    SemType[] initial;
    int fixedLength;
|};

// Member types at the indices that are not contained in `Range` array represent `never.
// The SemTypes in this list are not `never`.
public type ListMemberTypes [Range[], SemType[]];

public function listAtomicTypeMemberAt(ListAtomicType atomic, int i) returns SemType {
    if i < atomic.members.fixedLength {
        int initialLen = atomic.members.initial.length();
        return atomic.members.initial[ i < initialLen ? i : initialLen - 1];
    }
    else {
        return atomic.rest;
    }
}

public function listAtomicTypeAllMemberTypes(ListAtomicType atomicType) returns ListMemberTypes {
    Range[] ranges = [];
    SemType[] types = [];
    SemType[] initial = atomicType.members.initial;
    int initialLength = initial.length();
    int fixedLength = atomicType.members.fixedLength;
    if initialLength != 0 {
        types.push(...initial);
        foreach int i in 0 ..< initialLength {
            ranges.push({ min: i, max: i });
        }
        if initialLength < fixedLength {
            ranges[initialLength - 1] = { min: initialLength - 1, max: fixedLength - 1 };
        }
    }
    if atomicType.rest != NEVER {
        types.push(atomicType.rest);
        ranges.push({ min: fixedLength, max: int:MAX_VALUE });
    }
    return [ranges, types];
}

public class ListDefinition {
    *Definition;
    private RecAtom? rec = ();

    private ComplexSemType? semType = ();

    public function getSemType(Env env) returns ComplexSemType {
        ComplexSemType? s = self.semType;
        if s == () {
            RecAtom rec = env.recListAtom();
            self.rec = rec;
            return self.createSemType(env, rec);
        }
        else {
            return s;
        }
    }

    public function define(Env env, SemType[] initial = [], int fixedLength = initial.length(), SemType rest = NEVER) returns ComplexSemType {
        FixedLengthArray members = fixedLengthNormalize({ initial, fixedLength });
        ListAtomicType atomicType = { members: members.cloneReadOnly(), rest };
        Atom atom;
        RecAtom? rec = self.rec;
        if rec != () {
            atom = rec;
            env.setRecListAtomType(rec, atomicType);
        }
        else {
            atom = env.listAtom(atomicType);
        }
        return self.createSemType(env, atom);
    }

    private function createSemType(Env env, Atom atom) returns ComplexSemType {
        BddNode bdd = bddAtom(atom);
        ComplexSemType s = basicSubtype(BT_LIST, bdd);
        self.semType = s;
        return s;
    }
}

function fixedLengthNormalize(FixedLengthArray array) returns FixedLengthArray {
    SemType[] initial = array.initial;
    int i = initial.length() - 1;
    if i <= 0 {
        return array;
    }
    SemType last = initial[i];
    i -= 1;
    while i >= 0 {
        if last != initial[i] {
            break;
        }
        i -= 1;
    }
    return { initial: initial.slice(0, i + 2), fixedLength: array.fixedLength };
}

public function tuple(Env env, SemType... members) returns SemType {
    ListDefinition def = new;
    return def.define(env, members);
}

function listSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    return memoSubtypeIsEmpty(cx, cx.listMemo, listBddIsEmpty, <Bdd>t);
}

function listBddIsEmpty(Context cx, Bdd b) returns boolean {
    return bddEvery(cx, b, (), (), listFormulaIsEmpty);
}

function listFormulaIsEmpty(Context cx, Conjunction? pos, Conjunction? neg) returns boolean {
    FixedLengthArray members;
    SemType rest;
    if pos == () {
        members = { initial: [], fixedLength: 0 };
        rest = TOP;
    }
    else {
        // combine all the positive tuples using intersection
        ListAtomicType lt = cx.listAtomType(pos.atom);
        members = lt.members;
        rest = lt.rest;
        Conjunction? p = pos.next;
        // the neg case is in case we grow the array in listInhabited
        if p != () || neg != () {
            members = fixedArrayShallowCopy(members);
        }
        while true {
            if p == () {
                break;
            }
            else {
                Atom d = p.atom;
                p = p.next; 
                lt = cx.listAtomType(d);
                var intersected = listIntersectWith(cx, members, rest, lt.members, lt.rest);
                if intersected is () {
                    return true;
                }
                [members, rest] = intersected;
            }
        }
        if fixedArrayAnyEmpty(cx, members) {
            return true;
        }
        // Ensure that we can use isNever on rest in listInhabited
        if rest !== NEVER && isEmpty(cx, rest) {
            rest = NEVER;
        }
    }
    int[] indices = listSamples(cx, members, rest, neg);
    var [memberTypes, nRequired] = listSampleTypes(cx, members, rest, indices);
    return !listInhabited(cx, indices, memberTypes, nRequired, neg);
}

function intersectListAtoms(Context cx, ListAtomicType[] atoms) returns [SemType, ListAtomicType]? {
    if atoms.length() == 0 {
        return ();
    }
    ListAtomicType atom = atoms[0];
    foreach int i in 1 ..< atoms.length() {
        ListAtomicType next = atoms[i];
        var tmpAtom = listIntersectWith(cx, atom.members, atom.rest, next.members, next.rest);
        if tmpAtom is () {
            return ();
        }
        var [members, rest] = tmpAtom;
        foreach SemType member in members.initial {
            if isNever(member) {
                return ();
            }
        }
        atom = { members: members.cloneReadOnly(), rest };
    }
    SemType semType = createBasicSemType(BT_LIST, bddAtom(cx.env.listAtom(atom)));
    return [semType, atom];
}

isolated function listIntersectWith(Context cx, FixedLengthArray members1, SemType rest1, FixedLengthArray members2, SemType rest2) returns [FixedLengthArray, SemType]? {
    if listLengthsDisjoint(members1, rest1, members2, rest2) {
        return ();
    }
    return [
        {
            initial: (from int i in 0 ..< int:max(members1.initial.length(), members2.initial.length())
                      select memoIntersect(cx, listMemberAt(members1, rest1, i), listMemberAt(members2, rest2, i))),
            fixedLength: int:max(members1.fixedLength, members2.fixedLength)
        },
        memoIntersect(cx, rest1, rest2)
    ];
}

// This function determines whether a list type P & N is inhabited.
// where P is a positive list type and N is a list of negative list types.
// With just straightforward fixed-length tuples we can consider every index of the tuple.
// But we cannot do this in general because of rest types and fixed length array types e.g. `byte[10000000]`.
// So we consider instead a collection of indices that is sufficient for us to determine inhabitation,
// given the types of P and N.
// `indices` is this list of sample indices: these are indicies into members of the list type.
// We don't represent P directly. Instead P is represented by `memberTypes` and `nRequired`:
// `memberTypes[i]` is the type that P gives to `indices[i]`;
// `nRequired` is the number of members of `memberTypes` that are required by P.
// `neg` represents N.

int isEmptyLevel = 0;
function listInhabited(Context cx, int[] indices, SemType[] memberTypes, int nRequired, Conjunction? neg) returns boolean {
    if neg == () {
        return true;
    }
    else {
        final ListAtomicType nt = cx.listAtomType(neg.atom);
        if nRequired > 0 && isNever(listMemberAt(nt.members, nt.rest, indices[nRequired - 1])) {
            // Skip this negative if it is always shorter than the minimum required by the positive
            return listInhabited(cx, indices, memberTypes, nRequired, neg.next);
        }
        // Consider cases we can avoid this negative by having a sufficiently short list
        int negLen = nt.members.fixedLength;
        if negLen > 0 {
            int len = memberTypes.length();
            if len < indices.length() && indices[len] < negLen {
                return listInhabited(cx, indices, memberTypes, nRequired, neg.next);
            }
            foreach int i in nRequired ..< memberTypes.length() {
                if indices[i] >= negLen {
                    break;
                }
                SemType[] t = memberTypes.slice(0, i);
                if listInhabited(cx, indices, t, nRequired, neg.next) {
                    return true;
                }
            }
        }
        // Now we need to explore the possibility of shapes with length >= neglen
        // This is the heart of the algorithm.
        // For [v0, v1] not to be in [t0,t1], there are two possibilities
        // (1) v0 is not in t0, or
        // (2) v1 is not in t1
        // Case (1)
        // For v0 to be in s0 but not t0, d0 must not be empty.
        // We must then find a [v0,v1] satisfying the remaining negated tuples,
        // such that v0 is in d0.
        // SemType d0 = diff(s[0], t[0]);
        // if !isEmpty(cx, d0) && tupleInhabited(cx, [d0, s[1]], neg.rest) {
        //     return true;
        // }
        // Case (2)
        // For v1 to be in s1 but not t1, d1 must not be empty.
        // We must then find a [v0,v1] satisfying the remaining negated tuples,
        // such that v1 is in d1.
        // SemType d1 = diff(s[1], t[1]);
        // return !isEmpty(cx, d1) &&  tupleInhabited(cx, [s[0], d1], neg.rest);
        // We can generalize this to tuples of arbitrary length.
       
        foreach int i in 0 ..< memberTypes.length() {
            SemType d = memoDiff(cx, memberTypes[i], listMemberAt(nt.members, nt.rest, indices[i]));
            boolean e;
            int beforeCount = cx.listMemo.length();
            isEmptyLevel += 1;
            e = isEmpty(cx, d);
            isEmptyLevel -= 1;
            int afterCount = cx.listMemo.length();
            if afterCount == beforeCount + 1 {
                io:println(afterCount, "@" , isEmptyLevel);
            }
            if !e {
                SemType[] t = memberTypes.clone();
                t[i] = d;
                // We need to make index i be required
                if listInhabited(cx, indices, t, int:max(nRequired, i + 1), neg.next) {
                    return true;
                }
            }
        }
        // This is correct for length 0, because we know that the length of the
        // negative is 0, and [] - [] is empty.
        return false;
    }
}

// Return a list of sample indices for use as second argument of `listInhabited`.
// The positive list type P is represented by `members` and `rest`.
// The negative list types N are represented by `neg`
// The `indices` list (first member of return value) is constructed in two stages.
// First, the set of all non-negative integers is partitioned so that two integers are
// in different partitions if they get different types as an index in P or N.
// Second, we choose a number of samples from each partition. It doesn't matter
// which sample we choose, but (this is the key point) we need at least as many samples
// as there are negatives in N, so that for each negative we can freely choose a type for the sample
// to avoid being matched by that negative.
function listSamples(Context cx, FixedLengthArray members, SemType rest, Conjunction? neg) returns int[] {
    int maxInitialLength = members.initial.length();
    int[] fixedLengths = [members.fixedLength];
    Conjunction? tem = neg;
    int nNeg = 0;
    while true {
        if tem != () {
            ListAtomicType lt = cx.listAtomType(tem.atom);
            FixedLengthArray m = lt.members;
            maxInitialLength = int:max(maxInitialLength, m.initial.length());
            if m.fixedLength > maxInitialLength {
                fixedLengths.push(m.fixedLength);
            }
            nNeg += 1;
            tem = tem.next;
        }
        else {
            break;
        }
    }
    fixedLengths = fixedLengths.sort();
    // `boundaries` partitions the non-negative integers
    // Construct `boundaries` from `fixedLengths` and `maxInitialLength`
    // An index b is a boundary point if indices < b are different from indices >= b
    int[] boundaries = from int i in 1 ... maxInitialLength select i;
    foreach int n in fixedLengths {
        // this also removes duplicates
        if boundaries.length() == 0 || n > boundaries[boundaries.length() - 1] {
            boundaries.push(n);
        }
    }
    // Now construct the list of indicies by taking nNeg samples from each partition.
    int[] indices = [];
    int lastBoundary = 0;
    if nNeg == 0 {
        // this is needed for when this is used in listProj
        nNeg = 1;
    }
    foreach int b in boundaries {
        int segmentLength = b - lastBoundary;
        // Cannot have more samples than are in the parition.
        int nSamples = int:min(segmentLength, nNeg);
        foreach int i in b - nSamples ..< b {
            indices.push(i);
        }
        lastBoundary = b;
    }
    foreach int i in 0 ..< nNeg {
        // Be careful to avoid integer overflow.
        if lastBoundary > int:MAX_VALUE - i {
            break;
        }
        indices.push(lastBoundary + i);
    }
    return indices;
}

function listSampleTypes(Context cx, FixedLengthArray members, SemType rest, int[] indices) returns [SemType[], int] {
    SemType[] memberTypes = [];
    int nRequired = 0;
    foreach int i in 0 ..< indices.length() {
        int index = indices[i];
        SemType t = listMemberAt(members, rest, index);
        if isEmpty(cx, t) {
            break;
        }
        memberTypes.push(t);
        if index < members.fixedLength {
            nRequired = i + 1;
        }
    }
    // Note that indices may be longer
    return [memberTypes, nRequired];
}

isolated function listLengthsDisjoint(FixedLengthArray members1, SemType rest1, FixedLengthArray members2, SemType rest2) returns boolean {
    int len1 = members1.fixedLength;
    int len2 = members2.fixedLength;
    if len1 < len2 {
        return isNever(rest1);
    }
    if len2 < len1 {
        return isNever(rest2);
    }
    return false;
}

isolated function listMemberAt(FixedLengthArray fixedArray, SemType rest, int index) returns SemType {
    if index < fixedArray.fixedLength {
        return fixedArrayGet(fixedArray, index);
    }
    return rest;
} 

function fixedArrayAnyEmpty(Context cx, FixedLengthArray array) returns boolean {
    foreach var t in array.initial {
        if isEmpty(cx, t) {
            return true;
        }
    }
    return false;
}

isolated function fixedArrayGet(FixedLengthArray members, int index) returns SemType {
    int memberLen = members.initial.length();
    int i = int:min(index, memberLen - 1);
    return members.initial[i];
}

function fixedArrayShallowCopy(FixedLengthArray array) returns FixedLengthArray {
    return { initial: shallowCopyTypes(array.initial), fixedLength: array.fixedLength };
}

function bddListMemberType(Context cx, Bdd b, IntSubtype|true key, SemType accum) returns SemType {
    if b is boolean {
        return b ? accum : NEVER;
    }
    else {
        return union(bddListMemberType(cx, b.left, key,
                                       intersect(listAtomicMemberType(cx.listAtomType(b.atom), key),
                                                 accum)),
                     union(bddListMemberType(cx, b.middle, key, accum),
                           bddListMemberType(cx, b.right, key, accum)));
    }
}

function bddListAllRanges(Context cx, Bdd b, Range[] accum) returns Range[] {
    if b is boolean {
        return b ? accum : [];
    }
    else {
        var [atomRanges, _] = listAtomicTypeAllMemberTypes(cx.listAtomType(b.atom));
        return distinctRanges(bddListAllRanges(cx, b.left, distinctRanges(atomRanges, accum)),
                              distinctRanges(bddListAllRanges(cx, b.middle, accum), 
                                             bddListAllRanges(cx, b.right, accum)));
    }
}

function listAtomicMemberType(ListAtomicType atomic, IntSubtype|true key) returns SemType {
    return listAtomicMemberTypeAt(atomic.members, atomic.rest, key);
}

function listAtomicMemberTypeAt(FixedLengthArray fixedArray, SemType rest, IntSubtype|true key) returns SemType {
    if key is IntSubtype {
        SemType m = NEVER;
        int initLen = fixedArray.initial.length();
        int fixedLen = fixedArray.fixedLength;
        if fixedLen != 0 {
            foreach var i in 0 ..< initLen {
                if intSubtypeContains(key, i) {
                    m = union(m, fixedArrayGet(fixedArray, i));
                }
            }
            if intSubtypeOverlapRange(key, { min: initLen, max: fixedLen - 1 }) {
                m = union(m, fixedArrayGet(fixedArray, fixedLen - 1));
            }
        }
        if fixedLen == 0 || intSubtypeMax(key) > fixedLen - 1 {
            m = union(m, rest);
        }
        return m;
    }
    SemType m = rest;
    if fixedArray.fixedLength > 0 {
        foreach var ty in fixedArray.initial {
            m = union(m, ty);
        }
    }
    return m;
}

function listAtomicApplicableMemberTypes(ListAtomicType atomic, IntSubtype|true indexType) returns SemType[] {
    var [ranges, memberTypes] = listAtomicTypeAllMemberTypes(atomic);
    if indexType == true {
        return memberTypes;
    }
    else {
        SemType[] applicable = [];
        foreach var [_, i1, i2] in combineRanges(ranges, indexType) {
            if i1 != () && i2 != () {
                SemType ty = memberTypes[i1];
                if applicable.length() == 0 || applicable[applicable.length() - 1] != ty {
                    applicable.push(memberTypes[i1]);
                }
            }
        }
    }
    return memberTypes;
}

// If [r, i1, i2] is included in the result, then
//    at least one of i1 and i2 are not ()
//    if i1 is not (), then r is completely included in ranges1[i1]
//    if i2 is not (), then r is completely included in ranges2[i2]
// The ranges in the result are ordered and non-overlapping.
function combineRanges(Range[] ranges1, Range[] ranges2) returns [Range, int?, int?][] {
    [Range, int?, int?][] combined = [];
    int i1 = 0;
    int i2 = 0;
    int len1 = ranges1.length();
    int len2 = ranges2.length();
    int cur = int:MIN_VALUE;
    // This iterates over the boundaries between ranges
    while true {
        while i1 < len1 && cur > ranges1[i1].max {
            i1 += 1;
        }
        while i2 < len2 && cur > ranges2[i2].max {
            i2 += 1;
        }
        int? next = ();
        if i1 < len1 {
            next = nextBoundary(cur, ranges1[i1], next);
        }
        if i2 < len2 {
            next = nextBoundary(cur, ranges2[i2], next);
        }
        int max = next == () ? int:MAX_VALUE : next - 1;
        int? in1 = ();
        if i1 < len1 {
            Range r = ranges1[i1];
            if cur >= r.min && max <= r.max {
                in1 = i1;
            }
        }
        int? in2 = ();
        if i2 < len2 {
            Range r = ranges2[i2];
            if cur >= r.min && max <= r.max {
                in2 = i2;
            }
        }
        if in1 != () || in2 != () {
            combined.push([{ min: cur, max }, in1, in2 ]);
        }
        if next == () {
            break;
        }
        cur = next;
    }
    return combined;
}

function distinctRanges(Range[] range1, Range[] range2) returns Range[] {
    [Range, int?, int?][] combined = combineRanges(range1, range2);
    return from var [r, _, _] in combined select r;
}

// Helper function for combineRanges
// Return smallest range boundary that is > cur and <= next
// () represents int:MAX_VALUE + 1
function nextBoundary(int cur, Range r, int? next) returns int? {
    if r.min > cur && (next == () || r.min < next) {
        return r.min;
    }
    if r.max != int:MAX_VALUE {
        int i = r.max + 1;
        if i > cur && (next == () || i < next) {
            return i;
        }
    }
    return next;
}

function listSubtypeIntersect(Context cx, SubtypeData t1, SubtypeData t2) returns SubtypeData {
    return memoSubtypeIntersect(cx, cx.listMemo, <Bdd>t1, <Bdd>t2, "list");
}

function listSubtypeDiff(Context cx, SubtypeData t1, SubtypeData t2) returns SubtypeData {
    MemoBddCache cache = new (cx, cx.listMemo, "list");
    if listIsEmptySimple(cx, bddIntersect(cache, <Bdd> t1, <Bdd> t2)) is true {
        return t1;
    }
    Bdd b = memoSubtypeDiff(cx, cx.listMemo, <Bdd>t1, <Bdd>t2, "list");
    if b != false && cx.listMemo[b] == () {
        //io:println("fresh BDD: ", bddToString(b));
    }
    return b;
}

function listIsEmptySimple(Context cx, Bdd bdd) returns boolean? {
    BddMemo? m = cx.listMemo[bdd];
    if m !is () && m.empty is boolean {
        return <boolean>m.empty;
    }
    boolean empty = bddEvery(cx, bdd, (), (), listFormulaIsDefinitelyEmpty);
    if empty == true {
        cx.listMemo.put({ bdd, empty }); // handle both memoized values being () and not in memo
        return true;
    }
    return ();
}

function listFormulaIsDefinitelyEmpty(Context cx, Conjunction? pos, Conjunction? neg) returns boolean {
    if neg !is () || pos is () {
        return false;
    }
    var { members, rest } = cx.listAtomType(pos.atom);
    Conjunction? current = pos.next;
    while current !is () {
        var { members: currentMembers, rest: currentRest } = cx.listAtomType(current.atom);
        var intersection = listIntersectWith(cx, members, rest, currentMembers, currentRest); 
        if intersection is () {
            return false;
        }
        if fixedArrayDefinitelyEmpty(intersection[0]) == true {
            return true;
        }
        current = current.next;
    }
    return false;
}

function fixedArrayDefinitelyEmpty(FixedLengthArray array) returns true? {
    foreach int i in 0 ..< array.fixedLength {
        if isNever(fixedArrayGet(array, i)) {
            return true;
        }
    }
    return ();
}

final BasicTypeOps listOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: listSubtypeIsEmpty,
    contextIntersect: listSubtypeIntersect,
    contextDiff: listSubtypeDiff
};
