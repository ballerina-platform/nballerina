// Implementation specific to basic type cell.

public const CELL_MUT_NONE = 0;
public const CELL_MUT_LIMITED = 1;
public const CELL_MUT_UNLIMITED = 2;

public type CellMutability CELL_MUT_NONE|CELL_MUT_LIMITED|CELL_MUT_UNLIMITED;

public type CellAtomicType readonly & record {|
    SemType t;
    CellMutability mut;
|};

public function cellContaining(Env env, SemType t, CellMutability mut) returns SemType {
    CellAtomicType atomicCell = { t, mut };
    Atom atom = env.cellAtom(atomicCell);
    BddNode bdd = bddAtom(atom);
    return createComplexSemType(0, [[BT_CELL, bdd]]);
}

function cellSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    return bddEvery(cx, <Bdd>t, (), (), cellFormulaIsEmpty);
}

function cellFormulaIsEmpty(Context cx, Conjunction? posList, Conjunction? negList) returns boolean {
    CellAtomicType combinedAtomicType;
    if posList == () {
        combinedAtomicType = { t:TOP, mut:CELL_MUT_UNLIMITED };
    }
    else {
        combinedAtomicType = cx.cellAtomType(posList.atom);
        Conjunction? p = posList.next;
        while true {
            if p == () {
                break;
            }
            combinedAtomicType = intersectCellAtomicType(combinedAtomicType, cx.cellAtomType(p.atom));
            p = p.next;
        }
    }
    return !cellInhabited(cx, combinedAtomicType, negList);
}

function cellInhabited(Context cx, CellAtomicType posCell, Conjunction? negList) returns boolean {
    SemType pos = posCell.t;
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
    SemType negListUnionResult = cellNegListUnion(cx, negList);
    // We expect `isNever` condition to be `true` when there are no negative atoms.
    // Otherwise, we do `isEmpty` to conclude on the inhabitance.
    return isNever(negListUnionResult) || !isEmpty(cx, diff(pos, negListUnionResult));
}

function cellNegListUnion(Context cx, Conjunction? negList) returns SemType {
    SemType negUnion = NEVER;
    Conjunction? neg = negList;
    while true {
        if neg == () {
            break;
        }
        negUnion = union(negUnion, cx.cellAtomType(neg.atom).t);
        neg = neg.next;
    }
    return negUnion;
}

function cellMutLimitedInhabited(Context cx, SemType pos, Conjunction? negList) returns boolean {
    if negList == () {
        return true;
    }
    CellAtomicType negAtomicCell = cx.cellAtomType(negList.atom);
    if negAtomicCell.mut >= CELL_MUT_LIMITED && isEmpty(cx, diff(pos, negAtomicCell.t)) {
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
        if cx.cellAtomType(neg.atom).mut == CELL_MUT_LIMITED && isSameType(cx, TOP, cx.cellAtomType(neg.atom).t) {
            return false;
        }
        neg = neg.next;
    }
    SemType negListUnionResult = cellNegListUnlimitedUnion(cx, negList);
    // We expect `isNever` condition to be `true` when there are no negative atoms with unlimited mutability.
    // Otherwise, we do `isEmpty` to conclude on the inhabitance.
    return isNever(negListUnionResult) || !isEmpty(cx, diff(pos, negListUnionResult));
}

function cellNegListUnlimitedUnion(Context cx, Conjunction? negList) returns SemType {
    SemType negUnion = NEVER;
    Conjunction? neg = negList;
    while true {
        if neg == () {
            break;
        }
        if cx.cellAtomType(neg.atom).mut == CELL_MUT_UNLIMITED {
            negUnion = union(negUnion, cx.cellAtomType(neg.atom).t);
        }
        neg = neg.next;
    }
    return negUnion;
}

function intersectCellAtomicType(CellAtomicType c1, CellAtomicType c2) returns CellAtomicType {
    SemType t = intersect(c1.t, c2.t);
    CellMutability mut = <CellMutability>int:min(c1.mut, c2.mut);
    return { t, mut };
}

final BasicTypeOps cellOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: cellSubtypeIsEmpty
};
