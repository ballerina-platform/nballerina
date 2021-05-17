// Implementation specific to basic type list.
import semtype.bdd;

public type ListAtomicType readonly & record {|
    SemType[] members;
    SemType rest;
|};

final ListAtomicType LIST_SUBTYPE_RO = { members: [], rest: READONLY };

public class ListDefinition {
    *Definition;
    private int ro = -1;
    private int rw = -1;

    // The SemType is created lazily so that we have the possibility
    // to share the Bdd between the RO and RW cases.
    private SemType? semType = ();

    public function getSemType(Env env) returns SemType {
        SemType? s = self.semType;
        if s is () {
            self.ro = dummyListDef(env);
            self.rw = dummyListDef(env);
            return self.createSemType(env);
        }
        else {
            return s;
        }
    }

    public function define(Env env, SemType[] members, SemType rest) returns SemType {
        ListAtomicType rwType = { members: members.cloneReadOnly(), rest };
        if self.rw < 0 {
            self.rw = dummyListDef(env);
        }
        env.listDefs[self.rw] = rwType;
        if typeListIsReadOnly(rwType.members) && isReadOnly(rwType.rest) {
            if self.ro < 0 {
                // share the definitions
                self.ro = self.rw;
            }
            else {
                env.listDefs[self.ro] = rwType;
            }
        }
        else {
            ListAtomicType roType = {
                members: readOnlyTypeList(rwType.members),
                rest: intersect(rwType.rest, READONLY)
            };
            if self.ro < 0 {
                self.ro = dummyListDef(env);
            }
            env.listDefs[self.ro] = roType;
        }
        return self.createSemType(env);
    }
    
    private function createSemType(Env env) returns SemType {
        readonly & bdd:Node roBdd = bdd:atom(self.ro);
        readonly & bdd:Node rwBdd;
        if self.ro == self.rw {
            // share the BDD
            rwBdd = roBdd;
        }
        else {
            rwBdd = bdd:atom(self.rw);
        }
        SemType s = new SemType(0, [[UT_LIST_RO, roBdd], [UT_LIST_RW, rwBdd]]);
        self.semType = s;
        return s;
    }       
}

public function tuple(Env env, SemType... members) returns SemType {
    ListDefinition def = new;
    return def.define(env, members, NEVER);
}

function dummyListDef(Env env) returns int {
    int i = env.listDefs.length();
    ListAtomicType dummy = { members: [], rest: NEVER };
    env.listDefs.push(dummy);
    return i;
}

function listRoSubtypeIsEmpty(TypeCheckContext tc, SubtypeData t) returns boolean {
    return listSubtypeIsEmpty(tc, bddFixReadOnly(<bdd:Bdd>t));
}

function listSubtypeIsEmpty(TypeCheckContext tc, SubtypeData t) returns boolean {
    bdd:Bdd b = <bdd:Bdd>t;
    BddMemo? mm = tc.listMemo[b];
    BddMemo m;
    if mm is () {
        m = { bdd: b };
        tc.listMemo.add(m);
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
    boolean isEmpty = bddEvery(tc, b, (), (), listFormulaIsEmpty);
    m.isEmpty = isEmpty;
    return isEmpty;    
}

function listFormulaIsEmpty(TypeCheckContext tc, Conjunction? pos, Conjunction? neg) returns boolean {
    SemType[] members;
    SemType rest;
    if pos is () {
        members = [];
        rest = TOP;
    }
    else {
        // combine all the positive tuples using intersection
        ListAtomicType lt = tc.listDefs[pos.atom];
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
                int d = p.atom;
                p = p.next; 
                lt = tc.listDefs[d];
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
            if isEmpty(tc, m) {
                return true;
            }
        }
    }
    return !listInhabited(tc, members, rest, neg);
}

// This function returns true if there is a list shape v such that
// is in the type described by `members` and `rest`, and
// for each tuple t in `neg`, v is not in t.
// `neg` represents a set of negated list types.
// Precondition is that each of `members` is not empty.
// This is formula Phi' in section 7.3.1 of Alain Frisch's PhD thesis,
// generalized to tuples of arbitrary length.
function listInhabited(TypeCheckContext tc, SemType[] members, SemType rest, Conjunction? neg) returns boolean {
    if neg is () {
        return true;
    }
    else {
        int len = members.length();
        ListAtomicType nt = tc.listDefs[neg.atom];
        int negLen = nt.members.length();
        if len < negLen {
            if isNever(rest) {
                return listInhabited(tc, members, rest, neg.next);
            }            
            foreach int i in len ..< negLen {
                members.push(rest);
            }
            len = negLen;
        }
        else if negLen < len && isNever(nt.rest) {
            return listInhabited(tc, members, rest, neg.next);
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
        // if !isEmpty(tc, d0) && tupleInhabited(tc, [d0, s[1]], neg.rest) {
        //     return true;
        // }
        // Case (2)
        // For v1 to be in s1 but not t1, d1 must not be empty.
        // We must then find a [v0,v1] satisfying the remaining negated tuples,
        // such that v1 is in d1.
        // SemType d1 = diff(s[1], t[1]);
        // return !isEmpty(tc, d1) &&  tupleInhabited(tc, [s[0], d1], neg.rest);
        // We can generalize this to tuples of arbitrary length.
        foreach int i in 0 ..< len {
            SemType ntm = i < negLen ? nt.members[i] : nt.rest;
            SemType d = diff(members[i], ntm);
            if !isEmpty(tc, d) {
                SemType[] s = shallowCopyTypes(members);
                s[i] = d;
                if listInhabited(tc, s, rest, neg.next) {
                    return true;
                }
            }     
        }
        if !isEmpty(tc, diff(rest, nt.rest)) {
            return true;
        }
        // This is correct for length 0, because we know that the length of the
        // negative is 0, and [] - [] is empty.
        return false;
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
