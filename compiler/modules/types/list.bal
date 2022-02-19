// Implementation specific to basic type list.

public type ListAtomicType readonly & record {|
    readonly & FixedLengthArray members;
    SemType rest;
|};

// Represent a fixed length semtype member list similar to a tuple.
// The length of the list is `fixedLength`, the last member of the `initial` is repeated to achive this semantic.
// { initial: [int], fixedLength: 3, } is same as { initial: [int, int, int], fixedLength: 3 }
// { initial: [string, int], fixedLength: 100 } means `int` is repeated 99 times to get a list of 100 members.
// `fixedLength` must be `0` when `inital` is empty and the `fixedLength` must be at least `initial.length()`
public type FixedLengthArray record {|
    SemType[] initial;
    int fixedLength;
|};

type ListConjunction record {|
    ListAtomicType listType;
    // Maximum number of members found in `initial` array of `listType` field in all the conjunctions onwards this.
    int maxInitialLen;
    ListConjunction? next;
|};

public function listAtomicTypeMemberAt(ListAtomicType atomic, int i) returns SemType {
    if i < atomic.members.fixedLength {
        int initialLen = atomic.members.initial.length();
        return atomic.members.initial[ i < initialLen ? i : initialLen - 1];
    }
    else {
        return atomic.rest;
    }
}

public type ListMemberTypes [Range[], SemType[]];

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

// This is atom index 0
// Used by bddFixReadOnly
final ListAtomicType LIST_SUBTYPE_RO = { members: { initial: [], fixedLength: 0 }, rest: READONLY };

public class ListDefinition {
    *Definition;
    private RecAtom? roRec = ();
    private RecAtom? rwRec = ();

    // The SemType is created lazily so that we have the possibility
    // to share the Bdd between the RO and RW cases.
    private ComplexSemType? semType = ();

    public function getSemType(Env env) returns ComplexSemType {
        ComplexSemType? s = self.semType;
        if s == () {
            RecAtom ro = env.recListAtom();
            RecAtom rw = env.recListAtom();
            self.roRec = ro;
            self.rwRec = rw;
            return self.createSemType(env, ro, rw);
        }
        else {
            return s;
        }
    }

    public function define(Env env, SemType[] initial = [], int fixedLength = initial.length(), SemType rest = NEVER) returns ComplexSemType {
        FixedLengthArray members = fixedLengthNormalize({ initial, fixedLength });
        ListAtomicType rwType = { members: members.cloneReadOnly(), rest };
        Atom rw;
        RecAtom? rwRec = self.rwRec;
        if rwRec != () {
            rw = rwRec;
            env.setRecListAtomType(rwRec, rwType);
        }
        else {
            rw = env.listAtom(rwType);
        }
        Atom ro;
        ListAtomicType roType = readOnlyListAtomicType(rwType);
        if roType === rwType {
            RecAtom? roRec = self.roRec;
            if roRec == () {
                // share the definitions
                ro = rw;
            }
            else {
                ro = roRec;
                env.setRecListAtomType(roRec, rwType);
            }
        }
        else {
            ro = env.listAtom(roType);
            RecAtom? roRec = self.roRec;
            if roRec != () {
                env.setRecListAtomType(roRec, roType);
            }
        }
        return self.createSemType(env, ro, rw);
    }

