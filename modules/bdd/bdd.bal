// Binary Decision Diagrams

public type Bdd (readonly & Node)|boolean;

// referenced nodes refer to definitions with same basic type
public type Node record {|
    int index;  // index of definition
    Bdd left;
    Bdd middle;
    Bdd right;
|};

public isolated function atom(int index) returns readonly & Node {
     return { index, left: true, middle: false, right: false };
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
        int cmp = b1.index - b2.index;
        if cmp < 0 {
            return create(b1.index,
                          b1.left,
                          union(b1.middle, b2),
                          b1.right);
        }
        else if cmp > 0 {
             return create(b2.index,
                           b2.left,
                           union(b1, b2.middle),
                           b2.right);
        }
        else {
            return create(b1.index,
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
        return b2 == true ? false : b1;
    }
    else { 
        int cmp = b1.index - b2.index;
        if cmp < 0 {
            return create(b1.index,
                          intersect(b1.left, b2),
                          intersect(b1.middle, b2),
                          intersect(b1.right, b2));
        }
        else if cmp > 0 {
            return create(b2.index,
                          intersect(b1, b2.left),
                          intersect(b1, b2.middle),
                          intersect(b1, b2.right));
        }
        else {
            return create(b1.index,
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
        int cmp = b1.index - b2.index;
        if cmp < 0 {
            return create(b1.index,
                          diff(union(b1.left, b1.middle), b2),
                          false,
                          diff(union(b1.right, b1.middle), b2));
        }
        else if cmp > 0 {
            return create(b2.index,
                          diff(b1, union(b2.left, b2.middle)),
                          false,
                          diff(b1, union(b2.right, b2.middle)));

        }
        else {
            return create(b1.index,
                          diff(b1.left, b2),
                          diff(b1.middle, b2),
                          diff(b1.right, b2));
        }
    }
}

public isolated function complement(Bdd b) returns Bdd {
    if b is boolean {
        return !b;
    }
    else {
        if b.right === false {
            return create(b.index,
                          false,
                          complement(union(b.left, b.middle)),
                          complement(b.middle));
        }
        else if b.left === false {
            return create(b.index,
                          complement(b.middle),
                          complement(union(b.right, b.middle)),
                          false);
        }
        else if b.middle === false {
             return create(b.index,
                           complement(b.left),
                           complement(union(b.left, b.right)),
                           complement(b.right));
        }
        else {
            return create(b.index,
                          complement(union(b.left, b.middle)),
                          false,
                          complement(union(b.right, b.middle)));
        }
    }
}

// this is just for observing
isolated int count = 0;

isolated function create(int index, Bdd left, Bdd middle, Bdd right) returns Bdd {
    if middle === true {
        return true;
    }
    if left == right {
        return union(left, middle);
    }
    lock {
        count += 1;
    }
    return { index, left, middle, right };
}

public isolated function getCount() returns int {
    lock {
        return count;
    } 
}