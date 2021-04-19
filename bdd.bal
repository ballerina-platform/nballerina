// BDDs

// BDD branch nodes are labelled with these

type CompareResult -1 | 0 | 1;

type Atom int;

public type Bdd (readonly & BddNode)|boolean;

function atomCompare(Atom a1, Atom a2) returns CompareResult {
    if a1 < a2 {
        return -1;
    }
    else if a1 > a2 {
        return 1;
    }
    else {
        return 0;
    }
}

// referenced nodes must have atom with same basic type
type BddNode record {|
    Atom atom;
    Bdd lo;
    Bdd mid;
    Bdd hi;
|};

// Atoms need to be ordered, so BDDs need to be ordered.
// Order is arbitrary
// false < BddNode < true
// BddNode ordered lexicographically on fields
function bddCompare(Bdd b1, Bdd b2) returns CompareResult {
    if b1 is boolean {
        if b1 == false {
            return b2 === false ? 0 : -1;
        }
        else {
            // b1 == true
            return b2 === true ? 0 : 1;
        }

    }
    else if b2 is boolean {
        // b1 is a node
        return b2 === true ? -1 : 1;
    }
    else {
        CompareResult tem = atomCompare(b1.atom, b2.atom);
        if tem != 0 {
            return tem;
        }
        tem = bddCompare(b1.lo, b2.lo);
        if tem != 0 {
            return tem;
        }
        tem = bddCompare(b1.mid, b2.mid);
        if tem != 0 {
            return tem;
        }
        return bddCompare(b2.hi, b2.hi);
    }
}

function bddUnion(Bdd b1, Bdd b2) returns Bdd {
    if b1 === b2 {
        return b1;
    }
    else if b1 is boolean {
        return b1 == true ? true : b2;
    }
    else if b2 is boolean {
        return b2 == true ? true : b1;
    }
    else {  
        CompareResult cmp = atomCompare(b1.atom, b2.atom);
        if cmp == -1 {
            return bddCreate(b1.atom,
                             b1.lo,
                             bddUnion(b1.mid, b2),
                             b1.hi);
        }
        else if cmp == 1 {
             return bddCreate(b2.atom,
                              b2.lo,
                              bddUnion(b1, b2.mid),
                              b2.hi);
        }
        else {
            return bddCreate(b1.atom,
                             bddUnion(b1.lo, b2.lo),
                             bddUnion(b1.mid, b2.mid),
                             bddUnion(b1.hi, b2.hi));
        }
    }
}

function bddIntersect(Bdd b1, Bdd b2) returns Bdd {
    if b1 === b2 {
        return b1;
    }
    else if b1 is boolean {
        return b1 == true ? b2 : false;
    }
    else if b2 is boolean {
        return b2 == true ? false : b1;
    }
    else { 
        CompareResult cmp = atomCompare(b1.atom, b2.atom);
        if cmp == -1 {
            return bddCreate(b1.atom,
                             bddIntersect(b1.lo, b2),
                             bddIntersect(b1.mid, b2),
                             bddIntersect(b1.hi, b2));
        }
        else if cmp == 1 {
            return bddCreate(b2.atom,
                             bddIntersect(b1, b2.lo),
                             bddIntersect(b1, b2.mid),
                             bddIntersect(b1, b2.hi));
        }
        else {
            return bddCreate(b1.atom,
                             bddIntersect(bddUnion(b1.lo, b1.mid), bddUnion(b2.lo, b2.mid)),
                             false,
                             bddIntersect(bddUnion(b1.hi, b1.mid), bddUnion(b2.hi, b2.mid)));
        }
    }       
}

function bddDiff(Bdd b1, Bdd b2) returns Bdd {
   if b1 === b2 {
        return false;
    }
    else if b2 is boolean {
        return b2 == true ? false : b1;
    }
    else if b1 is boolean {
        return b1 == true ?  bddComplement(b2) : false;
    }
    else {  
        CompareResult cmp = atomCompare(b1.atom, b2.atom);
        if cmp == -1 {
            return bddCreate(b1.atom,
                             bddDiff(bddUnion(b1.lo, b1.mid), b2),
                             false,
                             bddDiff(bddUnion(b1.hi, b1.mid), b2));
        }
        else if cmp == 1 {
            return bddCreate(b2.atom,
                             bddDiff(b1, bddUnion(b2.lo, b2.mid)),
                             false,
                             bddDiff(b1, bddUnion(b2.hi, b2.mid)));

        }
        else {
            return bddCreate(b1.atom,
                             bddDiff(b1.lo, b2),
                             bddDiff(b1.mid, b2),
                             bddDiff(b1.hi, b2));
        }
    }
}

function bddComplement(Bdd b) returns Bdd {
    if b is boolean {
        return !b;
    }
    else {
        if b.hi === false {
            return bddCreate(b.atom,
                             false,
                             bddComplement(bddUnion(b.lo, b.mid)),
                             bddComplement(b.mid));
        }
        else if b.lo === false {
            return bddCreate(b.atom,
                             bddComplement(b.mid),
                             bddComplement(bddUnion(b.hi, b.mid)),
                             false);
        }
        else if b.mid === false {
             return bddCreate(b.atom,
                              bddComplement(b.lo),
                              bddComplement(bddUnion(b.lo, b.hi)),
                              bddComplement(b.hi));
        }
        else {
            return bddCreate(b.atom,
                             bddComplement(bddUnion(b.lo, b.mid)),
                             false,
                             bddComplement(bddUnion(b.hi, b.mid)));
        }
    }
}

function bddCreate(Atom atom, Bdd lo, Bdd mid, Bdd hi) returns Bdd {
    if mid === true {
        return true;
    }
    if lo == hi {
        return bddUnion(lo, mid);
    }
    return { atom, lo, mid, hi };
}