    private function createSemType(Env env, Atom ro, Atom rw) returns ComplexSemType {
        BddNode roBdd = bddAtom(ro);
        BddNode rwBdd;
        if atomCmp(ro, rw) == 0 {
            // share the BDD
            rwBdd = roBdd;
        }
        else {
            rwBdd = bddAtom(rw);
        }
        ComplexSemType s = createComplexSemType(0, [[UT_LIST_RO, roBdd], [UT_LIST_RW, rwBdd]]);
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
    
function readOnlyListAtomicType(ListAtomicType ty) returns ListAtomicType {
    if typeListIsReadOnly(ty.members.initial) && isReadOnly(ty.rest) {
        return ty;
    }
    return {
        members: { initial: readOnlyTypeList(ty.members.initial), fixedLength: ty.members.fixedLength },
        rest: intersect(ty.rest, READONLY)

    };
}

public function tuple(Env env, SemType... members) returns SemType {
    ListDefinition def = new;
    return def.define(env, members);
}

function listRoSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    return listSubtypeIsEmpty(cx, bddFixReadOnly(<Bdd>t));
}

function listSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    Bdd b = <Bdd>t;
    BddMemo? mm = cx.listMemo[b];
    BddMemo m;
    if mm == () {
        m = { bdd: b };
        cx.listMemo.add(m);
    }
    else {
        m = mm;
        boolean? res = m.isEmpty;
        if res == () {
            // we've got a loop
            // XXX is this right???
            return true;
        }
        else {
            return res;
        }
    }
    boolean isEmpty = bddEvery(cx, b, (), (), listFormulaIsEmpty);
    m.isEmpty = isEmpty;
    return isEmpty;    
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
                var intersected = listIntersectWith(members, rest, lt);
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
    return !listInhabited(cx, members, rest, listConjunction(cx, neg));
}

function listIntersectWith(FixedLengthArray members, SemType rest, ListAtomicType newType) returns [FixedLengthArray, SemType]? {
    int newTypeLen = newType.members.fixedLength;
    int intersectedLen = int:max(members.fixedLength, newTypeLen);
    // We can specifically handle the case where length of `initial` and `fixedLength` are the same 
    if members.fixedLength < intersectedLen {
        if isNever(rest) {
            return ();
        }
        fixedArrayFill(members, intersectedLen, rest);
    }
    int maxInitialLen = int:max(members.initial.length(), newType.members.initial.length());
    foreach int i in 0 ..< maxInitialLen {
        fixedArraySet(members, i, intersect(listMemberAt(members, rest, i),
                                            listMemberAt(newType.members, newType.rest, i)));
    }
    // If the last member is repeating we need to intersect the repeating member as it will have pushed backed in `initial` array
    if maxInitialLen < members.fixedLength {
        SemType repeatingMember = intersect(listMemberAt(members, rest, maxInitialLen), 
                                            listMemberAt(newType.members, newType.rest, maxInitialLen));
        if repeatingMember != members.initial[maxInitialLen] {
            members.initial[maxInitialLen] = repeatingMember;
        }
    }
    if newTypeLen < intersectedLen {
        if isNever(newType.rest) {
            return ();
        }
        foreach int i in newTypeLen ..< intersectedLen {
            fixedArraySet(members, i, intersect(listMemberAt(members, rest, i), newType.rest));
        }
    }
    return [members, intersect(rest, newType.rest)];
}

