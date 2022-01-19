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

function listIntersectWith(FixedLengthArray members, SemType rest, ListAtomicType lt) returns [FixedLengthArray, SemType]? {
    int ltLen = lt.members.fixedLength;
    int newLen = int:max(members.fixedLength, ltLen);
    // We can specifically handle the case where length of `initial` and `fixedLength` are the same 
    if members.fixedLength < newLen {
        if isNever(rest) {
            return ();
        }
        fixedArrayFill(members, newLen, rest);
    }
    int nonRepeatedLen = int:max(members.initial.length(), lt.members.initial.length());
    foreach int i in 0 ..< nonRepeatedLen {
        fixedArraySet(members, i, 
            intersect(listMemberAt(members, rest, i), listMemberAt(lt.members, lt.rest, i)));
    } 
    if ltLen < newLen {
        if isNever(lt.rest) {
            return ();
        }
        foreach int i in ltLen ..< newLen {
            fixedArraySet(members, i, intersect(listMemberAt(members, rest, i), lt.rest));
        }
    }
    return [members, intersect(rest, lt.rest)];
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
            foreach int i in len + 1 ..< negLen {
                FixedLengthArray s = fixedArrayShallowCopy(members);
                fixedArrayFill(s, i, rest);
                if listInhabited(cx, s, NEVER, neg.next) {
                    return true;
                }
            }
            // List shapes >= negLen need to take in account
            // this neg type and are handled below.
            fixedArrayFill(members, negLen, rest);
            len = negLen;
        }
        else if negLen < len && isNever(nt.rest) {
            return listInhabited(cx, members, rest, neg.next);
        }
        // now we have nt.members.length() <= len

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
        foreach int i in 0 ..< int:max(members.initial.length(), neg.maxInitialLen) {
            SemType d = diff(listMemberAt(members, rest, i), listMemberAt(nt.members, nt.rest, i));
            if !isEmpty(cx, d) {
                FixedLengthArray s = fixedArrayShallowCopy(members);
                fixedArrayFill(s, i - 1, rest);
                fixedArraySet(s, i, d);
                if listInhabited(cx, s, rest, neg.next) {
                    return true;
                }
            }
        }
        SemType rd = diff(rest, nt.rest);
        if !isEmpty(cx, rd) && listInhabited(cx, members, rd, neg.next) {
            return true;
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
    if arr.fixedLength == 0 || initial[initial.length() - 1] != filler {
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
    if setIndex == 0 || setIndex < initCount - (lastMemberRepeats ? 1 : 0) {
        members.initial[setIndex] = m;
        return;
    }
    SemType lastMember = members.initial[initCount - 1]; 
    foreach int i in initCount ..< setIndex + 1 {
        members.initial.push(lastMember);
    }
    members.initial[setIndex] = m;
}

function fixedArrayShallowCopy(FixedLengthArray array) returns FixedLengthArray {
    return { initial: shallowCopyTypes(array.initial), fixedLength: array.fixedLength };
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

function bddListMemberType(Context cx, Bdd b, int? key, SemType accum) returns SemType {
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

function listAtomicMemberType(ListAtomicType atomic, int? key) returns SemType {
    if key != () {
        if key < 0 {
            return NEVER;
        }
        else if key < atomic.members.fixedLength {
            return fixedArrayGet(atomic.members, key);
        }
        return atomic.rest;
    }
    SemType m = atomic.rest;
    if atomic.members.fixedLength > 0 {
        foreach var ty in atomic.members.initial {
            m = union(m, ty);
        }
    }
    return m;
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
