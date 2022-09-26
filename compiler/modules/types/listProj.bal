// Untested full implementation of list projection.

// Based on listMemberType
public function listProj(Context cx, SemType t, SemType k) returns SemType {
    if t is BasicTypeBitSet {
        return (t & LIST) != 0 ? TOP : NEVER;
    }
    else {
        IntSubtype|boolean keyData = intSubtype(k);
        if keyData == false {
            return NEVER;
        }
        return listProjBdd(cx, <IntSubtype|true>keyData, <Bdd>getComplexSubtypeData(t, BT_LIST), (), ());
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
                var intersected = listIntersectWith(cx, members, rest, lt.members, lt.rest);
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
    // return listProjExclude(cx, k, members, rest, listConjunction(cx, neg));
    int[] indices = listSamples(cx, members, rest, neg);
    int[] keyIndices;
    [indices, keyIndices] = listProjSamples(indices, k);
    var [memberTypes, nRequired] = listSampleTypes(cx, members, rest, indices);
    return listProjExclude(cx, indices, keyIndices, memberTypes, nRequired, neg);
}

// Based on listInhabited
// Corresponds to phi^x in AMK tutorial generalized for list types.
// `keyIndices` are the indices in `memberTypes` of those samples that belong to the key type.
function listProjExclude(Context cx, int[] indices, int[] keyIndices, SemType[] memberTypes, int nRequired, Conjunction? neg) returns SemType {
    SemType p = NEVER;
    if neg == () {
        int len = memberTypes.length();
        foreach int k in keyIndices {
            if k < len {
                p = union(p, memberTypes[k]);
            }
        }
    }
    else {
        final ListAtomicType nt = cx.listAtomType(neg.atom);
        if nRequired > 0 && isNever(listMemberAt(nt.members, nt.rest, indices[nRequired - 1])) {
            return listProjExclude(cx, indices, keyIndices, memberTypes, nRequired, neg.next);
        }
        int negLen = nt.members.fixedLength;
        if negLen > 0 {
            int len = memberTypes.length();
            if len < indices.length() && indices[len] < negLen {
                return listProjExclude(cx, indices, keyIndices, memberTypes, nRequired, neg.next);
            }
            foreach int i in nRequired ..< memberTypes.length() {
                if indices[i] >= negLen {
                    break;
                }
                SemType[] t = memberTypes.slice(0, i);
                p = union(p, listProjExclude(cx, indices, keyIndices, t, nRequired, neg.next));
            }
        } 
        foreach int i in 0 ..< memberTypes.length() {
            SemType d = diff(memberTypes[i], listMemberAt(nt.members, nt.rest, indices[i]));
            if !isEmpty(cx, d) {
                SemType[] t = memberTypes.clone();
                t[i] = d;
                // We need to make index i be required
                p = union(p, listProjExclude(cx, indices, keyIndices, t, int:max(nRequired, i + 1), neg.next));
            }
        }   
    }
    return p;
}

// In order to adapt listInhabited to do projection, we need
// to know which samples correspond to keys and to ensure that
// every equivalence class that overlaps with a key has a sample in the
// intersection.
// Here we add samples for both ends of each range. This doesn't handle the
// case where the key is properly within a partition: but that is handled
// because we already have a sample of the end of the partition.
function listProjSamples(int[] indices, IntSubtype|true k) returns [int[], int[]] {
    [int, boolean][] v = from int i in indices select [i, intSubtypeContains(k, i)];
    if k is IntSubtype {
        foreach var range in k {
            int max = range.max;
            if range.max >= 0 {
                v.push([max, true]);
                int min = int:max(0, range.min);
                if min < max {
                    v.push([min, true]);
                }
            }   
        }
    }
    v = v.sort();
    int[] indices1 = [];
    int[] keyIndices = [];
    foreach var [i, inKey] in v {
        if indices1.length() == 0 || i != indices1[indices1.length() - 1] {
            if inKey {
                keyIndices.push(indices1.length());
            }
            indices1.push(i);
        }
    }
    return [indices1, keyIndices];
}
