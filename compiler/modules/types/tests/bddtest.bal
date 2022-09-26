import ballerina/test;

@test:Config{}
function bddTest() {
    Bdd b1 = bddAtom(1);
    Bdd b2 = bddAtom(2);
    Bdd b1and2 = bddIntersect(noBddCache, b1, b2);
    Bdd r = bddDiff(noBddCache, b1and2, b1);
    test:assertEquals(r, false);
}