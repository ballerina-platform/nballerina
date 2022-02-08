// Untested full implementation of list projection.

// Based on listMemberType
public function listProj(Context cx, SemType t, SemType k) returns SemType {
    if t is UniformTypeBitSet {
        return (t & LIST) != 0 ? TOP : NEVER;
    }
    else {
        IntSubtype? intSubtype = ();
        if k is ComplexSemType {
            intSubtype = <IntSubtype>getComplexSubtypeData(k, UT_INT);
        }
        return union(listProjBdd(cx, intSubtype, <Bdd>getComplexSubtypeData(t, UT_LIST_RO), (), ()),
                listProjBdd(cx, intSubtype, <Bdd>getComplexSubtypeData(t, UT_LIST_RW), (), ()));
    }
}

// Based on bddEvery
function listProjBdd(Context cx, IntSubtype? k, Bdd b, Conjunction? pos, Conjunction? neg) returns SemType {
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
function listProjPath(Context cx, IntSubtype? k, Conjunction? pos, Conjunction? neg) returns SemType {
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
                    return NEVER;
                }
                [members, rest] = intersected;
            }
        }
        if fixedArrayAnyEmpty(cx, members) {
            return NEVER;
        }
        // Ensure that we can use isNever on rest in listInhabited
        if rest !== NEVER && isEmpty(cx, rest) {
            rest = NEVER;
        }
    }
    return listProjExclude(cx, k, members, rest, listConjunction(cx, neg));
}

// Precondition k >= 0 and members[i] not empty for all i
// This finds the projection of e[k], excluding the list of atoms in neg
// when the type of e is given by members and rest.
// Based on listInhabited
// Corresponds to phi^x in AMK tutorial generalized for list types.
function listProjExclude(Context cx, IntSubtype? k, FixedLengthArray members, SemType rest, ListConjunction? neg) returns SemType {
    if neg == () {
        return listAtomicMemberTypeAt(members, rest, k);
    }
    else {
        int len = members.fixedLength;
        ListAtomicType nt = neg.listType;
        int negLen = nt.members.fixedLength;
        SemType p = NEVER;
        if len < negLen {
            if isNever(rest) {
                return listProjExclude(cx, k, members, rest, neg.next);
            }
            foreach int i in members.initial.length() + 1 ..< nt.members.initial.length() {
                FixedLengthArray s = fixedArrayShallowCopy(members);
                fixedArrayFill(s, i, rest);
                p = union(p, listProjExclude(cx, k, members, NEVER, neg.next));
            }
            fixedArrayFill(members, negLen, rest);
            len = negLen;
        }
        else if negLen < len && isNever(nt.rest) {
            return listProjExclude(cx, k, members, rest, neg.next);
        }
        // now we have nt.members.length() <= len
        foreach int i in 0 ..< int:max(members.initial.length(), neg.maxInitialLen) {
            SemType d = diff(listMemberAt(members, rest, i), listMemberAt(nt.members, nt.rest, i));
            if !isEmpty(cx, d) {
                FixedLengthArray s = fixedArrayShallowCopy(members);
                fixedArrayFill(s, i - 1, rest);
                fixedArraySet(s, i, d);
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
