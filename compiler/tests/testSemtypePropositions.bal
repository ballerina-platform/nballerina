import ballerina/test;

@test:Config
function testSubtyping() {
    testSemtypePropositions(generator = generateSubtypeProposition);
}

@test:Config
function testNonEmptyTypes() {
    testSemtypePropositions(generator = generateNonEmptyProposition);
}
