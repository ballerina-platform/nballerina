// Untested full implementation of list projection.

// Based on listMemberType
public function listProj(Context cx, SemType t, SemType k) returns SemType {
    if t is UniformTypeBitSet {
        return (t & LIST) != 0 ? TOP : NEVER;
    }
    else {
        IntSubtype|boolean keyData = intSubtype(k);
        if keyData == false {
            return NEVER;
        }
        return union(listProjBdd(cx, <IntSubtype|true>keyData, <Bdd>getComplexSubtypeData(t, UT_LIST_RO), (), ()),
                     listProjBdd(cx, <IntSubtype|true>keyData, <Bdd>getComplexSubtypeData(t, UT_LIST_RW), (), ()));
    }
}

// Based on bddEvery
function listProjBdd(Context cx, IntSubtype|true k, Bdd b, Conjunction? pos, Conjunction? neg) returns SemType {
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
function listProjPath(Context cx, IntSubtype|true k, Conjunction? pos, Conjunction? neg) returns SemType {
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
                var intersected = listIntersectWith(members, rest, lt.members, lt.rest);
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
function listProjExclude(Context cx, IntSubtype|true k, FixedLengthArray members, SemType rest, ListConjunction? neg) returns SemType {
    if neg == () {
        return listAtomicMemberTypeAt(members, rest, k);
    }
    else {
        ListAtomicType nt = neg.listType;
        if listLengthsDisjoint(members, rest, nt.members, nt.rest) {
            return listProjExclude(cx, k, members, rest, neg.next);
        }
        final int negLen = nt.members.fixedLength;
        if members.fixedLength < negLen {
            // XXX is this right?
            // what about if all of k is less than negLen?
            fixedArrayFill(members, negLen, rest);
        }
      
        // now we have nt.members.length() <= len
        SemType p = NEVER;
        foreach int i in listRepresentativeIndices(cx, members, rest, neg) {
            SemType d = diff(listMemberAt(members, rest, i), listMemberAt(nt.members, nt.rest, i));
            if !isEmpty(cx, d) {
                FixedLengthArray s = fixedArrayReplace(members, i, d, rest);
                p = union(p, listProjExclude(cx, k, s, rest, neg.next));
            }     
        }
        return p;
    }
}
