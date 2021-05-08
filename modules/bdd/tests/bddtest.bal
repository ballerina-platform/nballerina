import ballerina/test;

@test:Config{}
function test1() {
    Bdd b1 = atom(1);
    Bdd b2 = atom(2);
    Bdd b1and2 = intersect(b1, b2);
    Bdd r = diff(b1and2, b1);
    test:assertEquals(r, false);
}