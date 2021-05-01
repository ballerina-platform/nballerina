// Binary Decision Diagrams

public type Bdd (readonly & Node)|boolean;

// referenced nodes refer to definitions with same basic type
public type Node record {|
    int index;  // index of definition
    Bdd lo;
    Bdd mid;
    Bdd hi;
|};

public isolated function atom(int index) returns readonly & Node {
     return { index, lo: true, mid: false, hi: false };
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
                          b1.lo,
                          union(b1.mid, b2),
                          b1.hi);
        }
        else if cmp > 0 {
             return create(b2.index,
                           b2.lo,
                           union(b1, b2.mid),
                           b2.hi);
        }
        else {
            return create(b1.index,
                          union(b1.lo, b2.lo),
                          union(b1.mid, b2.mid),
                          union(b1.hi, b2.hi));
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
                          intersect(b1.lo, b2),
                          intersect(b1.mid, b2),
                          intersect(b1.hi, b2));
        }
        else if cmp > 0 {
            return create(b2.index,
                          intersect(b1, b2.lo),
                          intersect(b1, b2.mid),
                          intersect(b1, b2.hi));
        }
        else {
            return create(b1.index,
                          intersect(union(b1.lo, b1.mid), union(b2.lo, b2.mid)),
                          false,
                          intersect(union(b1.hi, b1.mid), union(b2.hi, b2.mid)));
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
                          diff(union(b1.lo, b1.mid), b2),
                          false,
                          diff(union(b1.hi, b1.mid), b2));
        }
        else if cmp > 0 {
            return create(b2.index,
                          diff(b1, union(b2.lo, b2.mid)),
                          false,
                          diff(b1, union(b2.hi, b2.mid)));

        }
        else {
            return create(b1.index,
                          diff(b1.lo, b2),
                          diff(b1.mid, b2),
                          diff(b1.hi, b2));
        }
    }
}

public isolated function complement(Bdd b) returns Bdd {
    if b is boolean {
        return !b;
    }
    else {
        if b.hi === false {
            return create(b.index,
                          false,
                          complement(union(b.lo, b.mid)),
                          complement(b.mid));
        }
        else if b.lo === false {
            return create(b.index,
                          complement(b.mid),
                          complement(union(b.hi, b.mid)),
                          false);
        }
        else if b.mid === false {
             return create(b.index,
                           complement(b.lo),
                           complement(union(b.lo, b.hi)),
                           complement(b.hi));
        }
        else {
            return create(b.index,
                          complement(union(b.lo, b.mid)),
                          false,
                          complement(union(b.hi, b.mid)));
        }
    }
}

// this is just for observing
isolated int count = 0;

isolated function create(int index, Bdd lo, Bdd mid, Bdd hi) returns Bdd {
    if mid === true {
        return true;
    }
    if lo == hi {
        return union(lo, mid);
    }
    lock {
        count += 1;
    }
    return { index, lo, mid, hi };
}

public isolated function getCount() returns int {
    lock {
        return count;
    } 
}