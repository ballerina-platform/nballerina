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

public type Bdd Node|boolean;

public type Node readonly & record {|
    int atom;  // meaning is basic-type dependent
    Bdd left;
    Bdd middle;
    Bdd right;
|};

public isolated function atom(int atom) returns Node {
     return { atom, left: true, middle: false, right: false };
}

public isolated function union(Bdd b1, Bdd b2) returns Bdd {
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
            return create(b1.atom,
                          b1.left,
                          union(b1.middle, b2),
                          b1.right);
        }
        else if cmp > 0 {
             return create(b2.atom,
                           b2.left,
                           union(b1, b2.middle),
                           b2.right);
        }
        else {
            return create(b1.atom,
                          union(b1.left, b2.left),
                          union(b1.middle, b2.middle),
                          union(b1.right, b2.right));
        }
    }
}

public isolated function intersect(Bdd b1, Bdd b2) returns Bdd {
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
            return create(b1.atom,
                          intersect(b1.left, b2),
                          intersect(b1.middle, b2),
                          intersect(b1.right, b2));
        }
        else if cmp > 0 {
            return create(b2.atom,
                          intersect(b1, b2.left),
                          intersect(b1, b2.middle),
                          intersect(b1, b2.right));
        }
        else {
            return create(b1.atom,
                          intersect(union(b1.left, b1.middle), union(b2.left, b2.middle)),
                          false,
                          intersect(union(b1.right, b1.middle), union(b2.right, b2.middle)));
        }
    }       
}
public isolated function diff(Bdd b1, Bdd b2) returns Bdd {
    if b1 === b2 {
        return false;
    }
    else if b2 is boolean {
        return b2 == true ? false : b1;
    }
    else if b1 is boolean {
        return b1 == true ?  complement(b2) : false;
    }
    else {  
        int cmp = b1.atom - b2.atom;
        if cmp < 0 {
            return create(b1.atom,
                          diff(union(b1.left, b1.middle), b2),
                          false,
                          diff(union(b1.right, b1.middle), b2));
        }
        else if cmp > 0 {
            return create(b2.atom,
                          diff(b1, union(b2.left, b2.middle)),
                          false,
                          diff(b1, union(b2.right, b2.middle)));

        }
        else {
            // This is incorrect in the AMK tutorial 
            // but correct in the Castagna paper
            return create(b1.atom,
                          diff(b1.left, b2.left),
                          diff(b1.middle, b2.middle),
                          diff(b1.right, b2.right));
        }
    }
}

public isolated function complement(Bdd b) returns Bdd {
    if b is boolean {
        return !b;
    }
    else {
        if b.right === false {
            return create(b.atom,
                          false,
                          complement(union(b.left, b.middle)),
                          complement(b.middle));
        }
        else if b.left === false {
            return create(b.atom,
                          complement(b.middle),
                          complement(union(b.right, b.middle)),
                          false);
        }
        else if b.middle === false {
             return create(b.atom,
                           complement(b.left),
                           complement(union(b.left, b.right)),
                           complement(b.right));
        }
        else {
            return create(b.atom,
                          complement(union(b.left, b.middle)),
                          false,
                          complement(union(b.right, b.middle)));
        }
    }
}

// this is just for observing
isolated int count = 0;

isolated function create(int atom, Bdd left, Bdd middle, Bdd right) returns Bdd {
    if middle == true {
        return true;
    }
    if left == right {
        return union(left, middle);
    }
    lock {
        count += 1;
    }  
    return { atom, left, middle, right };
}

public isolated function getCount() returns int {
    lock {
        return count;
    } 
}