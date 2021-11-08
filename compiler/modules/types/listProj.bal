// Untested full implementation of list projection.

// Based on listMemberType
public function listProj(Context cx, SemType t, int k) returns SemType {
    if k < 0 {
        return NEVER;
    }
    if t is UniformTypeBitSet {
        return (t & LIST) != 0 ? TOP : NEVER;
    }
    else {
        return union(listProjBdd(cx, k, <Bdd>getComplexSubtypeData(t, UT_LIST_RO), (), ()),
                     listProjBdd(cx, k, <Bdd>getComplexSubtypeData(t, UT_LIST_RW), (), ()));
    }
}

// Based on bddEvery
function listProjBdd(Context cx, int k, Bdd b, Conjunction? pos, Conjunction? neg) returns SemType {
    if b is boolean {
        return b ? listProjPath(cx, k, pos, neg) : NEVER;
    }
    else {
        return union(listProjBdd(cx, k, b.left, and(b.atom, pos), neg),
                     union(listProjBdd(cx, k, b.middle, pos, neg),
                           listProjBdd(cx, k, b.right, pos, and(b.atom, neg)))); 
    }
}

// Based on listFormulaIsEmpty
function listProjPath(Context cx, int k, Conjunction? pos, Conjunction? neg) returns SemType {
    ListMemberType members;
    // SemType rest;
    // if pos == () {
    //     members = [];
    //     rest = TOP;
    // }
    // else {
    //     // combine all the positive tuples using intersection
    //     ListAtomicType lt = cx.listAtomType(pos.atom);
    //     members = lt.members;
    //     rest = lt.rest;
    //     Conjunction? p = pos.next;
    //     // the neg case is in case we grow the array in listInhabited
    //     if p != () || neg != () {
    //         members = shallowCopyListMembersType(members);
    //     }
    //     while true {
    //         if p == () {
    //             break;
    //         }
    //         else {
    //             Atom d = p.atom;
    //             p = p.next; 
    //             lt = cx.listAtomType(d);
    //             int newLen = int:max(memberLength(members), memberLength(lt.members));
    //             if members.length() < newLen {
    //                 if isNever(rest) {
    //                     return NEVER;
    //                 }
    //                 foreach int i in members.length() ..< newLen {
    //                     members.push(rest);
    //                 }
    //             }
    //             foreach int i in 0 ..< memberLength(lt.members) {
    //                 members[i] = intersect(nthMember(members, i), nthMember(lt.members, i));
    //             }
    //             if memberLength(lt.members) < newLen {
    //                 if isNever(lt.rest) {
    //                     return NEVER;
    //                 }
    //                 foreach int i in memberLength(lt.members) ..< newLen {
    //                     members[i] = intersect(nthMember(members, i), lt.rest);
    //                 }
    //             }
    //             rest = intersect(rest, lt.rest);
    //         }
    //     }
    //     foreach var m in members {
    //         if isEmpty(cx, m) {
    //             return NEVER;
    //         }
    //     }
    //     // Ensure that we can use isNever on rest in listInhabited
    //     if rest !== NEVER && isEmpty(cx, rest) {
    //         rest = NEVER;
    //     }
    // }
    //return listProjExclude(cx, k, members, rest, neg);
    return 0;
}

// Precondition k >= 0 and members[i] not empty for all i
// This finds the projection of e[k], excluding the list of atoms in neg
// when the type of e is given by members and rest.
// Based on listInhabited
// Corresponds to phi^x in AMK tutorial generalized for list types.
function listProjExclude(Context cx, int k, SemType[] members, SemType rest, Conjunction? neg) returns SemType {
    if neg == () {
        return k < members.length() ? members[k] : rest;
    }
    else {
        int len = members.length();
        ListAtomicType nt = cx.listAtomType(neg.atom);
        int negLen = listMembersLen(nt.members);
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
            SemType ntm = i < negLen ? nthMember(nt.members, i) : nt.rest;
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