// This function returns true if there is a list shape v such that
// is in the type described by `members` and `rest`, and
// for each tuple t in `neg`, v is not in t.
// `neg` represents a set of negated list types.
// Precondition is that each of `members` is not empty.
// This is formula Phi' in section 7.3.1 of Alain Frisch's PhD thesis,
// generalized to tuples of arbitrary length.
function listInhabited(Context cx, FixedLengthArray members, SemType rest, ListConjunction? neg) returns boolean {
    if neg == () {
        return true;
    }
    else {
        int len = members.fixedLength;
        ListAtomicType nt = neg.listType;
        int negLen = nt.members.fixedLength;
        if len < negLen {
            if isNever(rest) {
                return listInhabited(cx, members, rest, neg.next);
            }
            // For list shapes with length less than negLen,
            // this neg type is not relevant.
            if listInhabited(cx, members, NEVER, neg.next) {
                return true;
            }
            // Check list types with fixedLength >= `len` and  < `negLen`
            foreach int i in len ..< int:min(negLen, neg.maxInitialLen + 1) {
                FixedLengthArray s = fixedArrayShallowCopy(members);
                fixedArrayFill(s, i, rest);
                if listInhabited(cx, s, NEVER, neg.next) {
                    return true;
                }
            }
        }
        else if negLen < len && isNever(nt.rest) {
            return listInhabited(cx, members, rest, neg.next);
        }
        // Now we have negLen <= len.

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
        int maxInitialLen = int:max(members.initial.length(), neg.maxInitialLen);
        foreach int i in 0 ..< maxInitialLen {
            SemType d = diff(listMemberAt(members, rest, i), listMemberAt(nt.members, nt.rest, i));
            if !isEmpty(cx, d) {
                FixedLengthArray s = fixedArrayReplace(members, i, d, rest);
                if listInhabited(cx, s, rest, neg.next) {
                    return true;
                }
            }
        }
        SemType rd = diff(rest, nt.rest);
        if !isEmpty(cx, rd) {
            // We have checked the posibilities of existance of a shape in list with fixedLength >= 0 and < maxInitialLen.
            // Now check the existance of a shape with at least `maxInitialLen` members.
            FixedLengthArray s = members;
            if len < maxInitialLen {
                s = fixedArrayShallowCopy(members);
                fixedArrayFill(s, maxInitialLen, rest);
            }
            if listInhabited(cx, s, rd, neg.next) {
                return true;
            }
        }
        // This is correct for length 0, because we know that the length of the
        // negative is 0, and [] - [] is empty.
        return false;
    }
}

function listMemberAt(FixedLengthArray fixedArray, SemType rest, int index) returns SemType {
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

// fill out to length of newLen with filler
function fixedArrayFill(FixedLengthArray arr, int newLen, SemType filler) {
    SemType[] initial = arr.initial;
    if newLen <= initial.length() {
        return;
    }
    int initLen = initial.length();
    int fixedLen = arr.fixedLength;
    if fixedLen == 0 {
        initial.push(filler);
    }
    else if initial[initLen - 1] != filler {
        SemType last = initial[initLen - 1];
        foreach int i in 0 ..< fixedLen - initLen {
            initial.push(last);
        }
        initial.push(filler);
    }
    arr.fixedLength = newLen;
}

function fixedArrayGet(FixedLengthArray members, int index) returns SemType {
    int memberLen = members.initial.length();
    int i = int:min(index, memberLen - 1);
    return members.initial[i];
}

function fixedArraySet(FixedLengthArray members, int setIndex, SemType m) {
    int initCount = members.initial.length();
    boolean lastMemberRepeats = members.fixedLength > initCount;

    // No need to expand
    if setIndex < initCount - (lastMemberRepeats ? 1 : 0) {
        members.initial[setIndex] = m;
        return;
    }
    if lastMemberRepeats {
        int lastIndex = initCount - 1;
        SemType lastMember = members.initial[lastIndex];
        int pushBack = lastIndex == setIndex ? 1 : 0;
        foreach int i in initCount ... setIndex + pushBack {
            members.initial.push(lastMember);
        }
    }
    members.initial[setIndex] = m;
}

function fixedArrayShallowCopy(FixedLengthArray array) returns FixedLengthArray {
    return { initial: shallowCopyTypes(array.initial), fixedLength: array.fixedLength };
}

function fixedArrayReplace(FixedLengthArray array, int index, SemType t, SemType rest) returns FixedLengthArray {
    FixedLengthArray copy = fixedArrayShallowCopy(array);
    fixedArrayFill(copy, index + 1, rest);
    fixedArraySet(copy, index, t);
    return copy;
}

function listConjunction(Context cx, Conjunction? con) returns ListConjunction? {
    if con != () {
        ListAtomicType listType = cx.listAtomType(con.atom);
        int len = listType.members.initial.length();
        ListConjunction? next = listConjunction(cx, con.next);
        int maxInitialLen = next == () ? len : int:max(len, next.maxInitialLen);
        return { listType, maxInitialLen, next };
    }
    return ();
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

final UniformTypeOps listRoOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: listRoSubtypeIsEmpty
};

final UniformTypeOps listRwOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: listSubtypeIsEmpty
};
