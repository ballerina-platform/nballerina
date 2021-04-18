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
            // variable needed to workaround an slalpha4 bug
            readonly & BddNode n = {
                atom: b1.atom,
                lo: b1.lo,
                mid: bddUnion(b1.mid, b2),
                hi: b1.hi
            };
            return n;
        }
        else if cmp == 1 {
             readonly & BddNode n = {
                atom: b2.atom,
                lo: b2.lo,
                mid: bddUnion(b1, b2.mid),
                hi: b2.hi
            };
            return n;

        }
        else {
            readonly & BddNode n = {
                atom: b1.atom,
                lo: bddUnion(b1.lo, b2.lo),
                mid: bddUnion(b1.mid, b2.mid),
                hi: bddUnion(b1.hi, b2.hi)
            };
            return n;
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
            readonly & BddNode n = {
                atom: b1.atom,
                lo: bddIntersect(b1.lo, b2),
                mid: bddIntersect(b1.mid, b2),
                hi: bddIntersect(b1.hi, b2)
            };
            return n;
        }
        else if cmp == 1 {
             readonly & BddNode n = {
                atom: b2.atom,
                lo: bddIntersect(b1, b2.lo),
                mid: bddIntersect(b1, b2.mid),
                hi: bddIntersect(b1, b2.hi)
            };
            return n;

        }
        else {
            readonly & BddNode n = {
                atom: b1.atom,
                lo: bddIntersect(bddUnion(b1.lo, b1.mid), bddUnion(b2.lo, b2.mid)),
                mid: false,
                hi: bddIntersect(bddUnion(b1.hi, b1.mid), bddUnion(b2.hi, b2.mid))
            };
            return n;
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
        return b1 == false ? b1 : false;
    }
    else {  
        CompareResult cmp = atomCompare(b1.atom, b2.atom);
        if cmp == -1 {
            readonly & BddNode n = {
                atom: b1.atom,
                lo: bddDiff(bddUnion(b1.lo, b1.mid), b2),
                mid: false,
                hi: bddDiff(bddUnion(b1.hi, b1.mid), b2)
            };
            return n;
        }
        else if cmp == 1 {
             readonly & BddNode n = {
                atom: b2.atom,
                lo: bddDiff(b1, bddUnion(b2.lo, b2.mid)),
                mid: false,
                hi: bddDiff(b1, bddUnion(b2.hi, b2.mid))
            };
            return n;

        }
        else {
            readonly & BddNode n = {
                atom: b1.atom,
                lo: bddDiff(b1.lo, b2),
                mid: bddDiff(b1.mid, b2),
                hi: bddDiff(b1.hi, b2)
            };
            return n;
        }
    }
}

function bddComplement(Bdd b) returns Bdd {
    if b is boolean {
        return !b;
    }
    else {
        if b.hi === false {
             readonly & BddNode n = {
                atom: b.atom,
                lo: false,
                mid: bddComplement(bddUnion(b.lo, b.mid)),
                hi: bddComplement(b.mid)
            };
            return n;
        }
        else if b.lo === false {
             readonly & BddNode n = {
                atom: b.atom,
                lo: bddComplement(b.mid),
                mid: bddComplement(bddUnion(b.hi, b.mid)),
                hi: false
            };
            return n;
        }
        else if b.mid === false {
             readonly & BddNode n = {
                atom: b.atom,
                lo: bddComplement(b.lo),
                mid: bddComplement(bddUnion(b.lo, b.hi)),
                hi: bddComplement(b.hi)
            };
            return n;
        }
        else {
             readonly & BddNode n = {
                atom: b.atom,
                lo: bddComplement(bddUnion(b.lo, b.mid)),
                mid: false,
                hi:bddComplement(bddUnion(b.hi, b.mid))
            };
            return n;
        }
    }
}
