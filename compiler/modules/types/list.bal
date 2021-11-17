// Implementation specific to basic type list.

public type ListAtomicType readonly & record {|
    ListMemberType members;
    SemType rest;
|};

public type ListMemberType SemType[]|FixedLengthMembers;

public type FixedLengthMembers record {|
    SemType memberType;
    int length;
|};

// This is atom index 0
// Used by bddFixReadOnly
final ListAtomicType LIST_SUBTYPE_RO = { members: [], rest: READONLY };

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

    public function define(Env env, ListMemberType members, SemType rest) returns ComplexSemType {
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

function listMembersIsReadOnly(ListMemberType members, SemType rest) returns boolean {
    if members is FixedLengthMembers {
        return isReadOnly(members.memberType);
    }
    else {
        return typeListIsReadOnly(members) && isReadOnly(rest);
    }
}

function readOnlyListMembers(ListMemberType t) returns readonly & ListMemberType {
    if t is FixedLengthMembers {
        return { memberType: intersect(t.memberType, READONLY), length: t.length };
    }
    else {
        return readOnlyTypeList(t);
    }
}

function shallowCopyListMembersType(ListMemberType t) returns ListMemberType {
    if t is FixedLengthMembers {
        return t;
    }
    else {
        return shallowCopyTypes(t);
    }
}

function readOnlyListAtomicType(ListAtomicType ty) returns ListAtomicType {
    if listMembersIsReadOnly(ty.members, ty.rest) {
        return ty;
    }
    return {
        members: readOnlyListMembers(ty.members),
        rest: intersect(ty.rest, READONLY)
    };   
}

public function tuple(Env env, SemType... members) returns SemType {
    ListDefinition def = new;
    return def.define(env, members, NEVER);
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

function memberAt(ListMemberType m, int i) returns SemType {
    if m is FixedLengthMembers {
        FixedLengthMembers {memberType, length} = m;
        if length > i {
            return memberType;
        }
    }
    else {
        return m[i];
    }
    return NEVER; // or panic?
}

function listMemberLen(ListMemberType lt) returns int {
    if (lt is FixedLengthMembers) {
        return lt.length;
    }
    else {
        return lt.length();
    }
}

function fixLength(int newLen, ListMemberType members, SemType m) returns SemType[] {
    if members is SemType[] {
        foreach int i in members.length() ..< newLen {
            members.push(m);
        }
        return members;
    }
    else {
        FixedLengthMembers {memberType, length} = members;
        SemType[] newMembers = [];
        foreach int i in 0 ..< length {
            newMembers.push(memberType);
        }
        foreach int i in length ..< newLen {
            newMembers.push(m);
        }
        return newMembers;
    }
}

function setMemberAt(int index, ListMemberType members, SemType t) returns SemType[] {
    SemType[] m = fixLength(index, members, t);
    m[index] = t;
    return m;
}

function isAnyMemberEmpty(Context cx, ListMemberType members) returns boolean {
    if members is FixedLengthMembers {
        return members.length == 0 || isEmpty(cx, members.memberType);
    }
    else {
        foreach var m in members {
            if isEmpty(cx, m) {
                return true;
            }
        }
        return false;
    }
}

function listFormulaIsEmpty(Context cx, Conjunction? pos, Conjunction? neg) returns boolean {
    ListMemberType members;
    SemType rest;
    if pos == () {
        members = [];
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
            members = shallowCopyListMembersType(members);
        }
        while true {
            if p == () {
                break;
            }
            else {
                Atom d = p.atom;
                p = p.next; 
                lt = cx.listAtomType(d);
                int prevLen = listMemberLen(members);
                int currentLen = listMemberLen(lt.members);
                int newLen = int:max(prevLen, currentLen);

                if prevLen == currentLen && members is FixedLengthMembers && lt.members is FixedLengthMembers {
                    SemType t = intersect(members.memberType, (<FixedLengthMembers>lt.members).memberType);
                    if isNever(t) {
                        return true;
                    }
                    members = { memberType: t, length: currentLen };
                }
                if prevLen < newLen {
                    if isNever(rest) {
                        return true;
                    }
                    members = fixLength(newLen, members, rest);
                }
                foreach int i in 0 ..< currentLen {
                    members = setMemberAt(i, members, intersect(memberAt(members, i), memberAt(lt.members, i)));
                }
                if currentLen < newLen {
                    if isNever(lt.rest) {
                        return true;
                    }
                    foreach int i in currentLen ..< newLen {
                        members = setMemberAt(i, members, intersect(memberAt(members, i), lt.rest));
                    }
                }
                rest = intersect(rest, lt.rest);
            }
        }
        if isAnyMemberEmpty(cx, members) {
            return true;
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
function listInhabited(Context cx, ListMemberType m, SemType rest, Conjunction? neg) returns boolean {
    if neg == () {
        return true;
    }
    else {
        ListMemberType members = m;
        int len = listMemberLen(members);
        ListAtomicType nt = cx.listAtomType(neg.atom);
        ListMemberType negMembers = nt.members;
        int negLen = listMemberLen(nt.members);
        if len == negLen && negMembers is FixedLengthMembers && members is FixedLengthMembers {
            if isNever(diff(members.memberType, negMembers.memberType)) {
                return listInhabited(cx, members, rest, neg.next);
            }
        }
        if len < negLen {
            if isNever(rest) {
                return listInhabited(cx, members, rest, neg.next);
            } // JBUG #33532 should be able to use `_` here
            members = fixLength(negLen, members, rest);
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
            SemType ntm = i < negLen ? memberAt(nt.members, i) : nt.rest;
            SemType d = diff(memberAt(members, i), ntm);
            if !isEmpty(cx, d) {
                ListMemberType s = shallowCopyListMembersType(members);
                s = setMemberAt(i, s, d);
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
        else if key < listMemberLen(atomic.members) {
            return memberAt(atomic.members, key);
        }
        return atomic.rest;
    }
    SemType m = atomic.rest;
    ListMemberType members = atomic.members;
    if (members is FixedLengthMembers) {
        m = union(m, members.memberType);
    }
    else {
        foreach var ty in members {
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
