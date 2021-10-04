// Implementation specific to basic type list.

public type ListAtomicType readonly & record {|
    SemType[] members;
    SemType rest;
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
        if s is () {
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

    public function define(Env env, SemType[] members, SemType rest) returns ComplexSemType {
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
        if typeListIsReadOnly(rwType.members) && isReadOnly(rwType.rest) {
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
            ListAtomicType roType = {
                members: readOnlyTypeList(rwType.members),
                rest: intersect(rwType.rest, READONLY)
            };
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
    if mm is () {
        m = { bdd: b };
        cx.listMemo.add(m);
    }
    else {
        m = mm;
        boolean? res = m.isEmpty;
        if res is () {
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
    SemType[] members;
    SemType rest;
    if pos is () {
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
            members = shallowCopyTypes(members);
        }
        while true {
            if p is () {
                break;
            }
            else {
                Atom d = p.atom;
                p = p.next; 
                lt = cx.listAtomType(d);
                int newLen = int:max(members.length(), lt.members.length());
                if members.length() < newLen {
                    if isNever(rest) {
                        return true;
                    }
                    foreach int i in members.length() ..< newLen {
                        members.push(rest);
                    }
                }
                foreach int i in 0 ..< lt.members.length() {
                    members[i] = intersect(members[i], lt.members[i]);
                }
                if lt.members.length() < newLen {
                    if isNever(lt.rest) {
                        return true;
                    }
                    foreach int i in lt.members.length() ..< newLen {
                        members[i] = intersect(members[i], lt.rest);
                    }
                }
                rest = intersect(rest, lt.rest);
            }
        }
        foreach var m in members {
            if isEmpty(cx, m) {
                return true;
            }
        }
    }
    // Ensure that we can use isNever on rest in listInhabited
    if rest !== NEVER && isEmpty(cx, rest) {
        rest = NEVER;
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
function listInhabited(Context cx, SemType[] members, SemType rest, Conjunction? neg) returns boolean {
    if neg is () {
        return true;
    }
    else {
        int len = members.length();
        ListAtomicType nt = cx.listAtomType(neg.atom);
        int negLen = nt.members.length();
        if len < negLen {
            if isNever(rest) {
                return listInhabited(cx, members, rest, neg.next);
            }            
            foreach int i in len ..< negLen {
                members.push(rest);
            }
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
            SemType ntm = i < negLen ? nt.members[i] : nt.rest;
            SemType d = diff(members[i], ntm);
            if !isEmpty(cx, d) {
                SemType[] s = shallowCopyTypes(members);
                s[i] = d;
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
        ListAtomicType atomic = cx.listAtomType(b.atom);
        SemType m = atomic.rest;
        foreach var ty in atomic.members {
            m = union(m, ty);
        }
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
        else if key < atomic.members.length() {
            return atomic.members[key];
        }
        return atomic.rest;
    }
    SemType m = atomic.rest;
    foreach var ty in atomic.members {
        m = union(m, ty);
    }
    return m;
}

// Untested code for phi^x in AMK tutorial generalized for list types.
// Precondition k >= 0 and members[i] not empty for all i
// This finds the projection of e[k], excluding the list of atoms in neg
// when the type of e is given by members and rest.
// This is based on listInhabited
function listProjExclude(Context cx, int k, SemType[] members, SemType rest, Conjunction? neg) returns SemType {
    if neg is () {
        return k < members.length() ? members[k] : rest;
    }
    else {
        int len = members.length();
        ListAtomicType nt = cx.listAtomType(neg.atom);
        int negLen = nt.members.length();
        if len < negLen {
            if isNever(rest) {
                return listProjExclude(cx, k, members, rest, neg.next);
            }            
            foreach int i in len ..< negLen {
                members.push(rest);
            }
            len = negLen;
        }
        else if negLen < len && isNever(nt.rest) {
            return listProjExclude(cx, k, members, rest, neg.next);
        }
        // now we have nt.members.length() <= len
        SemType p = NEVER;
        foreach int i in 0 ..< len {
            SemType ntm = i < negLen ? nt.members[i] : nt.rest;
            SemType d = diff(members[i], ntm);
            if !isEmpty(cx, d) {
                SemType[] s = shallowCopyTypes(members);
                s[i] = d;
                p = union(p, listProjExclude(cx, k, s, rest, neg.next));
            }     
        }
        SemType rd = diff(rest, nt.rest);
        if !isEmpty(cx, rd) {
            p = union(p, listProjExclude(cx, k, members, rd, neg.next));
        }
        return p;
    }
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
