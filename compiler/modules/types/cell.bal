// Implementation specific to basic type cell.

public const CELL_MUT_NONE = 0;
public const CELL_MUT_LIMITED = 1;
public const CELL_MUT_UNLIMITED = 2;

public type CellMutability CELL_MUT_NONE|CELL_MUT_LIMITED|CELL_MUT_UNLIMITED;

public type CellAtomicType readonly & record {|
    SemType ty;
    CellMutability mut;
|};

public function cellContaining(Env env, SemType ty, CellMutability mut = CELL_MUT_LIMITED) returns CellSemType {
    CellAtomicType atomicCell = { ty, mut };
    Atom atom = env.cellAtom(atomicCell);
    BddNode bdd = bddAtom(atom);
    return <CellSemType>basicSubtype(BT_CELL, bdd);
}

function cellSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    return bddEvery(cx, <Bdd>t, (), (), cellFormulaIsEmpty);
}

function cellFormulaIsEmpty(Context cx, Conjunction? posList, Conjunction? negList) returns boolean {
    CellAtomicType combined;
    if posList == () {
        combined = { ty: TOP, mut: CELL_MUT_UNLIMITED };
    }
    else {
        combined = cellAtomType(posList.atom);
        Conjunction? p = posList.next;
        while true {
            if p == () {
                break;
            }
            combined = intersectCellAtomicType(combined, cellAtomType(p.atom));
            p = p.next;
        }
    }
    return !cellInhabited(cx, combined, negList);
}

function cellInhabited(Context cx, CellAtomicType posCell, Conjunction? negList) returns boolean {
    SemType pos = posCell.ty;
    if isEmpty(cx, pos) {
        return false;
    }
    match posCell.mut {
        CELL_MUT_NONE => {
            return cellMutNoneInhabited(cx, pos, negList);
        }
        CELL_MUT_LIMITED => {
            return cellMutLimitedInhabited(cx, pos, negList);
        }
        CELL_MUT_UNLIMITED|_ => {
            return cellMutUnlimitedInhabited(cx, pos, negList);
        }
    }
}

function cellMutNoneInhabited(Context cx, SemType pos, Conjunction? negList) returns boolean {
    SemType negListUnionResult = cellNegListUnion(negList);
    // We expect `isNever` condition to be `true` when there are no negative atoms.
    // Otherwise, we do `isEmpty` to conclude on the inhabitance.
    return isNever(negListUnionResult) || !isEmpty(cx, diff(pos, negListUnionResult));
}

function cellNegListUnion(Conjunction? negList) returns SemType {
    SemType negUnion = NEVER;
    Conjunction? neg = negList;
    while true {
        if neg == () {
            break;
        }
        negUnion = union(negUnion, cellAtomType(neg.atom).ty);
        neg = neg.next;
    }
    return negUnion;
}

function cellMutLimitedInhabited(Context cx, SemType pos, Conjunction? negList) returns boolean {
    if negList == () {
        return true;
    }
    CellAtomicType negAtomicCell = cellAtomType(negList.atom);
    if negAtomicCell.mut >= CELL_MUT_LIMITED && isEmpty(cx, diff(pos, negAtomicCell.ty)) {
        return false;
    }
    return cellMutLimitedInhabited(cx, pos, negList.next);
}

function cellMutUnlimitedInhabited(Context cx, SemType pos, Conjunction? negList) returns boolean {
    Conjunction? neg = negList;
    while true {
        if neg == () {
            break;
        }
        if cellAtomType(neg.atom).mut == CELL_MUT_LIMITED && isSameType(cx, TOP, cellAtomType(neg.atom).ty) {
            return false;
        }
        neg = neg.next;
    }
    SemType negListUnionResult = cellNegListUnlimitedUnion(negList);
    // We expect `isNever` condition to be `true` when there are no negative atoms with unlimited mutability.
    // Otherwise, we do `isEmpty` to conclude on the inhabitance.
    return isNever(negListUnionResult) || !isEmpty(cx, diff(pos, negListUnionResult));
}

function cellNegListUnlimitedUnion(Conjunction? negList) returns SemType {
    SemType negUnion = NEVER;
    Conjunction? neg = negList;
    while true {
        if neg == () {
            break;
        }
        if cellAtomType(neg.atom).mut == CELL_MUT_UNLIMITED {
            negUnion = union(negUnion, cellAtomType(neg.atom).ty);
        }
        neg = neg.next;
    }
    return negUnion;
}

function intersectCellAtomicType(CellAtomicType c1, CellAtomicType c2) returns CellAtomicType {
    SemType ty = intersect(c1.ty, c2.ty);
    CellMutability mut = <CellMutability>int:min(c1.mut, c2.mut);
    return { ty, mut };
}

function cellSubtypeUnion(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    SubtypeData subtypeData = bddSubtypeUnion(t1, t2);
    return cellFixSubtypeData(subtypeData);
}

function cellSubtypeIntersect(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    SubtypeData subtypeData = bddSubtypeIntersect(t1, t2);
    return cellFixSubtypeData(subtypeData);
}

function cellSubtypeDiff(SubtypeData t1, SubtypeData t2) returns SubtypeData {
    SubtypeData subtypeData = bddSubtypeDiff(t1, t2);
    return cellFixSubtypeData(subtypeData);
}

function cellSubtypeComplement(SubtypeData t) returns SubtypeData {
    SubtypeData subtypeData = bddSubtypeComplement(t);
    return cellFixSubtypeData(subtypeData);
}

// SubtypeData being a boolean would result in a BasicTypeBitSet which could either be 0 or 1 << BT_CELL.
// This is to avoid cell type being a BasicTypeBitSet, as we don't want to lose the cell wrapper.
function cellFixSubtypeData(SubtypeData subtypeData) returns SubtypeData {
    if subtypeData !is boolean {
        return subtypeData;
    }

    Atom atom;
    if subtypeData is true {
        atom = { index: 0, atomicType: CELL_ATOMIC_TOP };
    } else {
        atom = { index: 1, atomicType: CELL_ATOMIC_BOTTOM };
    }
    return bddAtom(atom);
}

final BasicTypeOps cellOps = {
    union: cellSubtypeUnion,
    intersect: cellSubtypeIntersect,
    diff: cellSubtypeDiff,
    complement: cellSubtypeComplement,
    isEmpty: cellSubtypeIsEmpty
};
