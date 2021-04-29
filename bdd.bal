// Binary Decision Diagrams

public type Bdd (readonly & BddNode)|boolean;

// referenced nodes refer to definitions with same basic type
type BddNode record {|
    int index;  // index of definition
    Bdd lo;
    Bdd mid;
    Bdd hi;
|};

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
        int cmp = b1.index - b2.index;
        if cmp < 0 {
            return bddCreate(b1.index,
                             b1.lo,
                             bddUnion(b1.mid, b2),
                             b1.hi);
        }
        else if cmp > 0 {
             return bddCreate(b2.index,
                              b2.lo,
                              bddUnion(b1, b2.mid),
                              b2.hi);
        }
        else {
            return bddCreate(b1.index,
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
        int cmp = b1.index - b2.index;
        if cmp < 0 {
            return bddCreate(b1.index,
                             bddIntersect(b1.lo, b2),
                             bddIntersect(b1.mid, b2),
                             bddIntersect(b1.hi, b2));
        }
        else if cmp > 0 {
            return bddCreate(b2.index,
                             bddIntersect(b1, b2.lo),
                             bddIntersect(b1, b2.mid),
                             bddIntersect(b1, b2.hi));
        }
        else {
            return bddCreate(b1.index,
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
        int cmp = b1.index - b2.index;
        if cmp < 0 {
            return bddCreate(b1.index,
                             bddDiff(bddUnion(b1.lo, b1.mid), b2),
                             false,
                             bddDiff(bddUnion(b1.hi, b1.mid), b2));
        }
        else if cmp > 0 {
            return bddCreate(b2.index,
                             bddDiff(b1, bddUnion(b2.lo, b2.mid)),
                             false,
                             bddDiff(b1, bddUnion(b2.hi, b2.mid)));

        }
        else {
            return bddCreate(b1.index,
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
            return bddCreate(b.index,
                             false,
                             bddComplement(bddUnion(b.lo, b.mid)),
                             bddComplement(b.mid));
        }
        else if b.lo === false {
            return bddCreate(b.index,
                             bddComplement(b.mid),
                             bddComplement(bddUnion(b.hi, b.mid)),
                             false);
        }
        else if b.mid === false {
             return bddCreate(b.index,
                              bddComplement(b.lo),
                              bddComplement(bddUnion(b.lo, b.hi)),
                              bddComplement(b.hi));
        }
        else {
            return bddCreate(b.index,
                             bddComplement(bddUnion(b.lo, b.mid)),
                             false,
                             bddComplement(bddUnion(b.hi, b.mid)));
        }
    }
}

// this is just for observing
int bddCount = 0;

function bddCreate(int index, Bdd lo, Bdd mid, Bdd hi) returns Bdd {
    if mid === true {
        return true;
    }
    if lo == hi {
        return bddUnion(lo, mid);
    }
    bddCount += 1;
    return { index, lo, mid, hi };
}
