// Implementation specific to basic type cell.

public const READONLY_CELL = 0;
public const MUTABLE_CELL = 1;
public const MATCHING_CELL = 2;

public type CellMutability READONLY_CELL|MUTABLE_CELL|MATCHING_CELL;

public type CellAtomicType readonly & record {|
    SemType t;
    CellMutability m;
|};

public class CellDefinition {
    *Definition;
    private RecAtom? rec = ();
    private ComplexSemType? semType = ();

    public function getSemType(Env env) returns ComplexSemType {
        ComplexSemType? s = self.semType;
        if s == () {
            RecAtom rec = env.recCellAtom();
            self.rec = rec;
            return self.createSemType(env, rec);
        }
        else {
            return s;
        }
    }

    public function define(Env env, SemType t, CellMutability m) returns ComplexSemType {
        CellAtomicType cellType = {t, m};
        Atom atom;
        RecAtom? rec = self.rec;
        if rec != () {
            atom = rec;
            env.setRecCellAtomType(rec, cellType);
        }
        else {
            atom = env.cellAtom(cellType);
        }

        return self.createSemType(env, atom);
    }

    private function createSemType(Env env, Atom atom) returns ComplexSemType {
        BddNode bdd = bddAtom(atom);
        ComplexSemType s = createComplexSemType(0, [[UT_CELL, bdd]]);
        self.semType = s;
        return s;
    }
}

function cellSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    Bdd b = <Bdd>t;
    BddMemo? mm = cx.cellMemo[b];
    BddMemo m;

    if mm == () {
        m = {bdd: b};
        cx.cellMemo.add(m);
    }
    else {
        m = mm;
        boolean? res = m.isEmpty;
        if res == () {
            // we've got a loop
            // XXX is this right???
            return true;
        }
        else {
            return res;
        }
    }

    boolean isEmpty = bddEvery(cx, b, (), (), cellFormulaIsEmpty);
    m.isEmpty = isEmpty;
    return isEmpty;
}

function cellFormulaIsEmpty(Context cx, Conjunction? posList, Conjunction? negList) returns boolean {
    SemType combined;
    CellMutability minM;
    if posList == () {
        combined = TOP;
        minM = 2; // TODO: revisit
    }
    else {
        CellAtomicType cellAtomType = cx.cellAtomType(posList.atom);
        combined = cellAtomType.t;
        minM = cellAtomType.m;

        Conjunction? p = posList.next;
        while true {
            if p == () {
                break;
            }

            cellAtomType = cx.cellAtomType(p.atom);
            combined = intersect(combined, cellAtomType.t);

            CellMutability newM = cellAtomType.m;
            minM = minM > newM ? newM : minM;
            p = p.next;
        }
    }

    if isEmpty(cx, combined) {
        return true;
    }

    match minM {
        READONLY_CELL => {
            return checkReadonlyCellSubptyeRelation(cx, combined, negList);
        }
        MUTABLE_CELL => {
            return checkMutableCellSubtyeRelation(cx, combined, negList);
        }
        MATCHING_CELL|_ => {
            return hasMatchingCellSubtypeRelation(cx, combined, negList);
        }
    }
}

function checkReadonlyCellSubptyeRelation(Context cx, SemType posCombined, Conjunction? negList) returns boolean {
    SemType? negListUnionResult = negListUnion(cx, negList);
    return negListUnionResult != () && isEmpty(cx, diff(posCombined, negListUnionResult));
}

function negListUnion(Context cx, Conjunction? negList) returns SemType? {
    if negList == () {
        return ();
    }

    SemType nUnion = cx.cellAtomType(negList.atom).t;
    Conjunction? n = negList.next;
    while true {
        if n == () {
            break;
        }

        nUnion = union(nUnion, cx.cellAtomType(n.atom).t);
        n = n.next;
    }

    return nUnion;
}

function checkMutableCellSubtyeRelation(Context cx, SemType combined, Conjunction? negList) returns boolean {
    Conjunction? n = negList;
    while true {
        if n == () {
            break;
        }

        if cx.cellAtomType(n.atom).m >= 1 && isEmpty(cx, diff(combined, cx.cellAtomType(n.atom).t)) {
            return true;
        }
        n = n.next;
    }

    return false;
}

function hasMatchingCellSubtypeRelation(Context cx, SemType posCombined, Conjunction? negList) returns boolean {
    Conjunction? n = negList;
    while true {
        if n == () {
            break;
        }

        if cx.cellAtomType(n.atom).m == 1 && isSameType(cx, TOP, cx.cellAtomType(n.atom).t) {
            return true;
        }
        n = n.next;
    }

    SemType? negListUnionResult = negListInfUnion(cx, negList);
    return negListUnionResult != () && isEmpty(cx, diff(posCombined, negListUnionResult));
}

function negListInfUnion(Context cx, Conjunction? negList) returns SemType? {
    SemType? nUnion = ();
    Conjunction? n = negList;
    while true {
        if n == () {
            break;
        }

        if cx.cellAtomType(n.atom).m == 2 {
            nUnion = nUnion == () ? cx.cellAtomType(n.atom).t : union(nUnion, cx.cellAtomType(n.atom).t);
        }

        n = n.next;
    }

    return nUnion;
}

final UniformTypeOps cellOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: cellSubtypeIsEmpty
};