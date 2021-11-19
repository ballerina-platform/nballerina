import ballerina/io;

public function main() {
    Bdd b1 = bddUnion(bddAtom(1), bddAtom(2));
    Bdd b2 = bddUnion(bddAtom(2), bddAtom(1));
    io:println(b1 == b2); // @output true
    Bdd b3 = bddIntersect(bddAtom(1), bddAtom(2));
    io:println(b1 == b3); // @output false
}

public type Bdd BddNode|boolean;
public type Atom int;

public type BddNode record {|
    Atom atom;
    Bdd left;
    Bdd middle;
    Bdd right;
|};

function bddAtom(Atom atom) returns BddNode {
     return { atom: atom, left: true, middle: false, right: false };
}

function bddUnion(Bdd b1, Bdd b2) returns Bdd {
    if b1 === b2 {
        return b1;
    }
    else if b1 is boolean {
        if b1 == true {
            return true;
        }
        return b2;
    }
    else if b2 is boolean {
        if b2 == true {
            return true;
        }
        return b1;
    }
    else {  
        int cmp = atomCmp(b1.atom, b2.atom);
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

function bddIntersect(Bdd b1, Bdd b2) returns Bdd {
    if b1 === b2 {
        return b1;
    }
    else if b1 is boolean {
        if b1 == true {
            return b2;
        }
        return false;
    }
    else if b2 is boolean {
        if b2 == true {
            return b1;
        }
        return false;
    }
    else { 
        int cmp = atomCmp(b1.atom, b2.atom);
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
function bddDiff(Bdd b1, Bdd b2) returns Bdd {
    if b1 === b2 {
        return false;
    }
    else if b2 is boolean {
        if b2 == true {
            return false;
        }
        return b1;
    }
    else if b1 is boolean {
        if b1 == true {
            return bddComplement(b2);
        }
        return false;
    }
    else {  
        int cmp = atomCmp(b1.atom, b2.atom);
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

function bddComplement(Bdd b) returns Bdd {
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

function bddCreate(Atom atom, Bdd left, Bdd middle, Bdd right) returns Bdd {
    if middle == true {
        return true;
    }
    if left == right {
        return bddUnion(left, middle);
    }
    return { atom: atom, left: left, middle: middle, right: right };
}

function atomCmp(Atom a1, Atom a2) returns int {
    return a1 - a2;
}
