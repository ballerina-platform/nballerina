import ballerina/test;

@test:Config{}
function test1() {
    SemType s = tuple(INT, union(INT, STRING));
    SemType t = union(tuple(INT, INT), tuple(INT, STRING));
    test:assertTrue(isSubtype(s, t));
}


@test:Config{}
function testDisjoint() {
    disjoint(STRING, INT);
    disjoint(INT, NIL);
    disjoint(tuple(INT, INT), INT);
    disjoint(NIL, tuple(STRING,STRING));
}

function disjoint(SemType t1, SemType t2) {
    test:assertFalse(isSubtype(t1, t2));
    test:assertFalse(isSubtype(t2, t1));
    test:assertTrue(intersect(t1, t2).isEmpty());
}
