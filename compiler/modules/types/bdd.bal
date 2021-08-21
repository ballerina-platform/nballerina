// Binary Decision Diagrams

// These are BDDs as in CDuce, which are a bit different from e.g. Knuth.
// A Bdd represents a disjunction of conjunctions of atoms, where each
// atom may be positive (not negated) or negative (negated). An atom
// is represented by an integer.  What that integer means is up to the
// user of the Bdd: typically it's an index into an array of definitions.
// Each leaf of the tree is `true` or `false`. Each path from the
// root to a `true` leaf represents a conjunction. When the path goes
// left after passing through a node, then the node's atom is included
// positively in the conjunction; when it goes right, the node's atom
// is included negatively; when it goes through the middle, the node's
// atom is not included. Bdds are constructed so that the atoms on
// every path are in strictle decreasing order (ignoring nodes where
// the path went throught the middle.

public type Bdd BddNode|boolean;

public type BddNode readonly & record {|
    int atom;  // meaning is basic-type dependent
    Bdd left;
    Bdd middle;
    Bdd right;
|};

isolated function bddAtom(int atom) returns BddNode {
     return { atom, left: true, middle: false, right: false };
}

isolated function bddUnion(Bdd b1, Bdd b2) returns Bdd {
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
        int cmp = b1.atom - b2.atom;
        if cmp < 0 {
            return bddCreate(b1.atom,
                          b1.left,
                          bddUnion(b1.middle, b2),
                          b1.right);
        }
        else if cmp > 0 {
             return bddCreate(b2.atom,
                           b2.left,
                           bddUnion(b1, b2.middle),
                           b2.right);
        }
        else {
            return bddCreate(b1.atom,
                          bddUnion(b1.left, b2.left),
                          bddUnion(b1.middle, b2.middle),
                          bddUnion(b1.right, b2.right));
        }
    }
}

isolated function bddIntersect(Bdd b1, Bdd b2) returns Bdd {
    if b1 === b2 {
        return b1;
    }
    else if b1 is boolean {
        return b1 == true ? b2 : false;
    }
    else if b2 is boolean {
        return b2 == true ? b1 : false;
    }
    else { 
        int cmp = b1.atom - b2.atom;
        if cmp < 0 {
            return bddCreate(b1.atom,
                          bddIntersect(b1.left, b2),
                          bddIntersect(b1.middle, b2),
                          bddIntersect(b1.right, b2));
        }
        else if cmp > 0 {
            return bddCreate(b2.atom,
                          bddIntersect(b1, b2.left),
                          bddIntersect(b1, b2.middle),
                          bddIntersect(b1, b2.right));
        }
        else {
            return bddCreate(b1.atom,
                          bddIntersect(bddUnion(b1.left, b1.middle), bddUnion(b2.left, b2.middle)),
                          false,
                          bddIntersect(bddUnion(b1.right, b1.middle), bddUnion(b2.right, b2.middle)));
        }
    }       
}
isolated function bddDiff(Bdd b1, Bdd b2) returns Bdd {
    if b1 === b2 {
        return false;
    }
    else if b2 is boolean {
        return b2 == true ? false : b1;
    }
    else if b1 is boolean {
        return b1 == true ? bddComplement(b2) : false;
    }
    else {  
        int cmp = b1.atom - b2.atom;
        if cmp < 0 {
            return bddCreate(b1.atom,
                          bddDiff(bddUnion(b1.left, b1.middle), b2),
                          false,
                          bddDiff(bddUnion(b1.right, b1.middle), b2));
        }
        else if cmp > 0 {
            return bddCreate(b2.atom,
                          bddDiff(b1, bddUnion(b2.left, b2.middle)),
                          false,
                          bddDiff(b1, bddUnion(b2.right, b2.middle)));

        }
        else {
            // This is incorrect in the AMK tutorial 
            // but correct in the Castagna paper
            return bddCreate(b1.atom,
                          bddDiff(b1.left, b2.left),
                          bddDiff(b1.middle, b2.middle),
                          bddDiff(b1.right, b2.right));
        }
    }
}

isolated function bddComplement(Bdd b) returns Bdd {
    if b is boolean {
        return !b;
    }
    else {
        if b.right === false {
            return bddCreate(b.atom,
                          false,
                          bddComplement(bddUnion(b.left, b.middle)),
                          bddComplement(b.middle));
        }
        else if b.left === false {
            return bddCreate(b.atom,
                          bddComplement(b.middle),
                          bddComplement(bddUnion(b.right, b.middle)),
                          false);
        }
        else if b.middle === false {
             return bddCreate(b.atom,
                           bddComplement(b.left),
                           bddComplement(bddUnion(b.left, b.right)),
                           bddComplement(b.right));
        }
        else {
            return bddCreate(b.atom,
                          bddComplement(bddUnion(b.left, b.middle)),
                          false,
                          bddComplement(bddUnion(b.right, b.middle)));
        }
    }
}

// this is just for observing
isolated int bddCount = 0;

isolated function bddCreate(int atom, Bdd left, Bdd middle, Bdd right) returns Bdd {
    if middle == true {
        return true;
    }
    if left == right {
        return bddUnion(left, middle);
    }
    lock {
        bddCount += 1;
    }  
    return { atom, left, middle, right };
}

public isolated function bddGetCount() returns int {
    lock {
        return bddCount;
    } 
}