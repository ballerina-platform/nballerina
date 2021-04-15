import ballerina/test;

@test:Config{}
function test1() {
    SemType s = tuple(INT, union(INT, STRING));
    SemType t = union(tuple(INT, INT), tuple(INT, STRING));
    test:assertTrue(isSubtype(s, t));
}

