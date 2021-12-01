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
    SemType[] members;
    SemType rest;
    int repeatLastMember;
    if pos == () {
        members = [];
        repeatLastMember = 0;
        rest = TOP;
    }
    else {
        // combine all the positive tuples using intersection
        ListAtomicType lt = cx.listAtomType(pos.atom);
        members = lt.members.initial;
        repeatLastMember = lt.members.repeatLastCount;
        rest = lt.rest;
        Conjunction? p = pos.next;
        // the neg case is in case we grow the array in listInhabited
        if p != () || neg != () {
            members = shallowCopyTypes(members);
        }
        while true {
            if p == () {
                break;
            }
            else {
                Atom d = p.atom;
                p = p.next; 
                lt = cx.listAtomType(d);
                int prevLen = members.length() + repeatLastMember;
                int currentLen = listMembersLength(lt.members);
                int newLen = int:max(prevLen, currentLen);
                if prevLen < newLen {
                    if isNever(rest) {
                        return NEVER;
                    }
                    repeatLastMember = listDecompressMembersForSet(newLen, members, repeatLastMember, rest);
                }
                foreach int i in 0 ..< currentLen {
                    members[i] = intersect(listMemberAt(members, i), listMemberAt(lt.members.initial, i));
                }
                if currentLen < newLen {
                    if isNever(lt.rest) {
                        return NEVER;
                    }
                    foreach int i in currentLen ..< newLen {
                        members[i] = intersect(listMemberAt(members, i), lt.rest);
                    }
                }
                rest = intersect(rest, lt.rest);
            }
        }
            if isAnyEmptySemType(cx, members) {
                return NEVER;
            }
        // Ensure that we can use isNever on rest in listInhabited
        if rest !== NEVER && isEmpty(cx, rest) {
            rest = NEVER;
        }
    }
    return listProjExclude(cx, k, members, repeatLastMember, rest, neg);
}

// Precondition k >= 0 and members[i] not empty for all i
// This finds the projection of e[k], excluding the list of atoms in neg
// when the type of e is given by members and rest.
// Based on listInhabited
// Corresponds to phi^x in AMK tutorial generalized for list types.
function listProjExclude(Context cx, 
                        int k, 
                        SemType[] m, 
                        int repeatLastMember, 
                        SemType rest, 
                        Conjunction? neg) returns SemType {
    int repeatCount = repeatLastMember;
    int len =  m.length() + repeatCount;
    if neg == () {
        return k < len ? listMemberAt(m, k) : rest;
    }
    else {
        SemType[] members = m;
        ListAtomicType nt = cx.listAtomType(neg.atom);
        int negLen = listMembersLength(nt.members);
        if len < negLen {
            if isNever(rest) {
                return listProjExclude(cx, k, members, repeatCount, rest, neg.next);
            }
            repeatCount = listDecompressMembersForSet(negLen, members, repeatCount, rest);
            len = negLen;
        }
        else if negLen < len && isNever(nt.rest) {
            return listProjExclude(cx, k, members, repeatCount, rest, neg.next);
        }
        // now we have nt.members.length() <= len
        SemType p = NEVER;
        foreach int i in 0 ..< len {
            SemType ntm = i < negLen ? listMemberAt(nt.members.initial, i) : nt.rest;
            SemType d = diff(listMemberAt(members, i), ntm);
            if !isEmpty(cx, d) {
                SemType[] s = shallowCopyTypes(members);
                s[i] = d;
                p = union(p, listProjExclude(cx, k, s, repeatCount, rest, neg.next));
            }     
        }
        SemType rd = diff(rest, nt.rest);
        if !isEmpty(cx, rd) {
            p = union(p, listProjExclude(cx, k, members, repeatCount, rd, neg.next));
        }
        return p;
    }
}
