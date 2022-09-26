// Binary Decision Diagrams

// These are BDDs as in CDuce, which are a bit different from e.g. Knuth.
// A Bdd represents a disjunction of conjunctions of atoms, where each
// atom may be positive (not negated) or negative (negated). There is
// a total order defined on the atoms.
// Each leaf of the tree is `true` or `false`. Each path from the
// root to a `true` leaf represents a conjunction. When the path goes
// left after passing through a node, then the node's atom is included
// positively in the conjunction; when it goes right, the node's atom
// is included negatively; when it goes through the middle, the node's
// atom is not included. BDDs are constructed so that the atoms on
// every path are in strictly increasing order.

public type Bdd BddNode|boolean;

public type BddNode readonly & record {|
    Atom atom;
    Bdd left;
    Bdd middle;
    Bdd right;
|};

type BddCache object {
    isolated function get(Bdd bdd) returns Bdd;
};

readonly class NoBddCache {
    *BddCache;
    isolated function get(Bdd bdd) returns Bdd => bdd;
}

final NoBddCache noBddCache = new;

isolated function bddAtom(Atom atom) returns BddNode {
     return { atom, left: true, middle: false, right: false };
}

isolated function bddUnion(BddCache cache, Bdd b1, Bdd b2) returns Bdd {
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
        int cmp = atomCmp(b1.atom, b2.atom);
        if cmp < 0 {
            return bddCreate(cache, b1.atom,
                          b1.left,
                          bddUnion(cache, b1.middle, b2),
                          b1.right);
        }
        else if cmp > 0 {
             return bddCreate(cache, b2.atom,
                           b2.left,
                           bddUnion(cache, b1, b2.middle),
                           b2.right);
        }
        else {
            return bddCreate(cache, b1.atom,
                          bddUnion(cache, b1.left, b2.left),
                          bddUnion(cache, b1.middle, b2.middle),
                          bddUnion(cache, b1.right, b2.right));
        }
    }
}

isolated function bddIntersect(BddCache cache, Bdd b1, Bdd b2) returns Bdd {
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
        int cmp = atomCmp(b1.atom, b2.atom);
        if cmp < 0 {
            return bddCreate(cache, b1.atom,
                          bddIntersect(cache, b1.left, b2),
                          bddIntersect(cache, b1.middle, b2),
                          bddIntersect(cache, b1.right, b2));
        }
        else if cmp > 0 {
            return bddCreate(cache, b2.atom,
                          bddIntersect(cache, b1, b2.left),
                          bddIntersect(cache, b1, b2.middle),
                          bddIntersect(cache, b1, b2.right));
        }
        else {
            return bddCreate(cache, b1.atom,
                          bddIntersect(cache, bddUnion(cache, b1.left, b1.middle), bddUnion(cache, b2.left, b2.middle)),
                          false,
                          bddIntersect(cache, bddUnion(cache, b1.right, b1.middle), bddUnion(cache, b2.right, b2.middle)));
        }
    }       
}

isolated function bddDiff(BddCache cache, Bdd b1, Bdd b2) returns Bdd {
    if b1 === b2 {
        return false;
    }
    else if b2 is boolean {
        return b2 == true ? false : b1;
    }
    else if b1 is boolean {
        return b1 == true ? bddComplement(cache, b2) : false;
    }
    else {  
        int cmp = atomCmp(b1.atom, b2.atom);
        if cmp < 0 {
            return bddCreate(cache, b1.atom,
                          bddDiff(cache, bddUnion(cache, b1.left, b1.middle), b2),
                          false,
                          bddDiff(cache, bddUnion(cache, b1.right, b1.middle), b2));
        }
        else if cmp > 0 {
            return bddCreate(cache, b2.atom,
                          bddDiff(cache, b1, bddUnion(cache, b2.left, b2.middle)),
                          false,
                          bddDiff(cache, b1, bddUnion(cache, b2.right, b2.middle)));

        }
        else {
            // There is an error in the Castagna paper for this formula.
            // The union needs to be materialized here.
            // The original formula does not work in a case like (a0|a1) - a0.
            // Castagna confirms that the following formula is the correct one.
            return bddCreate(cache, b1.atom,
                          bddDiff(cache, bddUnion(cache, b1.left, b1.middle), bddUnion(cache, b2.left, b2.middle)),
                          false,
                          bddDiff(cache, bddUnion(cache, b1.right, b1.middle), bddUnion(cache, b2.right, b2.middle)));
        }
    }
}

isolated function bddComplement(BddCache cache, Bdd b) returns Bdd {
    if b is boolean {
        return !b;
    }
    else {
        if b.right === false {
            return bddCreate(cache, b.atom,
                          false,
                          bddComplement(cache, bddUnion(cache, b.left, b.middle)),
                          bddComplement(cache, b.middle));
        }
        else if b.left === false {
            return bddCreate(cache, b.atom,
                          bddComplement(cache, b.middle),
                          bddComplement(cache, bddUnion(cache, b.right, b.middle)),
                          false);
        }
        else if b.middle === false {
             return bddCreate(cache, b.atom,
                           bddComplement(cache, b.left),
                           bddComplement(cache, bddUnion(cache, b.left, b.right)),
                           bddComplement(cache, b.right));
        }
        else {
            // There is a typo in the Frisch PhD thesis for this formula.
            // (It has left and right swapped.)
            // Castagna (the PhD supervisor) confirms that this is the correct formula.
            return bddCreate(cache, b.atom,
                          bddComplement(cache, bddUnion(cache, b.left, b.middle)),
                          false,
                          bddComplement(cache, bddUnion(cache, b.right, b.middle)));
        }
    }
}

// this is just for observing
isolated int bddCount = 0;

isolated function bddCreate(BddCache cache, Atom atom, Bdd left, Bdd middle, Bdd right) returns Bdd {
    if middle == true {
        return true;
    }
    if left == right {
        return bddUnion(cache, left, middle);
    }
    lock {
        bddCount += 1;
    }  
    return cache.get({ atom, left, middle, right });
}

public isolated function bddGetCount() returns int {
    lock {
        return bddCount;
    } 
}

// order RecAtom < TypeAtom
isolated function atomCmp(Atom a1, Atom a2) returns int {
    if a1 is RecAtom {
        if a2 is RecAtom {
            return a2 - a1;
        }
        else {
            return -1;
        }
    }
    else if a2 is RecAtom {
        return 1;
    }
    else {
        return a1.index - a2.index;
    }
}

// This is for debugging purposes.
// It uses the Frisch/Castagna notation.
isolated function bddToString(Bdd b, boolean inner = false) returns string {
    if b is boolean {
        return b ? "1" : "0";
    }
    else {
        string str;
        Atom a = b.atom;

        if a is RecAtom {
            str = "r" + a.toString();
        }
        else {
            str = "a" + a.index.toString();
        }
        str += "?" + bddToString(b.left, true) + ":" + bddToString(b.middle, true) + ":" + bddToString(b.right, true);
        if inner {
            str = "(" + str + ")";
        }
        return str;
    }
}
