// Implementation specific to basic type list.
import semtype.bdd;

public type ListSubtype readonly & record {|
    SemType[] members;
    SemType rest = NEVER;
|};

public function tuple(Env env, SemType... members) returns SemType {
    return list(env,  { members: members.cloneReadOnly(), rest: NEVER });
}

public function list(Env env, ListSubtype lt) returns SemType {
    int rw = env.listDefs.length();
    env.listDefs.push(lt);
    int ro;
    if listSubtypeIsReadOnly(lt) {
        ro = rw;
    }
    else {
        ro = env.listDefs.length();
        ListSubtype roLt = readOnlyListSubtype(lt);
        env.listDefs.push(roLt);
    }
    return listRef(ro, rw);
}

function listSubtypeIsReadOnly(ListSubtype lt) returns boolean {
    return typeListIsReadOnly(lt.members) && isReadOnly(lt.rest);
}

function readOnlyListSubtype(ListSubtype lt) returns ListSubtype {
    return {
        members: readOnlyTypeList(lt.members),
        rest: intersect(lt.rest, READONLY)
    };
}

function listRef(int ro, int rw) returns SemType {
    readonly & bdd:Node roBdd = bdd:atom(ro);
    readonly & bdd:Node rwBdd;
    if ro == rw {
        rwBdd = roBdd;
    }
    else {
        rwBdd = bdd:atom(rw);
    }
    return new SemType((1 << (BT_LIST_RO + BT_COUNT)) | (1 << (BT_LIST_RW + BT_COUNT)),
                       [[BT_LIST_RO, roBdd], [BT_LIST_RW, rwBdd]]);
}
public function recursiveTuple(Env env, function(Env, SemType) returns SemType[] f) returns SemType {
    int ro = env.listDefs.length();
    ListSubtype dummy = { members: [] };
    env.listDefs.push(dummy);
    int rw = ro + 1;
    env.listDefs.push(dummy);
    SemType r = listRef(ro, rw);
    SemType[] rwMembers = f(env, r);
    ListSubtype rwType = { members: rwMembers.cloneReadOnly() };
    env.listDefs[rw] = rwType;
    env.listDefs[ro] = readOnlyListSubtype(rwType);
    return r;
}

public function recursiveTupleParse(Env env, function(Env, SemType) returns SemType[]|error f) returns SemType|error {
    int ro = env.listDefs.length();
    ListSubtype dummy = { members: [] };
    env.listDefs.push(dummy);
    int rw = ro + 1;
    env.listDefs.push(dummy);
    SemType r = listRef(ro, rw);
    SemType[] rwMembers = check f(env, r);
    ListSubtype rwType = { members: rwMembers.cloneReadOnly() };
    env.listDefs[rw] = rwType;
    env.listDefs[ro] = readOnlyListSubtype(rwType);
    return r;
}

public function recursiveListParse(Env env, function(Env, SemType) returns ListSubtype|error f) returns SemType|error {
    int ro = env.listDefs.length();
    ListSubtype dummy = { members: [] };
    env.listDefs.push(dummy);
    int rw = ro + 1;
    env.listDefs.push(dummy);
    SemType r = listRef(ro, rw);
    ListSubtype rwType = check f(env, r);
    env.listDefs[rw] = rwType;
    env.listDefs[ro] = readOnlyListSubtype(rwType);
    return r;
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
    boolean isEmpty = bddIsEmpty(tc, b, (), (), listFormulaIsEmpty);
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
        ListSubtype lt = tc.listDefs[pos.index];
        members = lt.members;
        rest = lt.rest;
        Conjunction? p = pos.next;
        // the neg case is in case we grow the array in listInhabited
        if p != () || neg != () {
            members = shallowCopy(members);
        }
        while true {
            if p is () {
                break;
            }
            else {
                int d = p.index;
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
        ListSubtype nt = tc.listDefs[neg.index];
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
                SemType[] s = shallowCopy(members);
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

// Feels like this should be a library function.
function shallowCopy(SemType[] v) returns SemType[] {
    return v.slice(0);
}

final BasicTypeOps listOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: listSubtypeIsEmpty
};
