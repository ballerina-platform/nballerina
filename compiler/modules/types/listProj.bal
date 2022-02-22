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

final ListMemberTypes LIST_MEMBER_TYPES_ALL_TOP = [[{ min: 0, max: int:MAX_VALUE }], [TOP]];
final ListMemberTypes LIST_MEMBER_TYPES_ALL_NEVER = [[{ min: 0, max: int:MAX_VALUE }], [TOP]];

public function listAllMemberTypes(Context cx, SemType t) returns ListMemberTypes {
    if t is UniformTypeBitSet {
        return (t & LIST) != 0 ? LIST_MEMBER_TYPES_ALL_TOP : LIST_MEMBER_TYPES_ALL_NEVER;
    }
    else {
        return listMemberTypesUnion(listProjBddAllKeys(cx, <Bdd>getComplexSubtypeData(t, UT_LIST_RO), (), ()), 
                                    listProjBddAllKeys(cx, <Bdd>getComplexSubtypeData(t, UT_LIST_RW), (), ()));
    }
}

function listProjBddAllKeys(Context cx, Bdd b, Conjunction? pos, Conjunction? neg) returns ListMemberTypes {
    if b is boolean {
        return b ? listProjAll(cx, pos, neg) : LIST_MEMBER_TYPES_ALL_NEVER;
    }
    else {
        return listMemberTypesUnion(listProjBddAllKeys(cx, b.left, and(b.atom, pos), neg),
                                    listMemberTypesUnion(listProjBddAllKeys(cx, b.middle, pos, neg),
                                                         listProjBddAllKeys(cx, b.right, pos, and(b.atom, neg)))); 
    }
}

// Based on listFormulaIsEmpty
function listProjPath(Context cx, IntSubtype|true k, Conjunction? pos, Conjunction? neg) returns SemType {
    SemType|[FixedLengthArray, SemType] intersection = listProjIntersectConjunctions(cx, pos, neg);
    if intersection is SemType {
        return intersection;
    }
    var [members, rest] = intersection;
    return listProjExclude(cx, k, members, rest, listConjunction(cx, neg));
}

function listProjIntersectConjunctions(Context cx, Conjunction? pos, Conjunction? neg) returns SemType|[FixedLengthArray, SemType] {
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
    return [members, rest];
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
        int len = members.fixedLength;
        ListAtomicType nt = neg.listType;
        int negLen = nt.members.fixedLength;
        if len < negLen {
            if isNever(rest) {
                return listProjExclude(cx, k, members, rest, neg.next);
            }
            fixedArrayFill(members, negLen, rest);
            len = negLen;
        }
        else if negLen < len && isNever(nt.rest) {
            return listProjExclude(cx, k, members, rest, neg.next);
        }
        // now we have nt.members.length() <= len
        SemType p = NEVER;
        foreach int i in 0 ..< int:max(members.initial.length(), neg.maxInitialLen) {
            SemType d = diff(listMemberAt(members, rest, i), listMemberAt(nt.members, nt.rest, i));
            if !isEmpty(cx, d) {
                FixedLengthArray s = fixedArrayReplace(members, i, d, rest);
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

function listProjAll(Context cx, Conjunction? pos, Conjunction? neg) returns ListMemberTypes {
    SemType|[FixedLengthArray, SemType] intersection = listProjIntersectConjunctions(cx, pos, neg);
    if intersection is SemType {
        return [[{ min: 0, max: int:MAX_VALUE }], [NEVER]];
    }
    var [members, rest] = intersection;
    return listProjPathAll(cx, members, rest, listConjunction(cx, neg));
}

function listProjPathAll(Context cx, FixedLengthArray members, SemType rest, ListConjunction? neg) returns ListMemberTypes {
    if neg == () {
        return listAtomicTypeAllMemberTypes(members, rest);
    }
    else {
        int len = members.fixedLength;
        ListAtomicType nt = neg.listType;
        int negLen = nt.members.fixedLength;
        if len < negLen {
            if isNever(rest) {
                return listProjPathAll(cx, members, rest, neg.next);
            }
            fixedArrayFill(members, negLen, rest);
            len = negLen;
        }
        else if negLen < len && isNever(nt.rest) {
            return listProjPathAll(cx, members, rest, neg.next);
        }
        // now we have nt.members.length() <= len
        ListMemberTypes p = [];
        foreach int i in 0 ..< int:max(members.initial.length(), neg.maxInitialLen) {
            SemType d = diff(listMemberAt(members, rest, i), listMemberAt(nt.members, nt.rest, i));
            if !isEmpty(cx, d) {
                FixedLengthArray s = fixedArrayReplace(members, i, d, rest);
                p = listMemberTypesUnion(p, listProjPathAll(cx, s, rest, neg.next));
                
            }     
        }
        SemType rd = diff(rest, nt.rest);
        if !isEmpty(cx, rd) {
            p = listMemberTypesUnion(p, listProjPathAll(cx, members, rd, neg.next));
        }
        return p;
    }
}
