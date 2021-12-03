// Implementation specific to basic type list.

public type ListAtomicType readonly & record {|
    readonly & ListAtomicTypeMembers members;
    SemType rest;
|};

public type ListAtomicTypeMembers record {|
    SemType[] initial;
    // Repeat the last member of `initial` this number of times more.
    // { initial: [int], repeatLastCount: 2, } is same as { initial: [int, int, int], repeatLastCount: 0 }
    // Must be zero, if members array is empty.
    int repeatLastCount;
|};

// This is atom index 0
// Used by bddFixReadOnly
final ListAtomicType LIST_SUBTYPE_RO = { members: { initial: [], repeatLastCount: 0 }, rest: READONLY };

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

    public function define(Env env, ListAtomicTypeMembers members, SemType rest) returns ComplexSemType {
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

function readOnlyListAtomicType(ListAtomicType ty) returns ListAtomicType {
    if typeListIsReadOnly(ty.members.initial) && isReadOnly(ty.rest) {
        return ty;
    }
    return {
        members: { initial: readOnlyTypeList(ty.members.initial), repeatLastCount: ty.members.repeatLastCount },
        rest: intersect(ty.rest, READONLY)

    };
}

public function tuple(Env env, SemType... members) returns SemType {
    ListDefinition def = new;
    return def.define(env, { initial: members, repeatLastCount: 0 }, NEVER);
}

public function listMembersLength(ListAtomicTypeMembers members) returns int {
    return members.initial.length() + members.repeatLastCount;
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
    ListAtomicTypeMembers members;
    SemType rest;
    if pos == () {
        members = { initial: [], repeatLastCount: 0 };
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
            members = listMembersShallowCopy(members);
        }
        while true {
            if p == () {
                break;
            }
            else {
                Atom d = p.atom;
                p = p.next; 
                lt = cx.listAtomType(d);
                int prevLen = listMembersLength(members);
                int currentLen = listMembersLength(lt.members);
                int newLen = int:max(prevLen, currentLen);

                // Intersect similar compressed representations without decompressing.
                if listMembersIsSameStructure(members, lt.members) {
                    foreach int i in 0 ..< members.initial.length() {
                        SemType m = intersect(listMembersGet(members, i, rest), listMembersGet(lt.members, i, lt.rest));
                        if (isNever(m)) {
                            return true;
                        }
                        listMembersSet(members, i, rest, m);
                    }
                    rest = intersect(rest, lt.rest);
                    continue;  
                }

                if prevLen < newLen {
                    if isNever(rest) {
                        return true;
                    }
                }
                foreach int i in 0 ..< currentLen {
                    listMembersSet(members, i, rest, intersect(listMembersGet(members, i, rest), listMembersGet(lt.members, i, lt.rest)));
                }
                if currentLen < newLen {
                    if isNever(lt.rest) {
                        return true;
                    }
                    foreach int i in currentLen ..< newLen {
                        listMembersSet(members, i, rest, intersect(listMembersGet(members, i, rest), lt.rest));
                    }
                }
                rest = intersect(rest, lt.rest);
            }
        }
        foreach var m in members.initial {
            if isEmpty(cx, m) {
                return true;
            }
        }
        // Ensure that we can use isNever on rest in listInhabited
        if rest !== NEVER && isEmpty(cx, rest) {
            rest = NEVER;
        }
    }
    return !listInhabited(cx, members, rest, neg);
}

// This function returns true if there is a list shape v such that
// is in the type described by `members` and `rest`, and
// for each tuple t in `neg`, v is not in t.
// `neg` represents a set of negated list types.
// Precondition is that each of `members` is not empty.
// This is formula Phi' in section 7.3.1 of Alain Frisch's PhD thesis,
// generalized to tuples of arbitrary length.
function listInhabited(Context cx, ListAtomicTypeMembers m, SemType rest, Conjunction? neg) returns boolean {
    if neg == () {
        return true;
    }
    else {
        ListAtomicTypeMembers members = listMembersShallowCopy(m);
        int len = listMembersLength(m);
        ListAtomicType nt = cx.listAtomType(neg.atom);
        int negLen = listMembersLength(nt.members);

        if len < negLen {
            if isNever(rest) {
                return listInhabited(cx, members, rest, neg.next);
            }
            listMembersSet(members, negLen, rest, rest);
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
        foreach int i in 0 ..< len {
            SemType ntm = i < negLen ? listMembersGet(nt.members, i, nt.rest) : nt.rest;
            SemType d = diff(listMembersGet(members, i, rest), ntm);
            if !isEmpty(cx, d) {
                ListAtomicTypeMembers s = listMembersReplace(members, i, rest, d);
                if listInhabited(cx, s, rest, neg.next) {
                    return true;
                }
            }     
        }
        if !isEmpty(cx, diff(rest, nt.rest)) {
            return true;
        }
        // This is correct for length 0, because we know that the length of the
        // negative is 0, and [] - [] is empty.
        return false;
    }
}

function listMembersIsSameStructure(ListAtomicTypeMembers v1, ListAtomicTypeMembers v2) returns boolean {
    return v1.repeatLastCount == v2.repeatLastCount && v1.initial.length() == v2.initial.length();
}

function listMembersGet(ListAtomicTypeMembers members, int index, SemType rest) returns SemType {
    int memberLen = members.initial.length();
    int i = int:min(index, memberLen - 1);
    if memberLen == 0 || members.initial.length() <= i {
        return rest;
    }
    return members.initial[i];
}

function listMembersSet(ListAtomicTypeMembers members, int setIndex, SemType rest, SemType t) {
    int memberLen = members.initial.length();
    boolean lastMemberRepeats = members.repeatLastCount != 0;

    // No need to expand
    if lastMemberRepeats && setIndex < memberLen - 2 || !lastMemberRepeats && setIndex < memberLen - 1 {
            members.initial[setIndex] = t;
            return;
    }
        
    if lastMemberRepeats {
        SemType lastMember = members.initial[memberLen - 1]; 
        int uncompressedLen = listMembersLength(members);
        int endIndex = lastMemberRepeats ? setIndex + 1 : setIndex;
        foreach int i in memberLen ..< endIndex {
            if i == setIndex {
                members.initial.push(t);
            }
            else {
                members.initial.push(i < uncompressedLen ? lastMember : rest);
            }
        }
        members.repeatLastCount = int:max(0, members.repeatLastCount - (endIndex - memberLen));
    }
    else {
        foreach int i in memberLen ..< setIndex {
            members.initial.push(rest);
        }
        members.initial[setIndex] = t;
    }
}

function listMembersReplace(ListAtomicTypeMembers members, int index, SemType rest, SemType t) returns ListAtomicTypeMembers {
    ListAtomicTypeMembers copy = listMembersShallowCopy(members);
    listMembersSet(copy, index, rest, t);
    return copy;
}

function listMembersShallowCopy(ListAtomicTypeMembers members) returns ListAtomicTypeMembers {
    return { initial: shallowCopyTypes(members.initial), repeatLastCount: members.repeatLastCount };
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
        else if key < listMembersLength(atomic.members) {
            return listMembersGet(atomic.members, key, atomic.rest);
        }
        return atomic.rest;
    }
    SemType m = atomic.rest;
    foreach var ty in atomic.members.initial {
        m = union(m, ty);
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
